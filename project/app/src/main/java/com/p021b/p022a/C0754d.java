package com.p021b.p022a;

import com.p021b.p022a.p023a.p024a.C0637f;
import com.p021b.p022a.p023a.p024a.InterfaceC0640i;
import java.io.Closeable;
import java.io.Flushable;

/* renamed from: com.b.a.d */
/* loaded from: classes.dex */
public final class C0754d implements Closeable, Flushable {

    /* renamed from: a */
    final InterfaceC0640i f1932a;

    /* renamed from: b */
    final C0637f f1933b;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f1933b.close();
    }

    @Override // java.io.Flushable
    public final void flush() {
        this.f1933b.flush();
    }
}
