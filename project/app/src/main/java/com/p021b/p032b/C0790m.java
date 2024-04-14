package com.p021b.p032b;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* renamed from: com.b.b.m */
/* loaded from: classes.dex */
public final class C0790m implements InterfaceC0801x {

    /* renamed from: a */
    private final InterfaceC0785h f2157a;

    /* renamed from: b */
    private final Inflater f2158b;

    /* renamed from: c */
    private int f2159c;

    /* renamed from: d */
    private boolean f2160d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0790m(InterfaceC0785h interfaceC0785h, Inflater inflater) {
        if (interfaceC0785h == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (inflater == null) {
            throw new IllegalArgumentException("inflater == null");
        }
        this.f2157a = interfaceC0785h;
        this.f2158b = inflater;
    }

    /* renamed from: b */
    private void m2100b() {
        if (this.f2159c == 0) {
            return;
        }
        int remaining = this.f2159c - this.f2158b.getRemaining();
        this.f2159c -= remaining;
        this.f2157a.mo2053f(remaining);
    }

    @Override // com.p021b.p032b.InterfaceC0801x
    /* renamed from: a */
    public final long mo1543a(C0783f c0783f, long j) {
        boolean z;
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (this.f2160d) {
            throw new IllegalStateException("closed");
        }
        if (j == 0) {
            return 0L;
        }
        do {
            z = false;
            if (this.f2158b.needsInput()) {
                m2100b();
                if (this.f2158b.getRemaining() != 0) {
                    throw new IllegalStateException("?");
                }
                if (this.f2157a.mo2047d()) {
                    z = true;
                } else {
                    C0797t c0797t = this.f2157a.mo2042c().f2143a;
                    this.f2159c = c0797t.f2175c - c0797t.f2174b;
                    this.f2158b.setInput(c0797t.f2173a, c0797t.f2174b, this.f2159c);
                }
            }
            try {
                C0797t m2049e = c0783f.m2049e(1);
                int inflate = this.f2158b.inflate(m2049e.f2173a, m2049e.f2175c, 8192 - m2049e.f2175c);
                if (inflate > 0) {
                    m2049e.f2175c += inflate;
                    long j2 = inflate;
                    c0783f.f2144b += j2;
                    return j2;
                }
                if (!this.f2158b.finished() && !this.f2158b.needsDictionary()) {
                }
                m2100b();
                if (m2049e.f2174b != m2049e.f2175c) {
                    return -1L;
                }
                c0783f.f2143a = m2049e.m2108a();
                C0798u.m2112a(m2049e);
                return -1L;
            } catch (DataFormatException e) {
                throw new IOException(e);
            }
        } while (!z);
        throw new EOFException("source exhausted prematurely");
    }

    @Override // com.p021b.p032b.InterfaceC0801x
    /* renamed from: a */
    public final C0802y mo1544a() {
        return this.f2157a.mo1544a();
    }

    @Override // com.p021b.p032b.InterfaceC0801x, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f2160d) {
            return;
        }
        this.f2158b.end();
        this.f2160d = true;
        this.f2157a.close();
    }
}
