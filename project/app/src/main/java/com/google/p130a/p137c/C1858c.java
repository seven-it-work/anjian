package com.google.p130a.p137c;

/* renamed from: com.google.a.c.c */
/* loaded from: classes.dex */
public final class C1858c {

    /* renamed from: a */
    public int f7279a;

    /* renamed from: b */
    public int f7280b;

    /* renamed from: c */
    private final byte[] f7281c;

    public C1858c(byte[] bArr) {
        this.f7281c = bArr;
    }

    /* renamed from: b */
    private int m8512b() {
        return this.f7280b;
    }

    /* renamed from: c */
    private int m8513c() {
        return this.f7279a;
    }

    /* renamed from: a */
    public final int m8514a() {
        return ((this.f7281c.length - this.f7279a) * 8) - this.f7280b;
    }

    /* renamed from: a */
    public final int m8515a(int i) {
        int i2;
        if (i <= 0 || i > 32 || i > m8514a()) {
            throw new IllegalArgumentException(String.valueOf(i));
        }
        if (this.f7280b > 0) {
            int i3 = 8 - this.f7280b;
            int i4 = i < i3 ? i : i3;
            int i5 = i3 - i4;
            i2 = (((255 >> (8 - i4)) << i5) & this.f7281c[this.f7279a]) >> i5;
            i -= i4;
            this.f7280b += i4;
            if (this.f7280b == 8) {
                this.f7280b = 0;
                this.f7279a++;
            }
        } else {
            i2 = 0;
        }
        if (i <= 0) {
            return i2;
        }
        while (i >= 8) {
            i2 = (i2 << 8) | (this.f7281c[this.f7279a] & 255);
            this.f7279a++;
            i -= 8;
        }
        if (i <= 0) {
            return i2;
        }
        int i6 = 8 - i;
        int i7 = (i2 << i) | ((((255 >> i6) << i6) & this.f7281c[this.f7279a]) >> i6);
        this.f7280b += i;
        return i7;
    }
}
