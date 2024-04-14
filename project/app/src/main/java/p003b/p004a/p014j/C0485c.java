package p003b.p004a.p014j;

import javax.security.auth.x500.X500Principal;

/* renamed from: b.a.j.c */
/* loaded from: classes.dex */
final class C0485c {

    /* renamed from: a */
    final String f533a;

    /* renamed from: b */
    final int f534b;

    /* renamed from: c */
    int f535c;

    /* renamed from: d */
    int f536d;

    /* renamed from: e */
    int f537e;

    /* renamed from: f */
    int f538f;

    /* renamed from: g */
    char[] f539g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0485c(X500Principal x500Principal) {
        this.f533a = x500Principal.getName("RFC2253");
        this.f534b = this.f533a.length();
    }

    /* renamed from: a */
    private int m501a(int i) {
        int i2;
        int i3;
        int i4 = i + 1;
        if (i4 >= this.f534b) {
            throw new IllegalStateException("Malformed DN: " + this.f533a);
        }
        char c2 = this.f539g[i];
        if (c2 >= '0' && c2 <= '9') {
            i2 = c2 - '0';
        } else if (c2 >= 'a' && c2 <= 'f') {
            i2 = c2 - 'W';
        } else {
            if (c2 < 'A' || c2 > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.f533a);
            }
            i2 = c2 - '7';
        }
        char c3 = this.f539g[i4];
        if (c3 >= '0' && c3 <= '9') {
            i3 = c3 - '0';
        } else if (c3 >= 'a' && c3 <= 'f') {
            i3 = c3 - 'W';
        } else {
            if (c3 < 'A' || c3 > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.f533a);
            }
            i3 = c3 - '7';
        }
        return (i2 << 4) + i3;
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
    private java.lang.String m502a(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 312
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p003b.p004a.p014j.C0485c.m502a(java.lang.String):java.lang.String");
    }

    /* renamed from: e */
    private String m503e() {
        this.f535c++;
        this.f536d = this.f535c;
        int i = this.f536d;
        while (true) {
            this.f537e = i;
            if (this.f535c == this.f534b) {
                throw new IllegalStateException("Unexpected end of DN: " + this.f533a);
            }
            if (this.f539g[this.f535c] == '\"') {
                do {
                    this.f535c++;
                    if (this.f535c >= this.f534b) {
                        break;
                    }
                } while (this.f539g[this.f535c] == ' ');
                return new String(this.f539g, this.f536d, this.f537e - this.f536d);
            }
            if (this.f539g[this.f535c] == '\\') {
                this.f539g[this.f537e] = m508d();
            } else {
                this.f539g[this.f537e] = this.f539g[this.f535c];
            }
            this.f535c++;
            i = this.f537e + 1;
        }
    }

    /* renamed from: f */
    private char m504f() {
        int i;
        int i2;
        int m501a = m501a(this.f535c);
        this.f535c++;
        if (m501a < 128) {
            return (char) m501a;
        }
        if (m501a < 192 || m501a > 247) {
            return '?';
        }
        if (m501a <= 223) {
            i2 = m501a & 31;
            i = 1;
        } else if (m501a <= 239) {
            i = 2;
            i2 = m501a & 15;
        } else {
            i = 3;
            i2 = m501a & 7;
        }
        for (int i3 = 0; i3 < i; i3++) {
            this.f535c++;
            if (this.f535c == this.f534b || this.f539g[this.f535c] != '\\') {
                return '?';
            }
            this.f535c++;
            int m501a2 = m501a(this.f535c);
            this.f535c++;
            if ((m501a2 & 192) != 128) {
                return '?';
            }
            i2 = (i2 << 6) + (m501a2 & 63);
        }
        return (char) i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final String m505a() {
        while (this.f535c < this.f534b && this.f539g[this.f535c] == ' ') {
            this.f535c++;
        }
        if (this.f535c == this.f534b) {
            return null;
        }
        this.f536d = this.f535c;
        do {
            this.f535c++;
            if (this.f535c >= this.f534b || this.f539g[this.f535c] == '=') {
                break;
            }
        } while (this.f539g[this.f535c] != ' ');
        if (this.f535c >= this.f534b) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f533a);
        }
        this.f537e = this.f535c;
        if (this.f539g[this.f535c] == ' ') {
            while (this.f535c < this.f534b && this.f539g[this.f535c] != '=' && this.f539g[this.f535c] == ' ') {
                this.f535c++;
            }
            if (this.f539g[this.f535c] != '=' || this.f535c == this.f534b) {
                throw new IllegalStateException("Unexpected end of DN: " + this.f533a);
            }
        }
        do {
            this.f535c++;
            if (this.f535c >= this.f534b) {
                break;
            }
        } while (this.f539g[this.f535c] == ' ');
        if (this.f537e - this.f536d > 4 && this.f539g[this.f536d + 3] == '.' && ((this.f539g[this.f536d] == 'O' || this.f539g[this.f536d] == 'o') && ((this.f539g[this.f536d + 1] == 'I' || this.f539g[this.f536d + 1] == 'i') && (this.f539g[this.f536d + 2] == 'D' || this.f539g[this.f536d + 2] == 'd')))) {
            this.f536d += 4;
        }
        return new String(this.f539g, this.f536d, this.f537e - this.f536d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final String m506b() {
        if (this.f535c + 4 >= this.f534b) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f533a);
        }
        this.f536d = this.f535c;
        int i = this.f535c;
        while (true) {
            this.f535c = i + 1;
            if (this.f535c == this.f534b || this.f539g[this.f535c] == '+' || this.f539g[this.f535c] == ',' || this.f539g[this.f535c] == ';') {
                break;
            }
            if (this.f539g[this.f535c] == ' ') {
                this.f537e = this.f535c;
                do {
                    this.f535c++;
                    if (this.f535c >= this.f534b) {
                        break;
                    }
                } while (this.f539g[this.f535c] == ' ');
            } else {
                if (this.f539g[this.f535c] >= 'A' && this.f539g[this.f535c] <= 'F') {
                    char[] cArr = this.f539g;
                    int i2 = this.f535c;
                    cArr[i2] = (char) (cArr[i2] + ' ');
                }
                i = this.f535c;
            }
        }
        this.f537e = this.f535c;
        int i3 = this.f537e - this.f536d;
        if (i3 < 5 || (i3 & 1) == 0) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f533a);
        }
        byte[] bArr = new byte[i3 / 2];
        int i4 = this.f536d + 1;
        for (int i5 = 0; i5 < bArr.length; i5++) {
            bArr[i5] = (byte) m501a(i4);
            i4 += 2;
        }
        return new String(this.f539g, this.f536d, i3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to find 'out' block for switch in B:36:0x002f. Please report as an issue. */
    /* renamed from: c */
    public final String m507c() {
        this.f536d = this.f535c;
        this.f537e = this.f535c;
        while (this.f535c < this.f534b) {
            char c2 = this.f539g[this.f535c];
            if (c2 != ' ') {
                if (c2 != ';') {
                    if (c2 != '\\') {
                        switch (c2) {
                            case '+':
                            case ',':
                                break;
                            default:
                                char[] cArr = this.f539g;
                                int i = this.f537e;
                                this.f537e = i + 1;
                                cArr[i] = this.f539g[this.f535c];
                                break;
                        }
                    } else {
                        char[] cArr2 = this.f539g;
                        int i2 = this.f537e;
                        this.f537e = i2 + 1;
                        cArr2[i2] = m508d();
                    }
                    this.f535c++;
                }
                return new String(this.f539g, this.f536d, this.f537e - this.f536d);
            }
            this.f538f = this.f537e;
            this.f535c++;
            char[] cArr3 = this.f539g;
            int i3 = this.f537e;
            this.f537e = i3 + 1;
            cArr3[i3] = ' ';
            while (this.f535c < this.f534b && this.f539g[this.f535c] == ' ') {
                char[] cArr4 = this.f539g;
                int i4 = this.f537e;
                this.f537e = i4 + 1;
                cArr4[i4] = ' ';
                this.f535c++;
            }
            if (this.f535c == this.f534b || this.f539g[this.f535c] == ',' || this.f539g[this.f535c] == '+' || this.f539g[this.f535c] == ';') {
                return new String(this.f539g, this.f536d, this.f538f - this.f536d);
            }
        }
        return new String(this.f539g, this.f536d, this.f537e - this.f536d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final char m508d() {
        this.f535c++;
        if (this.f535c == this.f534b) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f533a);
        }
        char c2 = this.f539g[this.f535c];
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
                                    return m504f();
                            }
                    }
            }
        }
        return this.f539g[this.f535c];
    }
}
