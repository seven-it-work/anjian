package com.p021b.p022a.p023a.p028e;

import android.support.v7.widget.ActivityChooserView;
import com.p021b.p032b.C0783f;
import com.p021b.p032b.C0802y;
import com.p021b.p032b.InterfaceC0785h;
import com.p021b.p032b.InterfaceC0801x;
import java.util.logging.Level;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.b.a.a.e.z */
/* loaded from: classes.dex */
public final class C0710z implements InterfaceC0801x {

    /* renamed from: a */
    int f1734a;

    /* renamed from: b */
    byte f1735b;

    /* renamed from: c */
    int f1736c;

    /* renamed from: d */
    int f1737d;

    /* renamed from: e */
    short f1738e;

    /* renamed from: f */
    private final InterfaceC0785h f1739f;

    public C0710z(InterfaceC0785h interfaceC0785h) {
        this.f1739f = interfaceC0785h;
    }

    @Override // com.p021b.p032b.InterfaceC0801x
    /* renamed from: a */
    public final long mo1543a(C0783f c0783f, long j) {
        while (this.f1737d == 0) {
            this.f1739f.mo2053f(this.f1738e);
            this.f1738e = (short) 0;
            if ((this.f1735b & 4) != 0) {
                return -1L;
            }
            int i = this.f1736c;
            int m1773a = C0709y.m1773a(this.f1739f);
            this.f1737d = m1773a;
            this.f1734a = m1773a;
            byte mo2048e = (byte) (this.f1739f.mo2048e() & 255);
            this.f1735b = (byte) (this.f1739f.mo2048e() & 255);
            if (C0709y.f1729a.isLoggable(Level.FINE)) {
                C0709y.f1729a.fine(C0691g.m1749a(true, this.f1736c, this.f1734a, mo2048e, this.f1735b));
            }
            this.f1736c = this.f1739f.mo2054g() & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            if (mo2048e != 9) {
                throw C0691g.m1750b("%s != TYPE_CONTINUATION", Byte.valueOf(mo2048e));
            }
            if (this.f1736c != i) {
                throw C0691g.m1750b("TYPE_CONTINUATION streamId changed", new Object[0]);
            }
        }
        long a2 = this.f1739f.mo1543a(c0783f, Math.min(j, this.f1737d));
        if (a2 == -1) {
            return -1L;
        }
        this.f1737d = (int) (this.f1737d - a2);
        return a2;
    }

    @Override // com.p021b.p032b.InterfaceC0801x
    /* renamed from: a */
    public final C0802y mo1544a() {
        return this.f1739f.mo1544a();
    }

    @Override // com.p021b.p032b.InterfaceC0801x, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
