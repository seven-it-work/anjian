package com.umeng.commonsdk.proguard;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

/* renamed from: com.umeng.commonsdk.proguard.as */
/* loaded from: classes.dex */
public class C2474as extends AbstractC2481az {

    /* renamed from: a */
    protected static final int f9279a = -65536;

    /* renamed from: b */
    protected static final int f9280b = -2147418112;

    /* renamed from: h */
    private static final C2487be f9281h = new C2487be();

    /* renamed from: c */
    protected boolean f9282c;

    /* renamed from: d */
    protected boolean f9283d;

    /* renamed from: e */
    protected int f9284e;

    /* renamed from: f */
    protected boolean f9285f;

    /* renamed from: i */
    private byte[] f9286i;

    /* renamed from: j */
    private byte[] f9287j;

    /* renamed from: k */
    private byte[] f9288k;

    /* renamed from: l */
    private byte[] f9289l;

    /* renamed from: m */
    private byte[] f9290m;

    /* renamed from: n */
    private byte[] f9291n;

    /* renamed from: o */
    private byte[] f9292o;

    /* renamed from: p */
    private byte[] f9293p;

    /* renamed from: com.umeng.commonsdk.proguard.as$a */
    /* loaded from: classes.dex */
    public static class a implements InterfaceC2484bb {

        /* renamed from: a */
        protected boolean f9294a;

        /* renamed from: b */
        protected boolean f9295b;

        /* renamed from: c */
        protected int f9296c;

        public a() {
            this(false, true);
        }

        public a(boolean z, boolean z2) {
            this(z, z2, 0);
        }

        public a(boolean z, boolean z2, int i) {
            this.f9294a = false;
            this.f9295b = true;
            this.f9294a = z;
            this.f9295b = z2;
            this.f9296c = i;
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2484bb
        /* renamed from: a */
        public AbstractC2481az mo10825a(AbstractC2496bn abstractC2496bn) {
            C2474as c2474as = new C2474as(abstractC2496bn, this.f9294a, this.f9295b);
            if (this.f9296c != 0) {
                c2474as.m10800c(this.f9296c);
            }
            return c2474as;
        }
    }

    public C2474as(AbstractC2496bn abstractC2496bn) {
        this(abstractC2496bn, false, true);
    }

    public C2474as(AbstractC2496bn abstractC2496bn, boolean z, boolean z2) {
        super(abstractC2496bn);
        this.f9282c = false;
        this.f9283d = true;
        this.f9285f = false;
        this.f9286i = new byte[1];
        this.f9287j = new byte[2];
        this.f9288k = new byte[4];
        this.f9289l = new byte[8];
        this.f9290m = new byte[1];
        this.f9291n = new byte[2];
        this.f9292o = new byte[4];
        this.f9293p = new byte[8];
        this.f9282c = z;
        this.f9283d = z2;
    }

