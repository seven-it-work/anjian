package com.p021b.p022a;

import android.support.v7.widget.ActivityChooserView;
import java.util.concurrent.TimeUnit;

/* renamed from: com.b.a.e */
/* loaded from: classes.dex */
public final class C0755e {

    /* renamed from: a */
    public static final C0755e f1934a;

    /* renamed from: b */
    public static final C0755e f1935b;

    /* renamed from: c */
    String f1936c;

    /* renamed from: d */
    private final boolean f1937d;

    /* renamed from: e */
    private final boolean f1938e;

    /* renamed from: f */
    private final int f1939f;

    /* renamed from: g */
    private final int f1940g;

    /* renamed from: h */
    private final boolean f1941h;

    /* renamed from: i */
    private final boolean f1942i;

    /* renamed from: j */
    private final boolean f1943j;

    /* renamed from: k */
    private final int f1944k;

    /* renamed from: l */
    private final int f1945l;

    /* renamed from: m */
    private final boolean f1946m;

    /* renamed from: n */
    private final boolean f1947n;

    static {
        C0756f c0756f = new C0756f();
        c0756f.f1948a = true;
        f1934a = c0756f.m1957a();
        C0756f c0756f2 = new C0756f();
        c0756f2.f1953f = true;
        long seconds = TimeUnit.SECONDS.toSeconds(2147483647L);
        c0756f2.f1951d = seconds > 2147483647L ? ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED : (int) seconds;
        f1935b = c0756f2.m1957a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0755e(C0756f c0756f) {
        this.f1937d = c0756f.f1948a;
        this.f1938e = c0756f.f1949b;
        this.f1939f = c0756f.f1950c;
        this.f1940g = -1;
        this.f1941h = false;
        this.f1942i = false;
        this.f1943j = false;
        this.f1944k = c0756f.f1951d;
        this.f1945l = c0756f.f1952e;
        this.f1946m = c0756f.f1953f;
        this.f1947n = c0756f.f1954g;
    }

    private C0755e(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, String str) {
        this.f1937d = z;
        this.f1938e = z2;
        this.f1939f = i;
        this.f1940g = i2;
        this.f1941h = z3;
        this.f1942i = z4;
        this.f1943j = z5;
        this.f1944k = i3;
        this.f1945l = i4;
        this.f1946m = z6;
        this.f1947n = z7;
        this.f1936c = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0041  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.p021b.p022a.C0755e m1947a(com.p021b.p022a.C0728aa r23) {
        /*
            Method dump skipped, instructions count: 327
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p021b.p022a.C0755e.m1947a(com.b.a.aa):com.b.a.e");
    }

    /* renamed from: a */
    public final boolean m1948a() {
        return this.f1937d;
    }

    /* renamed from: b */
    public final boolean m1949b() {
        return this.f1938e;
    }

    /* renamed from: c */
    public final int m1950c() {
        return this.f1939f;
    }

    /* renamed from: d */
    public final boolean m1951d() {
        return this.f1941h;
    }

    /* renamed from: e */
    public final boolean m1952e() {
        return this.f1942i;
    }

    /* renamed from: f */
    public final boolean m1953f() {
        return this.f1943j;
    }

    /* renamed from: g */
    public final int m1954g() {
        return this.f1944k;
    }

    /* renamed from: h */
    public final int m1955h() {
        return this.f1945l;
    }

    /* renamed from: i */
    public final boolean m1956i() {
        return this.f1946m;
    }

    public final String toString() {
        String sb;
        String str = this.f1936c;
        if (str != null) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        if (this.f1937d) {
            sb2.append("no-cache, ");
        }
        if (this.f1938e) {
            sb2.append("no-store, ");
        }
        if (this.f1939f != -1) {
            sb2.append("max-age=");
            sb2.append(this.f1939f);
            sb2.append(", ");
        }
        if (this.f1940g != -1) {
            sb2.append("s-maxage=");
            sb2.append(this.f1940g);
            sb2.append(", ");
        }
        if (this.f1941h) {
            sb2.append("private, ");
        }
        if (this.f1942i) {
            sb2.append("public, ");
        }
        if (this.f1943j) {
            sb2.append("must-revalidate, ");
        }
        if (this.f1944k != -1) {
            sb2.append("max-stale=");
            sb2.append(this.f1944k);
            sb2.append(", ");
        }
        if (this.f1945l != -1) {
            sb2.append("min-fresh=");
            sb2.append(this.f1945l);
            sb2.append(", ");
        }
        if (this.f1946m) {
            sb2.append("only-if-cached, ");
        }
        if (this.f1947n) {
            sb2.append("no-transform, ");
        }
        if (sb2.length() == 0) {
            sb = "";
        } else {
            sb2.delete(sb2.length() - 2, sb2.length());
            sb = sb2.toString();
        }
        this.f1936c = sb;
        return sb;
    }
}
