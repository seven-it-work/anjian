package com.iflytek.voiceads.p170a;

import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  assets/AdDex.4.0.1.dex
 */
/* renamed from: com.iflytek.voiceads.a.a */
/* loaded from: classes.dex */
public class C2209a {

    /* renamed from: a */
    private static Locale f8297a = Locale.US;

    /* renamed from: a */
    public static String m9782a(int i) {
        String[] strArr = C2210b.f8298a;
        if (f8297a.equals(Locale.US)) {
            strArr = C2211c.f8300a;
        }
        return (i <= 0 || i >= strArr.length) ? m9783b(1) : strArr[i];
    }

    /* renamed from: b */
    public static String m9783b(int i) {
        String[] strArr = C2210b.f8299b;
        if (f8297a.equals(Locale.US)) {
            strArr = C2211c.f8301b;
        }
        return (i < 0 || i >= strArr.length) ? "" : strArr[i];
    }
}
