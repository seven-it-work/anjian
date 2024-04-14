package com.p021b.p022a.p023a.p027d;

import com.p021b.p022a.C0730ac;
import com.p021b.p022a.p023a.C0650c;
import com.p021b.p022a.p023a.p026c.C0656f;
import com.p021b.p032b.C0783f;
import com.p021b.p032b.InterfaceC0801x;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;

/* renamed from: com.b.a.a.d.d */
/* loaded from: classes.dex */
final class C0668d extends AbstractC0666b {

    /* renamed from: d */
    final /* synthetic */ C0665a f1551d;

    /* renamed from: e */
    private final C0730ac f1552e;

    /* renamed from: f */
    private long f1553f;

    /* renamed from: g */
    private boolean f1554g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0668d(C0665a c0665a, C0730ac c0730ac) {
        super(c0665a, (byte) 0);
        this.f1551d = c0665a;
        this.f1553f = -1L;
        this.f1554g = true;
        this.f1552e = c0730ac;
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
        if (!this.f1554g) {
            return -1L;
        }
        if (this.f1553f == 0 || this.f1553f == -1) {
            if (this.f1553f != -1) {
                this.f1551d.f1542c.mo2066m();
            }
            try {
                this.f1553f = this.f1551d.f1542c.mo2062j();
                String trim = this.f1551d.f1542c.mo2066m().trim();
                if (this.f1553f < 0 || !(trim.isEmpty() || trim.startsWith(";"))) {
                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f1553f + trim + "\"");
                }
                if (this.f1553f == 0) {
                    this.f1554g = false;
                    C0656f.m1637a(this.f1551d.f1540a.m1873f(), this.f1552e, this.f1551d.m1660c());
                    m1661a(true);
                }
                if (!this.f1554g) {
                    return -1L;
                }
            } catch (NumberFormatException e) {
                throw new ProtocolException(e.getMessage());
            }
        }
        long a2 = this.f1551d.f1542c.mo1543a(c0783f, Math.min(j, this.f1553f));
        if (a2 == -1) {
            m1661a(false);
            throw new ProtocolException("unexpected end of stream");
        }
        this.f1553f -= a2;
        return a2;
    }

    @Override // com.p021b.p032b.InterfaceC0801x, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f1546b) {
            return;
        }
        if (this.f1554g && !C0650c.m1615a((InterfaceC0801x) this, TimeUnit.MILLISECONDS)) {
            m1661a(false);
        }
        this.f1546b = true;
    }
}
