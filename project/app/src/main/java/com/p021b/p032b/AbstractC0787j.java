package com.p021b.p032b;

/* renamed from: com.b.b.j */
/* loaded from: classes.dex */
public abstract class AbstractC0787j implements InterfaceC0801x {

    /* renamed from: a */
    private final InterfaceC0801x f2150a;

    public AbstractC0787j(InterfaceC0801x interfaceC0801x) {
        if (interfaceC0801x == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f2150a = interfaceC0801x;
    }

    @Override // com.p021b.p032b.InterfaceC0801x
    /* renamed from: a */
    public final long mo1543a(C0783f c0783f, long j) {
        return this.f2150a.mo1543a(c0783f, j);
    }

    @Override // com.p021b.p032b.InterfaceC0801x
    /* renamed from: a */
    public final C0802y mo1544a() {
        return this.f2150a.mo1544a();
    }

    @Override // com.p021b.p032b.InterfaceC0801x, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f2150a.close();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f2150a.toString() + ")";
    }
}
