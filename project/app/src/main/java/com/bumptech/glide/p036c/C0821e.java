package com.bumptech.glide.p036c;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.widget.ActivityChooserView;
import android.util.Log;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* renamed from: com.bumptech.glide.c.e */
/* loaded from: classes.dex */
public final class C0821e {

    /* renamed from: a */
    static final int f2291a = 2;

    /* renamed from: b */
    static final int f2292b = 10;

    /* renamed from: e */
    private static final String f2293e = "GifHeaderParser";

    /* renamed from: f */
    private static final int f2294f = 255;

    /* renamed from: g */
    private static final int f2295g = 44;

    /* renamed from: h */
    private static final int f2296h = 33;

    /* renamed from: i */
    private static final int f2297i = 59;

    /* renamed from: j */
    private static final int f2298j = 249;

    /* renamed from: k */
    private static final int f2299k = 255;

    /* renamed from: l */
    private static final int f2300l = 254;

    /* renamed from: m */
    private static final int f2301m = 1;

    /* renamed from: n */
    private static final int f2302n = 28;

    /* renamed from: o */
    private static final int f2303o = 2;

    /* renamed from: p */
    private static final int f2304p = 1;

    /* renamed from: q */
    private static final int f2305q = 128;

    /* renamed from: r */
    private static final int f2306r = 64;

    /* renamed from: s */
    private static final int f2307s = 7;

    /* renamed from: t */
    private static final int f2308t = 128;

    /* renamed from: u */
    private static final int f2309u = 7;

    /* renamed from: v */
    private static final int f2310v = 256;

    /* renamed from: c */
    public ByteBuffer f2311c;

    /* renamed from: d */
    public C0820d f2312d;

    /* renamed from: w */
    private final byte[] f2313w = new byte[256];

    /* renamed from: x */
    private int f2314x = 0;

    /* renamed from: a */
    private C0821e m2230a(@Nullable byte[] bArr) {
        if (bArr != null) {
            m2249a(ByteBuffer.wrap(bArr));
            return this;
        }
        this.f2311c = null;
        this.f2312d.f2279d = 2;
        return this;
    }

    /* renamed from: a */
    private void m2231a(int i) {
        C0819c c0819c;
        int[] iArr;
        boolean z = false;
        while (!z && !m2247p() && this.f2312d.f2280e <= i) {
            int m2245n = m2245n();
            if (m2245n == 33) {
                int m2245n2 = m2245n();
                if (m2245n2 != 1) {
                    if (m2245n2 != f2298j) {
                        switch (m2245n2) {
                            case 255:
                                m2244m();
                                StringBuilder sb = new StringBuilder();
                                for (int i2 = 0; i2 < 11; i2++) {
                                    sb.append((char) this.f2313w[i2]);
                                }
                                if (sb.toString().equals("NETSCAPE2.0")) {
                                    m2239h();
                                    break;
                                } else {
                                    break;
                                }
                        }
                    } else {
                        this.f2312d.f2281f = new C0819c();
                        m2245n();
                        int m2245n3 = m2245n();
                        this.f2312d.f2281f.f2271k = (m2245n3 & 28) >> 2;
                        if (this.f2312d.f2281f.f2271k == 0) {
                            this.f2312d.f2281f.f2271k = 1;
                        }
                        this.f2312d.f2281f.f2270j = (m2245n3 & 1) != 0;
                        short s = this.f2311c.getShort();
                        if (s < 2) {
                            s = 10;
                        }
                        this.f2312d.f2281f.f2273m = s * 10;
                        this.f2312d.f2281f.f2272l = m2245n();
                        m2245n();
                    }
                }
                m2243l();
            } else if (m2245n == 44) {
                if (this.f2312d.f2281f == null) {
                    this.f2312d.f2281f = new C0819c();
                }
                this.f2312d.f2281f.f2265e = this.f2311c.getShort();
                this.f2312d.f2281f.f2266f = this.f2311c.getShort();
                this.f2312d.f2281f.f2267g = this.f2311c.getShort();
                this.f2312d.f2281f.f2268h = this.f2311c.getShort();
                int m2245n4 = m2245n();
                boolean z2 = (m2245n4 & 128) != 0;
                int pow = (int) Math.pow(2.0d, (m2245n4 & 7) + 1);
                this.f2312d.f2281f.f2269i = (m2245n4 & 64) != 0;
                if (z2) {
                    c0819c = this.f2312d.f2281f;
                    iArr = m2233b(pow);
                } else {
                    c0819c = this.f2312d.f2281f;
                    iArr = null;
                }
                c0819c.f2275o = iArr;
                this.f2312d.f2281f.f2274n = this.f2311c.position();
                m2245n();
                m2243l();
                if (!m2247p()) {
                    this.f2312d.f2280e++;
                    this.f2312d.f2282g.add(this.f2312d.f2281f);
                }
            } else if (m2245n != 59) {
                this.f2312d.f2279d = 1;
            } else {
                z = true;
            }
        }
    }

