package com.google.p130a.p137c.p138a;

import com.google.p130a.C2016m;
import com.google.p130a.C2023t;
import com.google.p130a.p137c.C1852b;

/* renamed from: com.google.a.c.a.c */
/* loaded from: classes.dex */
public final class C1851c {

    /* renamed from: a */
    private static final int f7246a = 10;

    /* renamed from: b */
    private static final int f7247b = 1;

    /* renamed from: c */
    private final C1852b f7248c;

    /* renamed from: d */
    private final int f7249d;

    /* renamed from: e */
    private final int f7250e;

    /* renamed from: f */
    private final int f7251f;

    /* renamed from: g */
    private final int f7252g;

    /* renamed from: h */
    private final int f7253h;

    /* renamed from: i */
    private final int f7254i;

    public C1851c(C1852b c1852b) throws C2016m {
        this(c1852b, 10, c1852b.f7255a / 2, c1852b.f7256b / 2);
    }

    public C1851c(C1852b c1852b, int i, int i2, int i3) throws C2016m {
        this.f7248c = c1852b;
        this.f7249d = c1852b.f7256b;
        this.f7250e = c1852b.f7255a;
        int i4 = i / 2;
        this.f7251f = i2 - i4;
        this.f7252g = i2 + i4;
        this.f7254i = i3 - i4;
        this.f7253h = i3 + i4;
        if (this.f7254i < 0 || this.f7251f < 0 || this.f7253h >= this.f7249d || this.f7252g >= this.f7250e) {
            throw C2016m.getNotFoundInstance();
        }
    }

    /* renamed from: a */
    private C2023t m8460a(float f, float f2, float f3, float f4) {
        int m8455a = C1849a.m8455a(C1849a.m8453a(f, f2, f3, f4));
        float f5 = m8455a;
        float f6 = (f3 - f) / f5;
        float f7 = (f4 - f2) / f5;
        for (int i = 0; i < m8455a; i++) {
            float f8 = i;
            int m8455a2 = C1849a.m8455a((f8 * f6) + f);
            int m8455a3 = C1849a.m8455a((f8 * f7) + f2);
            if (this.f7248c.m8479a(m8455a2, m8455a3)) {
                return new C2023t(m8455a2, m8455a3);
            }
        }
        return null;
    }

    /* renamed from: a */
    private boolean m8461a(int i, int i2, int i3, boolean z) {
        if (z) {
            while (i <= i2) {
                if (this.f7248c.m8479a(i, i3)) {
                    return true;
                }
                i++;
            }
            return false;
        }
        while (i <= i2) {
            if (this.f7248c.m8479a(i3, i)) {
                return true;
            }
            i++;
        }
        return false;
    }

    /* renamed from: a */
    private C2023t[] m8462a(C2023t c2023t, C2023t c2023t2, C2023t c2023t3, C2023t c2023t4) {
        float f = c2023t.f7901a;
        float f2 = c2023t.f7902b;
        float f3 = c2023t2.f7901a;
        float f4 = c2023t2.f7902b;
        float f5 = c2023t3.f7901a;
        float f6 = c2023t3.f7902b;
        float f7 = c2023t4.f7901a;
        float f8 = c2023t4.f7902b;
        return f < ((float) this.f7250e) / 2.0f ? new C2023t[]{new C2023t(f7 - 1.0f, f8 + 1.0f), new C2023t(f3 + 1.0f, f4 + 1.0f), new C2023t(f5 - 1.0f, f6 - 1.0f), new C2023t(f + 1.0f, f2 - 1.0f)} : new C2023t[]{new C2023t(f7 + 1.0f, f8 + 1.0f), new C2023t(f3 + 1.0f, f4 - 1.0f), new C2023t(f5 - 1.0f, f6 + 1.0f), new C2023t(f - 1.0f, f2 - 1.0f)};
    }

