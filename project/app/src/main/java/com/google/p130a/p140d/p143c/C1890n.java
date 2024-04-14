package com.google.p130a.p140d.p143c;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.a.d.c.n */
/* loaded from: classes.dex */
public final class C1890n extends C1879c {
    @Override // com.google.p130a.p140d.p143c.C1879c, com.google.p130a.p140d.p143c.InterfaceC1883g
    /* renamed from: a */
    public final int mo8606a() {
        return 3;
    }

    @Override // com.google.p130a.p140d.p143c.C1879c
    /* renamed from: a */
    final int mo8612a(char c2, StringBuilder sb) {
        char c3;
        int i;
        if (c2 == '\r') {
            c3 = 0;
        } else if (c2 == ' ') {
            c3 = 3;
        } else {
            if (c2 == '*') {
                sb.append((char) 1);
                return 1;
            }
            if (c2 != '>') {
                if (c2 >= '0' && c2 <= '9') {
                    i = (c2 - '0') + 4;
                } else {
                    if (c2 < 'A' || c2 > 'Z') {
                        C1886j.m8665c(c2);
                        return 1;
                    }
                    i = (c2 - 'A') + 14;
                }
                c3 = (char) i;
            } else {
                c3 = 2;
            }
        }
        sb.append(c3);
        return 1;
    }

    @Override // com.google.p130a.p140d.p143c.C1879c, com.google.p130a.p140d.p143c.InterfaceC1883g
    /* renamed from: a */
    public final void mo8607a(C1884h c1884h) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            if (!c1884h.m8649b()) {
                break;
            }
            char m8645a = c1884h.m8645a();
            c1884h.f7363f++;
            mo8612a(m8645a, sb);
            if (sb.length() % 3 == 0) {
                m8611a(c1884h, sb);
                if (C1886j.m8657a(c1884h.f7358a, c1884h.f7363f, 3) != 3) {
                    c1884h.f7364g = 0;
                    break;
                }
            }
        }
        mo8613b(c1884h, sb);
    }

    @Override // com.google.p130a.p140d.p143c.C1879c
    /* renamed from: b */
    final void mo8613b(C1884h c1884h, StringBuilder sb) {
        c1884h.m8651d();
        int length = c1884h.f7365h.f7394b - c1884h.f7362e.length();
        c1884h.f7363f -= sb.length();
        if (c1884h.m8650c() > 1 || length > 1 || c1884h.m8650c() != length) {
            c1884h.m8646a((char) 254);
        }
        if (c1884h.f7364g < 0) {
            c1884h.f7364g = 0;
        }
    }
}
