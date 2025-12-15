// tdweb entry for package:tdlib: TDLib on the page's main thread.
//
// Stock tdweb runs TDLib in a web worker and wraps every request. The Dart
// side drives td_receive itself, so this entry only loads the module, mounts
// tdweb's file systems and exposes the raw td_emscripten_* functions.
// tool/build_tdweb.sh puts it in place of tdweb's src/index.js; td.js is
// tdweb's worker.js without the worker bootstrap.
import log from './logger.js';
import { TdFileSystem, loadTdlib } from './td.js';

class TdClient {
  // options: { instanceName, readOnly, wasmUrl, jsLogVerbosityLevel }.
  // A string (the old "wasm" mode argument) is ignored.
  async init(options) {
    if (this.wasInit) {
      return;
    }
    this.wasInit = true;
    options = options && typeof options === 'object' ? options : {};
    log.setVerbosity(options.jsLogVerbosityLevel || 'warning');

    let onFS;
    const FS_promise = new Promise(resolve => {
      onFS = resolve;
    });
    const tdfs_promise = TdFileSystem.create(
      options.instanceName || 'tdlib',
      FS_promise,
      options.readOnly || false
    );
    const module = await loadTdlib(onFS, options.wasmUrl);
    this.TdModule = module;
    this.FS = module.FS;
    this.tdfs = await tdfs_promise;

    this.td_create = module.cwrap('td_emscripten_create_client_id', 'number', []);
    this.td_send = module.cwrap('td_emscripten_send', null, ['number', 'string']);
    this.td_execute = module.cwrap('td_emscripten_execute', 'string', ['string']);
    this.td_receive = module.cwrap('td_emscripten_receive', 'string', []);
    this.td_get_timeout = module.cwrap('td_emscripten_get_timeout', 'number', []);
  }

  // Persistent directory (IndexedDB) to pass as database_directory.
  get database_directory() {
    return this.tdfs.dbFileSystem.root;
  }

  // Directory to pass as files_directory.
  get files_directory() {
    return this.tdfs.inboundFileSystem.root;
  }
}

export default TdClient;
