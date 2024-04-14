package com.umeng.commonsdk.proguard;

import com.umeng.commonsdk.proguard.C2475at;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

/* renamed from: com.umeng.commonsdk.proguard.ad */
/* loaded from: classes.dex */
public class C2459ad {

    /* renamed from: a */
    private final AbstractC2481az f9253a;

    /* renamed from: b */
    private final C2495bm f9254b;

    public C2459ad() {
        this(new C2475at.a());
    }

    public C2459ad(InterfaceC2484bb interfaceC2484bb) {
        this.f9254b = new C2495bm();
        this.f9253a = interfaceC2484bb.mo10825a(this.f9254b);
    }

    /* renamed from: a */
    private Object m10722a(byte b2, byte[] bArr, InterfaceC2463ah interfaceC2463ah, InterfaceC2463ah... interfaceC2463ahArr) throws C2462ag {
        try {
            try {
                C2476au m10723j = m10723j(bArr, interfaceC2463ah, interfaceC2463ahArr);
                if (m10723j != null) {
                    if (b2 != 6) {
                        if (b2 != 8) {
                            if (b2 != 100) {
                                switch (b2) {
                                    case 2:
                                        if (m10723j.f9328b == 2) {
                                            return Boolean.valueOf(this.f9253a.mo10818t());
                                        }
                                        break;
                                    case 3:
                                        if (m10723j.f9328b == 3) {
                                            return Byte.valueOf(this.f9253a.mo10819u());
                                        }
                                        break;
                                    case 4:
                                        if (m10723j.f9328b == 4) {
                                            return Double.valueOf(this.f9253a.mo10823y());
                                        }
                                        break;
                                    default:
                                        switch (b2) {
                                            case 10:
                                                if (m10723j.f9328b == 10) {
                                                    return Long.valueOf(this.f9253a.mo10822x());
                                                }
                                                break;
                                            case 11:
                                                if (m10723j.f9328b == 11) {
                                                    return this.f9253a.mo10824z();
                                                }
                                                break;
                                        }
                                }
                            } else if (m10723j.f9328b == 11) {
                                return this.f9253a.mo10781A();
                            }
                        } else if (m10723j.f9328b == 8) {
                            return Integer.valueOf(this.f9253a.mo10821w());
                        }
                    } else if (m10723j.f9328b == 6) {
                        return Short.valueOf(this.f9253a.mo10820v());
                    }
                }
                this.f9254b.m10871e();
                this.f9253a.mo10845B();
                return null;
            } catch (Exception e) {
                throw new C2462ag(e);
            }
        } finally {
            this.f9254b.m10871e();
            this.f9253a.mo10845B();
        }
    }

    /* renamed from: j */
    private C2476au m10723j(byte[] bArr, InterfaceC2463ah interfaceC2463ah, InterfaceC2463ah... interfaceC2463ahArr) throws C2462ag {
        this.f9254b.m10869a(bArr);
        InterfaceC2463ah[] interfaceC2463ahArr2 = new InterfaceC2463ah[interfaceC2463ahArr.length + 1];
        int i = 0;
        interfaceC2463ahArr2[0] = interfaceC2463ah;
        int i2 = 0;
        while (i2 < interfaceC2463ahArr.length) {
            int i3 = i2 + 1;
            interfaceC2463ahArr2[i3] = interfaceC2463ahArr[i2];
            i2 = i3;
        }
        this.f9253a.mo10808j();
        C2476au c2476au = null;
        while (i < interfaceC2463ahArr2.length) {
            c2476au = this.f9253a.mo10810l();
            if (c2476au.f9328b == 0 || c2476au.f9329c > interfaceC2463ahArr2[i].mo10738a()) {
                return null;
            }
            if (c2476au.f9329c != interfaceC2463ahArr2[i].mo10738a()) {
                C2485bc.m10856a(this.f9253a, c2476au.f9328b);
                this.f9253a.mo10811m();
            } else {
                i++;
                if (i < interfaceC2463ahArr2.length) {
                    this.f9253a.mo10808j();
                }
            }
        }
        return c2476au;
    }

    /* renamed from: a */
    public Boolean m10724a(byte[] bArr, InterfaceC2463ah interfaceC2463ah, InterfaceC2463ah... interfaceC2463ahArr) throws C2462ag {
        return (Boolean) m10722a((byte) 2, bArr, interfaceC2463ah, interfaceC2463ahArr);
    }

