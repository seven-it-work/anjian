package com.umeng.commonsdk.proguard;

import com.umeng.commonsdk.proguard.C2475at;

/* renamed from: com.umeng.commonsdk.proguard.bc */
/* loaded from: classes.dex */
public class C2485bc {

    /* renamed from: a */
    private static int f9354a = Integer.MAX_VALUE;

    /* renamed from: a */
    public static InterfaceC2484bb m10854a(byte[] bArr, InterfaceC2484bb interfaceC2484bb) {
        return bArr[0] > 16 ? new C2475at.a() : (bArr.length <= 1 || (bArr[1] & 128) == 0) ? interfaceC2484bb : new C2475at.a();
    }

    /* renamed from: a */
    public static void m10855a(int i) {
        f9354a = i;
    }

    /* renamed from: a */
    public static void m10856a(AbstractC2481az abstractC2481az, byte b2) throws C2462ag {
        m10857a(abstractC2481az, b2, f9354a);
    }

    /* renamed from: a */
    public static void m10857a(AbstractC2481az abstractC2481az, byte b2, int i) throws C2462ag {
        if (i <= 0) {
            throw new C2462ag("Maximum skip depth exceeded");
        }
        int i2 = 0;
        switch (b2) {
            case 2:
                abstractC2481az.mo10818t();
                return;
            case 3:
                abstractC2481az.mo10819u();
                return;
            case 4:
                abstractC2481az.mo10823y();
                return;
            case 5:
            case 7:
            case 9:
            default:
                return;
            case 6:
                abstractC2481az.mo10820v();
                return;
            case 8:
                abstractC2481az.mo10821w();
                return;
            case 10:
                abstractC2481az.mo10822x();
                return;
            case 11:
                abstractC2481az.mo10781A();
                return;
            case 12:
                abstractC2481az.mo10808j();
                while (true) {
                    C2476au mo10810l = abstractC2481az.mo10810l();
                    if (mo10810l.f9328b == 0) {
                        abstractC2481az.mo10809k();
                        return;
                    } else {
                        m10857a(abstractC2481az, mo10810l.f9328b, i - 1);
                        abstractC2481az.mo10811m();
                    }
                }
            case 13:
                C2478aw mo10812n = abstractC2481az.mo10812n();
                while (i2 < mo10812n.f9334c) {
                    int i3 = i - 1;
                    m10857a(abstractC2481az, mo10812n.f9332a, i3);
                    m10857a(abstractC2481az, mo10812n.f9333b, i3);
                    i2++;
                }
                abstractC2481az.mo10813o();
                return;
            case 14:
                C2486bd mo10816r = abstractC2481az.mo10816r();
                while (i2 < mo10816r.f9356b) {
                    m10857a(abstractC2481az, mo10816r.f9355a, i - 1);
                    i2++;
                }
                abstractC2481az.mo10817s();
                return;
            case 15:
                C2477av mo10814p = abstractC2481az.mo10814p();
                while (i2 < mo10814p.f9331b) {
                    m10857a(abstractC2481az, mo10814p.f9330a, i - 1);
                    i2++;
                }
                abstractC2481az.mo10815q();
                return;
        }
    }
}
