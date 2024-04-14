package com.p021b.p032b;

import java.io.OutputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.b.b.o */
/* loaded from: classes.dex */
public final class C0792o implements InterfaceC0800w {

    /* renamed from: a */
    final /* synthetic */ C0802y f2162a;

    /* renamed from: b */
    final /* synthetic */ OutputStream f2163b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0792o(C0802y c0802y, OutputStream outputStream) {
        this.f2162a = c0802y;
        this.f2163b = outputStream;
    }

    @Override // com.p021b.p032b.InterfaceC0800w
    /* renamed from: a */
    public final C0802y mo1662a() {
        return this.f2162a;
    }

    @Override // com.p021b.p032b.InterfaceC0800w
    /* renamed from: a_ */
    public final void mo1663a_(C0783f c0783f, long j) {
        C0778aa.m2015a(c0783f.f2144b, 0L, j);
        while (j > 0) {
            this.f2162a.mo2097f_();
            C0797t c0797t = c0783f.f2143a;
            int min = (int) Math.min(j, c0797t.f2175c - c0797t.f2174b);
            this.f2163b.write(c0797t.f2173a, c0797t.f2174b, min);
            c0797t.f2174b += min;
            long j2 = min;
            long j3 = j - j2;
            c0783f.f2144b -= j2;
            if (c0797t.f2174b == c0797t.f2175c) {
                c0783f.f2143a = c0797t.m2108a();
                C0798u.m2112a(c0797t);
            }
            j = j3;
        }
    }

    @Override // com.p021b.p032b.InterfaceC0800w, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f2163b.close();
    }

    @Override // com.p021b.p032b.InterfaceC0800w, java.io.Flushable
    public final void flush() {
        this.f2163b.flush();
    }

    public final String toString() {
        return "sink(" + this.f2163b + ")";
    }
}