    /* renamed from: a */
    public void m10725a(InterfaceC2456aa interfaceC2456aa, String str) throws C2462ag {
        m10727a(interfaceC2456aa, str.getBytes());
    }

    /* renamed from: a */
    public void m10726a(InterfaceC2456aa interfaceC2456aa, String str, String str2) throws C2462ag {
        try {
            try {
                m10727a(interfaceC2456aa, str.getBytes(str2));
            } catch (UnsupportedEncodingException unused) {
                throw new C2462ag("JVM DOES NOT SUPPORT ENCODING: " + str2);
            }
        } finally {
            this.f9253a.mo10845B();
        }
    }

    /* renamed from: a */
    public void m10727a(InterfaceC2456aa interfaceC2456aa, byte[] bArr) throws C2462ag {
        try {
            this.f9254b.m10869a(bArr);
            interfaceC2456aa.read(this.f9253a);
        } finally {
            this.f9254b.m10871e();
            this.f9253a.mo10845B();
        }
    }

    /* renamed from: a */
    public void m10728a(InterfaceC2456aa interfaceC2456aa, byte[] bArr, InterfaceC2463ah interfaceC2463ah, InterfaceC2463ah... interfaceC2463ahArr) throws C2462ag {
        try {
            try {
                if (m10723j(bArr, interfaceC2463ah, interfaceC2463ahArr) != null) {
                    interfaceC2456aa.read(this.f9253a);
                }
            } catch (Exception e) {
                throw new C2462ag(e);
            }
        } finally {
            this.f9254b.m10871e();
            this.f9253a.mo10845B();
        }
    }

    /* renamed from: b */
    public Byte m10729b(byte[] bArr, InterfaceC2463ah interfaceC2463ah, InterfaceC2463ah... interfaceC2463ahArr) throws C2462ag {
        return (Byte) m10722a((byte) 3, bArr, interfaceC2463ah, interfaceC2463ahArr);
    }

    /* renamed from: c */
    public Double m10730c(byte[] bArr, InterfaceC2463ah interfaceC2463ah, InterfaceC2463ah... interfaceC2463ahArr) throws C2462ag {
        return (Double) m10722a((byte) 4, bArr, interfaceC2463ah, interfaceC2463ahArr);
    }

    /* renamed from: d */
    public Short m10731d(byte[] bArr, InterfaceC2463ah interfaceC2463ah, InterfaceC2463ah... interfaceC2463ahArr) throws C2462ag {
        return (Short) m10722a((byte) 6, bArr, interfaceC2463ah, interfaceC2463ahArr);
    }

    /* renamed from: e */
    public Integer m10732e(byte[] bArr, InterfaceC2463ah interfaceC2463ah, InterfaceC2463ah... interfaceC2463ahArr) throws C2462ag {
        return (Integer) m10722a((byte) 8, bArr, interfaceC2463ah, interfaceC2463ahArr);
    }

    /* renamed from: f */
    public Long m10733f(byte[] bArr, InterfaceC2463ah interfaceC2463ah, InterfaceC2463ah... interfaceC2463ahArr) throws C2462ag {
        return (Long) m10722a((byte) 10, bArr, interfaceC2463ah, interfaceC2463ahArr);
    }

    /* renamed from: g */
    public String m10734g(byte[] bArr, InterfaceC2463ah interfaceC2463ah, InterfaceC2463ah... interfaceC2463ahArr) throws C2462ag {
        return (String) m10722a((byte) 11, bArr, interfaceC2463ah, interfaceC2463ahArr);
    }

    /* renamed from: h */
    public ByteBuffer m10735h(byte[] bArr, InterfaceC2463ah interfaceC2463ah, InterfaceC2463ah... interfaceC2463ahArr) throws C2462ag {
        return (ByteBuffer) m10722a((byte) 100, bArr, interfaceC2463ah, interfaceC2463ahArr);
    }

    /* renamed from: i */
    public Short m10736i(byte[] bArr, InterfaceC2463ah interfaceC2463ah, InterfaceC2463ah... interfaceC2463ahArr) throws C2462ag {
        try {
            try {
                if (m10723j(bArr, interfaceC2463ah, interfaceC2463ahArr) != null) {
                    this.f9253a.mo10808j();
                    return Short.valueOf(this.f9253a.mo10810l().f9329c);
                }
                this.f9254b.m10871e();
                this.f9253a.mo10845B();
                return null;
            } catch (Exception e) {
                throw new C2462ag(e);
            }
        } finally {
            this.f9254b.m10871e();
            this.f9253a.mo10845B();
        }
    }
}
