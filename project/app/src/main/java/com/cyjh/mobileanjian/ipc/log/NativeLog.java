package com.cyjh.mobileanjian.ipc.log;

/* loaded from: classes.dex */
public class NativeLog {

    /* renamed from: a */
    private static StringBuffer f5978a = new StringBuffer();

    public static void appendLog(String str) {
        if (f5978a.length() > 0) {
            f5978a.append("@_@");
        }
        f5978a.append(str);
    }

    public static String getExtraLog() {
        return f5978a.toString();
    }

    public static void reset() {
        f5978a.setLength(0);
    }
}
