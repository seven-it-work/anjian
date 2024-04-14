package com.google.p130a.p140d.p141a;

import android.support.v7.widget.helper.ItemTouchHelper;
import com.google.p130a.C1961h;
import com.google.p130a.p137c.C1858c;
import java.io.UnsupportedEncodingException;
import java.util.Collection;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;

/* renamed from: com.google.a.d.a.c */
/* loaded from: classes.dex */
final class C1872c {

    /* renamed from: a */
    private static final char[] f7330a = {'*', '*', '*', ' ', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};

    /* renamed from: b */
    private static final char[] f7331b = {'!', '\"', '#', '$', '%', '&', '\'', '(', ')', '*', '+', ',', '-', FilenameUtils.EXTENSION_SEPARATOR, IOUtils.DIR_SEPARATOR_UNIX, ':', ';', '<', '=', '>', '?', '@', '[', IOUtils.DIR_SEPARATOR_WINDOWS, ']', '^', '_'};

    /* renamed from: c */
    private static final char[] f7332c = {'*', '*', '*', ' ', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};

    /* renamed from: d */
    private static final char[] f7333d = f7331b;

    /* renamed from: e */
    private static final char[] f7334e = {'`', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '{', '|', '}', '~', 127};

    /* renamed from: com.google.a.d.a.c$1, reason: invalid class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a */
        static final /* synthetic */ int[] f7335a = new int[a.values$68f9f718().length];

