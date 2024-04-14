package com.umeng.commonsdk.proguard;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

/* renamed from: com.umeng.commonsdk.proguard.at */
/* loaded from: classes.dex */
public class C2475at extends AbstractC2481az {

    /* renamed from: d */
    private static final C2487be f9297d = new C2487be("");

    /* renamed from: e */
    private static final C2476au f9298e = new C2476au("", (byte) 0, 0);

    /* renamed from: f */
    private static final byte[] f9299f;

    /* renamed from: h */
    private static final byte f9300h = -126;

    /* renamed from: i */
    private static final byte f9301i = 1;

    /* renamed from: j */
    private static final byte f9302j = 31;

    /* renamed from: k */
    private static final byte f9303k = -32;

    /* renamed from: l */
    private static final int f9304l = 5;

    /* renamed from: a */
    byte[] f9305a;

    /* renamed from: b */
    byte[] f9306b;

    /* renamed from: c */
    byte[] f9307c;

    /* renamed from: m */
    private C2521y f9308m;

    /* renamed from: n */
    private short f9309n;

    /* renamed from: o */
    private C2476au f9310o;

    /* renamed from: p */
    private Boolean f9311p;

    /* renamed from: q */
    private final long f9312q;

    /* renamed from: r */
    private byte[] f9313r;

    /* renamed from: com.umeng.commonsdk.proguard.at$a */
    /* loaded from: classes.dex */
    public static class a implements InterfaceC2484bb {

        /* renamed from: a */
        private final long f9314a;

        public a() {
            this.f9314a = -1L;
        }

        public a(int i) {
            this.f9314a = i;
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2484bb
        /* renamed from: a */
        public AbstractC2481az mo10825a(AbstractC2496bn abstractC2496bn) {
            return new C2475at(abstractC2496bn, this.f9314a);
        }
    }

    /* renamed from: com.umeng.commonsdk.proguard.at$b */
    /* loaded from: classes.dex */
    private static class b {

        /* renamed from: a */
        public static final byte f9315a = 1;

        /* renamed from: b */
        public static final byte f9316b = 2;

        /* renamed from: c */
        public static final byte f9317c = 3;

        /* renamed from: d */
        public static final byte f9318d = 4;

        /* renamed from: e */
        public static final byte f9319e = 5;

        /* renamed from: f */
        public static final byte f9320f = 6;

        /* renamed from: g */
        public static final byte f9321g = 7;

        /* renamed from: h */
        public static final byte f9322h = 8;

        /* renamed from: i */
        public static final byte f9323i = 9;

        /* renamed from: j */
        public static final byte f9324j = 10;

        /* renamed from: k */
        public static final byte f9325k = 11;

        /* renamed from: l */
        public static final byte f9326l = 12;

        private b() {
        }
    }

    static {
        byte[] bArr = new byte[16];
        f9299f = bArr;
        bArr[0] = 0;
        f9299f[2] = 1;
        f9299f[3] = 3;
        f9299f[6] = 4;
        f9299f[8] = 5;
        f9299f[10] = 6;
        f9299f[4] = 7;
        f9299f[11] = 8;
        f9299f[15] = 9;
        f9299f[14] = 10;
        f9299f[13] = 11;
        f9299f[12] = 12;
    }

    public C2475at(AbstractC2496bn abstractC2496bn) {
        this(abstractC2496bn, -1L);
    }

    public C2475at(AbstractC2496bn abstractC2496bn, long j) {
        super(abstractC2496bn);
        this.f9308m = new C2521y(15);
        this.f9309n = (short) 0;
        this.f9310o = null;
        this.f9311p = null;
        this.f9305a = new byte[5];
        this.f9306b = new byte[10];
        this.f9313r = new byte[1];
        this.f9307c = new byte[1];
        this.f9312q = j;
    }

    /* renamed from: E */
    private int m10826E() throws C2462ag {
        int i = 0;
        if (this.f9342g.mo10874h() >= 5) {
            byte[] mo10872f = this.f9342g.mo10872f();
            int mo10873g = this.f9342g.mo10873g();
            int i2 = 0;
            int i3 = 0;
            while (true) {
                byte b2 = mo10872f[mo10873g + i];
                i2 |= (b2 & Byte.MAX_VALUE) << i3;
                if ((b2 & 128) != 128) {
                    this.f9342g.mo10868a(i + 1);
                    return i2;
                }
                i3 += 7;
                i++;
            }
        } else {
            int i4 = 0;
            while (true) {
                byte mo10819u = mo10819u();
                i |= (mo10819u & Byte.MAX_VALUE) << i4;
                if ((mo10819u & 128) != 128) {
                    return i;
                }
                i4 += 7;
            }
        }
    }

