#!/bin/sh
# Builds data/web_pkg, the tdweb build the web plugin loads, from TDLib sources.
#
#   tool/build_tdweb.sh [tdlib-commit]
#
# The commit defaults to schemaCommit in hook/tdjson_sources.json. TDLib's
# example/web scripts run in the emscripten/emsdk:3.1.1 image (the emsdk
# version they require), so only Docker is needed. The first build takes
# about an hour; OpenSSL is kept for later builds.
# tool/tdweb/index.js replaces tdweb's worker entry, see the comment there.
set -e

root=$(cd "$(dirname "$0")/.." && pwd)
commit=${1:-$(sed -n 's/.*"schemaCommit": "\([0-9a-f]*\)".*/\1/p' "$root/hook/tdjson_sources.json")}
work=${TDWEB_WORK:-$root/build/tdweb}
td=$work/td
web=$td/example/web

mkdir -p "$work"
[ -d "$td/.git" ] || git clone -q https://github.com/tdlib/td.git "$td"
git -C "$td" fetch -q origin
git -C "$td" checkout -q -f "$commit"
# keep the OpenSSL build, it doesn't depend on the TDLib version
git -C "$td" clean -q -fdx -e example/web/build/crypto -e 'example/web/OpenSSL_*.tar.gz' example/web

cp "$root/tool/tdweb/index.js" "$web/tdweb/src/index.js"
sed '/^const client = new TdClient(/,$d' "$web/tdweb/src/worker.js" > "$web/tdweb/src/td.js"
echo 'export { TdFileSystem, loadTdlib };' >> "$web/tdweb/src/td.js"
sed -i.orig -e "s/library: 'tdweb'/library: 'tdlib'/" \
  -e "s/filename: 'tdweb.js'/filename: 'tdlib.js'/" "$web/tdweb/webpack.config.js"

docker run --rm -e CMAKE_BUILD_PARALLEL_LEVEL=${JOBS:-4} -v "$td:/td" -w /td/example/web \
  emscripten/emsdk:3.1.1 sh -c '
  set -e
  apt-get update -qq && apt-get install -y -qq gperf php-cli >/dev/null
  [ -f build/crypto/lib/libcrypto.a ] || ./build-openssl.sh
  ./build-tdlib.sh
  ./copy-tdlib.sh
  # npm install fails now and then on a slow connection
  ./build-tdweb.sh || ./build-tdweb.sh || ./build-tdweb.sh'

version=$(sed -n 's/^project(TDLib VERSION \([0-9.]*\).*/\1/p' "$td/CMakeLists.txt")
rm -rf "$root/data/web_pkg"
mkdir -p "$root/data/web_pkg"
cp -R "$web/tdweb/dist/." "$root/data/web_pkg/"
printf 'tdweb for package:tdlib: TDLib %s, commit %s, built by tool/build_tdweb.sh.\n' \
  "$version" "$commit" > "$root/data/web_pkg/README.md"
echo "data/web_pkg: TDLib $version ($commit)"
