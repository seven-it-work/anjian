package com.p021b.p022a.p023a.p027d;

import com.p021b.p022a.p023a.C0650c;
import com.p021b.p032b.C0783f;
import com.p021b.p032b.C0788k;
import com.p021b.p032b.C0802y;
import com.p021b.p032b.InterfaceC0800w;
import java.net.ProtocolException;

/* renamed from: com.b.a.a.d.e */
/* loaded from: classes.dex */
final class C0669e implements InterfaceC0800w {

    /* renamed from: a */
    final /* synthetic */ C0665a f1555a;

    /* renamed from: b */
    private final C0788k f1556b;

    /* renamed from: c */
    private boolean f1557c;

    /* renamed from: d */
    private long f1558d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0669e(C0665a c0665a, long j) {
        this.f1555a = c0665a;
        this.f1556b = new C0788k(this.f1555a.f1543d.mo1662a());
        this.f1558d = j;
    }

    @Override // com.p021b.p032b.InterfaceC0800w
    /* renamed from: a */
    public final C0802y mo1662a() {
        return this.f1556b;
    }

    @Override // com.p021b.p032b.InterfaceC0800w
    /* renamed from: a_ */
    public final void mo1663a_(C0783f c0783f, long j) {
        if (this.f1557c) {
            throw new IllegalStateException("closed");
        }
        C0650c.m1611a(c0783f.m2036b(), j);
        if (j <= this.f1558d) {
            this.f1555a.f1543d.mo1663a_(c0783f, j);
            this.f1558d -= j;
        } else {
            throw new ProtocolException("expected " + this.f1558d + " bytes but received " + j);
        }
    }

    @Override // com.p021b.p032b.InterfaceC0800w, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f1557c) {
            return;
        }
        this.f1557c = true;
        if (this.f1558d > 0) {
            throw new ProtocolException("unexpected end of stream");
        }
        C0665a.m1657a(this.f1556b);
        this.f1555a.f1544e = 3;
    }

    @Override // com.p021b.p032b.InterfaceC0800w, java.io.Flushable
    public final void flush() {
        if (this.f1557c) {
            return;
        }
        this.f1555a.f1543d.flush();
    }
}
