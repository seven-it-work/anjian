package com.p021b.p032b;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* renamed from: com.b.b.a */
/* loaded from: classes.dex */
public class C0777a extends C0802y {

    /* renamed from: a */
    private static final long f2129a = TimeUnit.SECONDS.toMillis(60);

    /* renamed from: c */
    private static final long f2130c = TimeUnit.MILLISECONDS.toNanos(f2129a);

    /* renamed from: d */
    private static C0777a f2131d;

    /* renamed from: e */
    private boolean f2132e;

    /* renamed from: f */
    private C0777a f2133f;

    /* renamed from: g */
    private long f2134g;

    /* renamed from: a */
    private static synchronized void m2004a(C0777a c0777a, long j, boolean z) {
        synchronized (C0777a.class) {
            if (f2131d == null) {
                f2131d = new C0777a();
                new C0781d().start();
            }
            long nanoTime = System.nanoTime();
            if (j != 0 && z) {
                c0777a.f2134g = nanoTime + Math.min(j, c0777a.mo2094d() - nanoTime);
            } else if (j != 0) {
                c0777a.f2134g = nanoTime + j;
            } else {
                if (!z) {
                    throw new AssertionError();
                }
                c0777a.f2134g = c0777a.mo2094d();
            }
            long j2 = c0777a.f2134g - nanoTime;
            C0777a c0777a2 = f2131d;
            while (c0777a2.f2133f != null && j2 >= c0777a2.f2133f.f2134g - nanoTime) {
                c0777a2 = c0777a2.f2133f;
            }
            c0777a.f2133f = c0777a2.f2133f;
            c0777a2.f2133f = c0777a;
            if (c0777a2 == f2131d) {
                C0777a.class.notify();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x000b, code lost:
    
        r1.f2133f = r3.f2133f;
        r3.f2133f = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0012, code lost:
    
        r3 = false;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static synchronized boolean m2005a(com.p021b.p032b.C0777a r3) {
        /*
            java.lang.Class<com.b.b.a> r0 = com.p021b.p032b.C0777a.class
            monitor-enter(r0)
            com.b.b.a r1 = com.p021b.p032b.C0777a.f2131d     // Catch: java.lang.Throwable -> L1a
        L5:
            if (r1 == 0) goto L18
            com.b.b.a r2 = r1.f2133f     // Catch: java.lang.Throwable -> L1a
            if (r2 != r3) goto L15
            com.b.b.a r2 = r3.f2133f     // Catch: java.lang.Throwable -> L1a
            r1.f2133f = r2     // Catch: java.lang.Throwable -> L1a
            r1 = 0
            r3.f2133f = r1     // Catch: java.lang.Throwable -> L1a
            r3 = 0
        L13:
            monitor-exit(r0)
            return r3
        L15:
            com.b.b.a r1 = r1.f2133f     // Catch: java.lang.Throwable -> L1a
            goto L5
        L18:
            r3 = 1
            goto L13
        L1a:
            r3 = move-exception
            monitor-exit(r0)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p021b.p032b.C0777a.m2005a(com.b.b.a):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static C0777a m2006e() {
        C0777a c0777a = f2131d.f2133f;
        if (c0777a == null) {
            long nanoTime = System.nanoTime();
            C0777a.class.wait(f2129a);
            if (f2131d.f2133f != null || System.nanoTime() - nanoTime < f2130c) {
                return null;
            }
            return f2131d;
        }
        long nanoTime2 = c0777a.f2134g - System.nanoTime();
        if (nanoTime2 > 0) {
            long j = nanoTime2 / 1000000;
            C0777a.class.wait(j, (int) (nanoTime2 - (1000000 * j)));
            return null;
        }
        f2131d.f2133f = c0777a.f2133f;
        c0777a.f2133f = null;
        return c0777a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static /* synthetic */ C0777a m2008g() {
        f2131d = null;
        return null;
    }

    /* renamed from: a */
    public IOException mo1691a(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    /* renamed from: a */
    public void mo1692a() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m2009a(boolean z) {
        if (m2010a_() && z) {
            throw mo1691a((IOException) null);
        }
    }

    /* renamed from: a_ */
    public final boolean m2010a_() {
        if (!this.f2132e) {
            return false;
        }
        this.f2132e = false;
        return m2005a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final IOException m2011b(IOException iOException) {
        return !m2010a_() ? iOException : mo1691a(iOException);
    }

    /* renamed from: c */
    public final void m2012c() {
        if (this.f2132e) {
            throw new IllegalStateException("Unbalanced enter/exit");
        }
        long b_ = mo2092b_();
        boolean c_ = mo2093c_();
        if (b_ != 0 || c_) {
            this.f2132e = true;
            m2004a(this, b_, c_);
        }
    }
}
