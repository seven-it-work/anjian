package com.umeng.commonsdk.proguard;

import android.content.Context;

/* renamed from: com.umeng.commonsdk.proguard.b */
/* loaded from: classes.dex */
public class C2482b {

    /* renamed from: b */
    private static C2482b f9343b;

    /* renamed from: a */
    private Context f9344a;

    /* renamed from: c */
    private C2499c f9345c;

    private C2482b(Context context) {
        this.f9344a = context;
        this.f9345c = new C2499c(context);
    }

    /* renamed from: a */
    public static synchronized C2482b m10851a(Context context) {
        C2482b c2482b;
        synchronized (C2482b.class) {
            if (f9343b == null) {
                f9343b = new C2482b(context.getApplicationContext());
            }
            c2482b = f9343b;
        }
        return c2482b;
    }

    /* renamed from: a */
    public C2499c m10852a() {
        return this.f9345c;
    }
}
