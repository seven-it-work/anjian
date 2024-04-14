package com.umeng.commonsdk.proguard;

import com.umeng.commonsdk.proguard.C2475at;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;

/* renamed from: com.umeng.commonsdk.proguard.aj */
/* loaded from: classes.dex */
public class C2465aj {

    /* renamed from: a */
    private final ByteArrayOutputStream f9259a;

    /* renamed from: b */
    private final C2494bl f9260b;

    /* renamed from: c */
    private AbstractC2481az f9261c;

    public C2465aj() {
        this(new C2475at.a());
    }

    public C2465aj(InterfaceC2484bb interfaceC2484bb) {
        this.f9259a = new ByteArrayOutputStream();
        this.f9260b = new C2494bl(this.f9259a);
        this.f9261c = interfaceC2484bb.mo10825a(this.f9260b);
    }

    /* renamed from: a */
    public String m10740a(InterfaceC2456aa interfaceC2456aa, String str) throws C2462ag {
        try {
            return new String(m10741a(interfaceC2456aa), str);
        } catch (UnsupportedEncodingException unused) {
            throw new C2462ag("JVM DOES NOT SUPPORT ENCODING: " + str);
        }
    }

    /* renamed from: a */
    public byte[] m10741a(InterfaceC2456aa interfaceC2456aa) throws C2462ag {
        this.f9259a.reset();
        interfaceC2456aa.write(this.f9261c);
        return this.f9259a.toByteArray();
    }

    /* renamed from: b */
    public String m10742b(InterfaceC2456aa interfaceC2456aa) throws C2462ag {
        return new String(m10741a(interfaceC2456aa));
    }
}
