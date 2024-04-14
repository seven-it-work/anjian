package com.google.p130a.p149g.p150a.p151a.p152a;

import com.google.p130a.p137c.C1848a;

/* renamed from: com.google.a.g.a.a.a.h */
/* loaded from: classes.dex */
abstract class AbstractC1914h extends AbstractC1916j {

    /* renamed from: a */
    static final int f7476a = 40;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC1914h(C1848a c1848a) {
        super(c1848a);
    }

    /* renamed from: a */
    private static void m8735a(StringBuilder sb, int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < 13; i3++) {
            int charAt = sb.charAt(i3 + i) - '0';
            if ((i3 & 1) == 0) {
                charAt *= 3;
            }
            i2 += charAt;
        }
        int i4 = 10 - (i2 % 10);
        sb.append(i4 != 10 ? i4 : 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m8736a(StringBuilder sb, int i, int i2) {
        for (int i3 = 0; i3 < 4; i3++) {
            int m8782a = this.f7478c.m8782a((i3 * 10) + i, 10);
            if (m8782a / 100 == 0) {
                sb.append('0');
            }
            if (m8782a / 10 == 0) {
                sb.append('0');
            }
            sb.append(m8782a);
        }
        int i4 = 0;
        for (int i5 = 0; i5 < 13; i5++) {
            int charAt = sb.charAt(i5 + i2) - '0';
            if ((i5 & 1) == 0) {
                charAt *= 3;
            }
            i4 += charAt;
        }
        int i6 = 10 - (i4 % 10);
        if (i6 == 10) {
            i6 = 0;
        }
        sb.append(i6);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m8737b(StringBuilder sb, int i) {
        sb.append("(01)");
        int length = sb.length();
        sb.append('9');
        m8736a(sb, i, length);
    }
}
