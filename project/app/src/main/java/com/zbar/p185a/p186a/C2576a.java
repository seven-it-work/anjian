package com.zbar.p185a.p186a;

import android.hardware.Camera;
import android.os.Handler;

/* renamed from: com.zbar.a.a.a */
/* loaded from: classes.dex */
public final class C2576a implements Camera.AutoFocusCallback {

    /* renamed from: a */
    private static final String f9978a = "a";

    /* renamed from: b */
    private static final long f9979b = 1500;

    /* renamed from: c */
    private Handler f9980c;

    /* renamed from: d */
    private int f9981d;

    /* renamed from: a */
    public final void m11623a(Handler handler, int i) {
        this.f9980c = handler;
        this.f9981d = i;
    }

    @Override // android.hardware.Camera.AutoFocusCallback
    public final void onAutoFocus(boolean z, Camera camera) {
        if (this.f9980c != null) {
            this.f9980c.sendMessageDelayed(this.f9980c.obtainMessage(this.f9981d, Boolean.valueOf(z)), f9979b);
            this.f9980c = null;
        }
    }
}