        static {
            try {
                f7335a[a.C40_ENCODE$6e85352 - 1] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7335a[a.TEXT_ENCODE$6e85352 - 1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7335a[a.ANSIX12_ENCODE$6e85352 - 1] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f7335a[a.EDIFACT_ENCODE$6e85352 - 1] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f7335a[a.BASE256_ENCODE$6e85352 - 1] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* renamed from: com.google.a.d.a.c$a */
    /* loaded from: classes.dex */
    public static final class a {
        public static final int PAD_ENCODE$6e85352 = 1;
        public static final int ASCII_ENCODE$6e85352 = 2;
        public static final int C40_ENCODE$6e85352 = 3;
        public static final int TEXT_ENCODE$6e85352 = 4;
        public static final int ANSIX12_ENCODE$6e85352 = 5;
        public static final int EDIFACT_ENCODE$6e85352 = 6;
        public static final int BASE256_ENCODE$6e85352 = 7;
        private static final /* synthetic */ int[] $VALUES$3a3249a9 = {PAD_ENCODE$6e85352, ASCII_ENCODE$6e85352, C40_ENCODE$6e85352, TEXT_ENCODE$6e85352, ANSIX12_ENCODE$6e85352, EDIFACT_ENCODE$6e85352, BASE256_ENCODE$6e85352};

        private a(String str, int i) {
        }

        public static int[] values$68f9f718() {
            return (int[]) $VALUES$3a3249a9.clone();
        }
    }

    private C1872c() {
    }

    /* renamed from: a */
    private static int m8567a(int i, int i2) {
        int i3 = i - (((i2 * 149) % 255) + 1);
        return i3 >= 0 ? i3 : i3 + 256;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:21:0x003a. Please report as an issue. */
    /* renamed from: a */
    private static int m8568a(C1858c c1858c, StringBuilder sb, StringBuilder sb2) throws C1961h {
        String str;
        boolean z = false;
        do {
            int m8515a = c1858c.m8515a(8);
            if (m8515a != 0) {
                if (m8515a > 128) {
                    if (m8515a != 129) {
                        if (m8515a > 229) {
                            switch (m8515a) {
                                case 230:
                                    return a.C40_ENCODE$6e85352;
                                case 231:
                                    return a.BASE256_ENCODE$6e85352;
                                case 232:
                                    sb.append((char) 29);
                                    break;
                                case 233:
                                case 234:
                                case 241:
                                    break;
                                case 235:
                                    z = true;
                                    break;
                                case 236:
                                    str = "[)>\u001e05\u001d";
                                    sb.append(str);
                                    sb2.insert(0, "\u001e\u0004");
                                    break;
                                case 237:
                                    str = "[)>\u001e06\u001d";
                                    sb.append(str);
                                    sb2.insert(0, "\u001e\u0004");
                                    break;
                                case 238:
                                    return a.ANSIX12_ENCODE$6e85352;
                                case 239:
                                    return a.TEXT_ENCODE$6e85352;
                                case 240:
                                    return a.EDIFACT_ENCODE$6e85352;
                                default:
                                    if (m8515a != 254 || c1858c.m8514a() != 0) {
                                        throw C1961h.getFormatInstance();
                                    }
                                    break;
                            }
                        } else {
                            int i = m8515a - 130;
                            if (i < 10) {
                                sb.append('0');
                            }
                            sb.append(i);
                        }
                    } else {
                        return a.PAD_ENCODE$6e85352;
                    }
                } else {
                    if (z) {
                        m8515a += 128;
                    }
                    sb.append((char) (m8515a - 1));
                    return a.ASCII_ENCODE$6e85352;
                }
            } else {
                throw C1961h.getFormatInstance();
            }
        } while (c1858c.m8514a() > 0);
        return a.ASCII_ENCODE$6e85352;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0066  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.p130a.p137c.C1860e m8569a(byte[] r6) throws com.google.p130a.C1961h {
        /*
            com.google.a.c.c r0 = new com.google.a.c.c
            r0.<init>(r6)
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r2 = 100
            r1.<init>(r2)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r3 = 0
            r2.<init>(r3)
            java.util.ArrayList r3 = new java.util.ArrayList
            r4 = 1
            r3.<init>(r4)
            int r4 = com.google.p130a.p140d.p141a.C1872c.a.ASCII_ENCODE$6e85352
        L1a:
            int r5 = com.google.p130a.p140d.p141a.C1872c.a.ASCII_ENCODE$6e85352
            if (r4 != r5) goto L23
            int r4 = m8568a(r0, r1, r2)
            goto L46
        L23:
            int[] r5 = com.google.p130a.p140d.p141a.C1872c.AnonymousClass1.f7335a
            int r4 = r4 + (-1)
            r4 = r5[r4]
            switch(r4) {
                case 1: goto L41;
                case 2: goto L3d;
                case 3: goto L39;
                case 4: goto L35;
                case 5: goto L31;
                default: goto L2c;
            }
        L2c:
            com.google.a.h r6 = com.google.p130a.C1961h.getFormatInstance()
            throw r6
        L31:
            m8572a(r0, r1, r3)
            goto L44
        L35:
            m8575d(r0, r1)
            goto L44
        L39:
            m8574c(r0, r1)
            goto L44
        L3d:
            m8573b(r0, r1)
            goto L44
        L41:
            m8571a(r0, r1)
        L44:
            int r4 = com.google.p130a.p140d.p141a.C1872c.a.ASCII_ENCODE$6e85352
        L46:
            int r5 = com.google.p130a.p140d.p141a.C1872c.a.PAD_ENCODE$6e85352
            if (r4 == r5) goto L50
            int r5 = r0.m8514a()
            if (r5 > 0) goto L1a
        L50:
            int r0 = r2.length()
            if (r0 <= 0) goto L59
            r1.append(r2)
        L59:
            com.google.a.c.e r0 = new com.google.a.c.e
            java.lang.String r1 = r1.toString()
            boolean r2 = r3.isEmpty()
            r4 = 0
            if (r2 == 0) goto L67
            r3 = r4
        L67:
            r0.<init>(r6, r1, r3, r4)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p140d.p141a.C1872c.m8569a(byte[]):com.google.a.c.e");
    }

    /* renamed from: a */
    private static void m8570a(int i, int i2, int[] iArr) {
        int i3 = ((i << 8) + i2) - 1;
        int i4 = i3 / 1600;
        iArr[0] = i4;
        int i5 = i3 - (i4 * 1600);
        int i6 = i5 / 40;
        iArr[1] = i6;
        iArr[2] = i5 - (i6 * 40);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x0025. Please report as an issue. */
    /* renamed from: a */
    private static void m8571a(C1858c c1858c, StringBuilder sb) throws C1961h {
        int m8515a;
        int i;
        char c2;
        boolean z;
        int[] iArr = new int[3];
        boolean z2 = false;
        int i2 = 0;
        while (c1858c.m8514a() != 8 && (m8515a = c1858c.m8515a(8)) != 254) {
            m8570a(m8515a, c1858c.m8515a(8), iArr);
            boolean z3 = z2;
            for (int i3 = 0; i3 < 3; i3++) {
                int i4 = iArr[i3];
                switch (i2) {
                    case 0:
                        if (i4 < 3) {
                            i2 = i4 + 1;
                        } else {
                            if (i4 >= f7330a.length) {
                                throw C1961h.getFormatInstance();
                            }
                            char c3 = f7330a[i4];
                            if (z3) {
                                sb.append((char) (c3 + 128));
                                z3 = false;
                            } else {
                                sb.append(c3);
                            }
                        }
                    case 1:
                        if (z3) {
                            i = i4 + 128;
                            sb.append((char) i);
                            z3 = false;
                            i2 = 0;
                        }
                        sb.append((char) i4);
                        i2 = 0;
                    case 2:
                        if (i4 < f7331b.length) {
                            c2 = f7331b[i4];
                            if (z3) {
                                sb.append((char) (c2 + 128));
                                z = false;
                                z3 = z;
                                i2 = 0;
                            }
                            sb.append(c2);
                            z = z3;
                            z3 = z;
                            i2 = 0;
                        } else if (i4 == 27) {
                            c2 = 29;
                            sb.append(c2);
                            z = z3;
                            z3 = z;
                            i2 = 0;
                        } else {
                            if (i4 != 30) {
                                throw C1961h.getFormatInstance();
                            }
                            z = true;
                            z3 = z;
                            i2 = 0;
                        }
                    case 3:
                        if (z3) {
                            i = i4 + 224;
                            sb.append((char) i);
                            z3 = false;
                            i2 = 0;
                        } else {
                            i4 += 96;
                            sb.append((char) i4);
                            i2 = 0;
                        }
                    default:
                        throw C1961h.getFormatInstance();
                }
            }
            if (c1858c.m8514a() <= 0) {
                return;
            } else {
                z2 = z3;
            }
        }
    }

    /* renamed from: a */
    private static void m8572a(C1858c c1858c, StringBuilder sb, Collection<byte[]> collection) throws C1961h {
        int i = c1858c.f7279a + 1;
        int i2 = i + 1;
        int m8567a = m8567a(c1858c.m8515a(8), i);
        if (m8567a == 0) {
            m8567a = c1858c.m8514a() / 8;
        } else if (m8567a >= 250) {
            m8567a = ((m8567a - 249) * ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION) + m8567a(c1858c.m8515a(8), i2);
            i2++;
        }
        if (m8567a < 0) {
            throw C1961h.getFormatInstance();
        }
        byte[] bArr = new byte[m8567a];
        int i3 = 0;
        while (i3 < m8567a) {
            if (c1858c.m8514a() < 8) {
                throw C1961h.getFormatInstance();
            }
            bArr[i3] = (byte) m8567a(c1858c.m8515a(8), i2);
            i3++;
            i2++;
        }
        collection.add(bArr);
        try {
            sb.append(new String(bArr, "ISO8859_1"));
        } catch (UnsupportedEncodingException e) {
            throw new IllegalStateException("Platform does not support required encoding: ".concat(String.valueOf(e)));
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x0025. Please report as an issue. */
    /* renamed from: b */
    private static void m8573b(C1858c c1858c, StringBuilder sb) throws C1961h {
        int m8515a;
        char c2;
        char c3;
        char c4;
        boolean z;
        int[] iArr = new int[3];
        boolean z2 = false;
        int i = 0;
        while (c1858c.m8514a() != 8 && (m8515a = c1858c.m8515a(8)) != 254) {
            m8570a(m8515a, c1858c.m8515a(8), iArr);
            boolean z3 = z2;
            for (int i2 = 0; i2 < 3; i2++) {
                int i3 = iArr[i2];
                switch (i) {
                    case 0:
                        if (i3 < 3) {
                            i = i3 + 1;
                        } else {
                            if (i3 >= f7332c.length) {
                                throw C1961h.getFormatInstance();
                            }
                            char c5 = f7332c[i3];
                            if (z3) {
                                sb.append((char) (c5 + 128));
                                z3 = false;
                            } else {
                                sb.append(c5);
                            }
                        }
                    case 1:
                        if (z3) {
                            c3 = (char) (i3 + 128);
                            sb.append(c3);
                            z3 = false;
                            i = 0;
                        } else {
                            c2 = (char) i3;
                            sb.append(c2);
                            i = 0;
                        }
                    case 2:
                        if (i3 < f7333d.length) {
                            c4 = f7333d[i3];
                            if (z3) {
                                sb.append((char) (c4 + 128));
                                z = false;
                                z3 = z;
                                i = 0;
                            }
                            sb.append(c4);
                            z = z3;
                            z3 = z;
                            i = 0;
                        } else if (i3 == 27) {
                            c4 = 29;
                            sb.append(c4);
                            z = z3;
                            z3 = z;
                            i = 0;
                        } else {
                            if (i3 != 30) {
                                throw C1961h.getFormatInstance();
                            }
                            z = true;
                            z3 = z;
                            i = 0;
                        }
                    case 3:
                        if (i3 >= f7334e.length) {
                            throw C1961h.getFormatInstance();
                        }
                        c2 = f7334e[i3];
                        if (z3) {
                            c3 = (char) (c2 + 128);
                            sb.append(c3);
                            z3 = false;
                            i = 0;
                        }
                        sb.append(c2);
                        i = 0;
                    default:
                        throw C1961h.getFormatInstance();
                }
            }
            if (c1858c.m8514a() <= 0) {
                return;
            } else {
                z2 = z3;
            }
        }
    }

    /* renamed from: c */
    private static void m8574c(C1858c c1858c, StringBuilder sb) throws C1961h {
        int m8515a;
        char c2;
        int i;
        int[] iArr = new int[3];
        while (c1858c.m8514a() != 8 && (m8515a = c1858c.m8515a(8)) != 254) {
            m8570a(m8515a, c1858c.m8515a(8), iArr);
            for (int i2 = 0; i2 < 3; i2++) {
                int i3 = iArr[i2];
                switch (i3) {
                    case 0:
                        c2 = '\r';
                        break;
                    case 1:
                        c2 = '*';
                        break;
                    case 2:
                        c2 = '>';
                        break;
                    case 3:
                        c2 = ' ';
                        break;
                    default:
                        if (i3 < 14) {
                            i = i3 + 44;
                        } else {
                            if (i3 >= 40) {
                                throw C1961h.getFormatInstance();
                            }
                            i = i3 + 51;
                        }
                        c2 = (char) i;
                        break;
                }
                sb.append(c2);
            }
            if (c1858c.m8514a() <= 0) {
                return;
            }
        }
    }

    /* renamed from: d */
    private static void m8575d(C1858c c1858c, StringBuilder sb) {
        while (c1858c.m8514a() > 16) {
            for (int i = 0; i < 4; i++) {
                int m8515a = c1858c.m8515a(6);
                if (m8515a == 31) {
                    int i2 = 8 - c1858c.f7280b;
                    if (i2 != 8) {
                        c1858c.m8515a(i2);
                        return;
                    }
                    return;
                }
                if ((m8515a & 32) == 0) {
                    m8515a |= 64;
                }
                sb.append((char) m8515a);
            }
            if (c1858c.m8514a() <= 0) {
                return;
            }
        }
    }
}
