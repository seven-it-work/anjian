package com.cyjh.mobileanjian.ipc.rpc;

/* loaded from: classes.dex */
public class RestartScriptHelper {

    /* renamed from: a */
    private static Boolean f6008a = false;

    public static Boolean isNeedRestart() {
        return f6008a;
    }

    public static void setNeedRestart() {
        f6008a = true;
    }

    public static void setNeedRestartValue(Boolean bool) {
        f6008a = bool;
    }
}
