package com.cyjh.http.p094a;

import android.content.Context;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.common.util.C1151ad;
import com.cyjh.http.p104e.C1579a;

/* renamed from: com.cyjh.http.a.e */
/* loaded from: classes.dex */
public class C1486e {

    /* renamed from: b */
    private static String f5805b = "e";

    /* renamed from: c */
    private static C1486e f5806c;

    /* renamed from: a */
    public int f5807a;

    private C1486e() {
    }

    /* renamed from: a */
    public static C1486e m6883a() {
        if (f5806c == null) {
            synchronized (C1486e.class) {
                if (f5806c == null) {
                    f5806c = new C1486e();
                }
            }
        }
        return f5806c;
    }

    /* renamed from: a */
    private C1486e m6884a(int i) {
        C1151ad.m4325c(f5805b, "init --> redFingerSwitch=" + i);
        this.f5807a = i;
        return this;
    }

    /* renamed from: a */
    private boolean m6885a(Context context) {
        return C1579a.m7022a(context, InterfaceC1133a.f3974aw) && this.f5807a == 1;
    }
}
