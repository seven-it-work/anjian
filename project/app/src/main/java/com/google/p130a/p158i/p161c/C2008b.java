package com.google.p130a.p158i.p161c;

import java.lang.reflect.Array;
import java.util.Arrays;

/* renamed from: com.google.a.i.c.b */
/* loaded from: classes.dex */
public final class C2008b {

    /* renamed from: a */
    final byte[][] f7855a;

    /* renamed from: b */
    public final int f7856b;

    /* renamed from: c */
    public final int f7857c;

    public C2008b(int i, int i2) {
        this.f7855a = (byte[][]) Array.newInstance((Class<?>) byte.class, i2, i);
        this.f7856b = i;
        this.f7857c = i2;
    }

    /* renamed from: a */
    private int m9202a() {
        return this.f7857c;
    }

    /* renamed from: a */
    private void m9203a(int i, int i2, byte b2) {
        this.f7855a[i2][i] = b2;
    }

    /* renamed from: b */
    private int m9204b() {
        return this.f7856b;
    }

    /* renamed from: c */
    private byte[][] m9205c() {
        return this.f7855a;
    }

    /* renamed from: d */
    private void m9206d() {
        for (byte[] bArr : this.f7855a) {
            Arrays.fill(bArr, (byte) -1);
        }
    }

    /* renamed from: a */
    public final byte m9207a(int i, int i2) {
        return this.f7855a[i2][i];
    }

    /* renamed from: a */
    public final void m9208a(int i, int i2, int i3) {
        this.f7855a[i2][i] = (byte) i3;
    }

    /* renamed from: a */
    public final void m9209a(int i, int i2, boolean z) {
        this.f7855a[i2][i] = z ? (byte) 1 : (byte) 0;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder((this.f7856b * 2 * this.f7857c) + 2);
        for (int i = 0; i < this.f7857c; i++) {
            byte[] bArr = this.f7855a[i];
            for (int i2 = 0; i2 < this.f7856b; i2++) {
                switch (bArr[i2]) {
                    case 0:
                        str = " 0";
                        break;
                    case 1:
                        str = " 1";
                        break;
                    default:
                        str = "  ";
                        break;
                }
                sb.append(str);
            }
            sb.append('\n');
        }
        return sb.toString();
    }
}
