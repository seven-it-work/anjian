package com.google.p130a.p149g;

import com.google.p130a.C2016m;
import com.google.p130a.p137c.C1848a;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.a.g.w */
/* loaded from: classes.dex */
public final class C1957w {

    /* renamed from: a */
    static final int[] f7622a = {24, 20, 18, 17, 12, 6, 3, 10, 9, 5};

    /* renamed from: b */
    final int[] f7623b = new int[4];

    /* renamed from: c */
    final StringBuilder f7624c = new StringBuilder();

    /* renamed from: a */
    private static int m8882a(int i) throws C2016m {
        for (int i2 = 0; i2 < 10; i2++) {
            if (i == f7622a[i2]) {
                return i2;
            }
        }
        throw C2016m.getNotFoundInstance();
    }

    /* renamed from: a */
    private int m8883a(C1848a c1848a, int[] iArr, StringBuilder sb) throws C2016m {
        int[] iArr2 = this.f7623b;
        int i = 0;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int i2 = c1848a.f7243b;
        int i3 = iArr[1];
        int i4 = 0;
        int i5 = 0;
        while (i4 < 5 && i3 < i2) {
            int m8889a = AbstractC1959y.m8889a(c1848a, iArr2, i3, AbstractC1959y.f7633f);
            sb.append((char) ((m8889a % 10) + 48));
            int i6 = i3;
            for (int i7 : iArr2) {
                i6 += i7;
            }
            if (m8889a >= 10) {
                i5 |= 1 << (4 - i4);
            }
            i3 = i4 != 4 ? c1848a.m8452d(c1848a.m8450c(i6)) : i6;
            i4++;
        }
        if (sb.length() != 5) {
            throw C2016m.getNotFoundInstance();
        }
        for (int i8 = 0; i8 < 10; i8++) {
            if (i5 == f7622a[i8]) {
                int length = sb.toString().length();
                for (int i9 = length - 2; i9 >= 0; i9 -= 2) {
                    i += r14.charAt(i9) - '0';
                }
                int i10 = i * 3;
                for (int i11 = length - 1; i11 >= 0; i11 -= 2) {
                    i10 += r14.charAt(i11) - '0';
                }
                if ((i10 * 3) % 10 != i8) {
                    throw C2016m.getNotFoundInstance();
                }
                return i3;
            }
        }
        throw C2016m.getNotFoundInstance();
    }

