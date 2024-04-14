package com.p021b.p022a.p023a.p027d;

import com.p021b.p022a.p023a.C0650c;
import com.p021b.p032b.C0783f;
import com.p021b.p032b.InterfaceC0801x;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.b.a.a.d.f */
/* loaded from: classes.dex */
public final class C0670f extends AbstractC0666b {

    /* renamed from: d */
    final /* synthetic */ C0665a f1559d;

    /* renamed from: e */
    private long f1560e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0670f(C0665a c0665a, long j) {
        super(c0665a, (byte) 0);
        this.f1559d = c0665a;
        this.f1560e = j;
        if (this.f1560e == 0) {
            m1661a(true);
        }
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
        if (this.f1560e == 0) {
            return -1L;
        }
        long a2 = this.f1559d.f1542c.mo1543a(c0783f, Math.min(this.f1560e, j));
        if (a2 == -1) {
            m1661a(false);
            throw new ProtocolException("unexpected end of stream");
        }
        this.f1560e -= a2;
        if (this.f1560e == 0) {
            m1661a(true);
        }
        return a2;
    }

    @Override // com.p021b.p032b.InterfaceC0801x, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f1546b) {
            return;
        }
        if (this.f1560e != 0 && !C0650c.m1615a((InterfaceC0801x) this, TimeUnit.MILLISECONDS)) {
            m1661a(false);
        }
        this.f1546b = true;
    }
}
