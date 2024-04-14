package com.cyjh.elfin.floatingwindowprocess.p083c;

import android.os.Handler;
import android.os.Vibrator;
import com.cyjh.common.util.C1149ab;
import com.cyjh.elfin.floatingwindowprocess.p082b.C1282a;
import com.cyjh.elfin.floatingwindowprocess.p083c.C1286d;
import com.cyjh.elfin.floatingwindowprocess.p084d.C1289b;
import com.cyjh.elfin.p073a.InterfaceC1224a;

/* renamed from: com.cyjh.elfin.floatingwindowprocess.c.e */
/* loaded from: classes.dex */
public final /* synthetic */ class C1287e implements C1282a.a {

    /* renamed from: a */
    private final C1286d f4860a;

    /* renamed from: b */
    private final Vibrator f4861b;

    /* renamed from: c */
    private final C1282a f4862c;

    public C1287e(C1286d c1286d, Vibrator vibrator, C1282a c1282a) {
        this.f4860a = c1286d;
        this.f4861b = vibrator;
        this.f4862c = c1282a;
    }

    @Override // com.cyjh.elfin.floatingwindowprocess.p082b.C1282a.a
    /* renamed from: a */
    public final void mo5939a() {
        C1286d c1286d = this.f4860a;
        Vibrator vibrator = this.f4861b;
        C1282a c1282a = this.f4862c;
        if (!C1149ab.m4306a().m4314b(InterfaceC1224a.f4458z, (Boolean) true) || vibrator == null) {
            return;
        }
        C1289b.m6001j();
        C1289b.m5995d();
        c1282a.f4832a.unregisterListener(c1282a);
        C1289b.m6001j();
        if (C1289b.m5992b()) {
            vibrator.vibrate(new long[]{500, 200, 500, 200}, -1);
            new Handler().postDelayed(new C1286d.AnonymousClass1(vibrator, c1282a), 1500L);
        }
    }
}
