package com.google.p130a.p149g.p150a.p151a.p152a;

import com.google.p130a.p137c.C1848a;

/* renamed from: com.google.a.g.a.a.a.i */
/* loaded from: classes.dex */
abstract class AbstractC1915i extends AbstractC1914h {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC1915i(C1848a c1848a) {
        super(c1848a);
    }

    /* renamed from: a */
    protected abstract int mo8731a(int i);

    /* renamed from: a */
    protected abstract void mo8732a(StringBuilder sb, int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m8738b(StringBuilder sb, int i, int i2) {
        int m8782a = this.f7478c.m8782a(i, i2);
        mo8732a(sb, m8782a);
        int mo8731a = mo8731a(m8782a);
        int i3 = 100000;
        for (int i4 = 0; i4 < 5; i4++) {
            if (mo8731a / i3 == 0) {
                sb.append('0');
            }
            i3 /= 10;
        }
        sb.append(mo8731a);
    }
}
