package com.google.p130a.p140d.p143c;

import android.support.v7.widget.ActivityChooserView;
import com.cyjh.mobileanjian.ipc.share.proto.C1612a;
import com.google.p130a.C1896f;
import java.util.Arrays;

/* renamed from: com.google.a.d.c.j */
/* loaded from: classes.dex */
public final class C1886j {

    /* renamed from: a */
    static final char f7372a = 230;

    /* renamed from: b */
    static final char f7373b = 231;

    /* renamed from: c */
    static final char f7374c = 235;

    /* renamed from: d */
    static final char f7375d = 238;

    /* renamed from: e */
    static final char f7376e = 239;

    /* renamed from: f */
    static final char f7377f = 240;

    /* renamed from: g */
    static final char f7378g = 254;

    /* renamed from: h */
    static final char f7379h = 254;

    /* renamed from: i */
    static final int f7380i = 0;

    /* renamed from: j */
    static final int f7381j = 1;

    /* renamed from: k */
    static final int f7382k = 2;

    /* renamed from: l */
    static final int f7383l = 3;

    /* renamed from: m */
    static final int f7384m = 4;

    /* renamed from: n */
    static final int f7385n = 5;

    /* renamed from: o */
    private static final char f7386o = 129;

    /* renamed from: p */
    private static final char f7387p = 236;

    /* renamed from: q */
    private static final char f7388q = 237;

    /* renamed from: r */
    private static final String f7389r = "[)>\u001e05\u001d";

    /* renamed from: s */
    private static final String f7390s = "[)>\u001e06\u001d";

    /* renamed from: t */
    private static final String f7391t = "\u001e\u0004";

    private C1886j() {
    }

