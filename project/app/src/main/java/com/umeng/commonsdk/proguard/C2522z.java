package com.umeng.commonsdk.proguard;

import org.litepal.p246g.InterfaceC3057b;

/* renamed from: com.umeng.commonsdk.proguard.z */
/* loaded from: classes.dex */
public class C2522z extends C2462ag {

    /* renamed from: a */
    public static final int f9627a = 0;

    /* renamed from: b */
    public static final int f9628b = 1;

    /* renamed from: c */
    public static final int f9629c = 2;

    /* renamed from: d */
    public static final int f9630d = 3;

    /* renamed from: e */
    public static final int f9631e = 4;

    /* renamed from: f */
    public static final int f9632f = 5;

    /* renamed from: g */
    public static final int f9633g = 6;

    /* renamed from: h */
    public static final int f9634h = 7;

    /* renamed from: j */
    private static final C2487be f9635j = new C2487be("TApplicationException");

    /* renamed from: k */
    private static final C2476au f9636k = new C2476au("message", (byte) 11, 1);

    /* renamed from: l */
    private static final C2476au f9637l = new C2476au(InterfaceC3057b.c.f11209c, (byte) 8, 2);

    /* renamed from: m */
    private static final long f9638m = 1;

    /* renamed from: i */
    protected int f9639i;

    public C2522z() {
        this.f9639i = 0;
    }

    public C2522z(int i) {
        this.f9639i = 0;
        this.f9639i = i;
    }

    public C2522z(int i, String str) {
        super(str);
        this.f9639i = 0;
        this.f9639i = i;
    }

    public C2522z(String str) {
        super(str);
        this.f9639i = 0;
    }

    /* renamed from: a */
    public static C2522z m11140a(AbstractC2481az abstractC2481az) throws C2462ag {
        abstractC2481az.mo10808j();
        String str = null;
        int i = 0;
        while (true) {
            C2476au mo10810l = abstractC2481az.mo10810l();
            if (mo10810l.f9328b == 0) {
                abstractC2481az.mo10809k();
                return new C2522z(i, str);
            }
            switch (mo10810l.f9329c) {
                case 1:
                    if (mo10810l.f9328b == 11) {
                        str = abstractC2481az.mo10824z();
                        break;
                    }
                    break;
                case 2:
                    if (mo10810l.f9328b == 8) {
                        i = abstractC2481az.mo10821w();
                        break;
                    }
                    break;
            }
            C2485bc.m10856a(abstractC2481az, mo10810l.f9328b);
            abstractC2481az.mo10811m();
        }
    }

    /* renamed from: a */
    public int m11141a() {
        return this.f9639i;
    }

    /* renamed from: b */
    public void m11142b(AbstractC2481az abstractC2481az) throws C2462ag {
        abstractC2481az.mo10792a(f9635j);
        if (getMessage() != null) {
            abstractC2481az.mo10787a(f9636k);
            abstractC2481az.mo10793a(getMessage());
            abstractC2481az.mo10799c();
        }
        abstractC2481az.mo10787a(f9637l);
        abstractC2481az.mo10785a(this.f9639i);
        abstractC2481az.mo10799c();
        abstractC2481az.mo10801d();
        abstractC2481az.mo10798b();
    }
}
