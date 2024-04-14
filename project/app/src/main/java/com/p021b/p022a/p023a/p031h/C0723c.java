package com.p021b.p022a.p023a.p031h;

import javax.security.auth.x500.X500Principal;

/* renamed from: com.b.a.a.h.c */
/* loaded from: classes.dex */
final class C0723c {

    /* renamed from: a */
    private final String f1768a;

    /* renamed from: b */
    private final int f1769b;

    /* renamed from: c */
    private int f1770c;

    /* renamed from: d */
    private int f1771d;

    /* renamed from: e */
    private int f1772e;

    /* renamed from: f */
    private int f1773f;

    /* renamed from: g */
    private char[] f1774g;

    public C0723c(X500Principal x500Principal) {
        this.f1768a = x500Principal.getName("RFC2253");
        this.f1769b = this.f1768a.length();
    }

    /* renamed from: a */
    private int m1805a(int i) {
        int i2;
        int i3;
        int i4 = i + 1;
        if (i4 >= this.f1769b) {
            throw new IllegalStateException("Malformed DN: " + this.f1768a);
        }
        char c2 = this.f1774g[i];
        if (c2 >= '0' && c2 <= '9') {
            i2 = c2 - '0';
        } else if (c2 >= 'a' && c2 <= 'f') {
            i2 = c2 - 'W';
        } else {
            if (c2 < 'A' || c2 > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.f1768a);
            }
            i2 = c2 - '7';
        }
        char c3 = this.f1774g[i4];
        if (c3 >= '0' && c3 <= '9') {
            i3 = c3 - '0';
        } else if (c3 >= 'a' && c3 <= 'f') {
            i3 = c3 - 'W';
        } else {
            if (c3 < 'A' || c3 > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.f1768a);
            }
            i3 = c3 - '7';
        }
        return (i2 << 4) + i3;
    }

    /* renamed from: a */
    private String m1806a() {
        while (this.f1770c < this.f1769b && this.f1774g[this.f1770c] == ' ') {
            this.f1770c++;
        }
        if (this.f1770c == this.f1769b) {
            return null;
        }
        this.f1771d = this.f1770c;
        do {
            this.f1770c++;
            if (this.f1770c >= this.f1769b || this.f1774g[this.f1770c] == '=') {
                break;
            }
        } while (this.f1774g[this.f1770c] != ' ');
        if (this.f1770c >= this.f1769b) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f1768a);
        }
        this.f1772e = this.f1770c;
        if (this.f1774g[this.f1770c] == ' ') {
            while (this.f1770c < this.f1769b && this.f1774g[this.f1770c] != '=' && this.f1774g[this.f1770c] == ' ') {
                this.f1770c++;
            }
            if (this.f1774g[this.f1770c] != '=' || this.f1770c == this.f1769b) {
                throw new IllegalStateException("Unexpected end of DN: " + this.f1768a);
            }
        }
        do {
            this.f1770c++;
            if (this.f1770c >= this.f1769b) {
                break;
            }
        } while (this.f1774g[this.f1770c] == ' ');
        if (this.f1772e - this.f1771d > 4 && this.f1774g[this.f1771d + 3] == '.' && ((this.f1774g[this.f1771d] == 'O' || this.f1774g[this.f1771d] == 'o') && ((this.f1774g[this.f1771d + 1] == 'I' || this.f1774g[this.f1771d + 1] == 'i') && (this.f1774g[this.f1771d + 2] == 'D' || this.f1774g[this.f1771d + 2] == 'd')))) {
            this.f1771d += 4;
        }
        return new String(this.f1774g, this.f1771d, this.f1772e - this.f1771d);
    }

    /* renamed from: b */
    private String m1807b() {
        if (this.f1770c + 4 >= this.f1769b) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f1768a);
        }
        this.f1771d = this.f1770c;
        int i = this.f1770c;
        while (true) {
            this.f1770c = i + 1;
            if (this.f1770c == this.f1769b || this.f1774g[this.f1770c] == '+' || this.f1774g[this.f1770c] == ',' || this.f1774g[this.f1770c] == ';') {
                break;
            }
            if (this.f1774g[this.f1770c] == ' ') {
                this.f1772e = this.f1770c;
                do {
                    this.f1770c++;
                    if (this.f1770c >= this.f1769b) {
                        break;
                    }
                } while (this.f1774g[this.f1770c] == ' ');
            } else {
                if (this.f1774g[this.f1770c] >= 'A' && this.f1774g[this.f1770c] <= 'F') {
                    char[] cArr = this.f1774g;
                    int i2 = this.f1770c;
                    cArr[i2] = (char) (cArr[i2] + ' ');
                }
                i = this.f1770c;
            }
        }
        this.f1772e = this.f1770c;
        int i3 = this.f1772e - this.f1771d;
        if (i3 < 5 || (i3 & 1) == 0) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f1768a);
        }
        byte[] bArr = new byte[i3 / 2];
        int i4 = this.f1771d + 1;
        for (int i5 = 0; i5 < bArr.length; i5++) {
            bArr[i5] = (byte) m1805a(i4);
            i4 += 2;
        }
        return new String(this.f1774g, this.f1771d, i3);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:36:0x002f. Please report as an issue. */
    /* renamed from: c */
    private String m1808c() {
        this.f1771d = this.f1770c;
        this.f1772e = this.f1770c;
        while (this.f1770c < this.f1769b) {
            char c2 = this.f1774g[this.f1770c];
            if (c2 != ' ') {
                if (c2 != ';') {
                    if (c2 != '\\') {
                        switch (c2) {
                            case '+':
                            case ',':
                                break;
                            default:
                                char[] cArr = this.f1774g;
                                int i = this.f1772e;
                                this.f1772e = i + 1;
                                cArr[i] = this.f1774g[this.f1770c];
                                break;
                        }
                    } else {
                        char[] cArr2 = this.f1774g;
                        int i2 = this.f1772e;
                        this.f1772e = i2 + 1;
                        cArr2[i2] = m1809d();
                    }
                    this.f1770c++;
                }
                return new String(this.f1774g, this.f1771d, this.f1772e - this.f1771d);
            }
            this.f1773f = this.f1772e;
            this.f1770c++;
            char[] cArr3 = this.f1774g;
            int i3 = this.f1772e;
            this.f1772e = i3 + 1;
            cArr3[i3] = ' ';
            while (this.f1770c < this.f1769b && this.f1774g[this.f1770c] == ' ') {
                char[] cArr4 = this.f1774g;
                int i4 = this.f1772e;
                this.f1772e = i4 + 1;
                cArr4[i4] = ' ';
                this.f1770c++;
            }
            if (this.f1770c == this.f1769b || this.f1774g[this.f1770c] == ',' || this.f1774g[this.f1770c] == '+' || this.f1774g[this.f1770c] == ';') {
                return new String(this.f1774g, this.f1771d, this.f1773f - this.f1771d);
            }
        }
        return new String(this.f1774g, this.f1771d, this.f1772e - this.f1771d);
    }

    /* renamed from: d */
    private char m1809d() {
        this.f1770c++;
        if (this.f1770c == this.f1769b) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f1768a);
        }
        char c2 = this.f1774g[this.f1770c];
        if (c2 != ' ' && c2 != '%' && c2 != '\\' && c2 != '_') {
            switch (c2) {
                case '\"':
                case '#':
                    break;
                default:
                    switch (c2) {
                        case '*':
                        case '+':
                        case ',':
                            break;
                        default:
                            switch (c2) {
                                case ';':
                                case '<':
                                case '=':
                                case '>':
                                    break;
                                default:
                                    return m1810e();
                            }
                    }
            }
        }
        return this.f1774g[this.f1770c];
    }

    /* renamed from: e */
    private char m1810e() {
        int i;
        int i2;
        int m1805a = m1805a(this.f1770c);
        this.f1770c++;
        if (m1805a < 128) {
            return (char) m1805a;
        }
        if (m1805a < 192 || m1805a > 247) {
            return '?';
        }
        if (m1805a <= 223) {
            i2 = m1805a & 31;
            i = 1;
        } else if (m1805a <= 239) {
            i = 2;
            i2 = m1805a & 15;
        } else {
            i = 3;
            i2 = m1805a & 7;
        }
        for (int i3 = 0; i3 < i; i3++) {
            this.f1770c++;
            if (this.f1770c == this.f1769b || this.f1774g[this.f1770c] != '\\') {
                return '?';
            }
            this.f1770c++;
            int m1805a2 = m1805a(this.f1770c);
            this.f1770c++;
            if ((m1805a2 & 192) != 128) {
                return '?';
            }
            i2 = (i2 << 6) + (m1805a2 & 63);
        }
        return (char) i2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x0028. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00c3 A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String m1811a(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 312
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p021b.p022a.p023a.p031h.C0723c.m1811a(java.lang.String):java.lang.String");
    }
}
