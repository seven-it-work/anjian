package com.p021b.p022a.p023a.p028e;

import android.support.v7.widget.ActivityChooserView;
import com.p021b.p022a.p023a.C0650c;
import com.p021b.p032b.C0783f;
import com.p021b.p032b.C0786i;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.b.a.a.e.f */
/* loaded from: classes.dex */
public final class C0690f {

    /* renamed from: a */
    int f1637a;

    /* renamed from: b */
    int f1638b;

    /* renamed from: c */
    C0687c[] f1639c;

    /* renamed from: d */
    int f1640d;

    /* renamed from: e */
    int f1641e;

    /* renamed from: f */
    int f1642f;

    /* renamed from: g */
    private final C0783f f1643g;

    /* renamed from: h */
    private final boolean f1644h;

    /* renamed from: i */
    private int f1645i;

    /* renamed from: j */
    private boolean f1646j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0690f(C0783f c0783f) {
        this(c0783f, (byte) 0);
    }

    private C0690f(C0783f c0783f, byte b2) {
        this.f1645i = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.f1639c = new C0687c[8];
        this.f1640d = this.f1639c.length - 1;
        this.f1641e = 0;
        this.f1642f = 0;
        this.f1637a = 4096;
        this.f1638b = 4096;
        this.f1644h = true;
        this.f1643g = c0783f;
    }

    /* renamed from: a */
    private void m1741a() {
        Arrays.fill(this.f1639c, (Object) null);
        this.f1640d = this.f1639c.length - 1;
        this.f1641e = 0;
        this.f1642f = 0;
    }

    /* renamed from: a */
    private void m1742a(int i, int i2, int i3) {
        int i4;
        C0783f c0783f;
        if (i < i2) {
            c0783f = this.f1643g;
            i4 = i | i3;
        } else {
            this.f1643g.mo2058h(i3 | i2);
            i4 = i - i2;
            while (i4 >= 128) {
                this.f1643g.mo2058h(128 | (i4 & 127));
                i4 >>>= 7;
            }
            c0783f = this.f1643g;
        }
        c0783f.mo2058h(i4);
    }

    /* renamed from: a */
    private void m1743a(C0687c c0687c) {
        int i = c0687c.f1626i;
        if (i > this.f1638b) {
            m1741a();
            return;
        }
        m1745b((this.f1642f + i) - this.f1638b);
        if (this.f1641e + 1 > this.f1639c.length) {
            C0687c[] c0687cArr = new C0687c[this.f1639c.length * 2];
            System.arraycopy(this.f1639c, 0, c0687cArr, this.f1639c.length, this.f1639c.length);
            this.f1640d = this.f1639c.length - 1;
            this.f1639c = c0687cArr;
        }
        int i2 = this.f1640d;
        this.f1640d = i2 - 1;
        this.f1639c[i2] = c0687c;
        this.f1641e++;
        this.f1642f += i;
    }

    /* renamed from: a */
    private void m1744a(C0786i c0786i) {
        int mo2086g;
        int i;
        if (this.f1644h) {
            C0679ag.m1708a();
            if (C0679ag.m1707a(c0786i) < c0786i.mo2086g()) {
                C0783f c0783f = new C0783f();
                C0679ag.m1708a();
                C0679ag.m1709a(c0786i, c0783f);
                c0786i = c0783f.m2064k();
                mo2086g = c0786i.mo2086g();
                i = 128;
                m1742a(mo2086g, 127, i);
                this.f1643g.m2028a(c0786i);
            }
        }
        mo2086g = c0786i.mo2086g();
        i = 0;
        m1742a(mo2086g, 127, i);
        this.f1643g.m2028a(c0786i);
    }

    /* renamed from: b */
    private int m1745b(int i) {
        int i2 = 0;
        if (i > 0) {
            int length = this.f1639c.length;
            while (true) {
                length--;
                if (length < this.f1640d || i <= 0) {
                    break;
                }
                i -= this.f1639c[length].f1626i;
                this.f1642f -= this.f1639c[length].f1626i;
                this.f1641e--;
                i2++;
            }
            System.arraycopy(this.f1639c, this.f1640d + 1, this.f1639c, this.f1640d + 1 + i2, this.f1641e);
            Arrays.fill(this.f1639c, this.f1640d + 1, this.f1640d + 1 + i2, (Object) null);
            this.f1640d += i2;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1746a(int i) {
        this.f1637a = i;
        int min = Math.min(i, 16384);
        if (this.f1638b == min) {
            return;
        }
        if (min < this.f1638b) {
            this.f1645i = Math.min(this.f1645i, min);
        }
        this.f1646j = true;
        this.f1638b = min;
        if (this.f1638b < this.f1642f) {
            if (this.f1638b == 0) {
                m1741a();
            } else {
                m1745b(this.f1642f - this.f1638b);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1747a(List<C0687c> list) {
        int i;
        int i2;
        if (this.f1646j) {
            if (this.f1645i < this.f1638b) {
                m1742a(this.f1645i, 31, 32);
            }
            this.f1646j = false;
            this.f1645i = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            m1742a(this.f1638b, 31, 32);
        }
        int size = list.size();
        for (int i3 = 0; i3 < size; i3++) {
            C0687c c0687c = list.get(i3);
            C0786i mo2085f = c0687c.f1624g.mo2085f();
            C0786i c0786i = c0687c.f1625h;
            Integer num = C0688d.f1628b.get(mo2085f);
            if (num != null) {
                i = num.intValue() + 1;
                if (i > 1 && i < 8) {
                    if (C0650c.m1617a(C0688d.f1627a[i - 1].f1625h, c0786i)) {
                        i2 = i;
                    } else if (C0650c.m1617a(C0688d.f1627a[i].f1625h, c0786i)) {
                        i2 = i;
                        i++;
                    }
                }
                i2 = i;
                i = -1;
            } else {
                i = -1;
                i2 = -1;
            }
            if (i == -1) {
                int i4 = this.f1640d + 1;
                int length = this.f1639c.length;
                while (true) {
                    if (i4 >= length) {
                        break;
                    }
                    if (C0650c.m1617a(this.f1639c[i4].f1624g, mo2085f)) {
                        if (C0650c.m1617a(this.f1639c[i4].f1625h, c0786i)) {
                            i = C0688d.f1627a.length + (i4 - this.f1640d);
                            break;
                        } else if (i2 == -1) {
                            i2 = (i4 - this.f1640d) + C0688d.f1627a.length;
                        }
                    }
                    i4++;
                }
            }
            if (i != -1) {
                m1742a(i, 127, 128);
            } else {
                if (i2 == -1) {
                    this.f1643g.mo2058h(64);
                    m1744a(mo2085f);
                } else {
                    C0786i c0786i2 = C0687c.f1618a;
                    if (!mo2085f.mo2079a(0, c0786i2, 0, c0786i2.mo2086g()) || C0687c.f1623f.equals(mo2085f)) {
                        m1742a(i2, 63, 64);
                    } else {
                        m1742a(i2, 15, 0);
                        m1744a(c0786i);
                    }
                }
                m1744a(c0786i);
                m1743a(c0687c);
            }
        }
    }
}
