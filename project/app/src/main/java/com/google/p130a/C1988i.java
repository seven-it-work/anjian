package com.google.p130a;

/* renamed from: com.google.a.i */
/* loaded from: classes.dex */
public final class C1988i extends AbstractC2013j {

    /* renamed from: c */
    private final AbstractC2013j f7795c;

    public C1988i(AbstractC2013j abstractC2013j) {
        super(abstractC2013j.f7878a, abstractC2013j.f7879b);
        this.f7795c = abstractC2013j;
    }

    @Override // com.google.p130a.AbstractC2013j
    /* renamed from: a */
    public final AbstractC2013j mo9097a(int i, int i2, int i3, int i4) {
        return new C1988i(this.f7795c.mo9097a(i, i2, i3, i4));
    }

    @Override // com.google.p130a.AbstractC2013j
    /* renamed from: a */
    public final byte[] mo9098a() {
        byte[] mo9098a = this.f7795c.mo9098a();
        int i = this.f7878a * this.f7879b;
        byte[] bArr = new byte[i];
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = (byte) (255 - (mo9098a[i2] & 255));
        }
        return bArr;
    }

    @Override // com.google.p130a.AbstractC2013j
    /* renamed from: a */
    public final byte[] mo9099a(int i, byte[] bArr) {
        byte[] mo9099a = this.f7795c.mo9099a(i, bArr);
        int i2 = this.f7878a;
        for (int i3 = 0; i3 < i2; i3++) {
            mo9099a[i3] = (byte) (255 - (mo9099a[i3] & 255));
        }
        return mo9099a;
    }

    @Override // com.google.p130a.AbstractC2013j
    /* renamed from: b */
    public final boolean mo9100b() {
        return this.f7795c.mo9100b();
    }

    @Override // com.google.p130a.AbstractC2013j
    /* renamed from: c */
    public final boolean mo9101c() {
        return this.f7795c.mo9101c();
    }

    @Override // com.google.p130a.AbstractC2013j
    /* renamed from: d */
    public final AbstractC2013j mo9102d() {
        return this.f7795c;
    }

    @Override // com.google.p130a.AbstractC2013j
    /* renamed from: e */
    public final AbstractC2013j mo9103e() {
        return new C1988i(this.f7795c.mo9103e());
    }

    @Override // com.google.p130a.AbstractC2013j
    /* renamed from: f */
    public final AbstractC2013j mo9104f() {
        return new C1988i(this.f7795c.mo9104f());
    }
}
