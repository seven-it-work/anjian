package p017c;

import java.io.IOException;

/* renamed from: c.h */
/* loaded from: classes.dex */
public abstract class AbstractC0540h implements InterfaceC0556x {

    /* renamed from: a */
    private final InterfaceC0556x f1092a;

    public AbstractC0540h(InterfaceC0556x interfaceC0556x) {
        if (interfaceC0556x == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f1092a = interfaceC0556x;
    }

    /* renamed from: a */
    private InterfaceC0556x m1181a() {
        return this.f1092a;
    }

    @Override // p017c.InterfaceC0556x
    /* renamed from: a */
    public void mo114a(C0535c c0535c, long j) throws IOException {
        this.f1092a.mo114a(c0535c, j);
    }

    @Override // p017c.InterfaceC0556x, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f1092a.close();
    }

    @Override // p017c.InterfaceC0556x, java.io.Flushable
    public void flush() throws IOException {
        this.f1092a.flush();
    }

    @Override // p017c.InterfaceC0556x
    public C0558z timeout() {
        return this.f1092a.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f1092a.toString() + ")";
    }
}
