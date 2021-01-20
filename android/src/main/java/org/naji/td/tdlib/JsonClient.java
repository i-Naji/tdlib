package org.naji.td.tdlib;

/**
 * New class for interaction with the TDLib using JSON interface.
 */
public final class JsonClient {
    static {
        try {
            System.loadLibrary("tdjson");
        } catch (UnsatisfiedLinkError e) {
            e.printStackTrace();
        }
    }

    public static native int td_create();

    public static native void td_send(long client, String request);

    public static native String td_receive(double timeout);

    public static native String td_execute(String request);
}