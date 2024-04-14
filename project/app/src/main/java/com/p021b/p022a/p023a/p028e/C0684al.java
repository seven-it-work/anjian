package com.p021b.p022a.p023a.p028e;

import android.support.v7.widget.ActivityChooserView;

/* renamed from: com.b.a.a.e.al */
/* loaded from: classes.dex */
public final class C0684al {

    /* renamed from: a */
    private int f1607a;

    /* renamed from: b */
    private final int[] f1608b = new int[10];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final int m1719a() {
        return Integer.bitCount(this.f1607a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final C0684al m1720a(int i, int i2) {
        if (i >= this.f1608b.length) {
            return this;
        }
        this.f1607a = (1 << i) | this.f1607a;
        this.f1608b[i] = i2;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m1721a(int i) {
        return ((1 << i) & this.f1607a) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final int m1722b() {
        if ((this.f1607a & 2) != 0) {
            return this.f1608b[1];
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final int m1723b(int i) {
        return this.f1608b[i];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final int m1724c() {
        return (this.f1607a & 16) != 0 ? this.f1608b[4] : ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final int m1725c(int i) {
        return (this.f1607a & 32) != 0 ? this.f1608b[5] : i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final int m1726d() {
        if ((this.f1607a & 128) != 0) {
            return this.f1608b[7];
        }
        return 65535;
    }
}
