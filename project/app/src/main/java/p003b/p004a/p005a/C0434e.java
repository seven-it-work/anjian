package p003b.p004a.p005a;

import java.io.IOException;
import p017c.AbstractC0540h;
import p017c.C0535c;
import p017c.InterfaceC0556x;

/* renamed from: b.a.a.e */
/* loaded from: classes.dex */
class C0434e extends AbstractC0540h {

    /* renamed from: a */
    private boolean f138a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0434e(InterfaceC0556x interfaceC0556x) {
        super(interfaceC0556x);
    }

    /* renamed from: a */
    protected void mo97a() {
    }

    @Override // p017c.AbstractC0540h, p017c.InterfaceC0556x
    /* renamed from: a */
    public final void mo114a(C0535c c0535c, long j) throws IOException {
        if (this.f138a) {
            c0535c.mo1145h(j);
            return;
        }
        try {
            super.mo114a(c0535c, j);
        } catch (IOException unused) {
            this.f138a = true;
            mo97a();
        }
    }

    @Override // p017c.AbstractC0540h, p017c.InterfaceC0556x, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f138a) {
            return;
        }
        try {
            super.close();
        } catch (IOException unused) {
            this.f138a = true;
            mo97a();
        }
    }

    @Override // p017c.AbstractC0540h, p017c.InterfaceC0556x, java.io.Flushable
    public void flush() throws IOException {
        if (this.f138a) {
            return;
        }
        try {
            super.flush();
        } catch (IOException unused) {
            this.f138a = true;
            mo97a();
        }
    }
}
