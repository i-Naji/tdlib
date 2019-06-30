#include <jni.h>
#include <string>
#include "include/td/telegram/td_json_client.h"
#include "include/td/telegram/td_log.h"


extern "C"
JNIEXPORT jlong JNICALL
Java_org_naji_td_tdlib_NativeClient_create(JNIEnv *env, jobject instance) {

    void *client = td_json_client_create();
    return reinterpret_cast<jlong>(client);

}

extern "C"
JNIEXPORT jstring JNICALL
Java_org_naji_td_tdlib_NativeClient_receive(JNIEnv *env, jobject instance,
                                                      jlong client_id, jdouble wait_timeout) {

    void *client = reinterpret_cast<void *>(static_cast<std::uintptr_t>(client_id));
    const char *result = td_json_client_receive(client, wait_timeout);
    return env->NewStringUTF(result);
}

extern "C"
JNIEXPORT void JNICALL
Java_org_naji_td_tdlib_NativeClient_send(JNIEnv *env, jobject instance, jlong client_id,
                                                   jstring query) {
    const char *json = env->GetStringUTFChars(query, 0);
    void *client = reinterpret_cast<void *>(static_cast<std::uintptr_t>(client_id));
    td_json_client_send(client, json);
    env->ReleaseStringUTFChars(query, json);
}

extern "C"
JNIEXPORT jstring JNICALL
Java_org_naji_td_tdlib_NativeClient_execute(JNIEnv *env, jobject instance,
                                                      jlong client_id, jstring query) {
    const char *json = env->GetStringUTFChars(query, 0);
    void *client = reinterpret_cast<void *>(static_cast<std::uintptr_t>(client_id));
    const char *result = td_json_client_execute(client, json);
    env->ReleaseStringUTFChars(query, json);
    return env->NewStringUTF(result);
}

extern "C"
JNIEXPORT void JNICALL
Java_org_naji_td_tdlib_NativeClient_destroy(JNIEnv *env, jobject instance,
                                                      jlong client_id) {
    void *client = reinterpret_cast<void *>(static_cast<std::uintptr_t>(client_id));
    td_json_client_destroy(client);

}

extern "C"
JNIEXPORT void JNICALL
Java_org_naji_td_tdlib_NativeClient_setLogVerbosity(JNIEnv *env, jobject instance,
                                                         jint level) {

    td_set_log_verbosity_level(level);
}

extern "C"
JNIEXPORT void JNICALL
Java_org_naji_td_tdlib_NativeClient_setLogFile(JNIEnv *env, jobject instance,
                                                         jstring path) {
    const char *dir = env->GetStringUTFChars(path, 0);
    td_set_log_file_path(dir);
    env->ReleaseStringUTFChars(path, dir);

}

extern "C"
JNIEXPORT void JNICALL
Java_org_naji_td_tdlib_NativeClient_setLogSize(JNIEnv *env, jobject instance,
                                                         jint size) {

    td_set_log_max_file_size(size);
}