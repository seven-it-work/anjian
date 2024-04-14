package com.google.p130a.p153h.p154a;

import com.google.p130a.C2016m;
import com.google.p130a.C2023t;
import com.google.p130a.p137c.C1852b;

/* renamed from: com.google.a.h.a.c */
/* loaded from: classes.dex */
final class C1968c {

    /* renamed from: a */
    final C1852b f7663a;

    /* renamed from: b */
    final C2023t f7664b;

    /* renamed from: c */
    final C2023t f7665c;

    /* renamed from: d */
    final C2023t f7666d;

    /* renamed from: e */
    final C2023t f7667e;

    /* renamed from: f */
    final int f7668f;

    /* renamed from: g */
    final int f7669g;

    /* renamed from: h */
    final int f7670h;

    /* renamed from: i */
    final int f7671i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1968c(C1852b c1852b, C2023t c2023t, C2023t c2023t2, C2023t c2023t3, C2023t c2023t4) throws C2016m {
        boolean z = c2023t == null || c2023t2 == null;
        boolean z2 = c2023t3 == null || c2023t4 == null;
        if (z && z2) {
            throw C2016m.getNotFoundInstance();
        }
        if (z) {
            c2023t = new C2023t(0.0f, c2023t3.f7902b);
            c2023t2 = new C2023t(0.0f, c2023t4.f7902b);
        } else if (z2) {
            c2023t3 = new C2023t(c1852b.f7255a - 1, c2023t.f7902b);
            c2023t4 = new C2023t(c1852b.f7255a - 1, c2023t2.f7902b);
        }
        this.f7663a = c1852b;
        this.f7664b = c2023t;
        this.f7665c = c2023t2;
        this.f7666d = c2023t3;
        this.f7667e = c2023t4;
        this.f7668f = (int) Math.min(c2023t.f7901a, c2023t2.f7901a);
        this.f7669g = (int) Math.max(c2023t3.f7901a, c2023t4.f7901a);
        this.f7670h = (int) Math.min(c2023t.f7902b, c2023t3.f7902b);
        this.f7671i = (int) Math.max(c2023t2.f7902b, c2023t4.f7902b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1968c(C1968c c1968c) {
        this.f7663a = c1968c.f7663a;
        this.f7664b = c1968c.f7664b;
        this.f7665c = c1968c.f7665c;
        this.f7666d = c1968c.f7666d;
        this.f7667e = c1968c.f7667e;
        this.f7668f = c1968c.f7668f;
        this.f7669g = c1968c.f7669g;
        this.f7670h = c1968c.f7670h;
        this.f7671i = c1968c.f7671i;
    }

    /* renamed from: a */
    private int m8931a() {
        return this.f7668f;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0051  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.google.p130a.p153h.p154a.C1968c m8932a(int r13, int r14, boolean r15) throws com.google.p130a.C2016m {
        /*
            r12 = this;
            com.google.a.t r0 = r12.f7664b
            com.google.a.t r1 = r12.f7665c
            com.google.a.t r2 = r12.f7666d
            com.google.a.t r3 = r12.f7667e
            if (r13 <= 0) goto L27
            if (r15 == 0) goto Lf
            com.google.a.t r4 = r12.f7664b
            goto L11
        Lf:
            com.google.a.t r4 = r12.f7666d
        L11:
            float r5 = r4.f7902b
            int r5 = (int) r5
            int r5 = r5 - r13
            if (r5 >= 0) goto L18
            r5 = 0
        L18:
            com.google.a.t r13 = new com.google.a.t
            float r4 = r4.f7901a
            float r5 = (float) r5
            r13.<init>(r4, r5)
            if (r15 == 0) goto L24
            r8 = r13
            goto L28
        L24:
            r10 = r13
            r8 = r0
            goto L29
        L27:
            r8 = r0
        L28:
            r10 = r2
        L29:
            if (r14 <= 0) goto L51
            if (r15 == 0) goto L30
            com.google.a.t r13 = r12.f7665c
            goto L32
        L30:
            com.google.a.t r13 = r12.f7667e
        L32:
            float r0 = r13.f7902b
            int r0 = (int) r0
            int r0 = r0 + r14
            com.google.a.c.b r14 = r12.f7663a
            int r14 = r14.f7256b
            if (r0 < r14) goto L42
            com.google.a.c.b r14 = r12.f7663a
            int r14 = r14.f7256b
            int r0 = r14 + (-1)
        L42:
            com.google.a.t r14 = new com.google.a.t
            float r13 = r13.f7901a
            float r0 = (float) r0
            r14.<init>(r13, r0)
            if (r15 == 0) goto L4e
            r9 = r14
            goto L52
        L4e:
            r11 = r14
            r9 = r1
            goto L53
        L51:
            r9 = r1
        L52:
            r11 = r3
        L53:
            com.google.a.h.a.c r13 = new com.google.a.h.a.c
            com.google.a.c.b r7 = r12.f7663a
            r6 = r13
            r6.<init>(r7, r8, r9, r10, r11)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p153h.p154a.C1968c.m8932a(int, int, boolean):com.google.a.h.a.c");
    }

    /* renamed from: a */
    private static C1968c m8933a(C1968c c1968c, C1968c c1968c2) throws C2016m {
        return c1968c == null ? c1968c2 : c1968c2 == null ? c1968c : new C1968c(c1968c.f7663a, c1968c.f7664b, c1968c.f7665c, c1968c2.f7666d, c1968c2.f7667e);
    }

    /* renamed from: b */
    private int m8934b() {
        return this.f7669g;
    }

    /* renamed from: c */
    private int m8935c() {
        return this.f7670h;
    }

    /* renamed from: d */
    private int m8936d() {
        return this.f7671i;
    }

    /* renamed from: e */
    private C2023t m8937e() {
        return this.f7664b;
    }

    /* renamed from: f */
    private C2023t m8938f() {
        return this.f7666d;
    }

    /* renamed from: g */
    private C2023t m8939g() {
        return this.f7665c;
    }

    /* renamed from: h */
    private C2023t m8940h() {
        return this.f7667e;
    }
}
