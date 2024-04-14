package com.google.p130a.p137c.p139b;

import java.util.ArrayList;
import java.util.List;

/* renamed from: com.google.a.c.b.d */
/* loaded from: classes.dex */
public final class C1856d {

    /* renamed from: a */
    private final C1853a f7277a;

    /* renamed from: b */
    private final List<C1854b> f7278b = new ArrayList();

    public C1856d(C1853a c1853a) {
        this.f7277a = c1853a;
        this.f7278b.add(new C1854b(c1853a, new int[]{1}));
    }

    /* renamed from: a */
    private C1854b m8510a(int i) {
        if (i >= this.f7278b.size()) {
            C1854b c1854b = this.f7278b.get(this.f7278b.size() - 1);
            for (int size = this.f7278b.size(); size <= i; size++) {
                c1854b = c1854b.m8503b(new C1854b(this.f7277a, new int[]{1, this.f7277a.f7267i[(size - 1) + this.f7277a.f7271m]}));
                this.f7278b.add(c1854b);
            }
        }
        return this.f7278b.get(i);
    }

    /* renamed from: a */
    public final void m8511a(int[] iArr, int i) {
        if (i == 0) {
            throw new IllegalArgumentException("No error correction bytes");
        }
        int length = iArr.length - i;
        if (length <= 0) {
            throw new IllegalArgumentException("No data bytes provided");
        }
        C1854b m8510a = m8510a(i);
        int[] iArr2 = new int[length];
        System.arraycopy(iArr, 0, iArr2, 0, length);
        int[] iArr3 = new C1854b(this.f7277a, iArr2).m8499a(i, 1).m8505c(m8510a)[1].f7274a;
        int length2 = i - iArr3.length;
        for (int i2 = 0; i2 < length2; i2++) {
            iArr[length + i2] = 0;
        }
        System.arraycopy(iArr3, 0, iArr, length + length2, iArr3.length);
    }
}
