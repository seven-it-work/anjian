package com.p021b.p032b;

import android.support.v4.media.session.PlaybackStateCompat;
import com.umeng.commonsdk.amap.UMAmapConfig;
import java.io.EOFException;
import java.nio.charset.Charset;

/* renamed from: com.b.b.f */
/* loaded from: classes.dex */
public final class C0783f implements InterfaceC0784g, InterfaceC0785h, Cloneable {

    /* renamed from: c */
    private static final byte[] f2142c = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};

    /* renamed from: a */
    C0797t f2143a;

    /* renamed from: b */
    long f2144b;

    /* renamed from: a */
    private String m2020a(long j, Charset charset) {
        C0778aa.m2015a(this.f2144b, 0L, j);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
        }
        if (j == 0) {
            return "";
        }
        C0797t c0797t = this.f2143a;
        if (c0797t.f2174b + j > c0797t.f2175c) {
            return new String(mo2050e(j), charset);
        }
        String str = new String(c0797t.f2173a, c0797t.f2174b, (int) j, charset);
        c0797t.f2174b = (int) (c0797t.f2174b + j);
        this.f2144b -= j;
        if (c0797t.f2174b == c0797t.f2175c) {
            this.f2143a = c0797t.m2108a();
            C0798u.m2112a(c0797t);
        }
        return str;
    }

    /* renamed from: c */
    private void m2021c(byte[] bArr) {
        int min;
        int i = 0;
        while (i < bArr.length) {
            int length = bArr.length - i;
            C0778aa.m2015a(bArr.length, i, length);
            C0797t c0797t = this.f2143a;
            if (c0797t == null) {
                min = -1;
            } else {
                min = Math.min(length, c0797t.f2175c - c0797t.f2174b);
                System.arraycopy(c0797t.f2173a, c0797t.f2174b, bArr, i, min);
                c0797t.f2174b += min;
                this.f2144b -= min;
                if (c0797t.f2174b == c0797t.f2175c) {
                    this.f2143a = c0797t.m2108a();
                    C0798u.m2112a(c0797t);
                }
            }
            if (min == -1) {
                throw new EOFException();
            }
            i += min;
        }
    }

    /* renamed from: k */
    private String m2022k(long j) {
        return m2020a(j, C0778aa.f2135a);
    }

    @Override // com.p021b.p032b.InterfaceC0785h
    /* renamed from: a */
    public final long mo2023a(byte b2) {
        return m2024a(b2, 0L);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0045  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long m2024a(byte r11, long r12) {
        /*
            r10 = this;
            r0 = 0
            int r2 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r2 >= 0) goto Le
            java.lang.IllegalArgumentException r11 = new java.lang.IllegalArgumentException
            java.lang.String r12 = "fromIndex < 0"
            r11.<init>(r12)
            throw r11
        Le:
            com.b.b.t r2 = r10.f2143a
            r3 = -1
            if (r2 != 0) goto L15
            return r3
        L15:
            long r5 = r10.f2144b
            long r7 = r5 - r12
            int r5 = (r7 > r12 ? 1 : (r7 == r12 ? 0 : -1))
            if (r5 >= 0) goto L2f
            long r0 = r10.f2144b
        L1f:
            int r5 = (r0 > r12 ? 1 : (r0 == r12 ? 0 : -1))
            if (r5 <= 0) goto L3f
            com.b.b.t r2 = r2.f2179g
            int r5 = r2.f2175c
            int r6 = r2.f2174b
            int r5 = r5 - r6
            long r5 = (long) r5
            long r7 = r0 - r5
            r0 = r7
            goto L1f
        L2f:
            int r5 = r2.f2175c
            int r6 = r2.f2174b
            int r5 = r5 - r6
            long r5 = (long) r5
            long r7 = r0 + r5
            int r5 = (r7 > r12 ? 1 : (r7 == r12 ? 0 : -1))
            if (r5 >= 0) goto L3f
            com.b.b.t r2 = r2.f2178f
            r0 = r7
            goto L2f
        L3f:
            long r5 = r10.f2144b
            int r7 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r7 >= 0) goto L6e
            byte[] r5 = r2.f2173a
            int r6 = r2.f2174b
            long r6 = (long) r6
            long r8 = r6 + r12
            long r12 = r8 - r0
            int r12 = (int) r12
            int r13 = r2.f2175c
        L51:
            if (r12 >= r13) goto L61
            r6 = r5[r12]
            if (r6 != r11) goto L5e
            int r11 = r2.f2174b
            int r12 = r12 - r11
            long r11 = (long) r12
            long r2 = r11 + r0
            return r2
        L5e:
            int r12 = r12 + 1
            goto L51
        L61:
            int r12 = r2.f2175c
            int r13 = r2.f2174b
            int r12 = r12 - r13
            long r12 = (long) r12
            long r5 = r0 + r12
            com.b.b.t r2 = r2.f2178f
            r12 = r5
            r0 = r12
            goto L3f
        L6e:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p021b.p032b.C0783f.m2024a(byte, long):long");
    }

    @Override // com.p021b.p032b.InterfaceC0801x
    /* renamed from: a */
    public final long mo1543a(C0783f c0783f, long j) {
        if (c0783f == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (this.f2144b == 0) {
            return -1L;
        }
        if (j > this.f2144b) {
            j = this.f2144b;
        }
        c0783f.mo1663a_(this, j);
        return j;
    }

    /* renamed from: a */
    public final long m2025a(InterfaceC0801x interfaceC0801x) {
        if (interfaceC0801x == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j = 0;
        while (true) {
            long mo1543a = interfaceC0801x.mo1543a(this, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (mo1543a == -1) {
                return j;
            }
            j += mo1543a;
        }
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /* renamed from: a */
    public final C0783f m2026a(int i) {
        int i2;
        int i3;
        if (i >= 128) {
            if (i < 2048) {
                i3 = (i >> 6) | 192;
            } else {
                if (i < 65536) {
                    if (i >= 55296 && i <= 57343) {
                        throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i));
                    }
                    i2 = (i >> 12) | 224;
                } else {
                    if (i > 1114111) {
                        throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i));
                    }
                    mo2058h((i >> 18) | 240);
                    i2 = ((i >> 12) & 63) | 128;
                }
                mo2058h(i2);
                i3 = ((i >> 6) & 63) | 128;
            }
            mo2058h(i3);
            i = (i & 63) | 128;
        }
        mo2058h(i);
        return this;
    }

    /* renamed from: a */
    public final C0783f m2027a(C0783f c0783f, long j, long j2) {
        if (c0783f == null) {
            throw new IllegalArgumentException("out == null");
        }
        C0778aa.m2015a(this.f2144b, j, j2);
        if (j2 == 0) {
            return this;
        }
        c0783f.f2144b += j2;
        C0797t c0797t = this.f2143a;
        while (j >= c0797t.f2175c - c0797t.f2174b) {
            long j3 = j - (c0797t.f2175c - c0797t.f2174b);
            c0797t = c0797t.f2178f;
            j = j3;
        }
        while (j2 > 0) {
            C0797t c0797t2 = new C0797t(c0797t);
            c0797t2.f2174b = (int) (c0797t2.f2174b + j);
            c0797t2.f2175c = Math.min(c0797t2.f2174b + ((int) j2), c0797t2.f2175c);
            if (c0783f.f2143a == null) {
                c0797t2.f2179g = c0797t2;
                c0797t2.f2178f = c0797t2;
                c0783f.f2143a = c0797t2;
            } else {
                c0783f.f2143a.f2179g.m2109a(c0797t2);
            }
            c0797t = c0797t.f2178f;
            j = 0;
            j2 -= c0797t2.f2175c - c0797t2.f2174b;
        }
        return this;
    }

    /* renamed from: a */
    public final C0783f m2028a(C0786i c0786i) {
        if (c0786i == null) {
            throw new IllegalArgumentException("byteString == null");
        }
        c0786i.mo2078a(this);
        return this;
    }

    @Override // com.p021b.p032b.InterfaceC0784g
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C0783f mo2038b(String str) {
        return m2030a(str, 0, str.length());
    }

    /* renamed from: a */
    public final C0783f m2030a(String str, int i, int i2) {
        char charAt;
        int i3;
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i < 0) {
            throw new IllegalAccessError("beginIndex < 0: " + i);
        }
        if (i2 < i) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
        }
        if (i2 > str.length()) {
            throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
        }
        while (i < i2) {
            char charAt2 = str.charAt(i);
            if (charAt2 < 128) {
                C0797t m2049e = m2049e(1);
                byte[] bArr = m2049e.f2173a;
                int i4 = m2049e.f2175c - i;
                int min = Math.min(i2, 8192 - i4);
                int i5 = i + 1;
                bArr[i + i4] = (byte) charAt2;
                while (true) {
                    i = i5;
                    if (i >= min || (charAt = str.charAt(i)) >= 128) {
                        break;
                    }
                    i5 = i + 1;
                    bArr[i + i4] = (byte) charAt;
                }
                int i6 = (i4 + i) - m2049e.f2175c;
                m2049e.f2175c += i6;
                this.f2144b += i6;
            } else {
                if (charAt2 < 2048) {
                    i3 = (charAt2 >> 6) | 192;
                } else if (charAt2 < 55296 || charAt2 > 57343) {
                    mo2058h((charAt2 >> '\f') | 224);
                    i3 = ((charAt2 >> 6) & 63) | 128;
                } else {
                    int i7 = i + 1;
                    char charAt3 = i7 < i2 ? str.charAt(i7) : (char) 0;
                    if (charAt2 > 56319 || charAt3 < 56320 || charAt3 > 57343) {
                        mo2058h(63);
                        i = i7;
                    } else {
                        int i8 = (((charAt2 & 10239) << 10) | (9215 & charAt3)) + 65536;
                        mo2058h((i8 >> 18) | 240);
                        mo2058h(((i8 >> 12) & 63) | 128);
                        mo2058h(((i8 >> 6) & 63) | 128);
                        mo2058h((i8 & 63) | 128);
                        i += 2;
                    }
                }
                mo2058h(i3);
                mo2058h((charAt2 & '?') | 128);
                i++;
            }
        }
        return this;
    }

    @Override // com.p021b.p032b.InterfaceC0784g
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C0783f mo2039b(byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        return mo2040b(bArr, 0, bArr.length);
    }

    @Override // com.p021b.p032b.InterfaceC0784g
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C0783f mo2040b(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j = i2;
        C0778aa.m2015a(bArr.length, i, j);
        int i3 = i2 + i;
        while (i < i3) {
            C0797t m2049e = m2049e(1);
            int min = Math.min(i3 - i, 8192 - m2049e.f2175c);
            System.arraycopy(bArr, i, m2049e.f2173a, m2049e.f2175c, min);
            i += min;
            m2049e.f2175c += min;
        }
        this.f2144b += j;
        return this;
    }

    @Override // com.p021b.p032b.InterfaceC0800w
    /* renamed from: a */
    public final C0802y mo1662a() {
        return C0802y.f2184b;
    }

    @Override // com.p021b.p032b.InterfaceC0785h
    /* renamed from: a */
    public final String mo2033a(Charset charset) {
        try {
            return m2020a(this.f2144b, charset);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.p021b.p032b.InterfaceC0785h
    /* renamed from: a */
    public final void mo2034a(long j) {
        if (this.f2144b < j) {
            throw new EOFException();
        }
    }

    @Override // com.p021b.p032b.InterfaceC0800w
    /* renamed from: a_ */
    public final void mo1663a_(C0783f c0783f, long j) {
        C0797t m2111a;
        if (c0783f == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (c0783f == this) {
            throw new IllegalArgumentException("source == this");
        }
        C0778aa.m2015a(c0783f.f2144b, 0L, j);
        while (j > 0) {
            if (j < c0783f.f2143a.f2175c - c0783f.f2143a.f2174b) {
                C0797t c0797t = this.f2143a != null ? this.f2143a.f2179g : null;
                if (c0797t != null && c0797t.f2177e) {
                    if ((j + c0797t.f2175c) - (c0797t.f2176d ? 0 : c0797t.f2174b) <= PlaybackStateCompat.ACTION_PLAY_FROM_URI) {
                        c0783f.f2143a.m2110a(c0797t, (int) j);
                        c0783f.f2144b -= j;
                        this.f2144b += j;
                        return;
                    }
                }
                C0797t c0797t2 = c0783f.f2143a;
                int i = (int) j;
                if (i <= 0 || i > c0797t2.f2175c - c0797t2.f2174b) {
                    throw new IllegalArgumentException();
                }
                if (i >= 1024) {
                    m2111a = new C0797t(c0797t2);
                } else {
                    m2111a = C0798u.m2111a();
                    System.arraycopy(c0797t2.f2173a, c0797t2.f2174b, m2111a.f2173a, 0, i);
                }
                m2111a.f2175c = m2111a.f2174b + i;
                c0797t2.f2174b += i;
                c0797t2.f2179g.m2109a(m2111a);
                c0783f.f2143a = m2111a;
            }
            C0797t c0797t3 = c0783f.f2143a;
            long j2 = c0797t3.f2175c - c0797t3.f2174b;
            c0783f.f2143a = c0797t3.m2108a();
            if (this.f2143a == null) {
                this.f2143a = c0797t3;
                C0797t c0797t4 = this.f2143a;
                C0797t c0797t5 = this.f2143a;
                C0797t c0797t6 = this.f2143a;
                c0797t5.f2179g = c0797t6;
                c0797t4.f2178f = c0797t6;
            } else {
                C0797t m2109a = this.f2143a.f2179g.m2109a(c0797t3);
                if (m2109a.f2179g == m2109a) {
                    throw new IllegalStateException();
                }
                if (m2109a.f2179g.f2177e) {
                    int i2 = m2109a.f2175c - m2109a.f2174b;
                    if (i2 <= (8192 - m2109a.f2179g.f2175c) + (m2109a.f2179g.f2176d ? 0 : m2109a.f2179g.f2174b)) {
                        m2109a.m2110a(m2109a.f2179g, i2);
                        m2109a.m2108a();
                        C0798u.m2112a(m2109a);
                    }
                }
            }
            c0783f.f2144b -= j2;
            this.f2144b += j2;
            j -= j2;
        }
    }

    /* renamed from: b */
    public final byte m2035b(long j) {
        C0778aa.m2015a(this.f2144b, j, 1L);
        C0797t c0797t = this.f2143a;
        while (true) {
            long j2 = c0797t.f2175c - c0797t.f2174b;
            if (j < j2) {
                return c0797t.f2173a[c0797t.f2174b + ((int) j)];
            }
            c0797t = c0797t.f2178f;
            j -= j2;
        }
    }

    /* renamed from: b */
    public final long m2036b() {
        return this.f2144b;
    }

    @Override // com.p021b.p032b.InterfaceC0784g
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final C0783f mo2058h(int i) {
        C0797t m2049e = m2049e(1);
        byte[] bArr = m2049e.f2173a;
        int i2 = m2049e.f2175c;
        m2049e.f2175c = i2 + 1;
        bArr[i2] = (byte) i;
        this.f2144b++;
        return this;
    }

    @Override // com.p021b.p032b.InterfaceC0785h
    /* renamed from: b */
    public final boolean mo2041b(C0786i c0786i) {
        int mo2086g = c0786i.mo2086g();
        if (mo2086g < 0 || this.f2144b - 0 < mo2086g || c0786i.mo2086g() - 0 < mo2086g) {
            return false;
        }
        for (int i = 0; i < mo2086g; i++) {
            if (m2035b(i + 0) != c0786i.mo2075a(i + 0)) {
                return false;
            }
        }
        return true;
    }

    @Override // com.p021b.p032b.InterfaceC0784g, com.p021b.p032b.InterfaceC0785h
    /* renamed from: c */
    public final C0783f mo2042c() {
        return this;
    }

    @Override // com.p021b.p032b.InterfaceC0784g
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final C0783f mo2056g(int i) {
        C0797t m2049e = m2049e(2);
        byte[] bArr = m2049e.f2173a;
        int i2 = m2049e.f2175c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i3] = (byte) (i & 255);
        m2049e.f2175c = i3 + 1;
        this.f2144b += 2;
        return this;
    }

    @Override // com.p021b.p032b.InterfaceC0785h
    /* renamed from: c */
    public final C0786i mo2044c(long j) {
        return new C0786i(mo2050e(j));
    }

    public final /* synthetic */ Object clone() {
        C0783f c0783f = new C0783f();
        if (this.f2144b == 0) {
            return c0783f;
        }
        c0783f.f2143a = new C0797t(this.f2143a);
        C0797t c0797t = c0783f.f2143a;
        C0797t c0797t2 = c0783f.f2143a;
        C0797t c0797t3 = c0783f.f2143a;
        c0797t2.f2179g = c0797t3;
        c0797t.f2178f = c0797t3;
        C0797t c0797t4 = this.f2143a;
        while (true) {
            c0797t4 = c0797t4.f2178f;
            if (c0797t4 == this.f2143a) {
                c0783f.f2144b = this.f2144b;
                return c0783f;
            }
            c0783f.f2143a.f2179g.m2109a(new C0797t(c0797t4));
        }
    }

    @Override // com.p021b.p032b.InterfaceC0800w, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // com.p021b.p032b.InterfaceC0784g
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final C0783f mo2051f(int i) {
        C0797t m2049e = m2049e(4);
        byte[] bArr = m2049e.f2173a;
        int i2 = m2049e.f2175c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i >>> 8) & 255);
        bArr[i5] = (byte) (i & 255);
        m2049e.f2175c = i5 + 1;
        this.f2144b += 4;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final String m2046d(long j) {
        String m2022k;
        long j2 = 1;
        if (j > 0) {
            long j3 = j - 1;
            if (m2035b(j3) == 13) {
                m2022k = m2022k(j3);
                j2 = 2;
                mo2053f(j2);
                return m2022k;
            }
        }
        m2022k = m2022k(j);
        mo2053f(j2);
        return m2022k;
    }

    @Override // com.p021b.p032b.InterfaceC0785h
    /* renamed from: d */
    public final boolean mo2047d() {
        return this.f2144b == 0;
    }

    @Override // com.p021b.p032b.InterfaceC0785h
    /* renamed from: e */
    public final byte mo2048e() {
        if (this.f2144b == 0) {
            throw new IllegalStateException("size == 0");
        }
        C0797t c0797t = this.f2143a;
        int i = c0797t.f2174b;
        int i2 = c0797t.f2175c;
        int i3 = i + 1;
        byte b2 = c0797t.f2173a[i];
        this.f2144b--;
        if (i3 != i2) {
            c0797t.f2174b = i3;
            return b2;
        }
        this.f2143a = c0797t.m2108a();
        C0798u.m2112a(c0797t);
        return b2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final C0797t m2049e(int i) {
        if (i <= 0 || i > 8192) {
            throw new IllegalArgumentException();
        }
        if (this.f2143a != null) {
            C0797t c0797t = this.f2143a.f2179g;
            return (c0797t.f2175c + i > 8192 || !c0797t.f2177e) ? c0797t.m2109a(C0798u.m2111a()) : c0797t;
        }
        this.f2143a = C0798u.m2111a();
        C0797t c0797t2 = this.f2143a;
        C0797t c0797t3 = this.f2143a;
        C0797t c0797t4 = this.f2143a;
        c0797t3.f2179g = c0797t4;
        c0797t2.f2178f = c0797t4;
        return c0797t4;
    }

    @Override // com.p021b.p032b.InterfaceC0785h
    /* renamed from: e */
    public final byte[] mo2050e(long j) {
        C0778aa.m2015a(this.f2144b, 0L, j);
        if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
        }
        byte[] bArr = new byte[(int) j];
        m2021c(bArr);
        return bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0783f)) {
            return false;
        }
        C0783f c0783f = (C0783f) obj;
        if (this.f2144b != c0783f.f2144b) {
            return false;
        }
        long j = 0;
        if (this.f2144b == 0) {
            return true;
        }
        C0797t c0797t = this.f2143a;
        C0797t c0797t2 = c0783f.f2143a;
        int i = c0797t.f2174b;
        int i2 = c0797t2.f2174b;
        while (j < this.f2144b) {
            long min = Math.min(c0797t.f2175c - i, c0797t2.f2175c - i2);
            int i3 = i2;
            int i4 = i;
            int i5 = 0;
            while (i5 < min) {
                int i6 = i4 + 1;
                int i7 = i3 + 1;
                if (c0797t.f2173a[i4] != c0797t2.f2173a[i3]) {
                    return false;
                }
                i5++;
                i4 = i6;
                i3 = i7;
            }
            if (i4 == c0797t.f2175c) {
                c0797t = c0797t.f2178f;
                i = c0797t.f2174b;
            } else {
                i = i4;
            }
            if (i3 == c0797t2.f2175c) {
                c0797t2 = c0797t2.f2178f;
                i2 = c0797t2.f2174b;
            } else {
                i2 = i3;
            }
            j += min;
        }
        return true;
    }

    @Override // com.p021b.p032b.InterfaceC0785h
    /* renamed from: f */
    public final short mo2052f() {
        if (this.f2144b < 2) {
            throw new IllegalStateException("size < 2: " + this.f2144b);
        }
        C0797t c0797t = this.f2143a;
        int i = c0797t.f2174b;
        int i2 = c0797t.f2175c;
        if (i2 - i < 2) {
            return (short) (((mo2048e() & 255) << 8) | (mo2048e() & 255));
        }
        byte[] bArr = c0797t.f2173a;
        int i3 = i + 1;
        int i4 = i3 + 1;
        int i5 = ((bArr[i] & 255) << 8) | (bArr[i3] & 255);
        this.f2144b -= 2;
        if (i4 == i2) {
            this.f2143a = c0797t.m2108a();
            C0798u.m2112a(c0797t);
        } else {
            c0797t.f2174b = i4;
        }
        return (short) i5;
    }

    @Override // com.p021b.p032b.InterfaceC0785h
    /* renamed from: f */
    public final void mo2053f(long j) {
        while (j > 0) {
            if (this.f2143a == null) {
                throw new EOFException();
            }
            int min = (int) Math.min(j, this.f2143a.f2175c - this.f2143a.f2174b);
            long j2 = min;
            this.f2144b -= j2;
            long j3 = j - j2;
            this.f2143a.f2174b += min;
            if (this.f2143a.f2174b == this.f2143a.f2175c) {
                C0797t c0797t = this.f2143a;
                this.f2143a = c0797t.m2108a();
                C0798u.m2112a(c0797t);
            }
            j = j3;
        }
    }

    @Override // com.p021b.p032b.InterfaceC0784g, com.p021b.p032b.InterfaceC0800w, java.io.Flushable
    public final void flush() {
    }

    @Override // com.p021b.p032b.InterfaceC0785h
    /* renamed from: g */
    public final int mo2054g() {
        if (this.f2144b < 4) {
            throw new IllegalStateException("size < 4: " + this.f2144b);
        }
        C0797t c0797t = this.f2143a;
        int i = c0797t.f2174b;
        int i2 = c0797t.f2175c;
        if (i2 - i < 4) {
            return ((mo2048e() & 255) << 24) | ((mo2048e() & 255) << 16) | ((mo2048e() & 255) << 8) | (mo2048e() & 255);
        }
        byte[] bArr = c0797t.f2173a;
        int i3 = i + 1;
        int i4 = i3 + 1;
        int i5 = ((bArr[i] & 255) << 24) | ((bArr[i3] & 255) << 16);
        int i6 = i4 + 1;
        int i7 = i5 | ((bArr[i4] & 255) << 8);
        int i8 = i6 + 1;
        int i9 = i7 | (bArr[i6] & 255);
        this.f2144b -= 4;
        if (i8 != i2) {
            c0797t.f2174b = i8;
            return i9;
        }
        this.f2143a = c0797t.m2108a();
        C0798u.m2112a(c0797t);
        return i9;
    }

    @Override // com.p021b.p032b.InterfaceC0784g
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public final C0783f mo2063j(long j) {
        if (j == 0) {
            return mo2058h(48);
        }
        boolean z = false;
        int i = 1;
        if (j < 0) {
            j = -j;
            if (j < 0) {
                return mo2038b("-9223372036854775808");
            }
            z = true;
        }
        if (j >= 100000000) {
            i = j < 1000000000000L ? j < 10000000000L ? j < 1000000000 ? 9 : 10 : j < 100000000000L ? 11 : 12 : j < 1000000000000000L ? j < 10000000000000L ? 13 : j < 100000000000000L ? 14 : 15 : j < 100000000000000000L ? j < 10000000000000000L ? 16 : 17 : j < 1000000000000000000L ? 18 : 19;
        } else if (j >= UMAmapConfig.AMAP_CACHE_WRITE_TIME) {
            i = j < 1000000 ? j < 100000 ? 5 : 6 : j < 10000000 ? 7 : 8;
        } else if (j >= 100) {
            i = j < 1000 ? 3 : 4;
        } else if (j >= 10) {
            i = 2;
        }
        if (z) {
            i++;
        }
        C0797t m2049e = m2049e(i);
        byte[] bArr = m2049e.f2173a;
        int i2 = m2049e.f2175c + i;
        while (j != 0) {
            i2--;
            bArr[i2] = f2142c[(int) (j % 10)];
            j /= 10;
        }
        if (z) {
            bArr[i2 - 1] = 45;
        }
        m2049e.f2175c += i;
        this.f2144b += i;
        return this;
    }

    @Override // com.p021b.p032b.InterfaceC0784g
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public final C0783f mo2061i(long j) {
        if (j == 0) {
            return mo2058h(48);
        }
        int numberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j)) / 4) + 1;
        C0797t m2049e = m2049e(numberOfTrailingZeros);
        byte[] bArr = m2049e.f2173a;
        int i = m2049e.f2175c;
        for (int i2 = (m2049e.f2175c + numberOfTrailingZeros) - 1; i2 >= i; i2--) {
            bArr[i2] = f2142c[(int) (j & 15)];
            j >>>= 4;
        }
        m2049e.f2175c += numberOfTrailingZeros;
        this.f2144b += numberOfTrailingZeros;
        return this;
    }

    @Override // com.p021b.p032b.InterfaceC0785h
    /* renamed from: h */
    public final short mo2059h() {
        return C0778aa.m2014a(mo2052f());
    }

    public final int hashCode() {
        C0797t c0797t = this.f2143a;
        if (c0797t == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = c0797t.f2175c;
            for (int i3 = c0797t.f2174b; i3 < i2; i3++) {
                i = (i * 31) + c0797t.f2173a[i3];
            }
            c0797t = c0797t.f2178f;
        } while (c0797t != this.f2143a);
        return i;
    }

    @Override // com.p021b.p032b.InterfaceC0785h
    /* renamed from: i */
    public final int mo2060i() {
        return C0778aa.m2013a(mo2054g());
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00ab A[EDGE_INSN: B:43:0x00ab->B:40:0x00ab BREAK  A[LOOP:0: B:7:0x0015->B:42:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a3  */
    @Override // com.p021b.p032b.InterfaceC0785h
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long mo2062j() {
        /*
            r17 = this;
            r0 = r17
            long r1 = r0.f2144b
            r3 = 0
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 != 0) goto L12
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "size == 0"
            r1.<init>(r2)
            throw r1
        L12:
            r1 = 0
            r5 = r3
            r2 = 0
        L15:
            com.b.b.t r7 = r0.f2143a
            byte[] r8 = r7.f2173a
            int r9 = r7.f2174b
            int r10 = r7.f2175c
        L1d:
            if (r9 >= r10) goto L97
            r11 = r8[r9]
            r12 = 48
            if (r11 < r12) goto L2c
            r12 = 57
            if (r11 > r12) goto L2c
            int r12 = r11 + (-48)
            goto L44
        L2c:
            r12 = 97
            if (r11 < r12) goto L39
            r12 = 102(0x66, float:1.43E-43)
            if (r11 > r12) goto L39
            int r12 = r11 + (-97)
        L36:
            int r12 = r12 + 10
            goto L44
        L39:
            r12 = 65
            if (r11 < r12) goto L7c
            r12 = 70
            if (r11 > r12) goto L7c
            int r12 = r11 + (-65)
            goto L36
        L44:
            r13 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r15 = r5 & r13
            int r13 = (r15 > r3 ? 1 : (r15 == r3 ? 0 : -1))
            if (r13 == 0) goto L71
            com.b.b.f r1 = new com.b.b.f
            r1.<init>()
            com.b.b.f r1 = r1.mo2061i(r5)
            com.b.b.f r1 = r1.mo2058h(r11)
            java.lang.NumberFormatException r2 = new java.lang.NumberFormatException
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "Number too large: "
            r3.<init>(r4)
            java.lang.String r1 = r1.m2065l()
            r3.append(r1)
            java.lang.String r1 = r3.toString()
            r2.<init>(r1)
            throw r2
        L71:
            r11 = 4
            long r5 = r5 << r11
            long r11 = (long) r12
            long r13 = r5 | r11
            int r9 = r9 + 1
            int r1 = r1 + 1
            r5 = r13
            goto L1d
        L7c:
            if (r1 != 0) goto L96
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "Expected leading [0-9a-fA-F] character but was 0x"
            r2.<init>(r3)
            java.lang.String r3 = java.lang.Integer.toHexString(r11)
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r1
        L96:
            r2 = 1
        L97:
            if (r9 != r10) goto La3
            com.b.b.t r8 = r7.m2108a()
            r0.f2143a = r8
            com.p021b.p032b.C0798u.m2112a(r7)
            goto La5
        La3:
            r7.f2174b = r9
        La5:
            if (r2 != 0) goto Lab
            com.b.b.t r7 = r0.f2143a
            if (r7 != 0) goto L15
        Lab:
            long r2 = r0.f2144b
            long r7 = (long) r1
            long r9 = r2 - r7
            r0.f2144b = r9
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p021b.p032b.C0783f.mo2062j():long");
    }

    /* renamed from: k */
    public final C0786i m2064k() {
        return new C0786i(m2067n());
    }

    /* renamed from: l */
    public final String m2065l() {
        try {
            return m2020a(this.f2144b, C0778aa.f2135a);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.p021b.p032b.InterfaceC0785h
    /* renamed from: m */
    public final String mo2066m() {
        long m2024a = m2024a((byte) 10, 0L);
        if (m2024a != -1) {
            return m2046d(m2024a);
        }
        C0783f c0783f = new C0783f();
        m2027a(c0783f, 0L, Math.min(32L, this.f2144b));
        throw new EOFException("\\n not found: size=" + this.f2144b + " content=" + c0783f.m2064k().mo2084e() + "…");
    }

    /* renamed from: n */
    public final byte[] m2067n() {
        try {
            return mo2050e(this.f2144b);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: o */
    public final void m2068o() {
        try {
            mo2053f(this.f2144b);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.p021b.p032b.InterfaceC0784g
    /* renamed from: p */
    public final /* bridge */ /* synthetic */ InterfaceC0784g mo2069p() {
        return this;
    }

    public final String toString() {
        if (this.f2144b <= 2147483647L) {
            int i = (int) this.f2144b;
            return (i == 0 ? C0786i.f2146b : new C0799v(this, i)).toString();
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.f2144b);
    }
}
