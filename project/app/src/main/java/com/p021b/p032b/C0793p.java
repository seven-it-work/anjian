package com.p021b.p032b;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.b.b.p */
/* loaded from: classes.dex */
public final class C0793p implements InterfaceC0801x {

    /* renamed from: a */
    final /* synthetic */ C0802y f2164a;

    /* renamed from: b */
    final /* synthetic */ InputStream f2165b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0793p(C0802y c0802y, InputStream inputStream) {
        this.f2164a = c0802y;
        this.f2165b = inputStream;
    }

    @Override // com.p021b.p032b.InterfaceC0801x
    /* renamed from: a */
    public final long mo1543a(C0783f c0783f, long j) {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (j == 0) {
            return 0L;
        }
        try {
            this.f2164a.mo2097f_();
            C0797t m2049e = c0783f.m2049e(1);
            int read = this.f2165b.read(m2049e.f2173a, m2049e.f2175c, (int) Math.min(j, 8192 - m2049e.f2175c));
            if (read == -1) {
                return -1L;
            }
            m2049e.f2175c += read;
            long j2 = read;
            c0783f.f2144b += j2;
            return j2;
        } catch (AssertionError e) {
            if (C0791n.m2104a(e)) {
                throw new IOException(e);
            }
            throw e;
        }
    }

    @Override // com.p021b.p032b.InterfaceC0801x
    /* renamed from: a */
    public final C0802y mo1544a() {
        return this.f2164a;
    }

    @Override // com.p021b.p032b.InterfaceC0801x, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f2165b.close();
    }

    public final String toString() {
        return "source(" + this.f2165b + ")";
    }
}
