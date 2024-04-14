package com.google.p130a.p131a.p134c;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;

/* renamed from: com.google.a.a.c.d */
/* loaded from: classes.dex */
public final class C1805d {

    /* renamed from: b */
    static final int f7109b = 0;

    /* renamed from: c */
    static final int f7110c = 1;

    /* renamed from: d */
    static final int f7111d = 2;

    /* renamed from: e */
    static final int f7112e = 3;

    /* renamed from: f */
    static final int f7113f = 4;

    /* renamed from: h */
    static final int[][] f7115h;

    /* renamed from: j */
    private static final int[][] f7116j;

    /* renamed from: i */
    final byte[] f7117i;

    /* renamed from: a */
    static final String[] f7108a = {"UPPER", "LOWER", "DIGIT", "MIXED", "PUNCT"};

    /* renamed from: g */
    static final int[][] f7114g = {new int[]{0, 327708, 327710, 327709, 656318}, new int[]{590318, 0, 327710, 327709, 656318}, new int[]{262158, 590300, 0, 590301, 932798}, new int[]{327709, 327708, 656318, 0, 327710}, new int[]{327711, 656380, 656382, 656381, 0}};

    /* renamed from: com.google.a.a.c.d$1, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 implements Comparator<C1807f> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public AnonymousClass1() {
        }

        /* renamed from: a */
        private static int m8236a(C1807f c1807f, C1807f c1807f2) {
            return c1807f.f7124d - c1807f2.f7124d;
        }

