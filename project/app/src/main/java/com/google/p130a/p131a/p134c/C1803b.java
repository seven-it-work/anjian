package com.google.p130a.p131a.p134c;

import com.google.p130a.p137c.C1848a;

/* renamed from: com.google.a.a.c.b */
/* loaded from: classes.dex */
final class C1803b extends AbstractC1808g {

    /* renamed from: c */
    private final short f7101c;

    /* renamed from: d */
    private final short f7102d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1803b(AbstractC1808g abstractC1808g, int i, int i2) {
        super(abstractC1808g);
        this.f7101c = (short) i;
        this.f7102d = (short) i2;
    }

    @Override // com.google.p130a.p131a.p134c.AbstractC1808g
    /* renamed from: a */
    public final void mo8219a(C1848a c1848a, byte[] bArr) {
        int i = 0;
        while (i < this.f7102d) {
            if (i == 0 || (i == 31 && this.f7102d <= 62)) {
                c1848a.m8449b(31, 5);
                if (this.f7102d > 62) {
                    c1848a.m8449b(this.f7102d - 31, 16);
                } else {
                    c1848a.m8449b(i == 0 ? Math.min((int) this.f7102d, 31) : this.f7102d - 31, 5);
                }
            }
            c1848a.m8449b(bArr[this.f7101c + i], 8);
            i++;
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sb.append((int) this.f7101c);
        sb.append("::");
        sb.append((this.f7101c + this.f7102d) - 1);
        sb.append('>');
        return sb.toString();
    }
}
