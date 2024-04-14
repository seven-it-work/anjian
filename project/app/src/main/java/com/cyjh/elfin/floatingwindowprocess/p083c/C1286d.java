package com.cyjh.elfin.floatingwindowprocess.p083c;

import android.content.Context;
import android.os.Handler;
import android.os.Vibrator;
import com.cyjh.common.util.C1149ab;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.floatingwindowprocess.p082b.C1282a;
import com.cyjh.elfin.floatingwindowprocess.p084d.C1289b;
import com.cyjh.elfin.p073a.InterfaceC1224a;

/* renamed from: com.cyjh.elfin.floatingwindowprocess.c.d */
/* loaded from: classes.dex */
public class C1286d {

    /* renamed from: b */
    private static C1286d f4855b;

    /* renamed from: a */
    Vibrator f4856a;

    /* renamed from: com.cyjh.elfin.floatingwindowprocess.c.d$1, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ Vibrator f4857a;

        /* renamed from: b */
        final /* synthetic */ C1282a f4858b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AnonymousClass1(Vibrator vibrator, C1282a c1282a) {
            this.f4857a = vibrator;
            this.f4858b = c1282a;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f4857a.cancel();
            this.f4858b.m5938a();
        }
    }

    /* renamed from: a */
    public static C1286d m5965a() {
        if (f4855b == null) {
            synchronized (C1286d.class) {
                if (f4855b == null) {
                    f4855b = new C1286d();
                }
            }
        }
        return f4855b;
    }

    /* renamed from: a */
    private void m5966a(Context context) {
        Vibrator vibrator = (Vibrator) context.getSystemService("vibrator");
        C1282a c1282a = new C1282a(AppContext.m5350a());
        c1282a.f4833b = new C1287e(this, vibrator, c1282a);
    }

    /* renamed from: a */
    private /* synthetic */ void m5967a(Vibrator vibrator, C1282a c1282a) {
        if (!C1149ab.m4306a().m4314b(InterfaceC1224a.f4458z, (Boolean) true) || vibrator == null) {
            return;
        }
        C1289b.m6001j();
        C1289b.m5995d();
        c1282a.f4832a.unregisterListener(c1282a);
        C1289b.m6001j();
        if (C1289b.m5992b()) {
            vibrator.vibrate(new long[]{500, 200, 500, 200}, -1);
            new Handler().postDelayed(new AnonymousClass1(vibrator, c1282a), 1500L);
        }
    }

    /* renamed from: b */
    public static void m5968b() {
        Vibrator vibrator = (Vibrator) AppContext.m5350a().getSystemService("vibrator");
        if (C1149ab.m4306a().m4314b(InterfaceC1224a.f4437B, (Boolean) true)) {
            vibrator.vibrate(1000L);
        }
    }
}
