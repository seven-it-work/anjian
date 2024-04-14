package com.cyjh.elfin.p077e.p080c;

import android.content.Context;
import com.cyjh.common.util.C1168k;

/* renamed from: com.cyjh.elfin.e.c.f */
/* loaded from: classes.dex */
public final class C1255f {

    /* renamed from: a */
    private static C1255f f4678a;

    private C1255f() {
    }

    /* renamed from: a */
    public static synchronized C1255f m5689a() {
        C1255f c1255f;
        synchronized (C1255f.class) {
            if (f4678a == null) {
                f4678a = new C1255f();
            }
            c1255f = f4678a;
        }
        return c1255f;
    }

    /* renamed from: a */
    public static void m5690a(Context context, String str) {
        if (C1168k.f4078a) {
            if (C1168k.m4444a(C1168k.m4440a(context))) {
                C1168k.m4447a(C1168k.m4440a(context), "", false);
            }
            C1168k.m4447a(C1168k.m4440a(context), str, true);
        }
    }
}