    /* renamed from: a */
    public final C2023t[] m8463a() throws C2016m {
        boolean z;
        boolean z2;
        int i = this.f7251f;
        int i2 = this.f7252g;
        int i3 = this.f7254i;
        int i4 = this.f7253h;
        int i5 = i;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        for (boolean z8 = true; z8; z8 = z2) {
            boolean z9 = true;
            z2 = false;
            while (true) {
                if ((z9 || !z3) && i2 < this.f7250e) {
                    z9 = m8461a(i3, i4, i2, false);
                    if (z9) {
                        i2++;
                        z3 = true;
                        z2 = true;
                    } else if (!z3) {
                        i2++;
                    }
                }
            }
            if (i2 < this.f7250e) {
                boolean z10 = true;
                while (true) {
                    if ((z10 || !z4) && i4 < this.f7249d) {
                        z10 = m8461a(i5, i2, i4, true);
                        if (z10) {
                            i4++;
                            z4 = true;
                            z2 = true;
                        } else if (!z4) {
                            i4++;
                        }
                    }
                }
                if (i4 < this.f7249d) {
                    boolean z11 = true;
                    while (true) {
                        if ((z11 || !z5) && i5 >= 0) {
                            z11 = m8461a(i3, i4, i5, false);
                            if (z11) {
                                i5--;
                                z5 = true;
                                z2 = true;
                            } else if (!z5) {
                                i5--;
                            }
                        }
                    }
                    if (i5 >= 0) {
                        boolean z12 = true;
                        while (true) {
                            if ((z12 || !z7) && i3 >= 0) {
                                z12 = m8461a(i5, i2, i3, true);
                                if (z12) {
                                    i3--;
                                    z7 = true;
                                    z2 = true;
                                } else if (!z7) {
                                    i3--;
                                }
                            }
                        }
                        if (i3 >= 0) {
                            if (z2) {
                                z6 = true;
                            }
                        }
                    }
                }
            }
            z = true;
            break;
        }
        z = false;
        if (z || !z6) {
            throw C2016m.getNotFoundInstance();
        }
        int i6 = i2 - i5;
        C2023t c2023t = null;
        C2023t c2023t2 = null;
        for (int i7 = 1; c2023t2 == null && i7 < i6; i7++) {
            c2023t2 = m8460a(i5, i4 - i7, i5 + i7, i4);
        }
        if (c2023t2 == null) {
            throw C2016m.getNotFoundInstance();
        }
        C2023t c2023t3 = null;
        for (int i8 = 1; c2023t3 == null && i8 < i6; i8++) {
            c2023t3 = m8460a(i5, i3 + i8, i5 + i8, i3);
        }
        if (c2023t3 == null) {
            throw C2016m.getNotFoundInstance();
        }
        C2023t c2023t4 = null;
        for (int i9 = 1; c2023t4 == null && i9 < i6; i9++) {
            c2023t4 = m8460a(i2, i3 + i9, i2 - i9, i3);
        }
        if (c2023t4 == null) {
            throw C2016m.getNotFoundInstance();
        }
        for (int i10 = 1; c2023t == null && i10 < i6; i10++) {
            c2023t = m8460a(i2, i4 - i10, i2 - i10, i4);
        }
        if (c2023t == null) {
            throw C2016m.getNotFoundInstance();
        }
        float f = c2023t.f7901a;
        float f2 = c2023t.f7902b;
        float f3 = c2023t2.f7901a;
        float f4 = c2023t2.f7902b;
        float f5 = c2023t4.f7901a;
        float f6 = c2023t4.f7902b;
        float f7 = c2023t3.f7901a;
        float f8 = c2023t3.f7902b;
        return f < ((float) this.f7250e) / 2.0f ? new C2023t[]{new C2023t(f7 - 1.0f, f8 + 1.0f), new C2023t(f3 + 1.0f, f4 + 1.0f), new C2023t(f5 - 1.0f, f6 - 1.0f), new C2023t(f + 1.0f, f2 - 1.0f)} : new C2023t[]{new C2023t(f7 + 1.0f, f8 + 1.0f), new C2023t(f3 + 1.0f, f4 - 1.0f), new C2023t(f5 - 1.0f, f6 + 1.0f), new C2023t(f - 1.0f, f2 - 1.0f)};
    }
}
