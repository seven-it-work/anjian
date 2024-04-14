package com.google.p130a.p146f.p147a.p148a;

import com.google.p130a.C2016m;
import com.google.p130a.C2023t;
import com.google.p130a.p137c.C1852b;
import com.google.p130a.p158i.p160b.C2004d;
import com.google.p130a.p158i.p160b.C2005e;
import com.google.p130a.p158i.p160b.C2006f;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* renamed from: com.google.a.f.a.a.b */
/* loaded from: classes.dex */
final class C1900b extends C2005e {

    /* renamed from: e */
    private static final C2006f[] f7435e = new C2006f[0];

    /* renamed from: f */
    private static final float f7436f = 180.0f;

    /* renamed from: g */
    private static final float f7437g = 9.0f;

    /* renamed from: h */
    private static final float f7438h = 0.05f;

    /* renamed from: i */
    private static final float f7439i = 0.5f;

    /* renamed from: com.google.a.f.a.a.b$a */
    /* loaded from: classes.dex */
    private static final class a implements Serializable, Comparator<C2004d> {
        private a() {
        }

        @Override // java.util.Comparator
        public final int compare(C2004d c2004d, C2004d c2004d2) {
            double d = c2004d2.f7840c - c2004d.f7840c;
            if (d < 0.0d) {
                return -1;
            }
            return d > 0.0d ? 1 : 0;
        }
    }

