package com.google.p130a.p149g.p150a.p151a.p152a;

import android.support.v7.widget.helper.ItemTouchHelper;
import com.google.p130a.C1961h;
import com.google.p130a.C2016m;
import com.google.p130a.p137c.C1848a;
import com.google.p130a.p149g.p150a.p151a.p152a.C1919m;
import mobi.oneway.export.C2640a;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;

/* renamed from: com.google.a.g.a.a.a.s */
/* loaded from: classes.dex */
public final class C1925s {

    /* renamed from: a */
    private final C1848a f7498a;

    /* renamed from: b */
    private final C1919m f7499b = new C1919m();

    /* renamed from: c */
    private final StringBuilder f7500c = new StringBuilder();

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1925s(C1848a c1848a) {
        this.f7498a = c1848a;
    }

    /* renamed from: a */
    public static int m8768a(C1848a c1848a, int i, int i2) {
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            if (c1848a.m8445a(i + i4)) {
                i3 |= 1 << ((i2 - i4) - 1);
            }
        }
        return i3;
    }

    /* renamed from: a */
    private C1921o m8769a() throws C1961h {
        C1918l m8773c;
        boolean z;
        C1919m c1919m;
        int i;
        char c2;
        C1920n c1920n;
        int m8782a;
        int m8782a2;
        do {
            int i2 = this.f7499b.f7482a;
            if (this.f7499b.f7483b == C1919m.a.ALPHA$1376b33b) {
                while (true) {
                    int i3 = this.f7499b.f7482a;
                    if (i3 + 5 <= this.f7498a.f7243b && (((m8782a = m8782a(i3, 5)) >= 5 && m8782a < 16) || (i3 + 6 <= this.f7498a.f7243b && (m8782a2 = m8782a(i3, 6)) >= 16 && m8782a2 < 63))) {
                        int i4 = this.f7499b.f7482a;
                        int m8782a3 = m8782a(i4, 5);
                        if (m8782a3 == 15) {
                            c1920n = new C1920n(i4 + 5, '$');
                        } else if (m8782a3 < 5 || m8782a3 >= 15) {
                            int m8782a4 = m8782a(i4, 6);
                            if (m8782a4 < 32 || m8782a4 >= 58) {
                                switch (m8782a4) {
                                    case 58:
                                        c2 = '*';
                                        break;
                                    case 59:
                                        c2 = ',';
                                        break;
                                    case 60:
                                        c2 = '-';
                                        break;
                                    case 61:
                                        c2 = FilenameUtils.EXTENSION_SEPARATOR;
                                        break;
                                    case 62:
                                        c2 = IOUtils.DIR_SEPARATOR_UNIX;
                                        break;
                                    default:
                                        throw new IllegalStateException("Decoding invalid alphanumeric value: ".concat(String.valueOf(m8782a4)));
                                }
                                c1920n = new C1920n(i4 + 6, c2);
                            } else {
                                c1920n = new C1920n(i4 + 6, (char) (m8782a4 + 33));
                            }
                        } else {
                            c1920n = new C1920n(i4 + 5, (char) ((m8782a3 + 48) - 5));
                        }
                        this.f7499b.f7482a = c1920n.f7492d;
                        if (c1920n.m8754a()) {
                            m8773c = new C1918l(new C1921o(this.f7499b.f7482a, this.f7500c.toString()), true);
                        } else {
                            this.f7500c.append(c1920n.f7485a);
                        }
                    } else {
                        if (m8780h(this.f7499b.f7482a)) {
                            this.f7499b.m8752a(3);
                            c1919m = this.f7499b;
                            i = C1919m.a.NUMERIC$1376b33b;
                        } else {
                            if (m8779g(this.f7499b.f7482a)) {
                                if (this.f7499b.f7482a + 5 < this.f7498a.f7243b) {
                                    this.f7499b.m8752a(5);
                                } else {
                                    this.f7499b.f7482a = this.f7498a.f7243b;
                                }
                                c1919m = this.f7499b;
                                i = C1919m.a.ISO_IEC_646$1376b33b;
                            }
                            m8773c = new C1918l();
                        }
                        c1919m.f7483b = i;
                        m8773c = new C1918l();
                    }
                }
            } else {
                m8773c = this.f7499b.f7483b == C1919m.a.ISO_IEC_646$1376b33b ? m8773c() : m8771b();
            }
            z = m8773c.f7481b;
            if ((i2 != this.f7499b.f7482a) || z) {
            }
            return m8773c.f7480a;
        } while (!z);
        return m8773c.f7480a;
    }

    /* renamed from: a */
    private boolean m8770a(int i) {
        if (i + 7 > this.f7498a.f7243b) {
            return i + 4 <= this.f7498a.f7243b;
        }
        int i2 = i;
        while (true) {
            int i3 = i + 3;
            if (i2 >= i3) {
                return this.f7498a.m8445a(i3);
            }
            if (this.f7498a.m8445a(i2)) {
                return true;
            }
            i2++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00d6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0034  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.google.p130a.p149g.p150a.p151a.p152a.C1918l m8771b() throws com.google.p130a.C1961h {
        /*
            Method dump skipped, instructions count: 270
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p149g.p150a.p151a.p152a.C1925s.m8771b():com.google.a.g.a.a.a.l");
    }

    /* renamed from: b */
    private C1922p m8772b(int i) throws C1961h {
        int i2 = i + 7;
        if (i2 > this.f7498a.f7243b) {
            int m8782a = m8782a(i, 4);
            return m8782a == 0 ? new C1922p(this.f7498a.f7243b, 10, 10) : new C1922p(this.f7498a.f7243b, m8782a - 1, 10);
        }
        int m8782a2 = m8782a(i, 7) - 8;
        return new C1922p(i2, m8782a2 / 11, m8782a2 % 11);
    }

    /* renamed from: c */
    private C1918l m8773c() throws C1961h {
        C1919m c1919m;
        int i;
        char c2;
        C1920n c1920n;
        int m8782a;
        int m8782a2;
        int m8782a3;
        while (true) {
            int i2 = this.f7499b.f7482a;
            if (!(i2 + 5 <= this.f7498a.f7243b && (((m8782a = m8782a(i2, 5)) >= 5 && m8782a < 16) || (i2 + 7 <= this.f7498a.f7243b && (((m8782a2 = m8782a(i2, 7)) >= 64 && m8782a2 < 116) || (i2 + 8 <= this.f7498a.f7243b && (m8782a3 = m8782a(i2, 8)) >= 232 && m8782a3 < 253)))))) {
                if (!m8780h(this.f7499b.f7482a)) {
                    if (m8779g(this.f7499b.f7482a)) {
                        if (this.f7499b.f7482a + 5 < this.f7498a.f7243b) {
                            this.f7499b.m8752a(5);
                        } else {
                            this.f7499b.f7482a = this.f7498a.f7243b;
                        }
                        c1919m = this.f7499b;
                        i = C1919m.a.ALPHA$1376b33b;
                    }
                    return new C1918l();
                }
                this.f7499b.m8752a(3);
                c1919m = this.f7499b;
                i = C1919m.a.NUMERIC$1376b33b;
                c1919m.f7483b = i;
                return new C1918l();
            }
            int i3 = this.f7499b.f7482a;
            int m8782a4 = m8782a(i3, 5);
            if (m8782a4 == 15) {
                c1920n = new C1920n(i3 + 5, '$');
            } else if (m8782a4 < 5 || m8782a4 >= 15) {
                int m8782a5 = m8782a(i3, 7);
                if (m8782a5 >= 64 && m8782a5 < 90) {
                    c1920n = new C1920n(i3 + 7, (char) (m8782a5 + 1));
                } else if (m8782a5 < 90 || m8782a5 >= 116) {
                    switch (m8782a(i3, 8)) {
                        case 232:
                            c2 = '!';
                            break;
                        case 233:
                            c2 = '\"';
                            break;
                        case 234:
                            c2 = '%';
                            break;
                        case 235:
                            c2 = '&';
                            break;
                        case 236:
                            c2 = '\'';
                            break;
                        case 237:
                            c2 = '(';
                            break;
                        case 238:
                            c2 = ')';
                            break;
                        case 239:
                            c2 = '*';
                            break;
                        case 240:
                            c2 = '+';
                            break;
                        case 241:
                            c2 = ',';
                            break;
                        case 242:
                            c2 = '-';
                            break;
                        case 243:
                            c2 = FilenameUtils.EXTENSION_SEPARATOR;
                            break;
                        case 244:
                            c2 = IOUtils.DIR_SEPARATOR_UNIX;
                            break;
                        case 245:
                            c2 = ':';
                            break;
                        case 246:
                            c2 = ';';
                            break;
                        case C2640a.f10157e /* 247 */:
                            c2 = '<';
                            break;
                        case 248:
                            c2 = '=';
                            break;
                        case 249:
                            c2 = '>';
                            break;
                        case ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION /* 250 */:
                            c2 = '?';
                            break;
                        case 251:
                            c2 = '_';
                            break;
                        case 252:
                            c2 = ' ';
                            break;
                        default:
                            throw C1961h.getFormatInstance();
                    }
                    c1920n = new C1920n(i3 + 8, c2);
                } else {
                    c1920n = new C1920n(i3 + 7, (char) (m8782a5 + 7));
                }
            } else {
                c1920n = new C1920n(i3 + 5, (char) ((m8782a4 + 48) - 5));
            }
            this.f7499b.f7482a = c1920n.f7492d;
            if (c1920n.m8754a()) {
                return new C1918l(new C1921o(this.f7499b.f7482a, this.f7500c.toString()), true);
            }
            this.f7500c.append(c1920n.f7485a);
        }
    }

    /* renamed from: c */
    private boolean m8774c(int i) {
        int m8782a;
        if (i + 5 > this.f7498a.f7243b) {
            return false;
        }
        int m8782a2 = m8782a(i, 5);
        if (m8782a2 >= 5 && m8782a2 < 16) {
            return true;
        }
        if (i + 7 > this.f7498a.f7243b) {
            return false;
        }
        int m8782a3 = m8782a(i, 7);
        if (m8782a3 < 64 || m8782a3 >= 116) {
            return i + 8 <= this.f7498a.f7243b && (m8782a = m8782a(i, 8)) >= 232 && m8782a < 253;
        }
        return true;
    }

    /* renamed from: d */
    private C1918l m8775d() {
        C1919m c1919m;
        int i;
        char c2;
        C1920n c1920n;
        int m8782a;
        int m8782a2;
        while (true) {
            int i2 = this.f7499b.f7482a;
            if (!(i2 + 5 <= this.f7498a.f7243b && (((m8782a = m8782a(i2, 5)) >= 5 && m8782a < 16) || (i2 + 6 <= this.f7498a.f7243b && (m8782a2 = m8782a(i2, 6)) >= 16 && m8782a2 < 63)))) {
                if (!m8780h(this.f7499b.f7482a)) {
                    if (m8779g(this.f7499b.f7482a)) {
                        if (this.f7499b.f7482a + 5 < this.f7498a.f7243b) {
                            this.f7499b.m8752a(5);
                        } else {
                            this.f7499b.f7482a = this.f7498a.f7243b;
                        }
                        c1919m = this.f7499b;
                        i = C1919m.a.ISO_IEC_646$1376b33b;
                    }
                    return new C1918l();
                }
                this.f7499b.m8752a(3);
                c1919m = this.f7499b;
                i = C1919m.a.NUMERIC$1376b33b;
                c1919m.f7483b = i;
                return new C1918l();
            }
            int i3 = this.f7499b.f7482a;
            int m8782a3 = m8782a(i3, 5);
            if (m8782a3 == 15) {
                c1920n = new C1920n(i3 + 5, '$');
            } else if (m8782a3 < 5 || m8782a3 >= 15) {
                int m8782a4 = m8782a(i3, 6);
                if (m8782a4 < 32 || m8782a4 >= 58) {
                    switch (m8782a4) {
                        case 58:
                            c2 = '*';
                            break;
                        case 59:
                            c2 = ',';
                            break;
                        case 60:
                            c2 = '-';
                            break;
                        case 61:
                            c2 = FilenameUtils.EXTENSION_SEPARATOR;
                            break;
                        case 62:
                            c2 = IOUtils.DIR_SEPARATOR_UNIX;
                            break;
                        default:
                            throw new IllegalStateException("Decoding invalid alphanumeric value: ".concat(String.valueOf(m8782a4)));
                    }
                    c1920n = new C1920n(i3 + 6, c2);
                } else {
                    c1920n = new C1920n(i3 + 6, (char) (m8782a4 + 33));
                }
            } else {
                c1920n = new C1920n(i3 + 5, (char) ((m8782a3 + 48) - 5));
            }
            this.f7499b.f7482a = c1920n.f7492d;
            if (c1920n.m8754a()) {
                return new C1918l(new C1921o(this.f7499b.f7482a, this.f7500c.toString()), true);
            }
            this.f7500c.append(c1920n.f7485a);
        }
    }

    /* renamed from: d */
    private C1920n m8776d(int i) throws C1961h {
        char c2;
        int m8782a = m8782a(i, 5);
        if (m8782a == 15) {
            return new C1920n(i + 5, '$');
        }
        if (m8782a >= 5 && m8782a < 15) {
            return new C1920n(i + 5, (char) ((m8782a + 48) - 5));
        }
        int m8782a2 = m8782a(i, 7);
        if (m8782a2 >= 64 && m8782a2 < 90) {
            return new C1920n(i + 7, (char) (m8782a2 + 1));
        }
        if (m8782a2 >= 90 && m8782a2 < 116) {
            return new C1920n(i + 7, (char) (m8782a2 + 7));
        }
        switch (m8782a(i, 8)) {
            case 232:
                c2 = '!';
                break;
            case 233:
                c2 = '\"';
                break;
            case 234:
                c2 = '%';
                break;
            case 235:
                c2 = '&';
                break;
            case 236:
                c2 = '\'';
                break;
            case 237:
                c2 = '(';
                break;
            case 238:
                c2 = ')';
                break;
            case 239:
                c2 = '*';
                break;
            case 240:
                c2 = '+';
                break;
            case 241:
                c2 = ',';
                break;
            case 242:
                c2 = '-';
                break;
            case 243:
                c2 = FilenameUtils.EXTENSION_SEPARATOR;
                break;
            case 244:
                c2 = IOUtils.DIR_SEPARATOR_UNIX;
                break;
            case 245:
                c2 = ':';
                break;
            case 246:
                c2 = ';';
                break;
            case C2640a.f10157e /* 247 */:
                c2 = '<';
                break;
            case 248:
                c2 = '=';
                break;
            case 249:
                c2 = '>';
                break;
            case ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION /* 250 */:
                c2 = '?';
                break;
            case 251:
                c2 = '_';
                break;
            case 252:
                c2 = ' ';
                break;
            default:
                throw C1961h.getFormatInstance();
        }
        return new C1920n(i + 8, c2);
    }

    /* renamed from: e */
    private boolean m8777e(int i) {
        int m8782a;
        if (i + 5 > this.f7498a.f7243b) {
            return false;
        }
        int m8782a2 = m8782a(i, 5);
        if (m8782a2 < 5 || m8782a2 >= 16) {
            return i + 6 <= this.f7498a.f7243b && (m8782a = m8782a(i, 6)) >= 16 && m8782a < 63;
        }
        return true;
    }

    /* renamed from: f */
    private C1920n m8778f(int i) {
        char c2;
        int m8782a = m8782a(i, 5);
        if (m8782a == 15) {
            return new C1920n(i + 5, '$');
        }
        if (m8782a >= 5 && m8782a < 15) {
            return new C1920n(i + 5, (char) ((m8782a + 48) - 5));
        }
        int m8782a2 = m8782a(i, 6);
        if (m8782a2 >= 32 && m8782a2 < 58) {
            return new C1920n(i + 6, (char) (m8782a2 + 33));
        }
        switch (m8782a2) {
            case 58:
                c2 = '*';
                break;
            case 59:
                c2 = ',';
                break;
            case 60:
                c2 = '-';
                break;
            case 61:
                c2 = FilenameUtils.EXTENSION_SEPARATOR;
                break;
            case 62:
                c2 = IOUtils.DIR_SEPARATOR_UNIX;
                break;
            default:
                throw new IllegalStateException("Decoding invalid alphanumeric value: ".concat(String.valueOf(m8782a2)));
        }
        return new C1920n(i + 6, c2);
    }

    /* renamed from: g */
    private boolean m8779g(int i) {
        int i2;
        if (i + 1 > this.f7498a.f7243b) {
            return false;
        }
        for (int i3 = 0; i3 < 5 && (i2 = i3 + i) < this.f7498a.f7243b; i3++) {
            if (i3 == 2) {
                if (!this.f7498a.m8445a(i + 2)) {
                    return false;
                }
            } else if (this.f7498a.m8445a(i2)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: h */
    private boolean m8780h(int i) {
        int i2 = i + 3;
        if (i2 > this.f7498a.f7243b) {
            return false;
        }
        while (i < i2) {
            if (this.f7498a.m8445a(i)) {
                return false;
            }
            i++;
        }
        return true;
    }

    /* renamed from: i */
    private boolean m8781i(int i) {
        int i2;
        if (i + 1 > this.f7498a.f7243b) {
            return false;
        }
        for (int i3 = 0; i3 < 4 && (i2 = i3 + i) < this.f7498a.f7243b; i3++) {
            if (this.f7498a.m8445a(i2)) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final int m8782a(int i, int i2) {
        return m8768a(this.f7498a, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final C1921o m8783a(int i, String str) throws C1961h {
        C1918l m8773c;
        boolean z;
        C1919m c1919m;
        int i2;
        char c2;
        C1920n c1920n;
        int m8782a;
        int m8782a2;
        this.f7500c.setLength(0);
        if (str != null) {
            this.f7500c.append(str);
        }
        this.f7499b.f7482a = i;
        do {
            int i3 = this.f7499b.f7482a;
            if (this.f7499b.f7483b == C1919m.a.ALPHA$1376b33b) {
                while (true) {
                    int i4 = this.f7499b.f7482a;
                    if (i4 + 5 <= this.f7498a.f7243b && (((m8782a = m8782a(i4, 5)) >= 5 && m8782a < 16) || (i4 + 6 <= this.f7498a.f7243b && (m8782a2 = m8782a(i4, 6)) >= 16 && m8782a2 < 63))) {
                        int i5 = this.f7499b.f7482a;
                        int m8782a3 = m8782a(i5, 5);
                        if (m8782a3 == 15) {
                            c1920n = new C1920n(i5 + 5, '$');
                        } else if (m8782a3 < 5 || m8782a3 >= 15) {
                            int m8782a4 = m8782a(i5, 6);
                            if (m8782a4 < 32 || m8782a4 >= 58) {
                                switch (m8782a4) {
                                    case 58:
                                        c2 = '*';
                                        break;
                                    case 59:
                                        c2 = ',';
                                        break;
                                    case 60:
                                        c2 = '-';
                                        break;
                                    case 61:
                                        c2 = FilenameUtils.EXTENSION_SEPARATOR;
                                        break;
                                    case 62:
                                        c2 = IOUtils.DIR_SEPARATOR_UNIX;
                                        break;
                                    default:
                                        throw new IllegalStateException("Decoding invalid alphanumeric value: ".concat(String.valueOf(m8782a4)));
                                }
                                c1920n = new C1920n(i5 + 6, c2);
                            } else {
                                c1920n = new C1920n(i5 + 6, (char) (m8782a4 + 33));
                            }
                        } else {
                            c1920n = new C1920n(i5 + 5, (char) ((m8782a3 + 48) - 5));
                        }
                        this.f7499b.f7482a = c1920n.f7492d;
                        if (c1920n.m8754a()) {
                            m8773c = new C1918l(new C1921o(this.f7499b.f7482a, this.f7500c.toString()), true);
                        } else {
                            this.f7500c.append(c1920n.f7485a);
                        }
                    } else {
                        if (m8780h(this.f7499b.f7482a)) {
                            this.f7499b.m8752a(3);
                            c1919m = this.f7499b;
                            i2 = C1919m.a.NUMERIC$1376b33b;
                        } else {
                            if (m8779g(this.f7499b.f7482a)) {
                                if (this.f7499b.f7482a + 5 < this.f7498a.f7243b) {
                                    this.f7499b.m8752a(5);
                                } else {
                                    this.f7499b.f7482a = this.f7498a.f7243b;
                                }
                                c1919m = this.f7499b;
                                i2 = C1919m.a.ISO_IEC_646$1376b33b;
                            }
                            m8773c = new C1918l();
                        }
                        c1919m.f7483b = i2;
                        m8773c = new C1918l();
                    }
                }
            } else {
                m8773c = this.f7499b.f7483b == C1919m.a.ISO_IEC_646$1376b33b ? m8773c() : m8771b();
            }
            z = m8773c.f7481b;
            if ((i3 != this.f7499b.f7482a) || z) {
            }
            C1921o c1921o = m8773c.f7480a;
            return (c1921o == null && c1921o.f7488c) ? new C1921o(this.f7499b.f7482a, this.f7500c.toString(), c1921o.f7487b) : new C1921o(this.f7499b.f7482a, this.f7500c.toString());
        } while (!z);
        C1921o c1921o2 = m8773c.f7480a;
        if (c1921o2 == null) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final String m8784a(StringBuilder sb, int i) throws C2016m, C1961h {
        String str = null;
        while (true) {
            C1921o m8783a = m8783a(i, str);
            String m8766a = C1924r.m8766a(m8783a.f7486a);
            if (m8766a != null) {
                sb.append(m8766a);
            }
            String valueOf = m8783a.f7488c ? String.valueOf(m8783a.f7487b) : null;
            if (i == m8783a.f7492d) {
                return sb.toString();
            }
            i = m8783a.f7492d;
            str = valueOf;
        }
    }
}
