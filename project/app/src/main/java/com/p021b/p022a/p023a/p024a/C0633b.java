package com.p021b.p022a.p023a.p024a;

import com.p021b.p022a.p023a.C0650c;
import com.p021b.p032b.C0783f;
import com.p021b.p032b.C0802y;
import com.p021b.p032b.InterfaceC0784g;
import com.p021b.p032b.InterfaceC0785h;
import com.p021b.p032b.InterfaceC0801x;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* renamed from: com.b.a.a.a.b */
/* loaded from: classes.dex */
final class C0633b implements InterfaceC0801x {

    /* renamed from: a */
    boolean f1413a;

    /* renamed from: b */
    final /* synthetic */ InterfaceC0785h f1414b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC0634c f1415c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC0784g f1416d;

    /* renamed from: e */
    final /* synthetic */ C0632a f1417e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0633b(C0632a c0632a, InterfaceC0785h interfaceC0785h, InterfaceC0634c interfaceC0634c, InterfaceC0784g interfaceC0784g) {
        this.f1417e = c0632a;
        this.f1414b = interfaceC0785h;
        this.f1415c = interfaceC0634c;
        this.f1416d = interfaceC0784g;
    }

    @Override // com.p021b.p032b.InterfaceC0801x
    /* renamed from: a */
    public final long mo1543a(C0783f c0783f, long j) {
        try {
            long a2 = this.f1414b.mo1543a(c0783f, j);
            if (a2 != -1) {
                c0783f.m2027a(this.f1416d.mo2042c(), c0783f.m2036b() - a2, a2);
                this.f1416d.mo2069p();
                return a2;
            }
            if (!this.f1413a) {
                this.f1413a = true;
                this.f1416d.close();
            }
            return -1L;
        } catch (IOException e) {
            if (!this.f1413a) {
                this.f1413a = true;
            }
            throw e;
        }
    }

    @Override // com.p021b.p032b.InterfaceC0801x
    /* renamed from: a */
    public final C0802y mo1544a() {
        return this.f1414b.mo1544a();
    }

    @Override // com.p021b.p032b.InterfaceC0801x, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (!this.f1413a && !C0650c.m1615a((InterfaceC0801x) this, TimeUnit.MILLISECONDS)) {
            this.f1413a = true;
        }
        this.f1414b.close();
    }
}
