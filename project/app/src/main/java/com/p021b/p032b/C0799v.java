package com.p021b.p032b;

import java.util.Arrays;

/* renamed from: com.b.b.v */
/* loaded from: classes.dex */
final class C0799v extends C0786i {

    /* renamed from: f */
    final transient byte[][] f2182f;

    /* renamed from: g */
    final transient int[] f2183g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0799v(C0783f c0783f, int i) {
        super(null);
        C0778aa.m2015a(c0783f.f2144b, 0L, i);
        int i2 = 0;
        C0797t c0797t = c0783f.f2143a;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            if (c0797t.f2175c == c0797t.f2174b) {
                throw new AssertionError("s.limit == s.pos");
            }
            i3 += c0797t.f2175c - c0797t.f2174b;
            i4++;
            c0797t = c0797t.f2178f;
        }
        this.f2182f = new byte[i4];
        this.f2183g = new int[i4 * 2];
        C0797t c0797t2 = c0783f.f2143a;
        int i5 = 0;
        while (i2 < i) {
            this.f2182f[i5] = c0797t2.f2173a;
            i2 += c0797t2.f2175c - c0797t2.f2174b;
            if (i2 > i) {
                i2 = i;
            }
            this.f2183g[i5] = i2;
            this.f2183g[this.f2182f.length + i5] = c0797t2.f2174b;
            c0797t2.f2176d = true;
            i5++;
            c0797t2 = c0797t2.f2178f;
        }
    }

    /* renamed from: b */
    private int m2113b(int i) {
        int binarySearch = Arrays.binarySearch(this.f2183g, 0, this.f2182f.length, i + 1);
        return binarySearch >= 0 ? binarySearch : binarySearch ^ (-1);
    }

    /* renamed from: i */
    private C0786i m2114i() {
        return new C0786i(mo2087h());
    }

    @Override // com.p021b.p032b.C0786i
    /* renamed from: a */
    public final byte mo2075a(int i) {
        C0778aa.m2015a(this.f2183g[this.f2182f.length - 1], i, 1L);
        int m2113b = m2113b(i);
        return this.f2182f[m2113b][(i - (m2113b == 0 ? 0 : this.f2183g[m2113b - 1])) + this.f2183g[this.f2182f.length + m2113b]];
    }

    @Override // com.p021b.p032b.C0786i
    /* renamed from: a */
    public final C0786i mo2076a(int i, int i2) {
        return m2114i().mo2076a(i, i2);
    }

    @Override // com.p021b.p032b.C0786i
    /* renamed from: a */
    public final String mo2077a() {
        return m2114i().mo2077a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.p021b.p032b.C0786i
    /* renamed from: a */
    public final void mo2078a(C0783f c0783f) {
        int length = this.f2182f.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = this.f2183g[length + i];
            int i4 = this.f2183g[i];
            C0797t c0797t = new C0797t(this.f2182f[i], i3, (i3 + i4) - i2);
            if (c0783f.f2143a == null) {
                c0797t.f2179g = c0797t;
                c0797t.f2178f = c0797t;
                c0783f.f2143a = c0797t;
            } else {
                c0783f.f2143a.f2179g.m2109a(c0797t);
            }
            i++;
            i2 = i4;
        }
        c0783f.f2144b += i2;
    }

    @Override // com.p021b.p032b.C0786i
    /* renamed from: a */
    public final boolean mo2079a(int i, C0786i c0786i, int i2, int i3) {
        if (mo2086g() - i3 < 0) {
            return false;
        }
        int m2113b = m2113b(0);
        while (i3 > 0) {
            int i4 = m2113b == 0 ? 0 : this.f2183g[m2113b - 1];
            int min = Math.min(i3, ((this.f2183g[m2113b] - i4) + i4) - i);
            if (!c0786i.mo2080a(i2, this.f2182f[m2113b], (i - i4) + this.f2183g[this.f2182f.length + m2113b], min)) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            m2113b++;
        }
        return true;
    }

    @Override // com.p021b.p032b.C0786i
    /* renamed from: a */
    public final boolean mo2080a(int i, byte[] bArr, int i2, int i3) {
        if (i < 0 || i > mo2086g() - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        int m2113b = m2113b(i);
        while (i3 > 0) {
            int i4 = m2113b == 0 ? 0 : this.f2183g[m2113b - 1];
            int min = Math.min(i3, ((this.f2183g[m2113b] - i4) + i4) - i);
            if (!C0778aa.m2017a(this.f2182f[m2113b], (i - i4) + this.f2183g[this.f2182f.length + m2113b], bArr, i2, min)) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            m2113b++;
        }
        return true;
    }

    @Override // com.p021b.p032b.C0786i
    /* renamed from: b */
    public final String mo2081b() {
        return m2114i().mo2081b();
    }

    @Override // com.p021b.p032b.C0786i
    /* renamed from: c */
    public final C0786i mo2082c() {
        return m2114i().mo2082c();
    }

    @Override // com.p021b.p032b.C0786i
    /* renamed from: d */
    public final C0786i mo2083d() {
        return m2114i().mo2083d();
    }

    @Override // com.p021b.p032b.C0786i
    /* renamed from: e */
    public final String mo2084e() {
        return m2114i().mo2084e();
    }

    @Override // com.p021b.p032b.C0786i
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C0786i) {
            C0786i c0786i = (C0786i) obj;
            if (c0786i.mo2086g() == mo2086g() && mo2079a(0, c0786i, 0, mo2086g())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.p021b.p032b.C0786i
    /* renamed from: f */
    public final C0786i mo2085f() {
        return m2114i().mo2085f();
    }

    @Override // com.p021b.p032b.C0786i
    /* renamed from: g */
    public final int mo2086g() {
        return this.f2183g[this.f2182f.length - 1];
    }

    @Override // com.p021b.p032b.C0786i
    /* renamed from: h */
    public final byte[] mo2087h() {
        byte[] bArr = new byte[this.f2183g[this.f2182f.length - 1]];
        int length = this.f2182f.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = this.f2183g[length + i];
            int i4 = this.f2183g[i];
            System.arraycopy(this.f2182f[i], i3, bArr, i2, i4 - i2);
            i++;
            i2 = i4;
        }
        return bArr;
    }

    @Override // com.p021b.p032b.C0786i
    public final int hashCode() {
        int i = this.f2148d;
        if (i != 0) {
            return i;
        }
        int length = this.f2182f.length;
        int i2 = 0;
        int i3 = 0;
        int i4 = 1;
        while (i2 < length) {
            byte[] bArr = this.f2182f[i2];
            int i5 = this.f2183g[length + i2];
            int i6 = this.f2183g[i2];
            int i7 = (i6 - i3) + i5;
            while (i5 < i7) {
                i4 = (i4 * 31) + bArr[i5];
                i5++;
            }
            i2++;
            i3 = i6;
        }
        this.f2148d = i4;
        return i4;
    }

    @Override // com.p021b.p032b.C0786i
    public final String toString() {
        return m2114i().toString();
    }
}
