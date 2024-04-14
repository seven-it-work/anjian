package com.bumptech.glide.load.p042b;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.bumptech.glide.util.C1086k;

/* renamed from: com.bumptech.glide.load.b.x */
/* loaded from: classes.dex */
final class C0928x {

    /* renamed from: a */
    private boolean f2859a;

    /* renamed from: b */
    private final Handler f2860b = new Handler(Looper.getMainLooper(), new a());

    /* renamed from: com.bumptech.glide.load.b.x$a */
    /* loaded from: classes.dex */
    private static final class a implements Handler.Callback {

        /* renamed from: a */
        static final int f2861a = 1;

        a() {
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            if (message.what != 1) {
                return false;
            }
            ((InterfaceC0925u) message.obj).mo2726d();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m2746a(InterfaceC0925u<?> interfaceC0925u) {
        C1086k.m3485a();
        if (this.f2859a) {
            this.f2860b.obtainMessage(1, interfaceC0925u).sendToTarget();
            return;
        }
        this.f2859a = true;
        interfaceC0925u.mo2726d();
        this.f2859a = false;
    }
}
