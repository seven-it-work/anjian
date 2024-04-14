package p017c;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;

/* renamed from: c.x */
/* loaded from: classes.dex */
public interface InterfaceC0556x extends Closeable, Flushable {
    /* renamed from: a */
    void mo114a(C0535c c0535c, long j) throws IOException;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    void flush() throws IOException;

    C0558z timeout();
}
