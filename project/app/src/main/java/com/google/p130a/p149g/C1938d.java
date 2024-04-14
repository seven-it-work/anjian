package com.google.p130a.p149g;

import com.google.p130a.C2026w;
import com.google.p130a.EnumC1796a;
import com.google.p130a.EnumC1903g;
import com.google.p130a.p137c.C1852b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* renamed from: com.google.a.g.d */
/* loaded from: classes.dex */
public final class C1938d extends AbstractC1953s {

    /* renamed from: a */
    private static final int f7565a = 103;

    /* renamed from: b */
    private static final int f7566b = 104;

    /* renamed from: c */
    private static final int f7567c = 105;

    /* renamed from: d */
    private static final int f7568d = 101;

    /* renamed from: e */
    private static final int f7569e = 100;

    /* renamed from: f */
    private static final int f7570f = 99;

    /* renamed from: g */
    private static final int f7571g = 106;

    /* renamed from: h */
    private static final char f7572h = 241;

    /* renamed from: i */
    private static final char f7573i = 242;

    /* renamed from: j */
    private static final char f7574j = 243;

    /* renamed from: k */
    private static final char f7575k = 244;

    /* renamed from: l */
    private static final int f7576l = 102;

    /* renamed from: m */
    private static final int f7577m = 97;

    /* renamed from: n */
    private static final int f7578n = 96;

    /* renamed from: o */
    private static final int f7579o = 101;

    /* renamed from: p */
    private static final int f7580p = 100;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* renamed from: com.google.a.g.d$a */
    /* loaded from: classes.dex */
    public static final class a {
        public static final int UNCODABLE$127b542f = 1;
        public static final int ONE_DIGIT$127b542f = 2;
        public static final int TWO_DIGITS$127b542f = 3;
        public static final int FNC_1$127b542f = 4;
        private static final /* synthetic */ int[] $VALUES$5c84c8f4 = {UNCODABLE$127b542f, ONE_DIGIT$127b542f, TWO_DIGITS$127b542f, FNC_1$127b542f};

        private a(String str, int i) {
        }

        public static int[] values$1af21075() {
            return (int[]) $VALUES$5c84c8f4.clone();
        }
    }

    /* renamed from: a */
    private static int m8841a(CharSequence charSequence, int i) {
        int length = charSequence.length();
        if (i >= length) {
            return a.UNCODABLE$127b542f;
        }
        char charAt = charSequence.charAt(i);
        if (charAt == 241) {
            return a.FNC_1$127b542f;
        }
        if (charAt < '0' || charAt > '9') {
            return a.UNCODABLE$127b542f;
        }
        int i2 = i + 1;
        if (i2 >= length) {
            return a.ONE_DIGIT$127b542f;
        }
        char charAt2 = charSequence.charAt(i2);
        return (charAt2 < '0' || charAt2 > '9') ? a.ONE_DIGIT$127b542f : a.TWO_DIGITS$127b542f;
    }

    /* renamed from: a */
    private static int m8842a(CharSequence charSequence, int i, int i2) {
        int m8841a;
        int m8841a2;
        char charAt;
        int m8841a3 = m8841a(charSequence, i);
        if (m8841a3 == a.ONE_DIGIT$127b542f) {
            return 100;
        }
        if (m8841a3 == a.UNCODABLE$127b542f) {
            return (i >= charSequence.length() || ((charAt = charSequence.charAt(i)) >= ' ' && (i2 != 101 || charAt >= '`'))) ? 100 : 101;
        }
        if (i2 == 99) {
            return 99;
        }
        if (i2 != 100) {
            if (m8841a3 == a.FNC_1$127b542f) {
                m8841a3 = m8841a(charSequence, i + 1);
            }
            return m8841a3 == a.TWO_DIGITS$127b542f ? 99 : 100;
        }
        if (m8841a3 == a.FNC_1$127b542f || (m8841a = m8841a(charSequence, i + 2)) == a.UNCODABLE$127b542f || m8841a == a.ONE_DIGIT$127b542f) {
            return 100;
        }
        if (m8841a == a.FNC_1$127b542f) {
            return m8841a(charSequence, i + 3) == a.TWO_DIGITS$127b542f ? 99 : 100;
        }
        int i3 = i + 4;
        while (true) {
            m8841a2 = m8841a(charSequence, i3);
            if (m8841a2 != a.TWO_DIGITS$127b542f) {
                break;
            }
            i3 += 2;
        }
        return m8841a2 == a.ONE_DIGIT$127b542f ? 100 : 99;
    }

    @Override // com.google.p130a.p149g.AbstractC1953s, com.google.p130a.InterfaceC2025v
    /* renamed from: a */
    public final C1852b mo8208a(String str, EnumC1796a enumC1796a, int i, int i2, Map<EnumC1903g, ?> map) throws C2026w {
        if (enumC1796a != EnumC1796a.CODE_128) {
            throw new IllegalArgumentException("Can only encode CODE_128, but got ".concat(String.valueOf(enumC1796a)));
        }
        return super.mo8208a(str, enumC1796a, i, i2, map);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.p130a.p149g.AbstractC1953s
    /* renamed from: a */
    public final boolean[] mo8838a(String str) {
        int length = str.length();
        if (length <= 0 || length > 80) {
            throw new IllegalArgumentException("Contents length should be between 1 and 80 characters, but got ".concat(String.valueOf(length)));
        }
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            switch (charAt) {
                case 241:
                case 242:
                case 243:
                case 244:
                    break;
                default:
                    if (charAt > 127) {
                        throw new IllegalArgumentException("Bad character in input: ".concat(String.valueOf(charAt)));
                    }
                    break;
            }
        }
        ArrayList<int[]> arrayList = new ArrayList();
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 1;
        while (true) {
            int i7 = 103;
            if (i3 >= length) {
                arrayList.add(C1937c.f7549a[i5 % 103]);
                arrayList.add(C1937c.f7549a[106]);
                int i8 = 0;
                for (int[] iArr : arrayList) {
                    int i9 = i8;
                    for (int i10 : iArr) {
                        i9 += i10;
                    }
                    i8 = i9;
                }
                boolean[] zArr = new boolean[i8];
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    i += m8874a(zArr, i, (int[]) it.next(), true);
                }
                return zArr;
            }
            int m8842a = m8842a(str, i3, i4);
            if (m8842a == i4) {
                int i11 = 101;
                switch (str.charAt(i3)) {
                    case 241:
                        i11 = 102;
                        break;
                    case 242:
                        i11 = 97;
                        break;
                    case 243:
                        i11 = 96;
                        break;
                    case 244:
                        if (i4 != 101) {
                            i11 = 100;
                            break;
                        }
                        break;
                    default:
                        switch (i4) {
                            case 100:
                                i11 = str.charAt(i3) - ' ';
                                break;
                            case 101:
                                i11 = str.charAt(i3) - ' ';
                                if (i11 < 0) {
                                    i11 += 96;
                                    break;
                                }
                                break;
                            default:
                                i11 = Integer.parseInt(str.substring(i3, i3 + 2));
                                i3++;
                                break;
                        }
                }
                i3++;
                i7 = i11;
            } else {
                if (i4 == 0) {
                    switch (m8842a) {
                        case 100:
                            i7 = 104;
                            break;
                        case 101:
                            break;
                        default:
                            i7 = 105;
                            break;
                    }
                } else {
                    i7 = m8842a;
                }
                i4 = m8842a;
            }
            arrayList.add(C1937c.f7549a[i7]);
            i5 += i7 * i6;
            if (i3 != 0) {
                i6++;
            }
        }
    }
}
