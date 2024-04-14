package com.p021b.p032b;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.b.b.r */
/* loaded from: classes.dex */
public final class C0795r implements InterfaceC0784g {

    /* renamed from: a */
    public final C0783f f2167a = new C0783f();

    /* renamed from: b */
    public final InterfaceC0800w f2168b;

    /* renamed from: c */
    boolean f2169c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0795r(InterfaceC0800w interfaceC0800w) {
        if (interfaceC0800w == null) {
            throw new NullPointerException("sink == null");
        }
        this.f2168b = interfaceC0800w;
    }

    @Override // com.p021b.p032b.InterfaceC0800w
    /* renamed from: a */
    public final C0802y mo1662a() {
        return this.f2168b.mo1662a();
    }

    @Override // com.p021b.p032b.InterfaceC0800w
    /* renamed from: a_ */
    public final void mo1663a_(C0783f c0783f, long j) {
        if (this.f2169c) {
            throw new IllegalStateException("closed");
        }
        this.f2167a.mo1663a_(c0783f, j);
        mo2069p();
    }

    @Override // com.p021b.p032b.InterfaceC0784g
    /* renamed from: b */
    public final InterfaceC0784g mo2038b(String str) {
        if (this.f2169c) {
            throw new IllegalStateException("closed");
        }
        this.f2167a.mo2038b(str);
        return mo2069p();
    }

    @Override // com.p021b.p032b.InterfaceC0784g
    /* renamed from: b */
    public final InterfaceC0784g mo2039b(byte[] bArr) {
        if (this.f2169c) {
            throw new IllegalStateException("closed");
        }
        this.f2167a.mo2039b(bArr);
        return mo2069p();
    }

    @Override // com.p021b.p032b.InterfaceC0784g
    /* renamed from: b */
    public final InterfaceC0784g mo2040b(byte[] bArr, int i, int i2) {
        if (this.f2169c) {
            throw new IllegalStateException("closed");
        }
        this.f2167a.mo2040b(bArr, i, i2);
        return mo2069p();
    }

    @Override // com.p021b.p032b.InterfaceC0784g, com.p021b.p032b.InterfaceC0785h
    /* renamed from: c */
    public final C0783f mo2042c() {
        return this.f2167a;
    }

    @Override // com.p021b.p032b.InterfaceC0800w, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f2169c) {
            return;
        }
        Throwable th = null;
        try {
            if (this.f2167a.f2144b > 0) {
                this.f2168b.mo1663a_(this.f2167a, this.f2167a.f2144b);
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.f2168b.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        this.f2169c = true;
        if (th != null) {
            C0778aa.m2016a(th);
        }
    }

    @Override // com.p021b.p032b.InterfaceC0784g
    /* renamed from: f */
    public final InterfaceC0784g mo2051f(int i) {
        if (this.f2169c) {
            throw new IllegalStateException("closed");
        }
        this.f2167a.mo2051f(i);
        return mo2069p();
    }

    @Override // com.p021b.p032b.InterfaceC0784g, com.p021b.p032b.InterfaceC0800w, java.io.Flushable
    public final void flush() {
        if (this.f2169c) {
            throw new IllegalStateException("closed");
        }
        if (this.f2167a.f2144b > 0) {
            this.f2168b.mo1663a_(this.f2167a, this.f2167a.f2144b);
        }
        this.f2168b.flush();
    }

    @Override // com.p021b.p032b.InterfaceC0784g
    /* renamed from: g */
    public final InterfaceC0784g mo2056g(int i) {
        if (this.f2169c) {
            throw new IllegalStateException("closed");
        }
        this.f2167a.mo2056g(i);
        return mo2069p();
    }

    @Override // com.p021b.p032b.InterfaceC0784g
    /* renamed from: h */
    public final InterfaceC0784g mo2058h(int i) {
        if (this.f2169c) {
            throw new IllegalStateException("closed");
        }
        this.f2167a.mo2058h(i);
        return mo2069p();
    }

    @Override // com.p021b.p032b.InterfaceC0784g
    /* renamed from: i */
    public final InterfaceC0784g mo2061i(long j) {
        if (this.f2169c) {
            throw new IllegalStateException("closed");
        }
        this.f2167a.mo2061i(j);
        return mo2069p();
    }

    @Override // com.p021b.p032b.InterfaceC0784g
    /* renamed from: j */
    public final InterfaceC0784g mo2063j(long j) {
        if (this.f2169c) {
            throw new IllegalStateException("closed");
        }
        this.f2167a.mo2063j(j);
        return mo2069p();
    }

    @Override // com.p021b.p032b.InterfaceC0784g
    /* renamed from: p */
    public final InterfaceC0784g mo2069p() {
        if (this.f2169c) {
            throw new IllegalStateException("closed");
        }
        C0783f c0783f = this.f2167a;
        long j = c0783f.f2144b;
        if (j == 0) {
            j = 0;
        } else {
            C0797t c0797t = c0783f.f2143a.f2179g;
            if (c0797t.f2175c < 8192 && c0797t.f2177e) {
                j -= c0797t.f2175c - c0797t.f2174b;
            }
        }
        if (j > 0) {
            this.f2168b.mo1663a_(this.f2167a, j);
        }
        return this;
    }

    public final String toString() {
        return "buffer(" + this.f2168b + ")";
    }
}
