package com.google.p130a.p153h.p157c;

/* renamed from: com.google.a.h.c.b */
/* loaded from: classes.dex */
final class C1981b {

    /* renamed from: a */
    final byte[] f7751a;

    /* renamed from: b */
    private int f7752b = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1981b(int i) {
        this.f7751a = new byte[i];
    }

    /* renamed from: a */
    private void m9058a(int i, byte b2) {
        this.f7751a[i] = b2;
    }

    /* renamed from: a */
    private void m9059a(int i, boolean z) {
        this.f7751a[i] = z ? (byte) 1 : (byte) 0;
    }

    /* renamed from: a */
    private byte[] m9060a(int i) {
        byte[] bArr = new byte[this.f7751a.length * i];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            bArr[i2] = this.f7751a[i2 / i];
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m9061a(boolean z, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = this.f7752b;
            this.f7752b = i3 + 1;
            this.f7751a[i3] = z ? (byte) 1 : (byte) 0;
        }
    }
}