    private C1900b(C1852b c1852b) {
        super(c1852b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1900b(C1852b c1852b, byte b2) {
        super(c1852b, null);
    }

    /* renamed from: b */
    private C2004d[][] m8708b() throws C2016m {
        List<C2004d> list = this.f7846d;
        int size = list.size();
        int i = 3;
        if (size < 3) {
            throw C2016m.getNotFoundInstance();
        }
        if (size == 3) {
            return new C2004d[][]{new C2004d[]{list.get(0), list.get(1), list.get(2)}};
        }
        Collections.sort(list, new a());
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < size - 2) {
            C2004d c2004d = list.get(i2);
            if (c2004d != null) {
                int i3 = i2 + 1;
                while (i3 < size - 1) {
                    C2004d c2004d2 = list.get(i3);
                    if (c2004d2 != null) {
                        float min = (c2004d.f7840c - c2004d2.f7840c) / Math.min(c2004d.f7840c, c2004d2.f7840c);
                        float abs = Math.abs(c2004d.f7840c - c2004d2.f7840c);
                        float f = f7439i;
                        float f2 = f7438h;
                        if (abs <= f7439i || min < f7438h) {
                            int i4 = i3 + 1;
                            while (i4 < size) {
                                C2004d c2004d3 = list.get(i4);
                                if (c2004d3 != null) {
                                    float min2 = (c2004d2.f7840c - c2004d3.f7840c) / Math.min(c2004d2.f7840c, c2004d3.f7840c);
                                    if (Math.abs(c2004d2.f7840c - c2004d3.f7840c) <= f || min2 < f2) {
                                        C2004d[] c2004dArr = new C2004d[i];
                                        c2004dArr[0] = c2004d;
                                        c2004dArr[1] = c2004d2;
                                        c2004dArr[2] = c2004d3;
                                        C2023t.m9294a(c2004dArr);
                                        C2006f c2006f = new C2006f(c2004dArr);
                                        float m9292a = C2023t.m9292a(c2006f.f7851b, c2006f.f7850a);
                                        float m9292a2 = C2023t.m9292a(c2006f.f7852c, c2006f.f7850a);
                                        float m9292a3 = C2023t.m9292a(c2006f.f7851b, c2006f.f7852c);
                                        float f3 = (m9292a + m9292a3) / (c2004d.f7840c * 2.0f);
                                        if (f3 <= f7436f && f3 >= f7437g && Math.abs((m9292a - m9292a3) / Math.min(m9292a, m9292a3)) < 0.1f) {
                                            float sqrt = (float) Math.sqrt((m9292a * m9292a) + (m9292a3 * m9292a3));
                                            if (Math.abs((m9292a2 - sqrt) / Math.min(m9292a2, sqrt)) < 0.1f) {
                                                arrayList.add(c2004dArr);
                                            }
                                        }
                                    }
                                }
                                i4++;
                                i = 3;
                                f = f7439i;
                                f2 = f7438h;
                            }
                        }
                    }
                    i3++;
                    i = 3;
                }
            }
            i2++;
            i = 3;
        }
        if (arrayList.isEmpty()) {
            throw C2016m.getNotFoundInstance();
        }
        return (C2004d[][]) arrayList.toArray(new C2004d[arrayList.size()]);
    }

    /* renamed from: a */
    public final C2006f[] m8709a() throws C2016m {
        C2004d[][] c2004dArr;
        C1852b c1852b = this.f7845c;
        int i = c1852b.f7256b;
        int i2 = c1852b.f7255a;
        int i3 = (i * 3) / 388;
        int i4 = 3;
        if (i3 < 3) {
            i3 = 3;
        }
        int[] iArr = new int[5];
        for (int i5 = i3 - 1; i5 < i; i5 += i3) {
            m9187b(iArr);
            int i6 = 0;
            for (int i7 = 0; i7 < i2; i7++) {
                if (c1852b.m8479a(i7, i5)) {
                    if ((i6 & 1) == 1) {
                        i6++;
                    }
                    iArr[i6] = iArr[i6] + 1;
                } else if ((i6 & 1) != 0) {
                    iArr[i6] = iArr[i6] + 1;
                } else if (i6 != 4) {
                    i6++;
                    iArr[i6] = iArr[i6] + 1;
                } else if (m9184a(iArr) && m9196a(iArr, i5, i7)) {
                    m9187b(iArr);
                    i6 = 0;
                } else {
                    m9189c(iArr);
                    i6 = 3;
                }
            }
            if (m9184a(iArr)) {
                m9196a(iArr, i5, i2);
            }
        }
        List<C2004d> list = this.f7846d;
        int size = list.size();
        if (size < 3) {
            throw C2016m.getNotFoundInstance();
        }
        if (size == 3) {
            c2004dArr = new C2004d[][]{new C2004d[]{list.get(0), list.get(1), list.get(2)}};
        } else {
            Collections.sort(list, new a());
            ArrayList arrayList = new ArrayList();
            int i8 = 0;
            while (i8 < size - 2) {
                C2004d c2004d = list.get(i8);
                if (c2004d != null) {
                    int i9 = i8 + 1;
                    while (i9 < size - 1) {
                        C2004d c2004d2 = list.get(i9);
                        if (c2004d2 != null) {
                            float min = (c2004d.f7840c - c2004d2.f7840c) / Math.min(c2004d.f7840c, c2004d2.f7840c);
                            float abs = Math.abs(c2004d.f7840c - c2004d2.f7840c);
                            float f = f7439i;
                            float f2 = f7438h;
                            if (abs <= f7439i || min < f7438h) {
                                int i10 = i9 + 1;
                                while (i10 < size) {
                                    C2004d c2004d3 = list.get(i10);
                                    if (c2004d3 != null) {
                                        float min2 = (c2004d2.f7840c - c2004d3.f7840c) / Math.min(c2004d2.f7840c, c2004d3.f7840c);
                                        if (Math.abs(c2004d2.f7840c - c2004d3.f7840c) <= f || min2 < f2) {
                                            C2004d[] c2004dArr2 = new C2004d[i4];
                                            c2004dArr2[0] = c2004d;
                                            c2004dArr2[1] = c2004d2;
                                            c2004dArr2[2] = c2004d3;
                                            C2023t.m9294a(c2004dArr2);
                                            C2006f c2006f = new C2006f(c2004dArr2);
                                            float m9292a = C2023t.m9292a(c2006f.f7851b, c2006f.f7850a);
                                            float m9292a2 = C2023t.m9292a(c2006f.f7852c, c2006f.f7850a);
                                            float m9292a3 = C2023t.m9292a(c2006f.f7851b, c2006f.f7852c);
                                            float f3 = (m9292a + m9292a3) / (c2004d.f7840c * 2.0f);
                                            if (f3 <= f7436f && f3 >= f7437g && Math.abs((m9292a - m9292a3) / Math.min(m9292a, m9292a3)) < 0.1f) {
                                                float sqrt = (float) Math.sqrt((m9292a * m9292a) + (m9292a3 * m9292a3));
                                                if (Math.abs((m9292a2 - sqrt) / Math.min(m9292a2, sqrt)) < 0.1f) {
                                                    arrayList.add(c2004dArr2);
                                                }
                                            }
                                        }
                                    }
                                    i10++;
                                    i4 = 3;
                                    f = f7439i;
                                    f2 = f7438h;
                                }
                            }
                        }
                        i9++;
                        i4 = 3;
                    }
                }
                i8++;
                i4 = 3;
            }
            if (arrayList.isEmpty()) {
                throw C2016m.getNotFoundInstance();
            }
            c2004dArr = (C2004d[][]) arrayList.toArray(new C2004d[arrayList.size()]);
        }
        ArrayList arrayList2 = new ArrayList();
        for (C2004d[] c2004dArr3 : c2004dArr) {
            C2023t.m9294a(c2004dArr3);
            arrayList2.add(new C2006f(c2004dArr3));
        }
        return arrayList2.isEmpty() ? f7435e : (C2006f[]) arrayList2.toArray(new C2006f[arrayList2.size()]);
    }
}