    /* renamed from: b */
    private void m2232b() {
        this.f2311c = null;
        this.f2312d = null;
    }

    @Nullable
    /* renamed from: b */
    private int[] m2233b(int i) {
        int[] iArr;
        byte[] bArr = new byte[i * 3];
        try {
            this.f2311c.get(bArr);
            iArr = new int[256];
            int i2 = 0;
            int i3 = 0;
            while (i2 < i) {
                int i4 = i3 + 1;
                try {
                    int i5 = i4 + 1;
                    int i6 = i5 + 1;
                    int i7 = i2 + 1;
                    iArr[i2] = ((bArr[i3] & 255) << 16) | (-16777216) | ((bArr[i4] & 255) << 8) | (bArr[i5] & 255);
                    i3 = i6;
                    i2 = i7;
                } catch (BufferUnderflowException e) {
                    e = e;
                    if (Log.isLoggable(f2293e, 3)) {
                        Log.d(f2293e, "Format Error Reading Color Table", e);
                    }
                    this.f2312d.f2279d = 1;
                    return iArr;
                }
            }
        } catch (BufferUnderflowException e2) {
            e = e2;
            iArr = null;
        }
        return iArr;
    }

    /* renamed from: c */
    private void m2234c() {
        this.f2311c = null;
        Arrays.fill(this.f2313w, (byte) 0);
        this.f2312d = new C0820d();
        this.f2314x = 0;
    }

    /* renamed from: d */
    private boolean m2235d() {
        m2240i();
        if (!m2247p()) {
            m2231a(2);
        }
        return this.f2312d.f2280e > 1;
    }

