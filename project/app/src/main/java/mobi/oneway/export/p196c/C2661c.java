package mobi.oneway.export.p196c;

import android.content.Context;

/* renamed from: mobi.oneway.export.c.c */
/* loaded from: classes2.dex */
public class C2661c {

    /* renamed from: a */
    private static C2661c f10219a;

    private C2661c() {
    }

    /* renamed from: a */
    public static C2661c m11971a() {
        if (f10219a == null) {
            f10219a = new C2661c();
        }
        return f10219a;
    }

    /* renamed from: a */
    public void m11972a(Context context) {
        C2659a c2659a = new C2659a(context);
        c2659a.m11969a();
        Thread.setDefaultUncaughtExceptionHandler(new C2662d(c2659a));
    }
}
