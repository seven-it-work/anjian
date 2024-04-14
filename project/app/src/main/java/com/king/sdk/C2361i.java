package com.king.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.king.sdk.p183a.C2353a;

/* renamed from: com.king.sdk.i */
/* loaded from: classes.dex */
public final class C2361i {

    /* renamed from: b */
    private static C2361i f8831b;

    /* renamed from: a */
    private InterfaceC2354b f8832a;

    private C2361i(InterfaceC2354b interfaceC2354b) {
        this.f8832a = interfaceC2354b;
    }

    /* renamed from: a */
    public static synchronized C2361i m10352a(Context context) {
        InterfaceC2354b m10351a;
        synchronized (C2361i.class) {
            if (f8831b != null) {
                return f8831b;
            }
            InterfaceC2354b m10320a = ServiceC2352a.m10320a();
            if (m10320a != null) {
                f8831b = new C2361i(m10320a);
            } else {
                Intent registerReceiver = context.registerReceiver(null, new IntentFilter("GET_KING_SERVICE"));
                if (registerReceiver != null && (m10351a = AbstractBinderC2355c.m10351a(C2353a.m10321a(registerReceiver, "GET_KING_SERVICE"))) != null) {
                    f8831b = new C2361i(m10351a);
                }
            }
            return f8831b;
        }
    }

    /* renamed from: a */
    public final void m10353a(IDFEE16B42C8B2890D8FF2860AF5562B1 idfee16b42c8b2890d8ff2860af5562b1) {
        try {
            this.f8832a.mo10329a(idfee16b42c8b2890d8ff2860af5562b1);
        } catch (Exception unused) {
        }
    }

    /* renamed from: a */
    public final void m10354a(KingListener kingListener) {
        try {
            this.f8832a.mo10341b(kingListener);
        } catch (Exception unused) {
        }
    }

    /* renamed from: a */
    public final void m10355a(String[] strArr, int i, String str, String str2) {
        try {
            this.f8832a.mo10335a(strArr, i, str, str2);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public final boolean m10356a(String str, int i, byte[] bArr) {
        try {
            return this.f8832a.mo10337a(str, null, i, bArr, null, null);
        } catch (Exception unused) {
            return false;
        }
    }

    /* renamed from: a */
    public final boolean m10357a(String str, String str2) {
        try {
            return this.f8832a.mo10338a(str, null, str2, null, null);
        } catch (Exception unused) {
            return false;
        }
    }
}