    /* renamed from: F */
    private long m10827F() throws C2462ag {
        int i = 0;
        long j = 0;
        if (this.f9342g.mo10874h() >= 10) {
            byte[] mo10872f = this.f9342g.mo10872f();
            int mo10873g = this.f9342g.mo10873g();
            int i2 = 0;
            while (true) {
                long j2 = j | ((r7 & Byte.MAX_VALUE) << i2);
                if ((mo10872f[mo10873g + i] & 128) != 128) {
                    this.f9342g.mo10868a(i + 1);
                    return j2;
                }
                i2 += 7;
                i++;
                j = j2;
            }
        } else {
            while (true) {
                long j3 = j | ((r0 & Byte.MAX_VALUE) << i);
                if ((mo10819u() & 128) != 128) {
                    return j3;
                }
                i += 7;
                j = j3;
            }
        }
    }

    /* renamed from: a */
    private long m10828a(byte[] bArr) {
        return ((bArr[7] & 255) << 56) | ((bArr[6] & 255) << 48) | ((bArr[5] & 255) << 40) | ((bArr[4] & 255) << 32) | ((bArr[3] & 255) << 24) | ((bArr[2] & 255) << 16) | ((bArr[1] & 255) << 8) | (bArr[0] & 255);
    }

    /* renamed from: a */
    private void m10829a(long j, byte[] bArr, int i) {
        bArr[i + 0] = (byte) (j & 255);
        bArr[i + 1] = (byte) ((j >> 8) & 255);
        bArr[i + 2] = (byte) ((j >> 16) & 255);
        bArr[i + 3] = (byte) ((j >> 24) & 255);
        bArr[i + 4] = (byte) ((j >> 32) & 255);
        bArr[i + 5] = (byte) ((j >> 40) & 255);
        bArr[i + 6] = (byte) ((j >> 48) & 255);
        bArr[i + 7] = (byte) ((j >> 56) & 255);
    }

    /* renamed from: a */
    private void m10830a(C2476au c2476au, byte b2) throws C2462ag {
        if (b2 == -1) {
            b2 = m10841e(c2476au.f9328b);
        }
        if (c2476au.f9329c <= this.f9309n || c2476au.f9329c - this.f9309n > 15) {
            m10832b(b2);
            mo10795a(c2476au.f9329c);
        } else {
            m10840d(b2 | ((c2476au.f9329c - this.f9309n) << 4));
        }
        this.f9309n = c2476au.f9329c;
    }

    /* renamed from: a */
    private void m10831a(byte[] bArr, int i, int i2) throws C2462ag {
        m10833b(i2);
        this.f9342g.mo10865b(bArr, i, i2);
    }

    /* renamed from: b */
    private void m10832b(byte b2) throws C2462ag {
        this.f9313r[0] = b2;
        this.f9342g.m10875b(this.f9313r);
    }

    /* renamed from: b */
    private void m10833b(int i) throws C2462ag {
        int i2 = 0;
        while ((i & (-128)) != 0) {
            this.f9305a[i2] = (byte) ((i & 127) | 128);
            i >>>= 7;
            i2++;
        }
        this.f9305a[i2] = (byte) i;
        this.f9342g.mo10865b(this.f9305a, 0, i2 + 1);
    }

    /* renamed from: b */
    private void m10834b(long j) throws C2462ag {
        int i = 0;
        while ((j & (-128)) != 0) {
            this.f9306b[i] = (byte) ((j & 127) | 128);
            j >>>= 7;
            i++;
        }
        this.f9306b[i] = (byte) j;
        this.f9342g.mo10865b(this.f9306b, 0, i + 1);
    }

    /* renamed from: c */
    private int m10835c(int i) {
        return (i >> 31) ^ (i << 1);
    }

    /* renamed from: c */
    private long m10836c(long j) {
        return (j << 1) ^ (j >> 63);
    }

    /* renamed from: c */
    private boolean m10837c(byte b2) {
        int i = b2 & C2489bg.f9370m;
        return i == 1 || i == 2;
    }

    /* renamed from: d */
    private byte m10838d(byte b2) throws C2483ba {
        byte b3 = (byte) (b2 & C2489bg.f9370m);
        switch (b3) {
            case 0:
                return (byte) 0;
            case 1:
            case 2:
                return (byte) 2;
            case 3:
                return (byte) 3;
            case 4:
                return (byte) 6;
            case 5:
                return (byte) 8;
            case 6:
                return (byte) 10;
            case 7:
                return (byte) 4;
            case 8:
                return (byte) 11;
            case 9:
                return C2489bg.f9370m;
            case 10:
                return C2489bg.f9369l;
            case 11:
                return C2489bg.f9368k;
            case 12:
                return (byte) 12;
            default:
                throw new C2483ba("don't know what type: " + ((int) b3));
        }
    }