    /* renamed from: e */
    private void m2236e() {
        m2231a(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
    }

    /* renamed from: f */
    private void m2237f() {
        m2245n();
        int m2245n = m2245n();
        this.f2312d.f2281f.f2271k = (m2245n & 28) >> 2;
        if (this.f2312d.f2281f.f2271k == 0) {
            this.f2312d.f2281f.f2271k = 1;
        }
        this.f2312d.f2281f.f2270j = (m2245n & 1) != 0;
        short s = this.f2311c.getShort();
        if (s < 2) {
            s = 10;
        }
        this.f2312d.f2281f.f2273m = s * 10;
        this.f2312d.f2281f.f2272l = m2245n();
        m2245n();
    }

    /* renamed from: g */
    private void m2238g() {
        C0819c c0819c;
        int[] iArr;
        this.f2312d.f2281f.f2265e = this.f2311c.getShort();
        this.f2312d.f2281f.f2266f = this.f2311c.getShort();
        this.f2312d.f2281f.f2267g = this.f2311c.getShort();
        this.f2312d.f2281f.f2268h = this.f2311c.getShort();
        int m2245n = m2245n();
        boolean z = (m2245n & 128) != 0;
        int pow = (int) Math.pow(2.0d, (m2245n & 7) + 1);
        this.f2312d.f2281f.f2269i = (m2245n & 64) != 0;
        if (z) {
            c0819c = this.f2312d.f2281f;
            iArr = m2233b(pow);
        } else {
            c0819c = this.f2312d.f2281f;
            iArr = null;
        }
        c0819c.f2275o = iArr;
        this.f2312d.f2281f.f2274n = this.f2311c.position();
        m2245n();
        m2243l();
        if (m2247p()) {
            return;
        }
        this.f2312d.f2280e++;
        this.f2312d.f2282g.add(this.f2312d.f2281f);
    }

    /* renamed from: h */
    private void m2239h() {
        do {
            m2244m();
            if (this.f2313w[0] == 1) {
                this.f2312d.f2290o = (this.f2313w[1] & 255) | ((this.f2313w[2] & 255) << 8);
            }
            if (this.f2314x <= 0) {
                return;
            }
        } while (!m2247p());
    }

    /* renamed from: i */
    private void m2240i() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 6; i++) {
            sb.append((char) m2245n());
        }
        if (!sb.toString().startsWith("GIF")) {
            this.f2312d.f2279d = 1;
            return;
        }
        this.f2312d.f2283h = this.f2311c.getShort();
        this.f2312d.f2284i = this.f2311c.getShort();
        this.f2312d.f2285j = (m2245n() & 128) != 0;
        this.f2312d.f2286k = (int) Math.pow(2.0d, (r0 & 7) + 1);
        this.f2312d.f2287l = m2245n();
        this.f2312d.f2288m = m2245n();
        if (!this.f2312d.f2285j || m2247p()) {
            return;
        }
        this.f2312d.f2278c = m2233b(this.f2312d.f2286k);
        this.f2312d.f2289n = this.f2312d.f2278c[this.f2312d.f2287l];
    }

    /* renamed from: j */
    private void m2241j() {
        this.f2312d.f2283h = this.f2311c.getShort();
        this.f2312d.f2284i = this.f2311c.getShort();
        this.f2312d.f2285j = (m2245n() & 128) != 0;
        this.f2312d.f2286k = (int) Math.pow(2.0d, (r0 & 7) + 1);
        this.f2312d.f2287l = m2245n();
        this.f2312d.f2288m = m2245n();
    }

    /* renamed from: k */
    private void m2242k() {
        m2245n();
        m2243l();
    }

    /* renamed from: l */
    private void m2243l() {
        int m2245n;
        do {
            m2245n = m2245n();
            this.f2311c.position(Math.min(this.f2311c.position() + m2245n, this.f2311c.limit()));
        } while (m2245n > 0);
    }

    /* renamed from: m */
    private void m2244m() {
        this.f2314x = m2245n();
        if (this.f2314x > 0) {
            int i = 0;
            int i2 = 0;
            while (i < this.f2314x) {
                try {
                    i2 = this.f2314x - i;
                    this.f2311c.get(this.f2313w, i, i2);
                    i += i2;
                } catch (Exception e) {
                    if (Log.isLoggable(f2293e, 3)) {
                        Log.d(f2293e, "Error Reading Block n: " + i + " count: " + i2 + " blockSize: " + this.f2314x, e);
                    }
                    this.f2312d.f2279d = 1;
                    return;
                }
            }
        }
    }

    /* renamed from: n */
    private int m2245n() {
        try {
            return this.f2311c.get() & 255;
        } catch (Exception unused) {
            this.f2312d.f2279d = 1;
            return 0;
        }
    }

    /* renamed from: o */
    private int m2246o() {
        return this.f2311c.getShort();
    }

    /* renamed from: p */
    private boolean m2247p() {
        return this.f2312d.f2279d != 0;
    }

    @NonNull
    /* renamed from: a */
    public final C0820d m2248a() {
        if (this.f2311c == null) {
            throw new IllegalStateException("You must call setData() before parseHeader()");
        }
        if (m2247p()) {
            return this.f2312d;
        }
        m2240i();
        if (!m2247p()) {
            m2231a(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
            if (this.f2312d.f2280e < 0) {
                this.f2312d.f2279d = 1;
            }
        }
        return this.f2312d;
    }

    /* renamed from: a */
    public final C0821e m2249a(@NonNull ByteBuffer byteBuffer) {
        this.f2311c = null;
        Arrays.fill(this.f2313w, (byte) 0);
        this.f2312d = new C0820d();
        this.f2314x = 0;
        this.f2311c = byteBuffer.asReadOnlyBuffer();
        this.f2311c.position(0);
        this.f2311c.order(ByteOrder.LITTLE_ENDIAN);
        return this;
    }
}
