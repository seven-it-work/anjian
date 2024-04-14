package com.zbar.p185a.p188c;

/* renamed from: com.zbar.a.c.a */
/* loaded from: classes.dex */
public final class C2586a extends AbstractC2587b {

    /* renamed from: c */
    private final AbstractC2587b f10020c;

    public C2586a(AbstractC2587b abstractC2587b) {
        super(abstractC2587b.f10021a, abstractC2587b.f10022b);
        this.f10020c = abstractC2587b;
    }

    @Override // com.zbar.p185a.p188c.AbstractC2587b
    /* renamed from: a */
    public final AbstractC2587b mo11662a(int i, int i2, int i3, int i4) {
        return new C2586a(this.f10020c.mo11662a(i, i2, i3, i4));
    }

    @Override // com.zbar.p185a.p188c.AbstractC2587b
    /* renamed from: a */
    public final byte[] mo11663a() {
        byte[] mo11663a = this.f10020c.mo11663a();
        int i = this.f10021a * this.f10022b;
        byte[] bArr = new byte[i];
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = (byte) (255 - (mo11663a[i2] & 255));
        }
        return bArr;
    }

    @Override // com.zbar.p185a.p188c.AbstractC2587b
    /* renamed from: a */
    public final byte[] mo11664a(int i, byte[] bArr) {
        byte[] mo11664a = this.f10020c.mo11664a(i, bArr);
        int i2 = this.f10021a;
        for (int i3 = 0; i3 < i2; i3++) {
            mo11664a[i3] = (byte) (255 - (mo11664a[i3] & 255));
        }
        return mo11664a;
    }

    @Override // com.zbar.p185a.p188c.AbstractC2587b
    /* renamed from: b */
    public final boolean mo11665b() {
        return this.f10020c.mo11665b();
    }

    @Override // com.zbar.p185a.p188c.AbstractC2587b
    /* renamed from: c */
    public final boolean mo11666c() {
        return this.f10020c.mo11666c();
    }

    @Override // com.zbar.p185a.p188c.AbstractC2587b
    /* renamed from: d */
    public final AbstractC2587b mo11667d() {
        return this.f10020c;
    }

    @Override // com.zbar.p185a.p188c.AbstractC2587b
    /* renamed from: e */
    public final AbstractC2587b mo11668e() {
        return new C2586a(this.f10020c.mo11668e());
    }

    @Override // com.zbar.p185a.p188c.AbstractC2587b
    /* renamed from: f */
    public final AbstractC2587b mo11669f() {
        return new C2586a(this.f10020c.mo11669f());
    }
}
