package com.google.p130a;

/* renamed from: com.google.a.n */
/* loaded from: classes.dex */
public final class C2017n extends AbstractC2013j {

    /* renamed from: c */
    private static final int f7883c = 2;

    /* renamed from: d */
    private final byte[] f7884d;

    /* renamed from: e */
    private final int f7885e;

    /* renamed from: f */
    private final int f7886f;

    /* renamed from: g */
    private final int f7887g;

    /* renamed from: h */
    private final int f7888h;

    private C2017n(byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6) {
        super(i5, i6);
        if (i5 + i3 > i || i6 + i4 > i2) {
            throw new IllegalArgumentException("Crop rectangle does not fit within image data.");
        }
        this.f7884d = bArr;
        this.f7885e = i;
        this.f7886f = i2;
        this.f7887g = i3;
        this.f7888h = i4;
    }

    /* renamed from: a */
    private void m9277a(int i, int i2) {
        byte[] bArr = this.f7884d;
        int i3 = (this.f7888h * this.f7885e) + this.f7887g;
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
            i3 += this.f7885e;
        }
    }

    /* renamed from: g */
    private int[] m9278g() {
        int i = this.f7878a / 2;
        int i2 = this.f7879b / 2;
        int[] iArr = new int[i * i2];
        byte[] bArr = this.f7884d;
        int i3 = (this.f7888h * this.f7885e) + this.f7887g;
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = i4 * i;
            for (int i6 = 0; i6 < i; i6++) {
                iArr[i5 + i6] = ((bArr[(i6 << 1) + i3] & 255) * 65793) | (-16777216);
            }
            i3 += this.f7885e << 1;
        }
        return iArr;
    }

    /* renamed from: h */
    private int m9279h() {
        return this.f7878a / 2;
    }

    /* renamed from: i */
    private int m9280i() {
        return this.f7879b / 2;
    }

    @Override // com.google.p130a.AbstractC2013j
    /* renamed from: a */
    public final AbstractC2013j mo9097a(int i, int i2, int i3, int i4) {
        return new C2017n(this.f7884d, this.f7885e, this.f7886f, this.f7887g + i, this.f7888h + i2, i3, i4);
    }

    @Override // com.google.p130a.AbstractC2013j
    /* renamed from: a */
    public final byte[] mo9098a() {
        int i = this.f7878a;
        int i2 = this.f7879b;
        if (i == this.f7885e && i2 == this.f7886f) {
            return this.f7884d;
        }
        int i3 = i * i2;
        byte[] bArr = new byte[i3];
        int i4 = (this.f7888h * this.f7885e) + this.f7887g;
        if (i == this.f7885e) {
            System.arraycopy(this.f7884d, i4, bArr, 0, i3);
            return bArr;
        }
        for (int i5 = 0; i5 < i2; i5++) {
            System.arraycopy(this.f7884d, i4, bArr, i5 * i, i);
            i4 += this.f7885e;
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
        System.arraycopy(this.f7884d, ((i + this.f7888h) * this.f7885e) + this.f7887g, bArr, 0, i2);
        return bArr;
    }

    @Override // com.google.p130a.AbstractC2013j
    /* renamed from: b */
    public final boolean mo9100b() {
        return true;
    }
}
