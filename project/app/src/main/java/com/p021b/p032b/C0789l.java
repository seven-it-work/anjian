package com.p021b.p032b;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

/* renamed from: com.b.b.l */
/* loaded from: classes.dex */
public final class C0789l implements InterfaceC0801x {

    /* renamed from: b */
    private final InterfaceC0785h f2153b;

    /* renamed from: c */
    private final Inflater f2154c;

    /* renamed from: d */
    private final C0790m f2155d;

    /* renamed from: a */
    private int f2152a = 0;

    /* renamed from: e */
    private final CRC32 f2156e = new CRC32();

    public C0789l(InterfaceC0801x interfaceC0801x) {
        if (interfaceC0801x == null) {
            throw new IllegalArgumentException("source == null");
        }
        this.f2154c = new Inflater(true);
        this.f2153b = C0791n.m2102a(interfaceC0801x);
        this.f2155d = new C0790m(this.f2153b, this.f2154c);
    }

    /* renamed from: a */
    private void m2098a(C0783f c0783f, long j, long j2) {
        C0797t c0797t = c0783f.f2143a;
        while (j >= c0797t.f2175c - c0797t.f2174b) {
            long j3 = j - (c0797t.f2175c - c0797t.f2174b);
            c0797t = c0797t.f2178f;
            j = j3;
        }
        while (j2 > 0) {
            int min = (int) Math.min(c0797t.f2175c - r8, j2);
            this.f2156e.update(c0797t.f2173a, (int) (c0797t.f2174b + j), min);
            c0797t = c0797t.f2178f;
            j = 0;
            j2 -= min;
        }
    }

    /* renamed from: a */
    private static void m2099a(String str, int i, int i2) {
        if (i2 != i) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", str, Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    @Override // com.p021b.p032b.InterfaceC0801x
    /* renamed from: a */
    public final long mo1543a(C0783f c0783f, long j) {
        long j2;
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (j == 0) {
            return 0L;
        }
        if (this.f2152a == 0) {
            this.f2153b.mo2034a(10L);
            byte m2035b = this.f2153b.mo2042c().m2035b(3L);
            boolean z = ((m2035b >> 1) & 1) == 1;
            if (z) {
                m2098a(this.f2153b.mo2042c(), 0L, 10L);
            }
            m2099a("ID1ID2", 8075, this.f2153b.mo2052f());
            this.f2153b.mo2053f(8L);
            if (((m2035b >> 2) & 1) == 1) {
                this.f2153b.mo2034a(2L);
                if (z) {
                    m2098a(this.f2153b.mo2042c(), 0L, 2L);
                }
                long mo2059h = this.f2153b.mo2042c().mo2059h();
                this.f2153b.mo2034a(mo2059h);
                if (z) {
                    j2 = mo2059h;
                    m2098a(this.f2153b.mo2042c(), 0L, mo2059h);
                } else {
                    j2 = mo2059h;
                }
                this.f2153b.mo2053f(j2);
            }
            if (((m2035b >> 3) & 1) == 1) {
                long mo2023a = this.f2153b.mo2023a((byte) 0);
                if (mo2023a == -1) {
                    throw new EOFException();
                }
                if (z) {
                    m2098a(this.f2153b.mo2042c(), 0L, mo2023a + 1);
                }
                this.f2153b.mo2053f(mo2023a + 1);
            }
            if (((m2035b >> 4) & 1) == 1) {
                long mo2023a2 = this.f2153b.mo2023a((byte) 0);
                if (mo2023a2 == -1) {
                    throw new EOFException();
                }
                if (z) {
                    m2098a(this.f2153b.mo2042c(), 0L, mo2023a2 + 1);
                }
                this.f2153b.mo2053f(mo2023a2 + 1);
            }
            if (z) {
                m2099a("FHCRC", this.f2153b.mo2059h(), (short) this.f2156e.getValue());
                this.f2156e.reset();
            }
            this.f2152a = 1;
        }
        if (this.f2152a == 1) {
            long j3 = c0783f.f2144b;
            long mo1543a = this.f2155d.mo1543a(c0783f, j);
            if (mo1543a != -1) {
                m2098a(c0783f, j3, mo1543a);
                return mo1543a;
            }
            this.f2152a = 2;
        }
        if (this.f2152a == 2) {
            m2099a("CRC", this.f2153b.mo2060i(), (int) this.f2156e.getValue());
            m2099a("ISIZE", this.f2153b.mo2060i(), (int) this.f2154c.getBytesWritten());
            this.f2152a = 3;
            if (!this.f2153b.mo2047d()) {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }

    @Override // com.p021b.p032b.InterfaceC0801x
    /* renamed from: a */
    public final C0802y mo1544a() {
        return this.f2153b.mo1544a();
    }

    @Override // com.p021b.p032b.InterfaceC0801x, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f2155d.close();
    }
}