    /* renamed from: a */
    private static int m8884a(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        for (int i2 = length - 2; i2 >= 0; i2 -= 2) {
            i += charSequence.charAt(i2) - '0';
        }
        int i3 = i * 3;
        for (int i4 = length - 1; i4 >= 0; i4 -= 2) {
            i3 += charSequence.charAt(i4) - '0';
        }
        return (i3 * 3) % 10;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0131  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.google.p130a.C2021r m8885a(int r19, com.google.p130a.p137c.C1848a r20, int[] r21) throws com.google.p130a.C2016m {
        /*
            Method dump skipped, instructions count: 390
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p149g.C1957w.m8885a(int, com.google.a.c.a, int[]):com.google.a.r");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0046, code lost:
    
        if (r6.equals("90000") != false) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0097 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0098  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.util.Map<com.google.p130a.EnumC2022s, java.lang.Object> m8886a(java.lang.String r6) {
        /*
            int r0 = r6.length()
            r1 = 0
            r2 = 5
            if (r0 == r2) goto L9
            return r1
        L9:
            r0 = 0
            char r2 = r6.charAt(r0)
            r3 = 48
            r4 = 1
            if (r2 == r3) goto L59
            r3 = 53
            if (r2 == r3) goto L56
            r3 = 57
            if (r2 == r3) goto L1e
        L1b:
            java.lang.String r0 = ""
            goto L5b
        L1e:
            r2 = -1
            int r3 = r6.hashCode()
            r5 = 54118329(0x339c7b9, float:5.4595884E-37)
            if (r3 == r5) goto L40
            switch(r3) {
                case 54395376: goto L36;
                case 54395377: goto L2c;
                default: goto L2b;
            }
        L2b:
            goto L49
        L2c:
            java.lang.String r0 = "99991"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L49
            r0 = 1
            goto L4a
        L36:
            java.lang.String r0 = "99990"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L49
            r0 = 2
            goto L4a
        L40:
            java.lang.String r3 = "90000"
            boolean r3 = r6.equals(r3)
            if (r3 == 0) goto L49
            goto L4a
        L49:
            r0 = -1
        L4a:
            switch(r0) {
                case 0: goto L54;
                case 1: goto L51;
                case 2: goto L4e;
                default: goto L4d;
            }
        L4d:
            goto L1b
        L4e:
            java.lang.String r6 = "Used"
            goto L95
        L51:
            java.lang.String r6 = "0.00"
            goto L95
        L54:
            r6 = r1
            goto L95
        L56:
            java.lang.String r0 = "$"
            goto L5b
        L59:
            java.lang.String r0 = "£"
        L5b:
            java.lang.String r6 = r6.substring(r4)
            int r6 = java.lang.Integer.parseInt(r6)
            int r2 = r6 / 100
            java.lang.String r2 = java.lang.String.valueOf(r2)
            int r6 = r6 % 100
            r3 = 10
            if (r6 >= r3) goto L7a
            java.lang.String r3 = "0"
            java.lang.String r6 = java.lang.String.valueOf(r6)
            java.lang.String r6 = r3.concat(r6)
            goto L7e
        L7a:
            java.lang.String r6 = java.lang.String.valueOf(r6)
        L7e:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r3.append(r0)
            r3.append(r2)
            r0 = 46
            r3.append(r0)
            r3.append(r6)
            java.lang.String r6 = r3.toString()
        L95:
            if (r6 != 0) goto L98
            return r1
        L98:
            java.util.EnumMap r0 = new java.util.EnumMap
            java.lang.Class<com.google.a.s> r1 = com.google.p130a.EnumC2022s.class
            r0.<init>(r1)
            com.google.a.s r1 = com.google.p130a.EnumC2022s.SUGGESTED_PRICE
            r0.put(r1, r6)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p149g.C1957w.m8886a(java.lang.String):java.util.Map");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x003d, code lost:
    
        if (r5.equals("90000") != false) goto L23;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String m8887b(java.lang.String r5) {
        /*
            r0 = 0
            char r1 = r5.charAt(r0)
            r2 = 48
            r3 = 1
            if (r1 == r2) goto L50
            r2 = 53
            if (r1 == r2) goto L4d
            r2 = 57
            if (r1 == r2) goto L15
        L12:
            java.lang.String r0 = ""
            goto L52
        L15:
            r1 = -1
            int r2 = r5.hashCode()
            r4 = 54118329(0x339c7b9, float:5.4595884E-37)
            if (r2 == r4) goto L37
            switch(r2) {
                case 54395376: goto L2d;
                case 54395377: goto L23;
                default: goto L22;
            }
        L22:
            goto L40
        L23:
            java.lang.String r0 = "99991"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L40
            r0 = 1
            goto L41
        L2d:
            java.lang.String r0 = "99990"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L40
            r0 = 2
            goto L41
        L37:
            java.lang.String r2 = "90000"
            boolean r2 = r5.equals(r2)
            if (r2 == 0) goto L40
            goto L41
        L40:
            r0 = -1
        L41:
            switch(r0) {
                case 0: goto L4b;
                case 1: goto L48;
                case 2: goto L45;
                default: goto L44;
            }
        L44:
            goto L12
        L45:
            java.lang.String r5 = "Used"
            return r5
        L48:
            java.lang.String r5 = "0.00"
            return r5
        L4b:
            r5 = 0
            return r5
        L4d:
            java.lang.String r0 = "$"
            goto L52
        L50:
            java.lang.String r0 = "£"
        L52:
            java.lang.String r5 = r5.substring(r3)
            int r5 = java.lang.Integer.parseInt(r5)
            int r1 = r5 / 100
            java.lang.String r1 = java.lang.String.valueOf(r1)
            int r5 = r5 % 100
            r2 = 10
            if (r5 >= r2) goto L71
            java.lang.String r2 = "0"
            java.lang.String r5 = java.lang.String.valueOf(r5)
            java.lang.String r5 = r2.concat(r5)
            goto L75
        L71:
            java.lang.String r5 = java.lang.String.valueOf(r5)
        L75:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r0)
            r2.append(r1)
            r0 = 46
            r2.append(r0)
            r2.append(r5)
            java.lang.String r5 = r2.toString()
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p149g.C1957w.m8887b(java.lang.String):java.lang.String");
    }
}
