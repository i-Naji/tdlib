//
// Copyright Aliaksei Levin (levlam@telegram.org), Arseny Smirnov (arseny30@gmail.com) 2014-2019
//
// Distributed under the Boost Software License, Version 1.0. (See accompanying
// file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
//
package org.drinkless.tdlib;

/**
 * Main class for interaction with the TDLib using JSON interface.
 */
public final class JsonClient {

    public static native long create();

    public static native void send(long client, String request);

    public static native String receive(long client, double timeout);

    public static native String execute(long client, String request);

    public static native void destroy(long client);

    public static native void setLogVerbosityLevel(int newLogVerbosity);

    public static native boolean setLogFilePath(String filePath);

    public static native void setLogMaxFileSize(long maxFileSize);
}
