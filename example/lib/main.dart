// Minimal TDLib example: starts the runtime, creates a client, sends the
// TDLib parameters when asked, and shows the authorization state.
//
// Run with your API credentials from https://my.telegram.org:
//   flutter run --dart-define=API_ID=12345 --dart-define=API_HASH=abcdef...

import 'dart:async';

import 'package:material_ui/material_ui.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tdlib/td_lifecycle.dart';
import 'package:tdlib/td_runtime.dart' as td;

const apiId = int.fromEnvironment('API_ID');
const apiHash = String.fromEnvironment('API_HASH');

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final runtime = await td.TdRuntime.start();
  TdLifecycle(runtime);
  final client = runtime.createClient();
  runApp(MyApp(client: client));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.client});

  final td.TdClient client;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TDLib example',
      theme: ThemeData(useMaterial3: true),
      home: StatusPage(client: client),
    );
  }
}

class StatusPage extends StatefulWidget {
  const StatusPage({super.key, required this.client});

  final td.TdClient client;

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  StreamSubscription<td.AuthorizationState>? _sub;
  String _state = 'starting…';

  @override
  void initState() {
    super.initState();
    _sub = widget.client.authorizationStates.listen(_onState);
  }

  Future<void> _onState(td.AuthorizationState state) async {
    setState(() => _state = state.getConstructor());
    if (state is td.AuthorizationStateWaitTdlibParameters) {
      final dir = await getApplicationSupportDirectory();
      try {
        await widget.client.invoke(
          td.SetTdlibParameters(
            useTestDc: false,
            databaseDirectory: '${dir.path}/tdlib',
            filesDirectory: '${dir.path}/tdlib_files',
            databaseEncryptionKey: '',
            useFileDatabase: true,
            useChatInfoDatabase: true,
            useMessageDatabase: true,
            useSecretChats: false,
            apiId: apiId,
            apiHash: apiHash,
            systemLanguageCode: 'en',
            deviceModel: 'Flutter',
            systemVersion: '',
            applicationVersion: '1.0',
          ),
        );
      } on td.TdException catch (e) {
        setState(() => _state = 'setTdlibParameters failed: ${e.message}');
      }
    }
  }

  @override
  void dispose() {
    _sub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TDLib ${td.tdlibVersion}')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Client ${widget.client.id}'),
              const SizedBox(height: 12),
              Text(_state, style: Theme.of(context).textTheme.titleMedium),
              if (apiId == 0)
                const Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Text(
                    'Pass --dart-define=API_ID=… and API_HASH=… '
                    'to log in.',
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
