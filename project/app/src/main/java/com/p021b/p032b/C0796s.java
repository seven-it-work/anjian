package com.p021b.p032b;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.EOFException;
import java.nio.charset.Charset;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.b.b.s */
/* loaded from: classes.dex */
public final class C0796s implements InterfaceC0785h {

    /* renamed from: a */
    public final C0783f f2170a = new C0783f();

    /* renamed from: b */
    public final InterfaceC0801x f2171b;

    /* renamed from: c */
    boolean f2172c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0796s(InterfaceC0801x interfaceC0801x) {
        if (interfaceC0801x == null) {
            throw new NullPointerException("source == null");
        }
        this.f2171b = interfaceC0801x;
    }

    /* renamed from: b */
    private boolean m2107b(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (this.f2172c) {
            throw new IllegalStateException("closed");
        }
        while (this.f2170a.f2144b < j) {
            if (this.f2171b.mo1543a(this.f2170a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return false;
            }
        }
        return true;
    }

    @Override // com.p021b.p032b.InterfaceC0785h
    /* renamed from: a */
    public final long mo2023a(byte b2) {
        if (this.f2172c) {
            throw new IllegalStateException("closed");
        }
        long j = 0;
        while (true) {
            long m2024a = this.f2170a.m2024a(b2, j);
            if (m2024a != -1) {
                return m2024a;
            }
            long j2 = this.f2170a.f2144b;
            if (this.f2171b.mo1543a(this.f2170a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return -1L;
            }
            j = Math.max(j, j2);
        }
    }

    @Override // com.p021b.p032b.InterfaceC0801x
    /* renamed from: a */
    public final long mo1543a(C0783f c0783f, long j) {
        if (c0783f == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (this.f2172c) {
            throw new IllegalStateException("closed");
        }
        if (this.f2170a.f2144b == 0 && this.f2171b.mo1543a(this.f2170a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1L;
        }
        return this.f2170a.mo1543a(c0783f, Math.min(j, this.f2170a.f2144b));
    }

    @Override // com.p021b.p032b.InterfaceC0801x
    /* renamed from: a */
    public final C0802y mo1544a() {
        return this.f2171b.mo1544a();
    }

    @Override // com.p021b.p032b.InterfaceC0785h
    /* renamed from: a */
    public final String mo2033a(Charset charset) {
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        this.f2170a.m2025a(this.f2171b);
        return this.f2170a.mo2033a(charset);
    }

    @Override // com.p021b.p032b.InterfaceC0785h
    /* renamed from: a */
    public final void mo2034a(long j) {
        if (!m2107b(j)) {
            throw new EOFException();
        }
    }

    @Override // com.p021b.p032b.InterfaceC0785h
    /* renamed from: b */
    public final boolean mo2041b(C0786i c0786i) {
        int mo2086g = c0786i.mo2086g();
        if (this.f2172c) {
            throw new IllegalStateException("closed");
        }
        if (mo2086g < 0 || c0786i.mo2086g() - 0 < mo2086g) {
            return false;
        }
        for (int i = 0; i < mo2086g; i++) {
            long j = i + 0;
            if (!m2107b(j + 1) || this.f2170a.m2035b(j) != c0786i.mo2075a(i + 0)) {
                return false;
            }
        }
        return true;
    }

    @Override // com.p021b.p032b.InterfaceC0785h
    /* renamed from: c */
    public final C0783f mo2042c() {
        return this.f2170a;
    }

    @Override // com.p021b.p032b.InterfaceC0785h
    /* renamed from: c */
    public final C0786i mo2044c(long j) {
        mo2034a(j);
        return this.f2170a.mo2044c(j);
    }

    @Override // com.p021b.p032b.InterfaceC0801x, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f2172c) {
            return;
        }
        this.f2172c = true;
        this.f2171b.close();
        this.f2170a.m2068o();
    }

    @Override // com.p021b.p032b.InterfaceC0785h
    /* renamed from: d */
    public final boolean mo2047d() {
        if (this.f2172c) {
            throw new IllegalStateException("closed");
        }
        return this.f2170a.mo2047d() && this.f2171b.mo1543a(this.f2170a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1;
    }

    @Override // com.p021b.p032b.InterfaceC0785h
    /* renamed from: e */
    public final byte mo2048e() {
        mo2034a(1L);
        return this.f2170a.mo2048e();
    }

    @Override // com.p021b.p032b.InterfaceC0785h
    /* renamed from: e */
    public final byte[] mo2050e(long j) {
        mo2034a(j);
        return this.f2170a.mo2050e(j);
    }

    @Override // com.p021b.p032b.InterfaceC0785h
    /* renamed from: f */
    public final short mo2052f() {
        mo2034a(2L);
        return this.f2170a.mo2052f();
    }

    @Override // com.p021b.p032b.InterfaceC0785h
    /* renamed from: f */
    public final void mo2053f(long j) {
        if (this.f2172c) {
            throw new IllegalStateException("closed");
        }
        while (j > 0) {
            if (this.f2170a.f2144b == 0 && this.f2171b.mo1543a(this.f2170a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                throw new EOFException();
            }
            long min = Math.min(j, this.f2170a.f2144b);
            this.f2170a.mo2053f(min);
            j -= min;
        }
    }

    @Override // com.p021b.p032b.InterfaceC0785h
    /* renamed from: g */
    public final int mo2054g() {
        mo2034a(4L);
        return this.f2170a.mo2054g();
    }

    @Override // com.p021b.p032b.InterfaceC0785h
    /* renamed from: h */
    public final short mo2059h() {
        mo2034a(2L);
        return C0778aa.m2014a(this.f2170a.mo2052f());
    }

    @Override // com.p021b.p032b.InterfaceC0785h
    /* renamed from: i */
    public final int mo2060i() {
        mo2034a(4L);
        return C0778aa.m2013a(this.f2170a.mo2054g());
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0032, code lost:
    
        if (r1 != 0) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0048, code lost:
    
        throw new java.lang.NumberFormatException(java.lang.String.format("Expected leading [0-9a-fA-F] character but was %#x", java.lang.Byte.valueOf(r3)));
     */
    @Override // com.p021b.p032b.InterfaceC0785h
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long mo2062j() {
        /*
            r6 = this;
            r0 = 1
            r6.mo2034a(r0)
            r0 = 0
            r1 = 0
        L7:
            int r2 = r1 + 1
            long r3 = (long) r2
            boolean r3 = r6.m2107b(r3)
            if (r3 == 0) goto L49
            com.b.b.f r3 = r6.f2170a
            long r4 = (long) r1
            byte r3 = r3.m2035b(r4)
            r4 = 48
            if (r3 < r4) goto L1f
            r4 = 57
            if (r3 <= r4) goto L30
        L1f:
            r4 = 97
            if (r3 < r4) goto L27
            r4 = 102(0x66, float:1.43E-43)
            if (r3 <= r4) goto L30
        L27:
            r4 = 65
            if (r3 < r4) goto L32
            r4 = 70
            if (r3 <= r4) goto L30
            goto L32
        L30:
            r1 = r2
            goto L7
        L32:
            if (r1 != 0) goto L49
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.String r2 = "Expected leading [0-9a-fA-F] character but was %#x"
            r4 = 1
            java.lang.Object[] r4 = new java.lang.Object[r4]
            java.lang.Byte r3 = java.lang.Byte.valueOf(r3)
            r4[r0] = r3
            java.lang.String r0 = java.lang.String.format(r2, r4)
            r1.<init>(r0)
            throw r1
        L49:
            com.b.b.f r0 = r6.f2170a
            long r0 = r0.mo2062j()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p021b.p032b.C0796s.mo2062j():long");
    }

    @Override // com.p021b.p032b.InterfaceC0785h
    /* renamed from: m */
    public final String mo2066m() {
        long mo2023a = mo2023a((byte) 10);
        if (mo2023a != -1) {
            return this.f2170a.m2046d(mo2023a);
        }
        C0783f c0783f = new C0783f();
        this.f2170a.m2027a(c0783f, 0L, Math.min(32L, this.f2170a.f2144b));
        throw new EOFException("\\n not found: size=" + this.f2170a.f2144b + " content=" + c0783f.m2064k().mo2084e() + "…");
    }

    public final String toString() {
        return "buffer(" + this.f2171b + ")";
    }
}
