package com.p021b.p022a.p023a.p027d;

import com.p021b.p032b.C0783f;
import com.p021b.p032b.C0788k;
import com.p021b.p032b.C0802y;
import com.p021b.p032b.InterfaceC0800w;
import org.apache.commons.io.IOUtils;

/* renamed from: com.b.a.a.d.c */
/* loaded from: classes.dex */
final class C0667c implements InterfaceC0800w {

    /* renamed from: a */
    final /* synthetic */ C0665a f1548a;

    /* renamed from: b */
    private final C0788k f1549b;

    /* renamed from: c */
    private boolean f1550c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0667c(C0665a c0665a) {
        this.f1548a = c0665a;
        this.f1549b = new C0788k(this.f1548a.f1543d.mo1662a());
    }

    @Override // com.p021b.p032b.InterfaceC0800w
    /* renamed from: a */
    public final C0802y mo1662a() {
        return this.f1549b;
    }

    @Override // com.p021b.p032b.InterfaceC0800w
    /* renamed from: a_ */
    public final void mo1663a_(C0783f c0783f, long j) {
        if (this.f1550c) {
            throw new IllegalStateException("closed");
        }
        if (j == 0) {
            return;
        }
        this.f1548a.f1543d.mo2061i(j);
        this.f1548a.f1543d.mo2038b(IOUtils.LINE_SEPARATOR_WINDOWS);
        this.f1548a.f1543d.mo1663a_(c0783f, j);
        this.f1548a.f1543d.mo2038b(IOUtils.LINE_SEPARATOR_WINDOWS);
    }

    @Override // com.p021b.p032b.InterfaceC0800w, java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        if (this.f1550c) {
            return;
        }
        this.f1550c = true;
        this.f1548a.f1543d.mo2038b("0\r\n\r\n");
        C0665a.m1657a(this.f1549b);
        this.f1548a.f1544e = 3;
    }

    @Override // com.p021b.p032b.InterfaceC0800w, java.io.Flushable
    public final synchronized void flush() {
        if (this.f1550c) {
            return;
        }
        this.f1548a.f1543d.flush();
    }
}
