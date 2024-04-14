package com.zbar.p185a.p188c;

/* renamed from: com.zbar.a.c.c */
/* loaded from: classes.dex */
public final class C2588c extends AbstractC2587b {

    /* renamed from: g */
    private static final int f10023g = 2;

    /* renamed from: c */
    public final byte[] f10024c;

    /* renamed from: d */
    public final int f10025d;

    /* renamed from: e */
    public final int f10026e;

    /* renamed from: f */
    public final int f10027f;

    /* renamed from: h */
    private final int f10028h;

    public C2588c(byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6) {
        super(i5, i6);
        if (i5 + i3 > i || i6 + i4 > i2) {
            throw new IllegalArgumentException("Crop rectangle does not fit within image data.");
        }
        this.f10024c = bArr;
        this.f10025d = i;
        this.f10028h = i2;
        this.f10026e = i3;
        this.f10027f = i4;
    }

    /* renamed from: a */
    private void m11672a(int i, int i2) {
        byte[] bArr = this.f10024c;
        int i3 = (this.f10027f * this.f10025d) + this.f10026e;
        int i4 = 0;
        while (i4 < i2) {
            int i5 = (i / 2) + i3;
            int i6 = (i3 + i) - 1;
            int i7 = i3;
            while (i7 < i5) {
                byte b2 = bArr[i7];
                bArr[i7] = bArr[i6];
                bArr[i6] = b2;
                i7++;
                i6--;
            }
            i4++;
            i3 += this.f10025d;
        }
    }

    /* renamed from: g */
    private int[] m11673g() {
        int i = this.f10021a / 2;
        int i2 = this.f10022b / 2;
        int[] iArr = new int[i * i2];
        byte[] bArr = this.f10024c;
        int i3 = (this.f10027f * this.f10025d) + this.f10026e;
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = i4 * i;
            for (int i6 = 0; i6 < i; i6++) {
                iArr[i5 + i6] = ((bArr[(i6 * 2) + i3] & 255) * 65793) | (-16777216);
            }
            i3 += this.f10025d * 2;
        }
        return iArr;
    }

    /* renamed from: h */
    private int m11674h() {
        return this.f10021a / 2;
    }

    /* renamed from: i */
    private int m11675i() {
        return this.f10022b / 2;
    }

    @Override // com.zbar.p185a.p188c.AbstractC2587b
    /* renamed from: a */
    public final AbstractC2587b mo11662a(int i, int i2, int i3, int i4) {
        return new C2588c(this.f10024c, this.f10025d, this.f10028h, this.f10026e + i, this.f10027f + i2, i3, i4);
    }

    @Override // com.zbar.p185a.p188c.AbstractC2587b
    /* renamed from: a */
    public final byte[] mo11663a() {
        int i = this.f10021a;
        int i2 = this.f10022b;
        if (i == this.f10025d && i2 == this.f10028h) {
            return this.f10024c;
        }
        int i3 = i * i2;
        byte[] bArr = new byte[i3];
        int i4 = (this.f10027f * this.f10025d) + this.f10026e;
        if (i == this.f10025d) {
            System.arraycopy(this.f10024c, i4, bArr, 0, i3);
            return bArr;
        }
        byte[] bArr2 = this.f10024c;
        for (int i5 = 0; i5 < i2; i5++) {
            System.arraycopy(bArr2, i4, bArr, i5 * i, i);
            i4 += this.f10025d;
        }
        return bArr;
    }

    @Override // com.zbar.p185a.p188c.AbstractC2587b
    /* renamed from: a */
    public final byte[] mo11664a(int i, byte[] bArr) {
        if (i < 0 || i >= this.f10022b) {
            throw new IllegalArgumentException("Requested row is outside the image: " + i);
        }
        int i2 = this.f10021a;
        if (bArr == null || bArr.length < i2) {
            bArr = new byte[i2];
        }
        System.arraycopy(this.f10024c, ((i + this.f10027f) * this.f10025d) + this.f10026e, bArr, 0, i2);
        return bArr;
    }

    @Override // com.zbar.p185a.p188c.AbstractC2587b
    /* renamed from: b */
    public final boolean mo11665b() {
        return true;
    }
}
