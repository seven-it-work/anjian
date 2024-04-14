package com.king.sdk.p183a;

import android.content.Intent;
import android.os.IBinder;
import java.lang.reflect.Method;

/* renamed from: com.king.sdk.a.a */
/* loaded from: classes.dex */
public final class C2353a {

    /* renamed from: a */
    private static Method f8827a;

    /* renamed from: b */
    private static Method f8828b;

    static {
        try {
            Method declaredMethod = Intent.class.getDeclaredMethod("getIBinderExtra", String.class);
            f8827a = declaredMethod;
            declaredMethod.setAccessible(true);
            Method declaredMethod2 = Intent.class.getDeclaredMethod("putExtra", String.class, IBinder.class);
            f8828b = declaredMethod2;
            declaredMethod2.setAccessible(true);
        } catch (Exception unused) {
        }
    }

    /* renamed from: a */
    public static IBinder m10321a(Intent intent, String str) {
        try {
            return (IBinder) f8827a.invoke(intent, str);
        } catch (Exception unused) {
            return null;
        }
    }
}