    /* renamed from: d */
    private long m10839d(long j) {
        return (j >>> 1) ^ (-(j & 1));
    }

    /* renamed from: d */
    private void m10840d(int i) throws C2462ag {
        m10832b((byte) i);
    }

    /* renamed from: e */
    private byte m10841e(byte b2) {
        return f9299f[b2];
    }

    /* renamed from: e */
    private byte[] m10842e(int i) throws C2462ag {
        if (i == 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[i];
        this.f9342g.m10876d(bArr, 0, i);
        return bArr;
    }

    /* renamed from: f */
    private void m10843f(int i) throws C2483ba {
        if (i < 0) {
            throw new C2483ba("Negative length: " + i);
        }
        if (this.f9312q == -1 || i <= this.f9312q) {
            return;
        }
        throw new C2483ba("Length exceeded max allowed: " + i);
    }

    /* renamed from: g */
    private int m10844g(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: A */
    public ByteBuffer mo10781A() throws C2462ag {
        int m10826E = m10826E();
        m10843f(m10826E);
        if (m10826E == 0) {
            return ByteBuffer.wrap(new byte[0]);
        }
        byte[] bArr = new byte[m10826E];
        this.f9342g.m10876d(bArr, 0, m10826E);
        return ByteBuffer.wrap(bArr);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: B */
    public void mo10845B() {
        this.f9308m.m11139c();
        this.f9309n = (short) 0;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: a */
    public void mo10782a() throws C2462ag {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: a */
    public void mo10783a(byte b2) throws C2462ag {
        m10832b(b2);
    }

    /* renamed from: a */
    protected void m10846a(byte b2, int i) throws C2462ag {
        if (i <= 14) {
            m10840d(m10841e(b2) | (i << 4));
        } else {
            m10840d(m10841e(b2) | 240);
            m10833b(i);
        }
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: a */
    public void mo10784a(double d) throws C2462ag {
        byte[] bArr = {0, 0, 0, 0, 0, 0, 0, 0};
        m10829a(Double.doubleToLongBits(d), bArr, 0);
        this.f9342g.m10875b(bArr);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: a */
    public void mo10785a(int i) throws C2462ag {
        m10833b(m10835c(i));
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: a */
    public void mo10786a(long j) throws C2462ag {
        m10834b(m10836c(j));
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: a */
    public void mo10787a(C2476au c2476au) throws C2462ag {
        if (c2476au.f9328b == 2) {
            this.f9310o = c2476au;
        } else {
            m10830a(c2476au, (byte) -1);
        }
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: a */
    public void mo10788a(C2477av c2477av) throws C2462ag {
        m10846a(c2477av.f9330a, c2477av.f9331b);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: a */
    public void mo10789a(C2478aw c2478aw) throws C2462ag {
        int m10841e;
        if (c2478aw.f9334c == 0) {
            m10841e = 0;
        } else {
            m10833b(c2478aw.f9334c);
            m10841e = m10841e(c2478aw.f9333b) | (m10841e(c2478aw.f9332a) << 4);
        }
        m10840d(m10841e);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: a */
    public void mo10790a(C2479ax c2479ax) throws C2462ag {
        m10832b(f9300h);
        m10840d(((c2479ax.f9336b << 5) & (-32)) | 1);
        m10833b(c2479ax.f9337c);
        mo10793a(c2479ax.f9335a);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: a */
    public void mo10791a(C2486bd c2486bd) throws C2462ag {
        m10846a(c2486bd.f9355a, c2486bd.f9356b);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: a */
    public void mo10792a(C2487be c2487be) throws C2462ag {
        this.f9308m.m11137a(this.f9309n);
        this.f9309n = (short) 0;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: a */
    public void mo10793a(String str) throws C2462ag {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            m10831a(bytes, 0, bytes.length);
        } catch (UnsupportedEncodingException unused) {
            throw new C2462ag("UTF-8 not supported!");
        }
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: a */
    public void mo10794a(ByteBuffer byteBuffer) throws C2462ag {
        m10831a(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), byteBuffer.limit() - byteBuffer.position());
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: a */
    public void mo10795a(short s) throws C2462ag {
        m10833b(m10835c((int) s));
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: a */
    public void mo10796a(boolean z) throws C2462ag {
        if (this.f9310o == null) {
            m10832b(z ? (byte) 1 : (byte) 2);
        } else {
            m10830a(this.f9310o, z ? (byte) 1 : (byte) 2);
            this.f9310o = null;
        }
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: b */
    public void mo10798b() throws C2462ag {
        this.f9309n = this.f9308m.m11136a();
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: c */
    public void mo10799c() throws C2462ag {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: d */
    public void mo10801d() throws C2462ag {
        m10832b((byte) 0);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: e */
    public void mo10803e() throws C2462ag {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: f */
    public void mo10804f() throws C2462ag {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: g */
    public void mo10805g() throws C2462ag {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: h */
    public C2479ax mo10806h() throws C2462ag {
        byte mo10819u = mo10819u();
        if (mo10819u != -126) {
            throw new C2483ba("Expected protocol id " + Integer.toHexString(-126) + " but got " + Integer.toHexString(mo10819u));
        }
        byte mo10819u2 = mo10819u();
        byte b2 = (byte) (mo10819u2 & f9302j);
        if (b2 != 1) {
            throw new C2483ba("Expected version 1 but got " + ((int) b2));
        }
        return new C2479ax(mo10824z(), (byte) ((mo10819u2 >> 5) & 3), m10826E());
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: i */
    public void mo10807i() throws C2462ag {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: j */
    public C2487be mo10808j() throws C2462ag {
        this.f9308m.m11137a(this.f9309n);
        this.f9309n = (short) 0;
        return f9297d;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: k */
    public void mo10809k() throws C2462ag {
        this.f9309n = this.f9308m.m11136a();
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: l */
    public C2476au mo10810l() throws C2462ag {
        byte mo10819u = mo10819u();
        if (mo10819u == 0) {
            return f9298e;
        }
        short s = (short) ((mo10819u & 240) >> 4);
        short mo10820v = s == 0 ? mo10820v() : (short) (this.f9309n + s);
        byte b2 = (byte) (mo10819u & C2489bg.f9370m);
        C2476au c2476au = new C2476au("", m10838d(b2), mo10820v);
        if (m10837c(mo10819u)) {
            this.f9311p = b2 == 1 ? Boolean.TRUE : Boolean.FALSE;
        }
        this.f9309n = c2476au.f9329c;
        return c2476au;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: m */
    public void mo10811m() throws C2462ag {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: n */
    public C2478aw mo10812n() throws C2462ag {
        int m10826E = m10826E();
        byte mo10819u = m10826E == 0 ? (byte) 0 : mo10819u();
        return new C2478aw(m10838d((byte) (mo10819u >> 4)), m10838d((byte) (mo10819u & C2489bg.f9370m)), m10826E);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: o */
    public void mo10813o() throws C2462ag {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: p */
    public C2477av mo10814p() throws C2462ag {
        byte mo10819u = mo10819u();
        int i = (mo10819u >> 4) & 15;
        if (i == 15) {
            i = m10826E();
        }
        return new C2477av(m10838d(mo10819u), i);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: q */
    public void mo10815q() throws C2462ag {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: r */
    public C2486bd mo10816r() throws C2462ag {
        return new C2486bd(mo10814p());
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: s */
    public void mo10817s() throws C2462ag {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: t */
    public boolean mo10818t() throws C2462ag {
        if (this.f9311p == null) {
            return mo10819u() == 1;
        }
        boolean booleanValue = this.f9311p.booleanValue();
        this.f9311p = null;
        return booleanValue;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: u */
    public byte mo10819u() throws C2462ag {
        if (this.f9342g.mo10874h() <= 0) {
            this.f9342g.m10876d(this.f9307c, 0, 1);
            return this.f9307c[0];
        }
        byte b2 = this.f9342g.mo10872f()[this.f9342g.mo10873g()];
        this.f9342g.mo10868a(1);
        return b2;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: v */
    public short mo10820v() throws C2462ag {
        return (short) m10844g(m10826E());
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: w */
    public int mo10821w() throws C2462ag {
        return m10844g(m10826E());
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: x */
    public long mo10822x() throws C2462ag {
        return m10839d(m10827F());
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: y */
    public double mo10823y() throws C2462ag {
        byte[] bArr = new byte[8];
        this.f9342g.m10876d(bArr, 0, 8);
        return Double.longBitsToDouble(m10828a(bArr));
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: z */
    public String mo10824z() throws C2462ag {
        int m10826E = m10826E();
        m10843f(m10826E);
        if (m10826E == 0) {
            return "";
        }
        try {
            if (this.f9342g.mo10874h() < m10826E) {
                return new String(m10842e(m10826E), "UTF-8");
            }
            String str = new String(this.f9342g.mo10872f(), this.f9342g.mo10873g(), m10826E, "UTF-8");
            this.f9342g.mo10868a(m10826E);
            return str;
        } catch (UnsupportedEncodingException unused) {
            throw new C2462ag("UTF-8 not supported!");
        }
    }
}
