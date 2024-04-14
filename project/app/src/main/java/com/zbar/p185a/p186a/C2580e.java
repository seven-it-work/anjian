package com.zbar.p185a.p186a;

import android.graphics.Point;
import android.hardware.Camera;
import android.os.Handler;

/* renamed from: com.zbar.a.a.e */
/* loaded from: classes.dex */
public final class C2580e implements Camera.PreviewCallback {

    /* renamed from: a */
    private static final String f10003a = "e";

    /* renamed from: b */
    private final C2577b f10004b;

    /* renamed from: c */
    private final boolean f10005c;

    /* renamed from: d */
    private Handler f10006d;

    /* renamed from: e */
    private int f10007e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2580e(C2577b c2577b, boolean z) {
        this.f10004b = c2577b;
        this.f10005c = z;
    }

    /* renamed from: a */
    public final void m11654a(Handler handler, int i) {
        this.f10006d = handler;
        this.f10007e = i;
    }

    @Override // android.hardware.Camera.PreviewCallback
    public final void onPreviewFrame(byte[] bArr, Camera camera) {
        Point point = this.f10004b.f9987d;
        if (!this.f10005c) {
            camera.setPreviewCallback(null);
        }
        if (this.f10006d != null) {
            this.f10006d.obtainMessage(this.f10007e, point.x, point.y, bArr).sendToTarget();
            this.f10006d = null;
        }
    }
}
