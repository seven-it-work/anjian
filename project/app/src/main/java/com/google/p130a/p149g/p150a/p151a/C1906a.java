package com.google.p130a.p149g.p150a.p151a;

import com.google.p130a.p137c.C1848a;
import java.util.List;

/* renamed from: com.google.a.g.a.a.a */
/* loaded from: classes.dex */
final class C1906a {
    private C1906a() {
    }

    /* renamed from: a */
    private static C1848a m8730a(List<C1926b> list) {
        int size = (list.size() << 1) - 1;
        if (list.get(list.size() - 1).f7502b == null) {
            size--;
        }
        C1848a c1848a = new C1848a(size * 12);
        int i = list.get(0).f7502b.f7525a;
        int i2 = 0;
        for (int i3 = 11; i3 >= 0; i3--) {
            if (((1 << i3) & i) != 0) {
                c1848a.m8448b(i2);
            }
            i2++;
        }
        for (int i4 = 1; i4 < list.size(); i4++) {
            C1926b c1926b = list.get(i4);
            int i5 = c1926b.f7501a.f7525a;
            int i6 = i2;
            for (int i7 = 11; i7 >= 0; i7--) {
                if (((1 << i7) & i5) != 0) {
                    c1848a.m8448b(i6);
                }
                i6++;
            }
            if (c1926b.f7502b != null) {
                int i8 = c1926b.f7502b.f7525a;
                for (int i9 = 11; i9 >= 0; i9--) {
                    if (((1 << i9) & i8) != 0) {
                        c1848a.m8448b(i6);
                    }
                    i6++;
                }
            }
            i2 = i6;
        }
        return c1848a;
    }
}
