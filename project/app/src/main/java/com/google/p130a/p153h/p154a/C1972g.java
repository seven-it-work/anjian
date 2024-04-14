package com.google.p130a.p153h.p154a;

import java.util.Formatter;

/* renamed from: com.google.a.h.a.g */
/* loaded from: classes.dex */
class C1972g {

    /* renamed from: c */
    private static final int f7714c = 5;

    /* renamed from: a */
    final C1968c f7715a;

    /* renamed from: b */
    final C1969d[] f7716b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1972g(C1968c c1968c) {
        this.f7715a = new C1968c(c1968c);
        this.f7716b = new C1969d[(c1968c.f7671i - c1968c.f7670h) + 1];
    }

    /* renamed from: a */
    private C1968c m8975a() {
        return this.f7715a;
    }

    /* renamed from: b */
    private C1969d[] m8976b() {
        return this.f7716b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final C1969d m8977a(int i) {
        C1969d c1969d;
        C1969d c1969d2;
        C1969d m8980c = m8980c(i);
        if (m8980c != null) {
            return m8980c;
        }
        for (int i2 = 1; i2 < 5; i2++) {
            int m8979b = m8979b(i) - i2;
            if (m8979b >= 0 && (c1969d2 = this.f7716b[m8979b]) != null) {
                return c1969d2;
            }
            int m8979b2 = m8979b(i) + i2;
            if (m8979b2 < this.f7716b.length && (c1969d = this.f7716b[m8979b2]) != null) {
                return c1969d;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m8978a(int i, C1969d c1969d) {
        this.f7716b[m8979b(i)] = c1969d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final int m8979b(int i) {
        return i - this.f7715a.f7670h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final C1969d m8980c(int i) {
        return this.f7716b[m8979b(i)];
    }

    public String toString() {
        Formatter formatter = new Formatter();
        Throwable th = null;
        try {
            int i = 0;
            for (C1969d c1969d : this.f7716b) {
                if (c1969d == null) {
                    formatter.format("%3d:    |   %n", Integer.valueOf(i));
                    i++;
                } else {
                    formatter.format("%3d: %3d|%3d%n", Integer.valueOf(i), Integer.valueOf(c1969d.f7677e), Integer.valueOf(c1969d.f7676d));
                    i++;
                }
            }
            String formatter2 = formatter.toString();
            formatter.close();
            return formatter2;
        } catch (Throwable th2) {
            if (0 != 0) {
                try {
                    formatter.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
            } else {
                formatter.close();
            }
            throw th2;
        }
    }
}
