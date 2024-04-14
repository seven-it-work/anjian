package com.google.p130a.p153h.p154a;

import com.google.p130a.C1961h;
import com.google.p130a.p153h.C1979c;
import java.math.BigInteger;
import java.util.Arrays;

/* renamed from: com.google.a.h.a.e */
/* loaded from: classes.dex */
final class C1970e {

    /* renamed from: A */
    private static final char[] f7678A = ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}'".toCharArray();

    /* renamed from: B */
    private static final char[] f7679B = "0123456789&\r\t,:#-.$/+%*=^".toCharArray();

    /* renamed from: C */
    private static final BigInteger[] f7680C;

    /* renamed from: D */
    private static final int f7681D = 2;

    /* renamed from: a */
    private static final int f7682a = 900;

    /* renamed from: b */
    private static final int f7683b = 901;

    /* renamed from: c */
    private static final int f7684c = 902;

    /* renamed from: d */
    private static final int f7685d = 924;

    /* renamed from: e */
    private static final int f7686e = 925;

    /* renamed from: f */
    private static final int f7687f = 926;

    /* renamed from: g */
    private static final int f7688g = 927;

    /* renamed from: h */
    private static final int f7689h = 928;

    /* renamed from: i */
    private static final int f7690i = 923;

    /* renamed from: j */
    private static final int f7691j = 922;

    /* renamed from: k */
    private static final int f7692k = 913;

    /* renamed from: l */
    private static final int f7693l = 15;

    /* renamed from: m */
    private static final int f7694m = 0;

    /* renamed from: n */
    private static final int f7695n = 1;

    /* renamed from: o */
    private static final int f7696o = 2;

    /* renamed from: p */
    private static final int f7697p = 3;

    /* renamed from: q */
    private static final int f7698q = 4;

    /* renamed from: r */
    private static final int f7699r = 5;

    /* renamed from: s */
    private static final int f7700s = 6;

    /* renamed from: t */
    private static final int f7701t = 25;

    /* renamed from: u */
    private static final int f7702u = 27;

    /* renamed from: v */
    private static final int f7703v = 27;

    /* renamed from: w */
    private static final int f7704w = 28;

    /* renamed from: x */
    private static final int f7705x = 28;

    /* renamed from: y */
    private static final int f7706y = 29;

    /* renamed from: z */
    private static final int f7707z = 29;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.a.h.a.e$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a */
        static final /* synthetic */ int[] f7708a = new int[a.values$a5b57b().length];

        static {
            try {
                f7708a[a.ALPHA$72b0c14b - 1] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7708a[a.LOWER$72b0c14b - 1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7708a[a.MIXED$72b0c14b - 1] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f7708a[a.PUNCT$72b0c14b - 1] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f7708a[a.ALPHA_SHIFT$72b0c14b - 1] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f7708a[a.PUNCT_SHIFT$72b0c14b - 1] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* renamed from: com.google.a.h.a.e$a */
    /* loaded from: classes.dex */
    public static final class a {
        public static final int ALPHA$72b0c14b = 1;
        public static final int LOWER$72b0c14b = 2;
        public static final int MIXED$72b0c14b = 3;
        public static final int PUNCT$72b0c14b = 4;
        public static final int ALPHA_SHIFT$72b0c14b = 5;
        public static final int PUNCT_SHIFT$72b0c14b = 6;
        private static final /* synthetic */ int[] $VALUES$3f80ec3a = {ALPHA$72b0c14b, LOWER$72b0c14b, MIXED$72b0c14b, PUNCT$72b0c14b, ALPHA_SHIFT$72b0c14b, PUNCT_SHIFT$72b0c14b};

        private a(String str, int i) {
        }

        public static int[] values$a5b57b() {
            return (int[]) $VALUES$3f80ec3a.clone();
        }
    }

    static {
        BigInteger[] bigIntegerArr = new BigInteger[16];
        f7680C = bigIntegerArr;
        bigIntegerArr[0] = BigInteger.ONE;
        BigInteger valueOf = BigInteger.valueOf(900L);
        f7680C[1] = valueOf;
        for (int i = 2; i < f7680C.length; i++) {
            BigInteger[] bigIntegerArr2 = f7680C;
            bigIntegerArr2[i] = bigIntegerArr2[i - 1].multiply(valueOf);
        }
    }

    private C1970e() {
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:42:0x0086. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:43:0x0089. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00aa A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int m8951a(int r20, int[] r21, java.nio.charset.Charset r22, int r23, java.lang.StringBuilder r24) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p153h.p154a.C1970e.m8951a(int, int[], java.nio.charset.Charset, int, java.lang.StringBuilder):int");
    }

    /* renamed from: a */
    private static int m8952a(int[] iArr, int i, C1979c c1979c) throws C1961h {
        if (i + 2 > iArr[0]) {
            throw C1961h.getFormatInstance();
        }
        int[] iArr2 = new int[2];
        int i2 = i;
        int i3 = 0;
        while (i3 < 2) {
            iArr2[i3] = iArr[i2];
            i3++;
            i2++;
        }
        c1979c.f7736a = Integer.parseInt(m8955a(iArr2, 2));
        StringBuilder sb = new StringBuilder();
        int m8953a = m8953a(iArr, i2, sb);
        c1979c.f7737b = sb.toString();
        int i4 = iArr[m8953a] == f7690i ? m8953a + 1 : -1;
        while (m8953a < iArr[0]) {
            switch (iArr[m8953a]) {
                case f7691j /* 922 */:
                    m8953a++;
                    c1979c.f7738c = true;
                    break;
                case f7690i /* 923 */:
                    int i5 = m8953a + 1;
                    switch (iArr[i5]) {
                        case 0:
                            StringBuilder sb2 = new StringBuilder();
                            m8953a = m8953a(iArr, i5 + 1, sb2);
                            c1979c.f7742g = sb2.toString();
                            break;
                        case 1:
                            StringBuilder sb3 = new StringBuilder();
                            m8953a = m8957b(iArr, i5 + 1, sb3);
                            c1979c.f7739d = Integer.parseInt(sb3.toString());
                            break;
                        case 2:
                            StringBuilder sb4 = new StringBuilder();
                            m8953a = m8957b(iArr, i5 + 1, sb4);
                            c1979c.f7744i = Long.parseLong(sb4.toString());
                            break;
                        case 3:
                            StringBuilder sb5 = new StringBuilder();
                            m8953a = m8953a(iArr, i5 + 1, sb5);
                            c1979c.f7740e = sb5.toString();
                            break;
                        case 4:
                            StringBuilder sb6 = new StringBuilder();
                            m8953a = m8953a(iArr, i5 + 1, sb6);
                            c1979c.f7741f = sb6.toString();
                            break;
                        case 5:
                            StringBuilder sb7 = new StringBuilder();
                            m8953a = m8957b(iArr, i5 + 1, sb7);
                            c1979c.f7743h = Long.parseLong(sb7.toString());
                            break;
                        case 6:
                            StringBuilder sb8 = new StringBuilder();
                            m8953a = m8957b(iArr, i5 + 1, sb8);
                            c1979c.f7745j = Integer.parseInt(sb8.toString());
                            break;
                        default:
                            throw C1961h.getFormatInstance();
                    }
                default:
                    throw C1961h.getFormatInstance();
            }
        }
        if (i4 != -1) {
            int i6 = m8953a - i4;
            if (c1979c.f7738c) {
                i6--;
            }
            c1979c.f7746k = Arrays.copyOfRange(iArr, i4, i6 + i4);
        }
        return m8953a;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0094, code lost:
    
        if (r9 != com.google.p130a.p153h.p154a.C1970e.f7682a) goto L31;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:15:0x003a. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x003d. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:33:0x006d. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:66:0x00b6. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:77:0x00cc. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:85:0x00e1. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00fa A[PHI: r5
      0x00fa: PHI (r5v4 int) = 
      (r5v3 int)
      (r5v3 int)
      (r5v5 int)
      (r5v3 int)
      (r5v6 int)
      (r5v3 int)
      (r5v8 int)
      (r5v3 int)
      (r5v3 int)
      (r5v10 int)
      (r5v11 int)
     binds: [B:33:0x006d, B:85:0x00e1, B:79:0x00ee, B:77:0x00cc, B:70:0x00f1, B:66:0x00b6, B:67:0x00bd, B:60:0x00f6, B:58:0x00a2, B:48:0x00ba, B:47:0x0086] A[DONT_GENERATE, DONT_INLINE]] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int m8953a(int[] r17, int r18, java.lang.StringBuilder r19) {
        /*
            Method dump skipped, instructions count: 336
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p153h.p154a.C1970e.m8953a(int[], int, java.lang.StringBuilder):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x001b. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x001e. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004e  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.p130a.p137c.C1860e m8954a(int[] r6, java.lang.String r7) throws com.google.p130a.C1961h {
        /*
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            int r1 = r6.length
            r2 = 1
            int r1 = r1 << r2
            r0.<init>(r1)
            java.nio.charset.Charset r1 = java.nio.charset.StandardCharsets.ISO_8859_1
            r2 = r6[r2]
            com.google.a.h.c r3 = new com.google.a.h.c
            r3.<init>()
            r4 = 2
        L12:
            r5 = 0
            r5 = r6[r5]
            if (r4 >= r5) goto L68
            r5 = 913(0x391, float:1.28E-42)
            if (r2 == r5) goto L53
            switch(r2) {
                case 900: goto L23;
                case 901: goto L4e;
                case 902: goto L49;
                default: goto L1e;
            }
        L1e:
            switch(r2) {
                case 922: goto L44;
                case 923: goto L44;
                case 924: goto L4e;
                case 925: goto L41;
                case 926: goto L3e;
                case 927: goto L2d;
                case 928: goto L28;
                default: goto L21;
            }
        L21:
            int r4 = r4 + (-1)
        L23:
            int r2 = m8953a(r6, r4, r0)
            goto L5b
        L28:
            int r2 = m8952a(r6, r4, r3)
            goto L5b
        L2d:
            int r2 = r4 + 1
            r1 = r6[r4]
            com.google.a.c.d r1 = com.google.p130a.p137c.EnumC1859d.getCharacterSetECIByValue(r1)
            java.lang.String r1 = r1.name()
            java.nio.charset.Charset r1 = java.nio.charset.Charset.forName(r1)
            goto L5b
        L3e:
            int r2 = r4 + 2
            goto L5b
        L41:
            int r2 = r4 + 1
            goto L5b
        L44:
            com.google.a.h r6 = com.google.p130a.C1961h.getFormatInstance()
            throw r6
        L49:
            int r2 = m8957b(r6, r4, r0)
            goto L5b
        L4e:
            int r2 = m8951a(r2, r6, r1, r4, r0)
            goto L5b
        L53:
            int r2 = r4 + 1
            r4 = r6[r4]
            char r4 = (char) r4
            r0.append(r4)
        L5b:
            int r4 = r6.length
            if (r2 >= r4) goto L63
            int r4 = r2 + 1
            r2 = r6[r2]
            goto L12
        L63:
            com.google.a.h r6 = com.google.p130a.C1961h.getFormatInstance()
            throw r6
        L68:
            int r6 = r0.length()
            if (r6 != 0) goto L73
            com.google.a.h r6 = com.google.p130a.C1961h.getFormatInstance()
            throw r6
        L73:
            com.google.a.c.e r6 = new com.google.a.c.e
            java.lang.String r0 = r0.toString()
            r1 = 0
            r6.<init>(r1, r0, r1, r7)
            r6.f7289h = r3
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p153h.p154a.C1970e.m8954a(int[], java.lang.String):com.google.a.c.e");
    }

    /* renamed from: a */
    private static String m8955a(int[] iArr, int i) throws C1961h {
        BigInteger bigInteger = BigInteger.ZERO;
        for (int i2 = 0; i2 < i; i2++) {
            bigInteger = bigInteger.add(f7680C[(i - i2) - 1].multiply(BigInteger.valueOf(iArr[i2])));
        }
        String bigInteger2 = bigInteger.toString();
        if (bigInteger2.charAt(0) != '1') {
            throw C1961h.getFormatInstance();
        }
        return bigInteger2.substring(1);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0043, code lost:
    
        if (r4 != com.google.p130a.p153h.p154a.C1970e.f7682a) goto L14;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:37:0x0069. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:48:0x007f. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x001c. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:56:0x0093. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a4 A[PHI: r1
      0x00a4: PHI (r1v8 int) = (r1v2 int), (r1v2 int), (r1v2 int), (r1v9 int) binds: [B:56:0x0093, B:48:0x007f, B:37:0x0069, B:23:0x0046] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00ad A[PHI: r1
      0x00ad: PHI (r1v3 int) = 
      (r1v2 int)
      (r1v2 int)
      (r1v4 int)
      (r1v2 int)
      (r1v5 int)
      (r1v2 int)
      (r1v7 int)
      (r1v2 int)
      (r1v2 int)
      (r1v11 int)
      (r1v12 int)
     binds: [B:4:0x001c, B:56:0x0093, B:50:0x009e, B:48:0x007f, B:41:0x00a1, B:37:0x0069, B:38:0x0070, B:31:0x00a9, B:29:0x0055, B:18:0x006d, B:17:0x0035] A[DONT_GENERATE, DONT_INLINE]] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void m8956a(int[] r12, int[] r13, int r14, java.lang.StringBuilder r15) {
        /*
            Method dump skipped, instructions count: 238
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p153h.p154a.C1970e.m8956a(int[], int[], int, java.lang.StringBuilder):void");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:25:0x0027. Please report as an issue. */
    /* renamed from: b */
    private static int m8957b(int[] iArr, int i, StringBuilder sb) throws C1961h {
        int[] iArr2 = new int[15];
        boolean z = false;
        int i2 = 0;
        while (i < iArr[0] && !z) {
            int i3 = i + 1;
            int i4 = iArr[i];
            if (i3 == iArr[0]) {
                z = true;
            }
            if (i4 < f7682a) {
                iArr2[i2] = i4;
                i2++;
            } else {
                if (i4 != 928) {
                    switch (i4) {
                        case f7682a /* 900 */:
                        case f7683b /* 901 */:
                            break;
                        default:
                            switch (i4) {
                            }
                    }
                }
                i3--;
                z = true;
            }
            if ((i2 % 15 == 0 || i4 == f7684c || z) && i2 > 0) {
                sb.append(m8955a(iArr2, i2));
                i2 = 0;
            }
            i = i3;
        }
        return i;
    }
}
