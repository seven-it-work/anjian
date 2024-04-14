package com.p021b.p022a.p023a.p027d;

import com.p021b.p032b.C0788k;
import com.p021b.p032b.C0802y;
import com.p021b.p032b.InterfaceC0801x;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.b.a.a.d.b */
/* loaded from: classes.dex */
public abstract class AbstractC0666b implements InterfaceC0801x {

    /* renamed from: a */
    protected final C0788k f1545a;

    /* renamed from: b */
    protected boolean f1546b;

    /* renamed from: c */
    final /* synthetic */ C0665a f1547c;

    private AbstractC0666b(C0665a c0665a) {
        this.f1547c = c0665a;
        this.f1545a = new C0788k(this.f1547c.f1542c.mo1544a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ AbstractC0666b(C0665a c0665a, byte b2) {
        this(c0665a);
    }

    @Override // com.p021b.p032b.InterfaceC0801x
    /* renamed from: a */
    public final C0802y mo1544a() {
        return this.f1545a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m1661a(boolean z) {
        if (this.f1547c.f1544e == 6) {
            return;
        }
        if (this.f1547c.f1544e != 5) {
            throw new IllegalStateException("state: " + this.f1547c.f1544e);
        }
        C0665a.m1657a(this.f1545a);
        this.f1547c.f1544e = 6;
        if (this.f1547c.f1541b != null) {
            this.f1547c.f1541b.m1594a(!z, this.f1547c);
        }
    }
}
