package com.google.p130a.p140d.p143c;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.a.d.c.a */
/* loaded from: classes.dex */
public final class C1877a implements InterfaceC1883g {
    /* renamed from: a */
    private static char m8605a(char c2, char c3) {
        if (C1886j.m8663a(c2) && C1886j.m8663a(c3)) {
            return (char) (((c2 - '0') * 10) + (c3 - '0') + 130);
        }
        throw new IllegalArgumentException("not digits: " + c2 + c3);
    }

    @Override // com.google.p130a.p140d.p143c.InterfaceC1883g
    /* renamed from: a */
    public final int mo8606a() {
        return 0;
    }

    @Override // com.google.p130a.p140d.p143c.InterfaceC1883g
    /* renamed from: a */
    public final void mo8607a(C1884h c1884h) {
        int i;
        String str = c1884h.f7358a;
        int i2 = c1884h.f7363f;
        int length = str.length();
        if (i2 < length) {
            char charAt = str.charAt(i2);
            i = 0;
            while (C1886j.m8663a(charAt) && i2 < length) {
                i++;
                i2++;
                if (i2 < length) {
                    charAt = str.charAt(i2);
                }
            }
        } else {
            i = 0;
        }
        if (i >= 2) {
            char charAt2 = c1884h.f7358a.charAt(c1884h.f7363f);
            char charAt3 = c1884h.f7358a.charAt(c1884h.f7363f + 1);
            if (C1886j.m8663a(charAt2) && C1886j.m8663a(charAt3)) {
                c1884h.m8646a((char) (((charAt2 - '0') * 10) + (charAt3 - '0') + 130));
                c1884h.f7363f += 2;
                return;
            } else {
                throw new IllegalArgumentException("not digits: " + charAt2 + charAt3);
            }
        }
        char m8645a = c1884h.m8645a();
        int m8657a = C1886j.m8657a(c1884h.f7358a, c1884h.f7363f, 0);
        if (m8657a == 0) {
            if (!C1886j.m8664b(m8645a)) {
                c1884h.m8646a((char) (m8645a + 1));
                c1884h.f7363f++;
                return;
            } else {
                c1884h.m8646a((char) 235);
                c1884h.m8646a((char) ((m8645a - 128) + 1));
                c1884h.f7363f++;
                return;
            }
        }
        switch (m8657a) {
            case 1:
                c1884h.m8646a((char) 230);
                c1884h.f7364g = 1;
                return;
            case 2:
                c1884h.m8646a((char) 239);
                c1884h.f7364g = 2;
                return;
            case 3:
                c1884h.m8646a((char) 238);
                c1884h.f7364g = 3;
                return;
            case 4:
                c1884h.m8646a((char) 240);
                c1884h.f7364g = 4;
                return;
            case 5:
                c1884h.m8646a((char) 231);
                c1884h.f7364g = 5;
                return;
            default:
                throw new IllegalStateException("Illegal mode: ".concat(String.valueOf(m8657a)));
        }
    }
}
