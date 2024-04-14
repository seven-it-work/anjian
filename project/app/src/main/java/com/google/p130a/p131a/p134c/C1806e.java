package com.google.p130a.p131a.p134c;

import com.google.p130a.p137c.C1848a;

/* renamed from: com.google.a.a.c.e */
/* loaded from: classes.dex */
final class C1806e extends AbstractC1808g {

    /* renamed from: c */
    private final short f7119c;

    /* renamed from: d */
    private final short f7120d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1806e(AbstractC1808g abstractC1808g, int i, int i2) {
        super(abstractC1808g);
        this.f7119c = (short) i;
        this.f7120d = (short) i2;
    }

    @Override // com.google.p130a.p131a.p134c.AbstractC1808g
    /* renamed from: a */
    final void mo8219a(C1848a c1848a, byte[] bArr) {
        c1848a.m8449b(this.f7119c, this.f7120d);
    }

    public final String toString() {
        return "<" + Integer.toBinaryString((this.f7119c & ((1 << this.f7120d) - 1)) | (1 << this.f7120d) | (1 << this.f7120d)).substring(1) + '>';
    }
}
