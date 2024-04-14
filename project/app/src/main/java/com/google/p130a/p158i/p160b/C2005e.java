package com.google.p130a.p158i.p160b;

import com.google.p130a.C2016m;
import com.google.p130a.C2023t;
import com.google.p130a.EnumC1891e;
import com.google.p130a.InterfaceC2024u;
import com.google.p130a.p137c.C1852b;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.google.a.i.b.e */
/* loaded from: classes.dex */
public class C2005e {

    /* renamed from: a */
    protected static final int f7842a = 3;

    /* renamed from: b */
    protected static final int f7843b = 97;

    /* renamed from: e */
    private static final int f7844e = 2;

    /* renamed from: c */
    protected final C1852b f7845c;

    /* renamed from: d */
    protected final List<C2004d> f7846d;

    /* renamed from: f */
    private boolean f7847f;

    /* renamed from: g */
    private final int[] f7848g;

    /* renamed from: h */
    private final InterfaceC2024u f7849h;

    /* renamed from: com.google.a.i.b.e$a */
    /* loaded from: classes.dex */
    private static final class a implements Serializable, Comparator<C2004d> {
        private final float average;

        private a(float f) {
            this.average = f;
        }

        @Override // java.util.Comparator
        public final int compare(C2004d c2004d, C2004d c2004d2) {
            int compare = Integer.compare(c2004d2.f7841d, c2004d.f7841d);
            return compare == 0 ? Float.compare(Math.abs(c2004d.f7840c - this.average), Math.abs(c2004d2.f7840c - this.average)) : compare;
        }
    }

    /* renamed from: com.google.a.i.b.e$b */
    /* loaded from: classes.dex */
    private static final class b implements Serializable, Comparator<C2004d> {
        private final float average;

        private b(float f) {
            this.average = f;
        }

        @Override // java.util.Comparator
        public final int compare(C2004d c2004d, C2004d c2004d2) {
            return Float.compare(Math.abs(c2004d2.f7840c - this.average), Math.abs(c2004d.f7840c - this.average));
        }
    }

    public C2005e(C1852b c1852b) {
        this(c1852b, null);
    }

