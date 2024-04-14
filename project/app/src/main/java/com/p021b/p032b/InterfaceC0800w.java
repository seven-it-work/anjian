package com.p021b.p032b;

import java.io.Closeable;
import java.io.Flushable;

/* renamed from: com.b.b.w */
/* loaded from: classes.dex */
public interface InterfaceC0800w extends Closeable, Flushable {
    /* renamed from: a */
    C0802y mo1662a();

    /* renamed from: a_ */
    void mo1663a_(C0783f c0783f, long j);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    void flush();
}
