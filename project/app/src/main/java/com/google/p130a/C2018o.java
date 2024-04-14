package com.google.p130a;

/* renamed from: com.google.a.o */
/* loaded from: classes.dex */
public final class C2018o extends AbstractC2013j {

    /* renamed from: c */
    private final byte[] f7889c;

    /* renamed from: d */
    private final int f7890d;

    /* renamed from: e */
    private final int f7891e;

    /* renamed from: f */
    private final int f7892f;

    /* renamed from: g */
    private final int f7893g;

    public C2018o(int i, int i2, int[] iArr) {
        super(i, i2);
        this.f7890d = i;
        this.f7891e = i2;
        this.f7892f = 0;
        this.f7893g = 0;
        int i3 = i * i2;
        this.f7889c = new byte[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = iArr[i4];
            this.f7889c[i4] = (byte) (((((i5 >> 16) & 255) + ((i5 >> 7) & 510)) + (i5 & 255)) / 4);
        }
    }

    private C2018o(byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6) {
        super(i5, i6);
        if (i5 + i3 > i || i6 + i4 > i2) {
            throw new IllegalArgumentException("Crop rectangle does not fit within image data.");
        }
        this.f7889c = bArr;
        this.f7890d = i;
        this.f7891e = i2;
        this.f7892f = i3;
        this.f7893g = i4;
    }

    @Override // com.google.p130a.AbstractC2013j
    /* renamed from: a */
    public final AbstractC2013j mo9097a(int i, int i2, int i3, int i4) {
        return new C2018o(this.f7889c, this.f7890d, this.f7891e, this.f7892f + i, this.f7893g + i2, i3, i4);
    }

    @Override // com.google.p130a.AbstractC2013j
    /* renamed from: a */
    public final byte[] mo9098a() {
        int i = this.f7878a;
        int i2 = this.f7879b;
        if (i == this.f7890d && i2 == this.f7891e) {
            return this.f7889c;
        }
        int i3 = i * i2;
        byte[] bArr = new byte[i3];
        int i4 = (this.f7893g * this.f7890d) + this.f7892f;
        if (i == this.f7890d) {
            System.arraycopy(this.f7889c, i4, bArr, 0, i3);
            return bArr;
        }
        for (int i5 = 0; i5 < i2; i5++) {
            System.arraycopy(this.f7889c, i4, bArr, i5 * i, i);
            i4 += this.f7890d;
        }
        return bArr;
    }

    @Override // com.google.p130a.AbstractC2013j
    /* renamed from: a */
    public final byte[] mo9099a(int i, byte[] bArr) {
        if (i < 0 || i >= this.f7879b) {
            throw new IllegalArgumentException("Requested row is outside the image: ".concat(String.valueOf(i)));
        }
        int i2 = this.f7878a;
        if (bArr == null || bArr.length < i2) {
            bArr = new byte[i2];
        }
        System.arraycopy(this.f7889c, ((i + this.f7893g) * this.f7890d) + this.f7892f, bArr, 0, i2);
        return bArr;
    }

    @Override // com.google.p130a.AbstractC2013j
    /* renamed from: b */
    public final boolean mo9100b() {
        return true;
    }
}
