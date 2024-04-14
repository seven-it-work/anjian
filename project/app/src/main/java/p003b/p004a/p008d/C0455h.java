package p003b.p004a.p008d;

import p003b.AbstractC0497af;
import p003b.C0523u;
import p003b.C0526x;
import p017c.InterfaceC0537e;

/* renamed from: b.a.d.h */
/* loaded from: classes.dex */
public final class C0455h extends AbstractC0497af {

    /* renamed from: a */
    private final C0523u f243a;

    /* renamed from: b */
    private final InterfaceC0537e f244b;

    public C0455h(C0523u c0523u, InterfaceC0537e interfaceC0537e) {
        this.f243a = c0523u;
        this.f244b = interfaceC0537e;
    }

    @Override // p003b.AbstractC0497af
    public final long contentLength() {
        return C0452e.m231a(this.f243a);
    }

    @Override // p003b.AbstractC0497af
    public final C0526x contentType() {
        String m852a = this.f243a.m852a("Content-Type");
        if (m852a != null) {
            return C0526x.m956a(m852a);
        }
        return null;
    }

    @Override // p003b.AbstractC0497af
    public final InterfaceC0537e source() {
        return this.f244b;
    }
}