    /* renamed from: a */
    private int m10780a(byte[] bArr, int i, int i2) throws C2462ag {
        m10802d(i2);
        return this.f9342g.m10876d(bArr, i, i2);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: A */
    public ByteBuffer mo10781A() throws C2462ag {
        int mo10821w = mo10821w();
        m10802d(mo10821w);
        if (this.f9342g.mo10874h() >= mo10821w) {
            ByteBuffer wrap = ByteBuffer.wrap(this.f9342g.mo10872f(), this.f9342g.mo10873g(), mo10821w);
            this.f9342g.mo10868a(mo10821w);
            return wrap;
        }
        byte[] bArr = new byte[mo10821w];
        this.f9342g.m10876d(bArr, 0, mo10821w);
        return ByteBuffer.wrap(bArr);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: a */
    public void mo10782a() {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: a */
    public void mo10783a(byte b2) throws C2462ag {
        this.f9286i[0] = b2;
        this.f9342g.mo10865b(this.f9286i, 0, 1);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: a */
    public void mo10784a(double d) throws C2462ag {
        mo10786a(Double.doubleToLongBits(d));
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: a */
    public void mo10785a(int i) throws C2462ag {
        this.f9288k[0] = (byte) ((i >> 24) & 255);
        this.f9288k[1] = (byte) ((i >> 16) & 255);
        this.f9288k[2] = (byte) ((i >> 8) & 255);
        this.f9288k[3] = (byte) (i & 255);
        this.f9342g.mo10865b(this.f9288k, 0, 4);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: a */
    public void mo10786a(long j) throws C2462ag {
        this.f9289l[0] = (byte) ((j >> 56) & 255);
        this.f9289l[1] = (byte) ((j >> 48) & 255);
        this.f9289l[2] = (byte) ((j >> 40) & 255);
        this.f9289l[3] = (byte) ((j >> 32) & 255);
        this.f9289l[4] = (byte) ((j >> 24) & 255);
        this.f9289l[5] = (byte) ((j >> 16) & 255);
        this.f9289l[6] = (byte) ((j >> 8) & 255);
        this.f9289l[7] = (byte) (j & 255);
        this.f9342g.mo10865b(this.f9289l, 0, 8);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: a */
    public void mo10787a(C2476au c2476au) throws C2462ag {
        mo10783a(c2476au.f9328b);
        mo10795a(c2476au.f9329c);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: a */
    public void mo10788a(C2477av c2477av) throws C2462ag {
        mo10783a(c2477av.f9330a);
        mo10785a(c2477av.f9331b);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: a */
    public void mo10789a(C2478aw c2478aw) throws C2462ag {
        mo10783a(c2478aw.f9332a);
        mo10783a(c2478aw.f9333b);
        mo10785a(c2478aw.f9334c);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: a */
    public void mo10790a(C2479ax c2479ax) throws C2462ag {
        if (this.f9283d) {
            mo10785a(f9280b | c2479ax.f9336b);
            mo10793a(c2479ax.f9335a);
        } else {
            mo10793a(c2479ax.f9335a);
            mo10783a(c2479ax.f9336b);
        }
        mo10785a(c2479ax.f9337c);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: a */
    public void mo10791a(C2486bd c2486bd) throws C2462ag {
        mo10783a(c2486bd.f9355a);
        mo10785a(c2486bd.f9356b);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: a */
    public void mo10792a(C2487be c2487be) {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: a */
    public void mo10793a(String str) throws C2462ag {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            mo10785a(bytes.length);
            this.f9342g.mo10865b(bytes, 0, bytes.length);
        } catch (UnsupportedEncodingException unused) {
            throw new C2462ag("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: a */
    public void mo10794a(ByteBuffer byteBuffer) throws C2462ag {
        int limit = byteBuffer.limit() - byteBuffer.position();
        mo10785a(limit);
        this.f9342g.mo10865b(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), limit);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: a */
    public void mo10795a(short s) throws C2462ag {
        this.f9287j[0] = (byte) ((s >> 8) & 255);
        this.f9287j[1] = (byte) (s & 255);
        this.f9342g.mo10865b(this.f9287j, 0, 2);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: a */
    public void mo10796a(boolean z) throws C2462ag {
        mo10783a(z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: b */
    public String m10797b(int i) throws C2462ag {
        try {
            m10802d(i);
            byte[] bArr = new byte[i];
            this.f9342g.m10876d(bArr, 0, i);
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            throw new C2462ag("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: b */
    public void mo10798b() {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: c */
    public void mo10799c() {
    }

    /* renamed from: c */
    public void m10800c(int i) {
        this.f9284e = i;
        this.f9285f = true;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: d */
    public void mo10801d() throws C2462ag {
        mo10783a((byte) 0);
    }

    /* renamed from: d */
    protected void m10802d(int i) throws C2462ag {
        if (i < 0) {
            throw new C2483ba("Negative length: " + i);
        }
        if (this.f9285f) {
            this.f9284e -= i;
            if (this.f9284e < 0) {
                throw new C2483ba("Message length exceeded: " + i);
            }
        }
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: e */
    public void mo10803e() {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: f */
    public void mo10804f() {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: g */
    public void mo10805g() {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: h */
    public C2479ax mo10806h() throws C2462ag {
        int mo10821w = mo10821w();
        if (mo10821w < 0) {
            if (((-65536) & mo10821w) != f9280b) {
                throw new C2483ba(4, "Bad version in readMessageBegin");
            }
            return new C2479ax(mo10824z(), (byte) (mo10821w & 255), mo10821w());
        }
        if (this.f9282c) {
            throw new C2483ba(4, "Missing version in readMessageBegin, old client?");
        }
        return new C2479ax(m10797b(mo10821w), mo10819u(), mo10821w());
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: i */
    public void mo10807i() {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: j */
    public C2487be mo10808j() {
        return f9281h;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: k */
    public void mo10809k() {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: l */
    public C2476au mo10810l() throws C2462ag {
        byte mo10819u = mo10819u();
        return new C2476au("", mo10819u, mo10819u == 0 ? (short) 0 : mo10820v());
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: m */
    public void mo10811m() {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: n */
    public C2478aw mo10812n() throws C2462ag {
        return new C2478aw(mo10819u(), mo10819u(), mo10821w());
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: o */
    public void mo10813o() {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: p */
    public C2477av mo10814p() throws C2462ag {
        return new C2477av(mo10819u(), mo10821w());
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: q */
    public void mo10815q() {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: r */
    public C2486bd mo10816r() throws C2462ag {
        return new C2486bd(mo10819u(), mo10821w());
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: s */
    public void mo10817s() {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: t */
    public boolean mo10818t() throws C2462ag {
        return mo10819u() == 1;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: u */
    public byte mo10819u() throws C2462ag {
        if (this.f9342g.mo10874h() <= 0) {
            m10780a(this.f9290m, 0, 1);
            return this.f9290m[0];
        }
        byte b2 = this.f9342g.mo10872f()[this.f9342g.mo10873g()];
        this.f9342g.mo10868a(1);
        return b2;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: v */
    public short mo10820v() throws C2462ag {
        byte[] bArr = this.f9291n;
        int i = 0;
        if (this.f9342g.mo10874h() >= 2) {
            bArr = this.f9342g.mo10872f();
            i = this.f9342g.mo10873g();
            this.f9342g.mo10868a(2);
        } else {
            m10780a(this.f9291n, 0, 2);
        }
        return (short) ((bArr[i + 1] & 255) | ((bArr[i] & 255) << 8));
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: w */
    public int mo10821w() throws C2462ag {
        byte[] bArr = this.f9292o;
        int i = 0;
        if (this.f9342g.mo10874h() >= 4) {
            bArr = this.f9342g.mo10872f();
            i = this.f9342g.mo10873g();
            this.f9342g.mo10868a(4);
        } else {
            m10780a(this.f9292o, 0, 4);
        }
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: x */
    public long mo10822x() throws C2462ag {
        byte[] bArr = this.f9293p;
        int i = 0;
        if (this.f9342g.mo10874h() >= 8) {
            bArr = this.f9342g.mo10872f();
            i = this.f9342g.mo10873g();
            this.f9342g.mo10868a(8);
        } else {
            m10780a(this.f9293p, 0, 8);
        }
        return ((bArr[i] & 255) << 56) | ((bArr[i + 1] & 255) << 48) | ((bArr[i + 2] & 255) << 40) | ((bArr[i + 3] & 255) << 32) | ((bArr[i + 4] & 255) << 24) | ((bArr[i + 5] & 255) << 16) | ((bArr[i + 6] & 255) << 8) | (bArr[i + 7] & 255);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: y */
    public double mo10823y() throws C2462ag {
        return Double.longBitsToDouble(mo10822x());
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: z */
    public String mo10824z() throws C2462ag {
        int mo10821w = mo10821w();
        if (this.f9342g.mo10874h() < mo10821w) {
            return m10797b(mo10821w);
        }
        try {
            String str = new String(this.f9342g.mo10872f(), this.f9342g.mo10873g(), mo10821w, "UTF-8");
            this.f9342g.mo10868a(mo10821w);
            return str;
        } catch (UnsupportedEncodingException unused) {
            throw new C2462ag("JVM DOES NOT SUPPORT UTF-8");
        }
    }
}
