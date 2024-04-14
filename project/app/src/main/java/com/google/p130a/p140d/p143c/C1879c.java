package com.google.p130a.p140d.p143c;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.a.d.c.c */
/* loaded from: classes.dex */
public class C1879c implements InterfaceC1883g {
    /* renamed from: a */
    private int m8609a(C1884h c1884h, StringBuilder sb, StringBuilder sb2, int i) {
        int length = sb.length();
        sb.delete(length - i, length);
        c1884h.f7363f--;
        int mo8612a = mo8612a(c1884h.m8645a(), sb2);
        c1884h.f7365h = null;
        return mo8612a;
    }

    /* renamed from: a */
    private static String m8610a(CharSequence charSequence) {
        int charAt = (charSequence.charAt(0) * 1600) + (charSequence.charAt(1) * '(') + charSequence.charAt(2) + 1;
        return new String(new char[]{(char) (charAt / 256), (char) (charAt % 256)});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m8611a(C1884h c1884h, StringBuilder sb) {
        int charAt = (sb.charAt(0) * 1600) + (sb.charAt(1) * '(') + sb.charAt(2) + 1;
        c1884h.m8648a(new String(new char[]{(char) (charAt / 256), (char) (charAt % 256)}));
        sb.delete(0, 3);
    }

    @Override // com.google.p130a.p140d.p143c.InterfaceC1883g
    /* renamed from: a */
    public int mo8606a() {
        return 1;
    }

    /* renamed from: a */
    int mo8612a(char c2, StringBuilder sb) {
        int i;
        int i2;
        char c3;
        if (c2 == ' ') {
            c3 = 3;
        } else {
            if (c2 >= '0' && c2 <= '9') {
                i2 = (c2 - '0') + 4;
            } else {
                if (c2 < 'A' || c2 > 'Z') {
                    if (c2 < ' ') {
                        sb.append((char) 0);
                    } else {
                        char c4 = '!';
                        if (c2 < '!' || c2 > '/') {
                            if (c2 >= ':' && c2 <= '@') {
                                sb.append((char) 1);
                                i = (c2 - ':') + 15;
                            } else if (c2 < '[' || c2 > '_') {
                                c4 = '`';
                                if (c2 < '`' || c2 > 127) {
                                    sb.append("\u0001\u001e");
                                    return mo8612a((char) (c2 - 128), sb) + 2;
                                }
                                sb.append((char) 2);
                            } else {
                                sb.append((char) 1);
                                i = (c2 - '[') + 22;
                            }
                            c2 = (char) i;
                        } else {
                            sb.append((char) 1);
                        }
                        i = c2 - c4;
                        c2 = (char) i;
                    }
                    sb.append(c2);
                    return 2;
                }
                i2 = (c2 - 'A') + 14;
            }
            c3 = (char) i2;
        }
        sb.append(c3);
        return 1;
    }

    @Override // com.google.p130a.p140d.p143c.InterfaceC1883g
    /* renamed from: a */
    public void mo8607a(C1884h c1884h) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            if (!c1884h.m8649b()) {
                break;
            }
            char m8645a = c1884h.m8645a();
            c1884h.f7363f++;
            int mo8612a = mo8612a(m8645a, sb);
            int length = c1884h.f7362e.length() + ((sb.length() / 3) << 1);
            c1884h.m8647a(length);
            int i = c1884h.f7365h.f7394b - length;
            if (!c1884h.m8649b()) {
                StringBuilder sb2 = new StringBuilder();
                if (sb.length() % 3 == 2 && (i < 2 || i > 2)) {
                    mo8612a = m8609a(c1884h, sb, sb2, mo8612a);
                }
                while (sb.length() % 3 == 1) {
                    if (mo8612a <= 3 && i != 1) {
                        mo8612a = m8609a(c1884h, sb, sb2, mo8612a);
                    } else if (mo8612a <= 3) {
                        break;
                    } else {
                        mo8612a = m8609a(c1884h, sb, sb2, mo8612a);
                    }
                }
            } else if (sb.length() % 3 == 0 && C1886j.m8657a(c1884h.f7358a, c1884h.f7363f, mo8606a()) != mo8606a()) {
                c1884h.f7364g = 0;
                break;
            }
        }
        mo8613b(c1884h, sb);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0068, code lost:
    
        if (r8.m8649b() == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0033, code lost:
    
        if (r8.m8649b() != false) goto L10;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void mo8613b(com.google.p130a.p140d.p143c.C1884h r8, java.lang.StringBuilder r9) {
        /*
            r7 = this;
            int r0 = r9.length()
            r1 = 3
            int r0 = r0 / r1
            r2 = 1
            int r0 = r0 << r2
            int r3 = r9.length()
            int r3 = r3 % r1
            java.lang.StringBuilder r4 = r8.f7362e
            int r4 = r4.length()
            int r4 = r4 + r0
            r8.m8647a(r4)
            com.google.a.d.c.k r0 = r8.f7365h
            int r0 = r0.f7394b
            int r0 = r0 - r4
            r4 = 0
            r5 = 254(0xfe, float:3.56E-43)
            r6 = 2
            if (r3 != r6) goto L39
            r9.append(r4)
        L25:
            int r0 = r9.length()
            if (r0 < r1) goto L2f
            m8611a(r8, r9)
            goto L25
        L2f:
            boolean r9 = r8.m8649b()
            if (r9 == 0) goto L6b
        L35:
            r8.m8646a(r5)
            goto L6b
        L39:
            if (r0 != r2) goto L56
            if (r3 != r2) goto L56
        L3d:
            int r0 = r9.length()
            if (r0 < r1) goto L47
            m8611a(r8, r9)
            goto L3d
        L47:
            boolean r9 = r8.m8649b()
            if (r9 == 0) goto L50
            r8.m8646a(r5)
        L50:
            int r9 = r8.f7363f
            int r9 = r9 - r2
            r8.f7363f = r9
            goto L6b
        L56:
            if (r3 != 0) goto L6e
        L58:
            int r2 = r9.length()
            if (r2 < r1) goto L62
            m8611a(r8, r9)
            goto L58
        L62:
            if (r0 > 0) goto L35
            boolean r9 = r8.m8649b()
            if (r9 == 0) goto L6b
            goto L35
        L6b:
            r8.f7364g = r4
            return
        L6e:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "Unexpected case. Please report!"
            r8.<init>(r9)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p140d.p143c.C1879c.mo8613b(com.google.a.d.c.h, java.lang.StringBuilder):void");
    }
}
