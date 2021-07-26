import libtdjson
func toLong(ptr: UnsafeMutableRawPointer) -> Int {
    return Int(bitPattern: ptr)
}
func toPtr(long: Int) -> UnsafeMutableRawPointer {
    return UnsafeMutableRawPointer(bitPattern: long)!
}
class JsonClient {
    public static func create() -> Int {
        let client = libtdjson.td_json_client_create()!
        return toLong(ptr: client)
    }
    public static func send(clientId: Int, request: String) {
        let client = toPtr(long: clientId)
        libtdjson.td_json_client_send(client, request)
    }
    public static func receive(clientId: Int, timeout: Double) -> String? {
        let client = toPtr(long: clientId)
        let lock = NSLock()
        lock.lock()
        let res = libtdjson.td_json_client_receive(client, timeout)
        lock.unlock()
        if res != nil {
            return String(cString: res!)
        }
        return nil
    }
    public static func execute(clientId: Int, request: String) -> String? {
        let client = toPtr(long: clientId)
        if let res = libtdjson.td_json_client_execute(client, request) {
            return String(cString: res)
        }
        return nil
    }
    public static func destroy(clientId: Int) {
        let client = toPtr(long: clientId)
        libtdjson.td_json_client_destroy(client)
    }
}
