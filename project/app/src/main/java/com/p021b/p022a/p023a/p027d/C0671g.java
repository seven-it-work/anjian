package com.p021b.p022a.p023a.p027d;

import com.p021b.p032b.C0783f;

/* renamed from: com.b.a.a.d.g */
/* loaded from: classes.dex */
final class C0671g extends AbstractC0666b {

    /* renamed from: d */
    final /* synthetic */ C0665a f1561d;

    /* renamed from: e */
    private boolean f1562e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0671g(C0665a c0665a) {
        super(c0665a, (byte) 0);
        this.f1561d = c0665a;
    }

    @Override // com.p021b.p032b.InterfaceC0801x
    /* renamed from: a */
    public final long mo1543a(C0783f c0783f, long j) {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (this.f1546b) {
            throw new IllegalStateException("closed");
        }
        if (this.f1562e) {
            return -1L;
        }
        long a2 = this.f1561d.f1542c.mo1543a(c0783f, j);
        if (a2 != -1) {
            return a2;
        }
        this.f1562e = true;
        m1661a(true);
        return -1L;
    }

    @Override // com.p021b.p032b.InterfaceC0801x, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f1546b) {
            return;
        }
        if (!this.f1562e) {
            m1661a(false);
        }
        this.f1546b = true;
    }
}
