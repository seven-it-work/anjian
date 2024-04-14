package com.cyjh.mobileanjian.ipc.utils;

import android.content.Context;

/* loaded from: classes.dex */
public class Util {
    static {
        System.loadLibrary("mqm");
    }

    public static native String getAppSinature(Context context);
}
