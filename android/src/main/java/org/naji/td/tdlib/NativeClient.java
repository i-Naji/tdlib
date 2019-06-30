package org.naji.td.tdlib;

/**
 * This class is used internally by Client to send requests to the TDLib.
 */


final class NativeClient {

    public static native long create();
    public static native void send(long client_id,  String query);
    public static native String receive(long client_id, double timeout);
    public static native String execute(String query);
    public static native void destroy(long client_id);
    public static native void setLogVerbosity(int level);
    public static native void setLogSize(int size);
    public static native void setLogFile(String path);
}
