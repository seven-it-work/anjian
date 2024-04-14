package com.google.p130a.p153h.p157c;

import java.lang.reflect.Array;

/* renamed from: com.google.a.h.c.a */
/* loaded from: classes.dex */
public final class C1980a {

    /* renamed from: a */
    int f7747a;

    /* renamed from: b */
    private final C1981b[] f7748b;

    /* renamed from: c */
    private final int f7749c;

    /* renamed from: d */
    private final int f7750d;

    public C1980a(int i, int i2) {
        this.f7748b = new C1981b[i];
        int length = this.f7748b.length;
        for (int i3 = 0; i3 < length; i3++) {
            this.f7748b[i3] = new C1981b(((i2 + 4) * 17) + 1);
        }
        this.f7750d = i2 * 17;
        this.f7749c = i;
        this.f7747a = -1;
    }

    /* renamed from: a */
    private void m9053a(int i, int i2, byte b2) {
        this.f7748b[i2].f7751a[i] = b2;
    }

    /* renamed from: b */
    private void m9054b() {
        this.f7747a++;
    }

    /* renamed from: c */
    private byte[][] m9055c() {
        return m9057a(1, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final C1981b m9056a() {
        return this.f7748b[this.f7747a];
    }

    /* renamed from: a */
    public final byte[][] m9057a(int i, int i2) {
        byte[][] bArr = (byte[][]) Array.newInstance((Class<?>) byte.class, this.f7749c * i2, this.f7750d * i);
        int i3 = this.f7749c * i2;
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = (i3 - i4) - 1;
            C1981b c1981b = this.f7748b[i4 / i2];
            byte[] bArr2 = new byte[c1981b.f7751a.length * i];
            for (int i6 = 0; i6 < bArr2.length; i6++) {
                bArr2[i6] = c1981b.f7751a[i6 / i];
            }
            bArr[i5] = bArr2;
        }
        return bArr;
    }
}
