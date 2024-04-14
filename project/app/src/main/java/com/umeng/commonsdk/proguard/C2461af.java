package com.umeng.commonsdk.proguard;

import java.lang.reflect.InvocationTargetException;

/* renamed from: com.umeng.commonsdk.proguard.af */
/* loaded from: classes.dex */
public class C2461af {
    /* renamed from: a */
    public static InterfaceC2460ae m10737a(Class<? extends InterfaceC2460ae> cls, int i) {
        try {
            return (InterfaceC2460ae) cls.getMethod("findByValue", Integer.TYPE).invoke(null, Integer.valueOf(i));
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return null;
        }
    }
}
