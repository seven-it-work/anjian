package com.p021b.p032b;

import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* renamed from: com.b.b.y */
/* loaded from: classes.dex */
public class C0802y {

    /* renamed from: b */
    public static final C0802y f2184b = new C0803z();

    /* renamed from: a */
    private boolean f2185a;

    /* renamed from: c */
    private long f2186c;

    /* renamed from: d */
    private long f2187d;

    /* renamed from: a */
    public C0802y mo2090a(long j) {
        this.f2185a = true;
        this.f2186c = j;
        return this;
    }

    /* renamed from: a */
    public C0802y mo2091a(long j, TimeUnit timeUnit) {
        if (j < 0) {
            throw new IllegalArgumentException("timeout < 0: " + j);
        }
        if (timeUnit == null) {
            throw new IllegalArgumentException("unit == null");
        }
        this.f2187d = timeUnit.toNanos(j);
        return this;
    }

    /* renamed from: b_ */
    public long mo2092b_() {
        return this.f2187d;
    }

    /* renamed from: c_ */
    public boolean mo2093c_() {
        return this.f2185a;
    }

    /* renamed from: d */
    public long mo2094d() {
        if (this.f2185a) {
            return this.f2186c;
        }
        throw new IllegalStateException("No deadline");
    }

    /* renamed from: d_ */
    public C0802y mo2095d_() {
        this.f2187d = 0L;
        return this;
    }

    /* renamed from: e_ */
    public C0802y mo2096e_() {
        this.f2185a = false;
        return this;
    }

    /* renamed from: f_ */
    public void mo2097f_() {
        if (Thread.interrupted()) {
            throw new InterruptedIOException("thread interrupted");
        }
        if (this.f2185a && this.f2186c - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }
}
