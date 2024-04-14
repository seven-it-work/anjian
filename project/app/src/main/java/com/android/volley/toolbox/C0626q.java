package com.android.volley.toolbox;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* renamed from: com.android.volley.toolbox.q */
/* loaded from: classes.dex */
public final class C0626q extends ByteArrayOutputStream {

    /* renamed from: a */
    private static final int f1392a = 256;

    /* renamed from: b */
    private final C0613d f1393b;

    private C0626q(C0613d c0613d) {
        this(c0613d, 256);
    }

    public C0626q(C0613d c0613d, int i) {
        this.f1393b = c0613d;
        this.buf = this.f1393b.m1439a(Math.max(i, 256));
    }

    /* renamed from: a */
    private void m1513a(int i) {
        if (this.count + i <= this.buf.length) {
            return;
        }
        byte[] m1439a = this.f1393b.m1439a((this.count + i) * 2);
        System.arraycopy(this.buf, 0, m1439a, 0, this.count);
        this.f1393b.m1438a(this.buf);
        this.buf = m1439a;
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f1393b.m1438a(this.buf);
        this.buf = null;
        super.close();
    }

    public final void finalize() {
        this.f1393b.m1438a(this.buf);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final synchronized void write(int i) {
        m1513a(1);
        super.write(i);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final synchronized void write(byte[] bArr, int i, int i2) {
        m1513a(i2);
        super.write(bArr, i, i2);
    }
}
