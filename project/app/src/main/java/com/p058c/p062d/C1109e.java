package com.p058c.p062d;

import java.io.ByteArrayOutputStream;

/* renamed from: com.c.d.e */
/* loaded from: classes.dex */
public final class C1109e extends ByteArrayOutputStream {
    public C1109e(int i) {
        super(i);
    }

    @Override // java.io.ByteArrayOutputStream
    public final byte[] toByteArray() {
        return this.count == this.buf.length ? this.buf : super.toByteArray();
    }
}
