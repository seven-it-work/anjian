package org.litepal;

import java.util.List;
import org.litepal.p241e.C3030b;
import org.litepal.p241e.C3032d;

/* renamed from: org.litepal.e */
/* loaded from: classes2.dex */
public final class C3028e {

    /* renamed from: a */
    int f11052a;

    /* renamed from: b */
    String f11053b;

    /* renamed from: c */
    String f11054c;

    /* renamed from: d */
    private boolean f11055d = false;

    /* renamed from: e */
    private List<String> f11056e;

    private C3028e(String str, int i) {
        this.f11053b = str;
        this.f11052a = i;
    }

    /* renamed from: a */
    private static C3028e m13704a(String str) {
        C3030b m13742a = C3032d.m13742a();
        C3028e c3028e = new C3028e(str, m13742a.f11064a);
        c3028e.f11054c = m13742a.f11067d;
        c3028e.f11056e = m13742a.m13741a();
        return c3028e;
    }

    /* renamed from: a */
    private void m13705a(List<String> list) {
        this.f11056e = list;
    }

    /* renamed from: a */
    private void m13706a(boolean z) {
        this.f11055d = z;
    }

    /* renamed from: b */
    private int m13707b() {
        return this.f11052a;
    }

    /* renamed from: b */
    private void m13708b(String str) {
        this.f11054c = str;
    }

    /* renamed from: c */
    private String m13709c() {
        return this.f11053b;
    }

    /* renamed from: c */
    private void m13710c(String str) {
        m13713a().add(str);
    }

    /* renamed from: d */
    private String m13711d() {
        return this.f11054c;
    }

    /* renamed from: e */
    private boolean m13712e() {
        return this.f11055d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0019, code lost:
    
        if (r2.f11056e.isEmpty() != false) goto L5;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List<java.lang.String> m13713a() {
        /*
            r2 = this;
            java.util.List<java.lang.String> r0 = r2.f11056e
            if (r0 != 0) goto L13
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r2.f11056e = r0
        Lb:
            java.util.List<java.lang.String> r0 = r2.f11056e
            java.lang.String r1 = "org.litepal.model.Table_Schema"
            r0.add(r1)
            goto L1c
        L13:
            java.util.List<java.lang.String> r0 = r2.f11056e
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L1c
            goto Lb
        L1c:
            java.util.List<java.lang.String> r0 = r2.f11056e
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.litepal.C3028e.m13713a():java.util.List");
    }
}
