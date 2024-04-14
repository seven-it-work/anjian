package p017c;

import java.io.IOException;

/* renamed from: c.i */
/* loaded from: classes.dex */
public abstract class AbstractC0541i implements InterfaceC0557y {
    private final InterfaceC0557y delegate;

    public AbstractC0541i(InterfaceC0557y interfaceC0557y) {
        if (interfaceC0557y == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.delegate = interfaceC0557y;
    }

    @Override // p017c.InterfaceC0557y, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.delegate.close();
    }

    public final InterfaceC0557y delegate() {
        return this.delegate;
    }

    @Override // p017c.InterfaceC0557y
    public long read(C0535c c0535c, long j) throws IOException {
        return this.delegate.read(c0535c, j);
    }

    @Override // p017c.InterfaceC0557y
    public C0558z timeout() {
        return this.delegate.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.delegate.toString() + ")";
    }
}
