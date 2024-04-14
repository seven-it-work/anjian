package com.google.p130a.p153h.p154a;

import com.google.p130a.C2023t;

/* renamed from: com.google.a.h.a.h */
/* loaded from: classes.dex */
final class C1973h extends C1972g {

    /* renamed from: c */
    final boolean f7717c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1973h(C1968c c1968c, boolean z) {
        super(c1968c);
        this.f7717c = z;
    }

    /* renamed from: a */
    private void m8981a(C1963a c1963a) {
        C1969d[] c1969dArr = this.f7716b;
        for (C1969d c1969d : this.f7716b) {
            if (c1969d != null) {
                c1969d.m8949b();
            }
        }
        m8987a(c1969dArr, c1963a);
        C1968c c1968c = this.f7715a;
        C2023t c2023t = this.f7717c ? c1968c.f7664b : c1968c.f7666d;
        C2023t c2023t2 = this.f7717c ? c1968c.f7665c : c1968c.f7667e;
        int b2 = m8979b((int) c2023t.f7902b);
        int b3 = m8979b((int) c2023t2.f7902b);
        int i = -1;
        int i2 = 0;
        int i3 = 1;
        while (b2 < b3) {
            if (c1969dArr[b2] != null) {
                C1969d c1969d2 = c1969dArr[b2];
                int i4 = c1969d2.f7677e - i;
                if (i4 == 0) {
                    i2++;
                } else {
                    if (i4 == 1) {
                        i3 = Math.max(i3, i2);
                        i = c1969d2.f7677e;
                    } else if (i4 < 0 || c1969d2.f7677e >= c1963a.f7652e || i4 > b2) {
                        c1969dArr[b2] = null;
                    } else {
                        if (i3 > 2) {
                            i4 *= i3 - 2;
                        }
                        boolean z = i4 >= b2;
                        for (int i5 = 1; i5 <= i4 && !z; i5++) {
                            z = c1969dArr[b2 - i5] != null;
                        }
                        if (z) {
                            c1969dArr[b2] = null;
                        } else {
                            i = c1969d2.f7677e;
                        }
                    }
                    i2 = 1;
                }
            }
            b2++;
        }
    }

    /* renamed from: b */
    private void m8982b() {
        for (C1969d c1969d : this.f7716b) {
            if (c1969d != null) {
                c1969d.m8949b();
            }
        }
    }

    /* renamed from: b */
    private void m8983b(C1963a c1963a) {
        C1968c c1968c = this.f7715a;
        C2023t c2023t = this.f7717c ? c1968c.f7664b : c1968c.f7666d;
        C2023t c2023t2 = this.f7717c ? c1968c.f7665c : c1968c.f7667e;
        int b2 = m8979b((int) c2023t2.f7902b);
        C1969d[] c1969dArr = this.f7716b;
        int i = -1;
        int i2 = 0;
        int i3 = 1;
        for (int b3 = m8979b((int) c2023t.f7902b); b3 < b2; b3++) {
            if (c1969dArr[b3] != null) {
                C1969d c1969d = c1969dArr[b3];
                c1969d.m8949b();
                int i4 = c1969d.f7677e - i;
                if (i4 == 0) {
                    i2++;
                } else {
                    if (i4 == 1) {
                        i3 = Math.max(i3, i2);
                        i = c1969d.f7677e;
                    } else if (c1969d.f7677e >= c1963a.f7652e) {
                        c1969dArr[b3] = null;
                    } else {
                        i = c1969d.f7677e;
                    }
                    i2 = 1;
                }
            }
        }
    }

