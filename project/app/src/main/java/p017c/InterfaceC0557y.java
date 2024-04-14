package p017c;

import java.io.Closeable;
import java.io.IOException;

/* renamed from: c.y */
/* loaded from: classes.dex */
public interface InterfaceC0557y extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    long read(C0535c c0535c, long j) throws IOException;

    C0558z timeout();
}
