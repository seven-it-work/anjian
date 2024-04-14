package com.google.p130a.p140d.p143c;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.a.d.c.f */
/* loaded from: classes.dex */
public final class C1882f implements InterfaceC1883g {
    /* renamed from: a */
    private static String m8629a(CharSequence charSequence) {
        int length = charSequence.length() - 0;
        if (length == 0) {
            throw new IllegalStateException("StringBuilder must not be empty");
        }
        int charAt = (charSequence.charAt(0) << 18) + ((length >= 2 ? charSequence.charAt(1) : (char) 0) << '\f') + ((length >= 3 ? charSequence.charAt(2) : (char) 0) << 6) + (length >= 4 ? charSequence.charAt(3) : (char) 0);
        char c2 = (char) ((charAt >> 16) & 255);
        char c3 = (char) ((charAt >> 8) & 255);
        char c4 = (char) (charAt & 255);
        StringBuilder sb = new StringBuilder(3);
        sb.append(c2);
        if (length >= 2) {
            sb.append(c3);
        }
        if (length >= 3) {
            sb.append(c4);
        }
        return sb.toString();
    }

    /* renamed from: a */
    private static void m8630a(char c2, StringBuilder sb) {
        if (c2 >= ' ' && c2 <= '?') {
            sb.append(c2);
        } else if (c2 < '@' || c2 > '^') {
            C1886j.m8665c(c2);
        } else {
            sb.append((char) (c2 - '@'));
        }
    }

    /* renamed from: a */
    private static void m8631a(C1884h c1884h, CharSequence charSequence) {
        try {
            int length = charSequence.length();
            if (length == 0) {
                return;
            }
            boolean z = true;
            if (length == 1) {
                c1884h.m8651d();
                int length2 = c1884h.f7365h.f7394b - c1884h.f7362e.length();
                int m8650c = c1884h.m8650c();
                if (m8650c > length2) {
                    c1884h.m8647a(c1884h.f7362e.length() + 1);
                    length2 = c1884h.f7365h.f7394b - c1884h.f7362e.length();
                }
                if (m8650c <= length2 && length2 <= 2) {
                    return;
                }
            }
            if (length > 4) {
                throw new IllegalStateException("Count must not exceed 4");
            }
            int i = length - 1;
            String m8629a = m8629a(charSequence);
            if ((!c1884h.m8649b()) == false || i > 2) {
                z = false;
            }
            if (i <= 2) {
                c1884h.m8647a(c1884h.f7362e.length() + i);
                if (c1884h.f7365h.f7394b - c1884h.f7362e.length() >= 3) {
                    c1884h.m8647a(c1884h.f7362e.length() + m8629a.length());
                    z = false;
                }
            }
            if (z) {
                c1884h.f7365h = null;
                c1884h.f7363f -= i;
            } else {
                c1884h.m8648a(m8629a);
            }
        } finally {
            c1884h.f7364g = 0;
        }
    }

    @Override // com.google.p130a.p140d.p143c.InterfaceC1883g
    /* renamed from: a */
    public final int mo8606a() {
        return 4;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0038 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0005 A[SYNTHETIC] */
    @Override // com.google.p130a.p140d.p143c.InterfaceC1883g
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void mo8607a(com.google.p130a.p140d.p143c.C1884h r10) {
        /*
            Method dump skipped, instructions count: 231
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p140d.p143c.C1882f.mo8607a(com.google.a.d.c.h):void");
    }
}
