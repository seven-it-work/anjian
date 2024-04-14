package com.google.p130a.p149g.p150a.p151a.p152a;

import com.google.p130a.C1961h;
import com.google.p130a.C2016m;
import com.google.p130a.p137c.C1848a;

/* renamed from: com.google.a.g.a.a.a.j */
/* loaded from: classes.dex */
public abstract class AbstractC1916j {

    /* renamed from: b */
    final C1848a f7477b;

    /* renamed from: c */
    final C1925s f7478c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC1916j(C1848a c1848a) {
        this.f7477b = c1848a;
        this.f7478c = new C1925s(c1848a);
    }

    /* renamed from: a */
    private static AbstractC1916j m8739a(C1848a c1848a) {
        if (c1848a.m8445a(1)) {
            return new C1913g(c1848a);
        }
        if (!c1848a.m8445a(2)) {
            return new C1917k(c1848a);
        }
        switch (C1925s.m8768a(c1848a, 1, 4)) {
            case 4:
                return new C1907a(c1848a);
            case 5:
                return new C1908b(c1848a);
            default:
                switch (C1925s.m8768a(c1848a, 1, 5)) {
                    case 12:
                        return new C1909c(c1848a);
                    case 13:
                        return new C1910d(c1848a);
                    default:
                        switch (C1925s.m8768a(c1848a, 1, 7)) {
                            case 56:
                                return new C1911e(c1848a, "310", "11");
                            case 57:
                                return new C1911e(c1848a, "320", "11");
                            case 58:
                                return new C1911e(c1848a, "310", "13");
                            case 59:
                                return new C1911e(c1848a, "320", "13");
                            case 60:
                                return new C1911e(c1848a, "310", "15");
                            case 61:
                                return new C1911e(c1848a, "320", "15");
                            case 62:
                                return new C1911e(c1848a, "310", "17");
                            case 63:
                                return new C1911e(c1848a, "320", "17");
                            default:
                                throw new IllegalStateException("unknown decoder: ".concat(String.valueOf(c1848a)));
                        }
                }
        }
    }

    /* renamed from: b */
    private C1848a m8740b() {
        return this.f7477b;
    }

    /* renamed from: c */
    private C1925s m8741c() {
        return this.f7478c;
    }

    /* renamed from: a */
    public abstract String mo8733a() throws C2016m, C1961h;
}
