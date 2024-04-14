package com.umeng.commonsdk.proguard;

/* renamed from: com.umeng.commonsdk.proguard.bm */
/* loaded from: classes.dex */
public final class C2495bm extends AbstractC2496bn {

    /* renamed from: a */
    private byte[] f9374a;

    /* renamed from: b */
    private int f9375b;

    /* renamed from: c */
    private int f9376c;

    public C2495bm() {
    }

    public C2495bm(byte[] bArr) {
        m10869a(bArr);
    }

    public C2495bm(byte[] bArr, int i, int i2) {
        m10870c(bArr, i, i2);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2496bn
    /* renamed from: a */
    public final int mo10862a(byte[] bArr, int i, int i2) throws C2497bo {
        int mo10874h = mo10874h();
        if (i2 > mo10874h) {
            i2 = mo10874h;
        }
        if (i2 > 0) {
            System.arraycopy(this.f9374a, this.f9375b, bArr, i, i2);
            mo10868a(i2);
        }
        return i2;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2496bn
    /* renamed from: a */
    public final void mo10868a(int i) {
        this.f9375b += i;
    }

    /* renamed from: a */
    public final void m10869a(byte[] bArr) {
        m10870c(bArr, 0, bArr.length);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2496bn
    /* renamed from: a */
    public final boolean mo10863a() {
        return true;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2496bn
    /* renamed from: b */
    public final void mo10864b() throws C2497bo {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2496bn
    /* renamed from: b */
    public final void mo10865b(byte[] bArr, int i, int i2) throws C2497bo {
        throw new UnsupportedOperationException("No writing allowed!");
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2496bn
    /* renamed from: c */
    public final void mo10866c() {
    }

    /* renamed from: c */
    public final void m10870c(byte[] bArr, int i, int i2) {
        this.f9374a = bArr;
        this.f9375b = i;
        this.f9376c = i + i2;
    }

    /* renamed from: e */
    public final void m10871e() {
        this.f9374a = null;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2496bn
    /* renamed from: f */
    public final byte[] mo10872f() {
        return this.f9374a;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2496bn
    /* renamed from: g */
    public final int mo10873g() {
        return this.f9375b;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2496bn
    /* renamed from: h */
    public final int mo10874h() {
        return this.f9376c - this.f9375b;
    }
}