    /* renamed from: c */
    private int[] m8984c() {
        int i;
        C1963a m8986a = m8986a();
        if (m8986a == null) {
            return null;
        }
        C1968c c1968c = this.f7715a;
        C2023t c2023t = this.f7717c ? c1968c.f7664b : c1968c.f7666d;
        int b2 = m8979b((int) (this.f7717c ? c1968c.f7665c : c1968c.f7667e).f7902b);
        C1969d[] c1969dArr = this.f7716b;
        int i2 = -1;
        int i3 = 0;
        int i4 = 1;
        for (int b3 = m8979b((int) c2023t.f7902b); b3 < b2; b3++) {
            if (c1969dArr[b3] != null) {
                C1969d c1969d = c1969dArr[b3];
                c1969d.m8949b();
                int i5 = c1969d.f7677e - i2;
                if (i5 == 0) {
                    i3++;
                } else {
                    if (i5 == 1) {
                        i4 = Math.max(i4, i3);
                        i2 = c1969d.f7677e;
                    } else if (c1969d.f7677e >= m8986a.f7652e) {
                        c1969dArr[b3] = null;
                    } else {
                        i2 = c1969d.f7677e;
                    }
                    i3 = 1;
                }
            }
        }
        int[] iArr = new int[m8986a.f7652e];
        for (C1969d c1969d2 : this.f7716b) {
            if (c1969d2 != null && (i = c1969d2.f7677e) < iArr.length) {
                iArr[i] = iArr[i] + 1;
            }
        }
        return iArr;
    }

    /* renamed from: d */
    private boolean m8985d() {
        return this.f7717c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final C1963a m8986a() {
        C1969d[] c1969dArr = this.f7716b;
        C1967b c1967b = new C1967b();
        C1967b c1967b2 = new C1967b();
        C1967b c1967b3 = new C1967b();
        C1967b c1967b4 = new C1967b();
        for (C1969d c1969d : c1969dArr) {
            if (c1969d != null) {
                c1969d.m8949b();
                int i = c1969d.f7676d % 30;
                int i2 = c1969d.f7677e;
                if (!this.f7717c) {
                    i2 += 2;
                }
                switch (i2 % 3) {
                    case 0:
                        c1967b2.m8929a((i * 3) + 1);
                        break;
                    case 1:
                        c1967b4.m8929a(i / 3);
                        c1967b3.m8929a(i % 3);
                        break;
                    case 2:
                        c1967b.m8929a(i + 1);
                        break;
                }
            }
        }
        if (c1967b.m8930a().length == 0 || c1967b2.m8930a().length == 0 || c1967b3.m8930a().length == 0 || c1967b4.m8930a().length == 0 || c1967b.m8930a()[0] <= 0 || c1967b2.m8930a()[0] + c1967b3.m8930a()[0] < 3 || c1967b2.m8930a()[0] + c1967b3.m8930a()[0] > 90) {
            return null;
        }
        C1963a c1963a = new C1963a(c1967b.m8930a()[0], c1967b2.m8930a()[0], c1967b3.m8930a()[0], c1967b4.m8930a()[0]);
        m8987a(c1969dArr, c1963a);
        return c1963a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m8987a(C1969d[] c1969dArr, C1963a c1963a) {
        for (int i = 0; i < c1969dArr.length; i++) {
            C1969d c1969d = c1969dArr[i];
            if (c1969dArr[i] != null) {
                int i2 = c1969d.f7676d % 30;
                int i3 = c1969d.f7677e;
                if (i3 <= c1963a.f7652e) {
                    if (!this.f7717c) {
                        i3 += 2;
                    }
                    switch (i3 % 3) {
                        case 0:
                            if ((i2 * 3) + 1 != c1963a.f7650c) {
                                c1969dArr[i] = null;
                                break;
                            } else {
                                break;
                            }
                        case 1:
                            if (i2 / 3 != c1963a.f7649b || i2 % 3 != c1963a.f7651d) {
                                c1969dArr[i] = null;
                                break;
                            } else {
                                break;
                            }
                            break;
                        case 2:
                            if (i2 + 1 != c1963a.f7648a) {
                                c1969dArr[i] = null;
                                break;
                            } else {
                                break;
                            }
                    }
                } else {
                    c1969dArr[i] = null;
                }
            }
        }
    }

    @Override // com.google.p130a.p153h.p154a.C1972g
    public final String toString() {
        return "IsLeft: " + this.f7717c + '\n' + super.toString();
    }
}