    /* renamed from: a */
    private static char m8655a(int i) {
        int i2 = ((i * 149) % 253) + 1 + C1612a.f6065aG;
        if (i2 > 254) {
            i2 -= 254;
        }
        return (char) i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001a, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x0005, code lost:
    
        if (r5 < r0) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x0007, code lost:
    
        r2 = r4.charAt(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x000f, code lost:
    
        if (m8663a(r2) == false) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0011, code lost:
    
        if (r5 >= r0) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0013, code lost:
    
        r1 = r1 + 1;
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0017, code lost:
    
        if (r5 >= r0) goto L15;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int m8656a(java.lang.CharSequence r4, int r5) {
        /*
            int r0 = r4.length()
            r1 = 0
            if (r5 >= r0) goto L1a
        L7:
            char r2 = r4.charAt(r5)
        Lb:
            boolean r3 = m8663a(r2)
            if (r3 == 0) goto L1a
            if (r5 >= r0) goto L1a
            int r1 = r1 + 1
            int r5 = r5 + 1
            if (r5 >= r0) goto Lb
            goto L7
        L1a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p140d.p143c.C1886j.m8656a(java.lang.CharSequence, int):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m8657a(CharSequence charSequence, int i, int i2) {
        float[] fArr;
        if (i >= charSequence.length()) {
            return i2;
        }
        if (i2 == 0) {
            fArr = new float[]{0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.25f};
        } else {
            float[] fArr2 = {1.0f, 2.0f, 2.0f, 2.0f, 2.0f, 2.25f};
            fArr2[i2] = 0.0f;
            fArr = fArr2;
        }
        int i3 = 0;
        while (true) {
            int i4 = i + i3;
            if (i4 == charSequence.length()) {
                byte[] bArr = new byte[6];
                int[] iArr = new int[6];
                int m8659a = m8659a(fArr, iArr, (int) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, bArr);
                int m8658a = m8658a(bArr);
                if (iArr[0] == m8659a) {
                    return 0;
                }
                if (m8658a == 1 && bArr[5] > 0) {
                    return 5;
                }
                if (m8658a == 1 && bArr[4] > 0) {
                    return 4;
                }
                if (m8658a != 1 || bArr[2] <= 0) {
                    return (m8658a != 1 || bArr[3] <= 0) ? 1 : 3;
                }
                return 2;
            }
            char charAt = charSequence.charAt(i4);
            i3++;
            if (m8663a(charAt)) {
                fArr[0] = fArr[0] + 0.5f;
            } else if (m8664b(charAt)) {
                fArr[0] = (float) Math.ceil(fArr[0]);
                fArr[0] = fArr[0] + 2.0f;
            } else {
                fArr[0] = (float) Math.ceil(fArr[0]);
                fArr[0] = fArr[0] + 1.0f;
            }
            if (charAt == ' ' || (charAt >= '0' && charAt <= '9') || (charAt >= 'A' && charAt <= 'Z')) {
                fArr[1] = fArr[1] + 0.6666667f;
            } else if (m8664b(charAt)) {
                fArr[1] = fArr[1] + 2.6666667f;
            } else {
                fArr[1] = fArr[1] + 1.3333334f;
            }
            if (charAt == ' ' || (charAt >= '0' && charAt <= '9') || (charAt >= 'a' && charAt <= 'z')) {
                fArr[2] = fArr[2] + 0.6666667f;
            } else if (m8664b(charAt)) {
                fArr[2] = fArr[2] + 2.6666667f;
            } else {
                fArr[2] = fArr[2] + 1.3333334f;
            }
            if (m8668f(charAt)) {
                fArr[3] = fArr[3] + 0.6666667f;
            } else if (m8664b(charAt)) {
                fArr[3] = fArr[3] + 4.3333335f;
            } else {
                fArr[3] = fArr[3] + 3.3333333f;
            }
            if (charAt >= ' ' && charAt <= '^') {
                fArr[4] = fArr[4] + 0.75f;
            } else if (m8664b(charAt)) {
                fArr[4] = fArr[4] + 4.25f;
            } else {
                fArr[4] = fArr[4] + 3.25f;
            }
            fArr[5] = fArr[5] + 1.0f;
            if (i3 >= 4) {
                int[] iArr2 = new int[6];
                byte[] bArr2 = new byte[6];
                m8659a(fArr, iArr2, (int) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, bArr2);
                int m8658a2 = m8658a(bArr2);
                if (iArr2[0] < iArr2[5] && iArr2[0] < iArr2[1] && iArr2[0] < iArr2[2] && iArr2[0] < iArr2[3] && iArr2[0] < iArr2[4]) {
                    return 0;
                }
                if (iArr2[5] < iArr2[0] || bArr2[1] + bArr2[2] + bArr2[3] + bArr2[4] == 0) {
                    return 5;
                }
                if (m8658a2 == 1 && bArr2[4] > 0) {
                    return 4;
                }
                if (m8658a2 == 1 && bArr2[2] > 0) {
                    return 2;
                }
                if (m8658a2 == 1 && bArr2[3] > 0) {
                    return 3;
                }
                if (iArr2[1] + 1 < iArr2[0] && iArr2[1] + 1 < iArr2[5] && iArr2[1] + 1 < iArr2[4] && iArr2[1] + 1 < iArr2[2]) {
                    if (iArr2[1] < iArr2[3]) {
                        return 1;
                    }
                    if (iArr2[1] == iArr2[3]) {
                        for (int i5 = i + i3 + 1; i5 < charSequence.length(); i5++) {
                            char charAt2 = charSequence.charAt(i5);
                            if (m8669g(charAt2)) {
                                return 3;
                            }
                            if (!m8668f(charAt2)) {
                                break;
                            }
                        }
                        return 1;
                    }
                }
            }
        }
    }

    /* renamed from: a */
    private static int m8658a(byte[] bArr) {
        int i = 0;
        for (int i2 = 0; i2 < 6; i2++) {
            i += bArr[i2];
        }
        return i;
    }

    /* renamed from: a */
    private static int m8659a(float[] fArr, int[] iArr, int i, byte[] bArr) {
        Arrays.fill(bArr, (byte) 0);
        int i2 = i;
        for (int i3 = 0; i3 < 6; i3++) {
            iArr[i3] = (int) Math.ceil(fArr[i3]);
            int i4 = iArr[i3];
            if (i2 > i4) {
                Arrays.fill(bArr, (byte) 0);
                i2 = i4;
            }
            if (i2 == i4) {
                bArr[i3] = (byte) (bArr[i3] + 1);
            }
        }
        return i2;
    }

    /* renamed from: a */
    private static String m8660a(String str) {
        return m8661a(str, EnumC1888l.FORCE_NONE, (C1896f) null, (C1896f) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00b1  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String m8661a(java.lang.String r7, com.google.p130a.p140d.p143c.EnumC1888l r8, com.google.p130a.C1896f r9, com.google.p130a.C1896f r10) {
        /*
            r0 = 6
            com.google.a.d.c.g[] r0 = new com.google.p130a.p140d.p143c.InterfaceC1883g[r0]
            com.google.a.d.c.a r1 = new com.google.a.d.c.a
            r1.<init>()
            r2 = 0
            r0[r2] = r1
            com.google.a.d.c.c r1 = new com.google.a.d.c.c
            r1.<init>()
            r3 = 1
            r0[r3] = r1
            com.google.a.d.c.m r1 = new com.google.a.d.c.m
            r1.<init>()
            r4 = 2
            r0[r4] = r1
            com.google.a.d.c.n r1 = new com.google.a.d.c.n
            r1.<init>()
            r5 = 3
            r0[r5] = r1
            com.google.a.d.c.f r1 = new com.google.a.d.c.f
            r1.<init>()
            r5 = 4
            r0[r5] = r1
            com.google.a.d.c.b r1 = new com.google.a.d.c.b
            r1.<init>()
            r6 = 5
            r0[r6] = r1
            com.google.a.d.c.h r1 = new com.google.a.d.c.h
            r1.<init>(r7)
            r1.f7359b = r8
            r1.f7360c = r9
            r1.f7361d = r10
            java.lang.String r8 = "[)>\u001e05\u001d"
            boolean r8 = r7.startsWith(r8)
            if (r8 == 0) goto L5c
            java.lang.String r8 = "\u001e\u0004"
            boolean r8 = r7.endsWith(r8)
            if (r8 == 0) goto L5c
            r7 = 236(0xec, float:3.31E-43)
        L50:
            r1.m8646a(r7)
            r1.f7366i = r4
            int r7 = r1.f7363f
            int r7 = r7 + 7
            r1.f7363f = r7
            goto L6f
        L5c:
            java.lang.String r8 = "[)>\u001e06\u001d"
            boolean r8 = r7.startsWith(r8)
            if (r8 == 0) goto L6f
            java.lang.String r8 = "\u001e\u0004"
            boolean r7 = r7.endsWith(r8)
            if (r7 == 0) goto L6f
            r7 = 237(0xed, float:3.32E-43)
            goto L50
        L6f:
            boolean r7 = r1.m8649b()
            if (r7 == 0) goto L84
            r7 = r0[r2]
            r7.mo8607a(r1)
            int r7 = r1.f7364g
            if (r7 < 0) goto L6f
            int r2 = r1.f7364g
            r7 = -1
            r1.f7364g = r7
            goto L6f
        L84:
            java.lang.StringBuilder r7 = r1.f7362e
            int r7 = r7.length()
            r1.m8651d()
            com.google.a.d.c.k r8 = r1.f7365h
            int r8 = r8.f7394b
            r9 = 254(0xfe, float:3.56E-43)
            if (r7 >= r8) goto L9e
            if (r2 == 0) goto L9e
            if (r2 == r6) goto L9e
            if (r2 == r5) goto L9e
            r1.m8646a(r9)
        L9e:
            java.lang.StringBuilder r7 = r1.f7362e
            int r10 = r7.length()
            r0 = 129(0x81, float:1.81E-43)
            if (r10 >= r8) goto Lab
            r7.append(r0)
        Lab:
            int r10 = r7.length()
            if (r10 >= r8) goto Lc6
            int r10 = r7.length()
            int r10 = r10 + r3
            int r10 = r10 * 149
            int r10 = r10 % 253
            int r10 = r10 + r3
            int r10 = r10 + r0
            if (r10 > r9) goto Lbf
            goto Lc1
        Lbf:
            int r10 = r10 + (-254)
        Lc1:
            char r10 = (char) r10
            r7.append(r10)
            goto Lab
        Lc6:
            java.lang.StringBuilder r7 = r1.f7362e
            java.lang.String r7 = r7.toString()
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p140d.p143c.C1886j.m8661a(java.lang.String, com.google.a.d.c.l, com.google.a.f, com.google.a.f):java.lang.String");
    }

    /* renamed from: a */
    private static boolean m8662a() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static boolean m8663a(char c2) {
        return c2 >= '0' && c2 <= '9';
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static boolean m8664b(char c2) {
        return c2 >= 128 && c2 <= 255;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static void m8665c(char c2) {
        String hexString = Integer.toHexString(c2);
        throw new IllegalArgumentException("Illegal character: " + c2 + " (0x" + ("0000".substring(0, 4 - hexString.length()) + hexString) + ')');
    }

    /* renamed from: d */
    private static boolean m8666d(char c2) {
        if (c2 == ' ') {
            return true;
        }
        if (c2 < '0' || c2 > '9') {
            return c2 >= 'A' && c2 <= 'Z';
        }
        return true;
    }

    /* renamed from: e */
    private static boolean m8667e(char c2) {
        if (c2 == ' ') {
            return true;
        }
        if (c2 < '0' || c2 > '9') {
            return c2 >= 'a' && c2 <= 'z';
        }
        return true;
    }

    /* renamed from: f */
    private static boolean m8668f(char c2) {
        if (m8669g(c2) || c2 == ' ') {
            return true;
        }
        if (c2 < '0' || c2 > '9') {
            return c2 >= 'A' && c2 <= 'Z';
        }
        return true;
    }

    /* renamed from: g */
    private static boolean m8669g(char c2) {
        return c2 == '\r' || c2 == '*' || c2 == '>';
    }

    /* renamed from: h */
    private static boolean m8670h(char c2) {
        return c2 >= ' ' && c2 <= '^';
    }
}
