package com.google.p130a.p158i.p160b;

import com.google.p130a.C2016m;
import com.google.p130a.InterfaceC2024u;
import com.google.p130a.p137c.C1852b;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.google.a.i.b.b */
/* loaded from: classes.dex */
final class C2002b {

    /* renamed from: a */
    final C1852b f7829a;

    /* renamed from: c */
    final int f7831c;

    /* renamed from: d */
    final int f7832d;

    /* renamed from: e */
    final int f7833e;

    /* renamed from: f */
    final int f7834f;

    /* renamed from: g */
    private final float f7835g;

    /* renamed from: i */
    private final InterfaceC2024u f7837i;

    /* renamed from: b */
    final List<C2001a> f7830b = new ArrayList(5);

    /* renamed from: h */
    private final int[] f7836h = new int[3];

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2002b(C1852b c1852b, int i, int i2, int i3, int i4, float f, InterfaceC2024u interfaceC2024u) {
        this.f7829a = c1852b;
        this.f7831c = i;
        this.f7832d = i2;
        this.f7833e = i3;
        this.f7834f = i4;
        this.f7835g = f;
        this.f7837i = interfaceC2024u;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x005f, code lost:
    
        if (r2[1] <= r12) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0061, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0062, code lost:
    
        if (r10 >= r1) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0068, code lost:
    
        if (r0.m8479a(r11, r10) != false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x006c, code lost:
    
        if (r2[2] > r12) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x006e, code lost:
    
        r2[2] = r2[2] + 1;
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0078, code lost:
    
        if (r2[2] <= r12) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x007a, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x008c, code lost:
    
        if ((java.lang.Math.abs(((r2[0] + r2[1]) + r2[2]) - r13) * 5) < (r13 * 2)) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x008e, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0093, code lost:
    
        if (m9162a(r2) == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0099, code lost:
    
        return m9159a(r2, r10);
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private float m9158a(int r10, int r11, int r12, int r13) {
        /*
            r9 = this;
            com.google.a.c.b r0 = r9.f7829a
            int r1 = r0.f7256b
            int[] r2 = r9.f7836h
            r3 = 0
            r2[r3] = r3
            r4 = 1
            r2[r4] = r3
            r5 = 2
            r2[r5] = r3
            r6 = r10
        L10:
            if (r6 < 0) goto L24
            boolean r7 = r0.m8479a(r11, r6)
            if (r7 == 0) goto L24
            r7 = r2[r4]
            if (r7 > r12) goto L24
            r7 = r2[r4]
            int r7 = r7 + r4
            r2[r4] = r7
            int r6 = r6 + (-1)
            goto L10
        L24:
            r7 = 2143289344(0x7fc00000, float:NaN)
            if (r6 < 0) goto L9a
            r8 = r2[r4]
            if (r8 <= r12) goto L2d
            return r7
        L2d:
            if (r6 < 0) goto L41
            boolean r8 = r0.m8479a(r11, r6)
            if (r8 != 0) goto L41
            r8 = r2[r3]
            if (r8 > r12) goto L41
            r8 = r2[r3]
            int r8 = r8 + r4
            r2[r3] = r8
            int r6 = r6 + (-1)
            goto L2d
        L41:
            r6 = r2[r3]
            if (r6 <= r12) goto L46
            return r7
        L46:
            int r10 = r10 + r4
        L47:
            if (r10 >= r1) goto L5b
            boolean r6 = r0.m8479a(r11, r10)
            if (r6 == 0) goto L5b
            r6 = r2[r4]
            if (r6 > r12) goto L5b
            r6 = r2[r4]
            int r6 = r6 + r4
            r2[r4] = r6
            int r10 = r10 + 1
            goto L47
        L5b:
            if (r10 == r1) goto L9a
            r6 = r2[r4]
            if (r6 <= r12) goto L62
            return r7
        L62:
            if (r10 >= r1) goto L76
            boolean r6 = r0.m8479a(r11, r10)
            if (r6 != 0) goto L76
            r6 = r2[r5]
            if (r6 > r12) goto L76
            r6 = r2[r5]
            int r6 = r6 + r4
            r2[r5] = r6
            int r10 = r10 + 1
            goto L62
        L76:
            r11 = r2[r5]
            if (r11 <= r12) goto L7b
            return r7
        L7b:
            r11 = r2[r3]
            r12 = r2[r4]
            int r11 = r11 + r12
            r12 = r2[r5]
            int r11 = r11 + r12
            int r11 = r11 - r13
            int r11 = java.lang.Math.abs(r11)
            int r11 = r11 * 5
            int r13 = r13 * 2
            if (r11 < r13) goto L8f
            return r7
        L8f:
            boolean r11 = r9.m9162a(r2)
            if (r11 == 0) goto L9a
            float r10 = m9159a(r2, r10)
            return r10
        L9a:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p158i.p160b.C2002b.m9158a(int, int, int, int):float");
    }

    /* renamed from: a */
    private static float m9159a(int[] iArr, int i) {
        return (i - iArr[2]) - (iArr[1] / 2.0f);
    }

    /* renamed from: a */
    private C2001a m9160a() throws C2016m {
        C2001a m9161a;
        C2001a m9161a2;
        int i = this.f7831c;
        int i2 = this.f7834f;
        int i3 = this.f7833e + i;
        int i4 = this.f7832d + (i2 / 2);
        int[] iArr = new int[3];
        for (int i5 = 0; i5 < i2; i5++) {
            int i6 = ((i5 & 1) == 0 ? (i5 + 1) / 2 : -((i5 + 1) / 2)) + i4;
            iArr[0] = 0;
            iArr[1] = 0;
            iArr[2] = 0;
            int i7 = i;
            while (i7 < i3 && !this.f7829a.m8479a(i7, i6)) {
                i7++;
            }
            int i8 = 0;
            while (i7 < i3) {
                if (!this.f7829a.m8479a(i7, i6)) {
                    if (i8 == 1) {
                        i8++;
                    }
                    iArr[i8] = iArr[i8] + 1;
                } else if (i8 == 1) {
                    iArr[1] = iArr[1] + 1;
                } else if (i8 != 2) {
                    i8++;
                    iArr[i8] = iArr[i8] + 1;
                } else {
                    if (m9162a(iArr) && (m9161a2 = m9161a(iArr, i6, i7)) != null) {
                        return m9161a2;
                    }
                    iArr[0] = iArr[2];
                    iArr[1] = 1;
                    iArr[2] = 0;
                    i8 = 1;
                }
                i7++;
            }
            if (m9162a(iArr) && (m9161a = m9161a(iArr, i6, i3)) != null) {
                return m9161a;
            }
        }
        if (this.f7830b.isEmpty()) {
            throw C2016m.getNotFoundInstance();
        }
        return this.f7830b.get(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0071, code lost:
    
        if (r8[1] <= r5) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0074, code lost:
    
        if (r14 >= r7) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007a, code lost:
    
        if (r6.m8479a(r4, r14) != false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x007e, code lost:
    
        if (r8[2] > r5) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0080, code lost:
    
        r8[2] = r8[2] + 1;
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x008a, code lost:
    
        if (r8[2] <= r5) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x009e, code lost:
    
        if ((java.lang.Math.abs(((r8[0] + r8[1]) + r8[2]) - r1) * 5) < (r1 * 2)) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00a5, code lost:
    
        if (m9162a(r8) == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00a7, code lost:
    
        r10 = m9159a(r8, r14);
     */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0100 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:? A[LOOP:4: B:56:0x00c3->B:73:?, LOOP_END, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.p130a.p158i.p160b.C2001a m9161a(int[] r13, int r14, int r15) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p158i.p160b.C2002b.m9161a(int[], int, int):com.google.a.i.b.a");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m9162a(int[] iArr) {
        float f = this.f7835g;
        float f2 = f / 2.0f;
        for (int i = 0; i < 3; i++) {
            if (Math.abs(f - iArr[i]) >= f2) {
                return false;
            }
        }
        return true;
    }
}