    public C2005e(C1852b c1852b, InterfaceC2024u interfaceC2024u) {
        this.f7845c = c1852b;
        this.f7846d = new ArrayList();
        this.f7848g = new int[5];
        this.f7849h = interfaceC2024u;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0038, code lost:
    
        if (r2[1] <= r13) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x003a, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x003c, code lost:
    
        if (r3 < 0) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0042, code lost:
    
        if (r0.m8479a(r12, r3) == false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0046, code lost:
    
        if (r2[0] > r13) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0048, code lost:
    
        r2[0] = r2[0] + 1;
        r3 = r3 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0052, code lost:
    
        if (r2[0] <= r13) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0054, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0055, code lost:
    
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0056, code lost:
    
        if (r11 >= r1) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x005c, code lost:
    
        if (r0.m8479a(r12, r11) == false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x005e, code lost:
    
        r2[2] = r2[2] + 1;
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0066, code lost:
    
        if (r11 != r1) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0068, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x006a, code lost:
    
        if (r11 >= r1) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0070, code lost:
    
        if (r0.m8479a(r12, r11) != false) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0074, code lost:
    
        if (r2[3] >= r13) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0076, code lost:
    
        r2[3] = r2[3] + 1;
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x007e, code lost:
    
        if (r11 == r1) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0082, code lost:
    
        if (r2[3] < r13) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0084, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0086, code lost:
    
        if (r11 >= r1) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x008c, code lost:
    
        if (r0.m8479a(r12, r11) == false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0090, code lost:
    
        if (r2[4] >= r13) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0092, code lost:
    
        r2[4] = r2[4] + 1;
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x009c, code lost:
    
        if (r2[4] < r13) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x009e, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00b6, code lost:
    
        if ((java.lang.Math.abs(((((r2[0] + r2[1]) + r2[2]) + r2[3]) + r2[4]) - r14) * 5) < (r14 * 2)) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00b8, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00bd, code lost:
    
        if (m9184a(r2) == false) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00c3, code lost:
    
        return m9181a(r2, r11);
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private float m9180a(int r11, int r12, int r13, int r14) {
        /*
            Method dump skipped, instructions count: 197
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p158i.p160b.C2005e.m9180a(int, int, int, int):float");
    }

    /* renamed from: a */
    private static float m9181a(int[] iArr, int i) {
        return ((i - iArr[4]) - iArr[3]) - (iArr[2] / 2.0f);
    }

    /* renamed from: a */
    private C1852b m9182a() {
        return this.f7845c;
    }

    /* renamed from: a */
    private boolean m9183a(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int[] m9190c = m9190c();
        int i6 = 0;
        while (i >= i6 && i2 >= i6 && this.f7845c.m8479a(i2 - i6, i - i6)) {
            m9190c[2] = m9190c[2] + 1;
            i6++;
        }
        if (m9190c[2] == 0) {
            return false;
        }
        while (i >= i6 && i2 >= i6 && !this.f7845c.m8479a(i2 - i6, i - i6)) {
            m9190c[1] = m9190c[1] + 1;
            i6++;
        }
        if (m9190c[1] == 0) {
            return false;
        }
        while (i >= i6 && i2 >= i6 && this.f7845c.m8479a(i2 - i6, i - i6)) {
            m9190c[0] = m9190c[0] + 1;
            i6++;
        }
        if (m9190c[0] == 0) {
            return false;
        }
        int i7 = this.f7845c.f7256b;
        int i8 = this.f7845c.f7255a;
        int i9 = 1;
        while (true) {
            int i10 = i + i9;
            if (i10 >= i7 || (i5 = i2 + i9) >= i8 || !this.f7845c.m8479a(i5, i10)) {
                break;
            }
            m9190c[2] = m9190c[2] + 1;
            i9++;
        }
        while (true) {
            int i11 = i + i9;
            if (i11 >= i7 || (i4 = i2 + i9) >= i8 || this.f7845c.m8479a(i4, i11)) {
                break;
            }
            m9190c[3] = m9190c[3] + 1;
            i9++;
        }
        if (m9190c[3] == 0) {
            return false;
        }
        while (true) {
            int i12 = i + i9;
            if (i12 >= i7 || (i3 = i2 + i9) >= i8 || !this.f7845c.m8479a(i3, i12)) {
                break;
            }
            m9190c[4] = m9190c[4] + 1;
            i9++;
        }
        if (m9190c[4] == 0) {
            return false;
        }
        int i13 = 0;
        int i14 = 0;
        while (true) {
            if (i13 < 5) {
                int i15 = m9190c[i13];
                if (i15 == 0) {
                    break;
                }
                i14 += i15;
                i13++;
            } else if (i14 >= 7) {
                float f = i14 / 7.0f;
                float f2 = f / 1.333f;
                if (Math.abs(f - m9190c[0]) >= f2 || Math.abs(f - m9190c[1]) >= f2 || Math.abs((f * 3.0f) - m9190c[2]) >= 3.0f * f2 || Math.abs(f - m9190c[3]) >= f2 || Math.abs(f - m9190c[4]) >= f2) {
                    break;
                }
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static boolean m9184a(int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 5; i2++) {
            int i3 = iArr[i2];
            if (i3 == 0) {
                return false;
            }
            i += i3;
        }
        if (i < 7) {
            return false;
        }
        float f = i / 7.0f;
        float f2 = f / 2.0f;
        return Math.abs(f - ((float) iArr[0])) < f2 && Math.abs(f - ((float) iArr[1])) < f2 && Math.abs((f * 3.0f) - ((float) iArr[2])) < 3.0f * f2 && Math.abs(f - ((float) iArr[3])) < f2 && Math.abs(f - ((float) iArr[4])) < f2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0038, code lost:
    
        if (r2[1] <= r13) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x003a, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x003c, code lost:
    
        if (r3 < 0) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0042, code lost:
    
        if (r0.m8479a(r3, r12) == false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0046, code lost:
    
        if (r2[0] > r13) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0048, code lost:
    
        r2[0] = r2[0] + 1;
        r3 = r3 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0052, code lost:
    
        if (r2[0] <= r13) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0054, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0055, code lost:
    
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0056, code lost:
    
        if (r11 >= r1) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x005c, code lost:
    
        if (r0.m8479a(r11, r12) == false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x005e, code lost:
    
        r2[2] = r2[2] + 1;
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0066, code lost:
    
        if (r11 != r1) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0068, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x006a, code lost:
    
        if (r11 >= r1) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0070, code lost:
    
        if (r0.m8479a(r11, r12) != false) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0074, code lost:
    
        if (r2[3] >= r13) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0076, code lost:
    
        r2[3] = r2[3] + 1;
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x007e, code lost:
    
        if (r11 == r1) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0082, code lost:
    
        if (r2[3] < r13) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0084, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0086, code lost:
    
        if (r11 >= r1) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x008c, code lost:
    
        if (r0.m8479a(r11, r12) == false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0090, code lost:
    
        if (r2[4] >= r13) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0092, code lost:
    
        r2[4] = r2[4] + 1;
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x009c, code lost:
    
        if (r2[4] < r13) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x009e, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00b4, code lost:
    
        if ((java.lang.Math.abs(((((r2[0] + r2[1]) + r2[2]) + r2[3]) + r2[4]) - r14) * 5) < r14) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00b6, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00bb, code lost:
    
        if (m9184a(r2) == false) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00c1, code lost:
    
        return m9181a(r2, r11);
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private float m9185b(int r11, int r12, int r13, int r14) {
        /*
            Method dump skipped, instructions count: 195
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p158i.p160b.C2005e.m9185b(int, int, int, int):float");
    }

    /* renamed from: b */
    private List<C2004d> m9186b() {
        return this.f7846d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public static void m9187b(int[] iArr) {
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = 0;
        }
    }

    @Deprecated
    /* renamed from: b */
    private boolean m9188b(int[] iArr, int i, int i2) {
        return m9196a(iArr, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public static void m9189c(int[] iArr) {
        iArr[0] = iArr[2];
        iArr[1] = iArr[3];
        iArr[2] = iArr[4];
        iArr[3] = 1;
        iArr[4] = 0;
    }

    /* renamed from: c */
    private int[] m9190c() {
        m9187b(this.f7848g);
        return this.f7848g;
    }

    /* renamed from: d */
    private int m9191d() {
        if (this.f7846d.size() <= 1) {
            return 0;
        }
        C2004d c2004d = null;
        for (C2004d c2004d2 : this.f7846d) {
            if (c2004d2.f7841d >= 2) {
                if (c2004d != null) {
                    this.f7847f = true;
                    return ((int) (Math.abs(c2004d.f7901a - c2004d2.f7901a) - Math.abs(c2004d.f7902b - c2004d2.f7902b))) / 2;
                }
                c2004d = c2004d2;
            }
        }
        return 0;
    }

    /* renamed from: d */
    private static boolean m9192d(int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 5; i2++) {
            int i3 = iArr[i2];
            if (i3 == 0) {
                return false;
            }
            i += i3;
        }
        if (i < 7) {
            return false;
        }
        float f = i / 7.0f;
        float f2 = f / 1.333f;
        return Math.abs(f - ((float) iArr[0])) < f2 && Math.abs(f - ((float) iArr[1])) < f2 && Math.abs((f * 3.0f) - ((float) iArr[2])) < 3.0f * f2 && Math.abs(f - ((float) iArr[3])) < f2 && Math.abs(f - ((float) iArr[4])) < f2;
    }

    /* renamed from: e */
    private boolean m9193e() {
        int size = this.f7846d.size();
        float f = 0.0f;
        int i = 0;
        float f2 = 0.0f;
        for (C2004d c2004d : this.f7846d) {
            if (c2004d.f7841d >= 2) {
                i++;
                f2 += c2004d.f7840c;
            }
        }
        if (i < 3) {
            return false;
        }
        float f3 = f2 / size;
        Iterator<C2004d> it = this.f7846d.iterator();
        while (it.hasNext()) {
            f += Math.abs(it.next().f7840c - f3);
        }
        return f <= f2 * 0.05f;
    }

    /* renamed from: f */
    private C2004d[] m9194f() throws C2016m {
        int size = this.f7846d.size();
        if (size < 3) {
            throw C2016m.getNotFoundInstance();
        }
        float f = 0.0f;
        if (size > 3) {
            Iterator<C2004d> it = this.f7846d.iterator();
            float f2 = 0.0f;
            float f3 = 0.0f;
            while (it.hasNext()) {
                float f4 = it.next().f7840c;
                f2 += f4;
                f3 += f4 * f4;
            }
            float f5 = f2 / size;
            float sqrt = (float) Math.sqrt((f3 / r0) - (f5 * f5));
            Collections.sort(this.f7846d, new b(f5));
            float max = Math.max(0.2f * f5, sqrt);
            int i = 0;
            while (i < this.f7846d.size() && this.f7846d.size() > 3) {
                if (Math.abs(this.f7846d.get(i).f7840c - f5) > max) {
                    this.f7846d.remove(i);
                    i--;
                }
                i++;
            }
        }
        if (this.f7846d.size() > 3) {
            Iterator<C2004d> it2 = this.f7846d.iterator();
            while (it2.hasNext()) {
                f += it2.next().f7840c;
            }
            Collections.sort(this.f7846d, new a(f / this.f7846d.size()));
            this.f7846d.subList(3, this.f7846d.size()).clear();
        }
        return new C2004d[]{this.f7846d.get(0), this.f7846d.get(1), this.f7846d.get(2)};
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final C2006f m9195a(Map<EnumC1891e, ?> map) throws C2016m {
        int i;
        boolean z = map != null && map.containsKey(EnumC1891e.TRY_HARDER);
        int i2 = this.f7845c.f7256b;
        int i3 = this.f7845c.f7255a;
        int i4 = (i2 * 3) / 388;
        if (i4 < 3 || z) {
            i4 = 3;
        }
        int[] iArr = new int[5];
        int i5 = i4 - 1;
        int i6 = i4;
        boolean z2 = false;
        while (true) {
            if (i5 >= i2 || z2) {
                break;
            }
            m9187b(iArr);
            boolean z3 = z2;
            int i7 = i6;
            int i8 = 0;
            int i9 = 0;
            while (i8 < i3) {
                if (this.f7845c.m8479a(i8, i5)) {
                    if ((i9 & 1) == 1) {
                        i9++;
                    }
                    iArr[i9] = iArr[i9] + 1;
                } else if ((i9 & 1) != 0) {
                    iArr[i9] = iArr[i9] + 1;
                } else if (i9 != 4) {
                    i9++;
                    iArr[i9] = iArr[i9] + 1;
                } else if (m9184a(iArr) && m9196a(iArr, i5, i8)) {
                    if (this.f7847f) {
                        z3 = m9193e();
                    } else {
                        if (this.f7846d.size() > 1) {
                            C2004d c2004d = null;
                            for (C2004d c2004d2 : this.f7846d) {
                                if (c2004d2.f7841d >= 2) {
                                    if (c2004d != null) {
                                        this.f7847f = true;
                                        i = ((int) (Math.abs(c2004d.f7901a - c2004d2.f7901a) - Math.abs(c2004d.f7902b - c2004d2.f7902b))) / 2;
                                        break;
                                    }
                                    c2004d = c2004d2;
                                }
                            }
                        }
                        i = 0;
                        if (i > iArr[2]) {
                            i5 += (i - iArr[2]) - 2;
                            i8 = i3 - 1;
                        }
                    }
                    m9187b(iArr);
                    i9 = 0;
                    i7 = 2;
                } else {
                    m9189c(iArr);
                    i9 = 3;
                }
                i8++;
            }
            if (m9184a(iArr) && m9196a(iArr, i5, i3)) {
                int i10 = iArr[0];
                if (this.f7847f) {
                    i6 = i10;
                    z2 = m9193e();
                    i5 += i6;
                } else {
                    i6 = i10;
                }
            } else {
                i6 = i7;
            }
            z2 = z3;
            i5 += i6;
        }
        int size = this.f7846d.size();
        if (size < 3) {
            throw C2016m.getNotFoundInstance();
        }
        float f = 0.0f;
        if (size > 3) {
            Iterator<C2004d> it = this.f7846d.iterator();
            float f2 = 0.0f;
            float f3 = 0.0f;
            while (it.hasNext()) {
                float f4 = it.next().f7840c;
                f2 += f4;
                f3 += f4 * f4;
            }
            float f5 = f2 / size;
            float sqrt = (float) Math.sqrt((f3 / r1) - (f5 * f5));
            Collections.sort(this.f7846d, new b(f5));
            float max = Math.max(0.2f * f5, sqrt);
            int i11 = 0;
            while (i11 < this.f7846d.size() && this.f7846d.size() > 3) {
                if (Math.abs(this.f7846d.get(i11).f7840c - f5) > max) {
                    this.f7846d.remove(i11);
                    i11--;
                }
                i11++;
            }
        }
        if (this.f7846d.size() > 3) {
            Iterator<C2004d> it2 = this.f7846d.iterator();
            while (it2.hasNext()) {
                f += it2.next().f7840c;
            }
            Collections.sort(this.f7846d, new a(f / this.f7846d.size()));
            this.f7846d.subList(3, this.f7846d.size()).clear();
        }
        C2004d[] c2004dArr = {this.f7846d.get(0), this.f7846d.get(1), this.f7846d.get(2)};
        C2023t.m9294a(c2004dArr);
        return new C2006f(c2004dArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0126, code lost:
    
        if (r12[1] <= r1) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0129, code lost:
    
        if (r13 < 0) goto L244;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x012f, code lost:
    
        if (r10.m8479a(r13, r9) == false) goto L245;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x0133, code lost:
    
        if (r12[0] > r1) goto L243;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0135, code lost:
    
        r12[0] = r12[0] + 1;
        r13 = r13 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x013f, code lost:
    
        if (r12[0] <= r1) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0142, code lost:
    
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0143, code lost:
    
        if (r8 >= r11) goto L246;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x0149, code lost:
    
        if (r10.m8479a(r8, r9) == false) goto L247;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x014b, code lost:
    
        r12[2] = r12[2] + 1;
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x0153, code lost:
    
        if (r8 != r11) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x0156, code lost:
    
        if (r8 >= r11) goto L249;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x015c, code lost:
    
        if (r10.m8479a(r8, r9) != false) goto L250;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x0160, code lost:
    
        if (r12[3] >= r1) goto L248;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x0162, code lost:
    
        r12[3] = r12[3] + 1;
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x016a, code lost:
    
        if (r8 == r11) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x016e, code lost:
    
        if (r12[3] < r1) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x0171, code lost:
    
        if (r8 >= r11) goto L251;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x0177, code lost:
    
        if (r10.m8479a(r8, r9) == false) goto L252;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x017b, code lost:
    
        if (r12[4] >= r1) goto L253;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x017d, code lost:
    
        r12[4] = r12[4] + 1;
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x0187, code lost:
    
        if (r12[4] < r1) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x01a1, code lost:
    
        if ((java.lang.Math.abs(((((r12[0] + r12[1]) + r12[2]) + r12[3]) + r12[4]) - r3) * 5) < r3) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x01a9, code lost:
    
        if (m9184a(r12) == false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x01ab, code lost:
    
        r1 = m9181a(r12, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x0059, code lost:
    
        if (r12[1] <= r9) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x005c, code lost:
    
        if (r13 < 0) goto L259;
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x0062, code lost:
    
        if (r10.m8479a(r8, r13) == false) goto L257;
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x0066, code lost:
    
        if (r12[0] > r9) goto L258;
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x0068, code lost:
    
        r12[0] = r12[0] + 1;
        r13 = r13 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x0072, code lost:
    
        if (r12[0] <= r9) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x0075, code lost:
    
        r13 = r21 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x0077, code lost:
    
        if (r13 >= r11) goto L260;
     */
    /* JADX WARN: Code restructure failed: missing block: B:219:0x007d, code lost:
    
        if (r10.m8479a(r8, r13) == false) goto L261;
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x007f, code lost:
    
        r12[2] = r12[2] + 1;
        r13 = r13 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x0087, code lost:
    
        if (r13 != r11) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x008a, code lost:
    
        if (r13 >= r11) goto L264;
     */
    /* JADX WARN: Code restructure failed: missing block: B:225:0x0090, code lost:
    
        if (r10.m8479a(r8, r13) != false) goto L262;
     */
    /* JADX WARN: Code restructure failed: missing block: B:227:0x0094, code lost:
    
        if (r12[3] >= r9) goto L263;
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x0096, code lost:
    
        r12[3] = r12[3] + 1;
        r13 = r13 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x009e, code lost:
    
        if (r13 == r11) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x00a2, code lost:
    
        if (r12[3] < r9) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:233:0x00a5, code lost:
    
        if (r13 >= r11) goto L265;
     */
    /* JADX WARN: Code restructure failed: missing block: B:235:0x00ab, code lost:
    
        if (r10.m8479a(r8, r13) == false) goto L266;
     */
    /* JADX WARN: Code restructure failed: missing block: B:237:0x00af, code lost:
    
        if (r12[4] >= r9) goto L267;
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x00b1, code lost:
    
        r12[4] = r12[4] + 1;
        r13 = r13 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:241:0x00bb, code lost:
    
        if (r12[4] < r9) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x00d6, code lost:
    
        if ((java.lang.Math.abs(((((r12[0] + r12[1]) + r12[2]) + r12[3]) + r12[4]) - r3) * 5) < (r3 * 2)) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:245:0x00de, code lost:
    
        if (m9184a(r12) == false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x00e0, code lost:
    
        r15 = m9181a(r12, r13);
     */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0343 A[LOOP:9: B:99:0x02d6->B:111:0x0343, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0317 A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean m9196a(int[] r20, int r21, int r22) {
        /*
            Method dump skipped, instructions count: 855
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p158i.p160b.C2005e.m9196a(int[], int, int):boolean");
    }
}