        @Override // java.util.Comparator
        public final /* bridge */ /* synthetic */ int compare(C1807f c1807f, C1807f c1807f2) {
            return c1807f.f7124d - c1807f2.f7124d;
        }
    }

    static {
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) int.class, 5, 256);
        f7116j = iArr;
        iArr[0][32] = 1;
        for (int i = 65; i <= 90; i++) {
            f7116j[0][i] = (i - 65) + 2;
        }
        f7116j[1][32] = 1;
        for (int i2 = 97; i2 <= 122; i2++) {
            f7116j[1][i2] = (i2 - 97) + 2;
        }
        f7116j[2][32] = 1;
        for (int i3 = 48; i3 <= 57; i3++) {
            f7116j[2][i3] = (i3 - 48) + 2;
        }
        f7116j[2][44] = 12;
        f7116j[2][46] = 13;
        int[] iArr2 = {0, 32, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 27, 28, 29, 30, 31, 64, 92, 94, 95, 96, 124, 126, 127};
        for (int i4 = 0; i4 < 28; i4++) {
            f7116j[3][iArr2[i4]] = i4;
        }
        int[] iArr3 = {0, 13, 0, 0, 0, 0, 33, 39, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 58, 59, 60, 61, 62, 63, 91, 93, 123, 125};
        for (int i5 = 0; i5 < 31; i5++) {
            if (iArr3[i5] > 0) {
                f7116j[4][iArr3[i5]] = i5;
            }
        }
        int[][] iArr4 = (int[][]) Array.newInstance((Class<?>) int.class, 6, 6);
        f7115h = iArr4;
        for (int[] iArr5 : iArr4) {
            Arrays.fill(iArr5, -1);
        }
        f7115h[0][4] = 0;
        f7115h[1][4] = 0;
        f7115h[1][0] = 28;
        f7115h[3][4] = 0;
        f7115h[2][4] = 0;
        f7115h[2][0] = 15;
    }

    public C1805d(byte[] bArr) {
        this.f7117i = bArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009d  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.google.p130a.p137c.C1848a m8230a() {
        /*
            r13 = this;
            com.google.a.a.c.f r0 = com.google.p130a.p131a.p134c.C1807f.f7121a
            java.util.List r0 = java.util.Collections.singletonList(r0)
            r1 = 0
            r2 = r0
            r0 = 0
        L9:
            byte[] r3 = r13.f7117i
            int r3 = r3.length
            if (r0 >= r3) goto La4
            int r3 = r0 + 1
            byte[] r4 = r13.f7117i
            int r4 = r4.length
            if (r3 >= r4) goto L1a
            byte[] r4 = r13.f7117i
            r4 = r4[r3]
            goto L1b
        L1a:
            r4 = 0
        L1b:
            byte[] r5 = r13.f7117i
            r5 = r5[r0]
            r6 = 13
            r7 = 3
            r8 = 2
            r9 = 4
            if (r5 == r6) goto L42
            r6 = 44
            r10 = 32
            if (r5 == r6) goto L3e
            r6 = 46
            if (r5 == r6) goto L3a
            r6 = 58
            if (r5 == r6) goto L36
        L34:
            r4 = 0
            goto L47
        L36:
            if (r4 != r10) goto L34
            r4 = 5
            goto L47
        L3a:
            if (r4 != r10) goto L34
            r4 = 3
            goto L47
        L3e:
            if (r4 != r10) goto L34
            r4 = 4
            goto L47
        L42:
            r5 = 10
            if (r4 != r5) goto L34
            r4 = 2
        L47:
            r5 = 1
            if (r4 <= 0) goto L9d
            java.util.LinkedList r6 = new java.util.LinkedList
            r6.<init>()
            java.util.Iterator r2 = r2.iterator()
        L53:
            boolean r10 = r2.hasNext()
            if (r10 == 0) goto L96
            java.lang.Object r10 = r2.next()
            com.google.a.a.c.f r10 = (com.google.p130a.p131a.p134c.C1807f) r10
            com.google.a.a.c.f r11 = r10.m8245b(r0)
            com.google.a.a.c.f r12 = r11.m8242a(r9, r4)
            r6.add(r12)
            int r12 = r10.f7122b
            if (r12 == r9) goto L75
            com.google.a.a.c.f r12 = r11.m8246b(r9, r4)
            r6.add(r12)
        L75:
            if (r4 == r7) goto L79
            if (r4 != r9) goto L86
        L79:
            int r12 = 16 - r4
            com.google.a.a.c.f r11 = r11.m8242a(r8, r12)
            com.google.a.a.c.f r11 = r11.m8242a(r8, r5)
            r6.add(r11)
        L86:
            int r11 = r10.f7123c
            if (r11 <= 0) goto L53
            com.google.a.a.c.f r10 = r10.m8241a(r0)
            com.google.a.a.c.f r10 = r10.m8241a(r3)
            r6.add(r10)
            goto L53
        L96:
            java.util.Collection r0 = m8231a(r6)
            r2 = r0
            r0 = r3
            goto La1
        L9d:
            java.util.Collection r2 = r13.m8232a(r2, r0)
        La1:
            int r0 = r0 + r5
            goto L9
        La4:
            com.google.a.a.c.d$1 r0 = new com.google.a.a.c.d$1
            r0.<init>()
            java.lang.Object r0 = java.util.Collections.min(r2, r0)
            com.google.a.a.c.f r0 = (com.google.p130a.p131a.p134c.C1807f) r0
            byte[] r1 = r13.f7117i
            com.google.a.c.a r0 = r0.m8243a(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p131a.p134c.C1805d.m8230a():com.google.a.c.a");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Collection<C1807f> m8231a(Iterable<C1807f> iterable) {
        LinkedList linkedList = new LinkedList();
        for (C1807f c1807f : iterable) {
            boolean z = true;
            Iterator it = linkedList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                C1807f c1807f2 = (C1807f) it.next();
                if (c1807f2.m8244a(c1807f)) {
                    z = false;
                    break;
                }
                if (c1807f.m8244a(c1807f2)) {
                    it.remove();
                }
            }
            if (z) {
                linkedList.add(c1807f);
            }
        }
        return linkedList;
    }

    /* renamed from: a */
    private Collection<C1807f> m8232a(Iterable<C1807f> iterable, int i) {
        LinkedList linkedList = new LinkedList();
        Iterator<C1807f> it = iterable.iterator();
        while (it.hasNext()) {
            m8235a(it.next(), i, linkedList);
        }
        return m8231a(linkedList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Collection<C1807f> m8233a(Iterable<C1807f> iterable, int i, int i2) {
        LinkedList linkedList = new LinkedList();
        for (C1807f c1807f : iterable) {
            C1807f m8245b = c1807f.m8245b(i);
            linkedList.add(m8245b.m8242a(4, i2));
            if (c1807f.f7122b != 4) {
                linkedList.add(m8245b.m8246b(4, i2));
            }
            if (i2 == 3 || i2 == 4) {
                linkedList.add(m8245b.m8242a(2, 16 - i2).m8242a(2, 1));
            }
            if (c1807f.f7123c > 0) {
                linkedList.add(c1807f.m8241a(i).m8241a(i + 1));
            }
        }
        return m8231a(linkedList);
    }

    /* renamed from: a */
    private static void m8234a(C1807f c1807f, int i, int i2, Collection<C1807f> collection) {
        C1807f m8245b = c1807f.m8245b(i);
        collection.add(m8245b.m8242a(4, i2));
        if (c1807f.f7122b != 4) {
            collection.add(m8245b.m8246b(4, i2));
        }
        if (i2 == 3 || i2 == 4) {
            collection.add(m8245b.m8242a(2, 16 - i2).m8242a(2, 1));
        }
        if (c1807f.f7123c > 0) {
            collection.add(c1807f.m8241a(i).m8241a(i + 1));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m8235a(C1807f c1807f, int i, Collection<C1807f> collection) {
        char c2 = (char) (this.f7117i[i] & 255);
        boolean z = f7116j[c1807f.f7122b][c2] > 0;
        C1807f c1807f2 = null;
        for (int i2 = 0; i2 <= 4; i2++) {
            int i3 = f7116j[i2][c2];
            if (i3 > 0) {
                if (c1807f2 == null) {
                    c1807f2 = c1807f.m8245b(i);
                }
                if (!z || i2 == c1807f.f7122b || i2 == 2) {
                    collection.add(c1807f2.m8242a(i2, i3));
                }
                if (!z && f7115h[c1807f.f7122b][i2] >= 0) {
                    collection.add(c1807f2.m8246b(i2, i3));
                }
            }
        }
        if (c1807f.f7123c > 0 || f7116j[c1807f.f7122b][c2] == 0) {
            collection.add(c1807f.m8241a(i));
        }
    }
}
