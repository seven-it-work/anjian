package com.google.p130a.p140d.p143c;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.a.d.c.m */
/* loaded from: classes.dex */
public final class C1889m extends C1879c {
    @Override // com.google.p130a.p140d.p143c.C1879c, com.google.p130a.p140d.p143c.InterfaceC1883g
    /* renamed from: a */
    public final int mo8606a() {
        return 2;
    }

    @Override // com.google.p130a.p140d.p143c.C1879c
    /* renamed from: a */
    final int mo8612a(char c2, StringBuilder sb) {
        int i;
        int i2;
        char c3;
        if (c2 == ' ') {
            c3 = 3;
        } else {
            if (c2 >= '0' && c2 <= '9') {
                i2 = (c2 - '0') + 4;
            } else {
                if (c2 < 'a' || c2 > 'z') {
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
                                if (c2 == '`') {
                                    sb.append((char) 2);
                                } else if (c2 >= 'A' && c2 <= 'Z') {
                                    sb.append((char) 2);
                                    i = (c2 - 'A') + 1;
                                } else {
                                    if (c2 < '{' || c2 > 127) {
                                        sb.append("\u0001\u001e");
                                        return mo8612a((char) (c2 - 128), sb) + 2;
                                    }
                                    sb.append((char) 2);
                                    i = (c2 - '{') + 27;
                                }
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
                i2 = (c2 - 'a') + 14;
            }
            c3 = (char) i2;
        }
        sb.append(c3);
        return 1;
    }
}
