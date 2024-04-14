package com.cyjh.elfin.sweepcode;

import android.hardware.Camera;
import android.os.Handler;
import android.util.Log;

/* renamed from: com.cyjh.elfin.sweepcode.b */
/* loaded from: classes.dex */
public final class C1310b implements Camera.PreviewCallback {

    /* renamed from: g */
    private static final String f5019g = "CameraInterface";

    /* renamed from: h */
    private static C1310b f5020h;

    /* renamed from: a */
    public Camera f5021a;

    /* renamed from: b */
    public Camera.Parameters f5022b;

    /* renamed from: e */
    public Camera.PreviewCallback f5025e;

    /* renamed from: c */
    boolean f5023c = false;

    /* renamed from: f */
    Camera.AutoFocusCallback f5026f = new Camera.AutoFocusCallback() { // from class: com.cyjh.elfin.sweepcode.b.1
        @Override // android.hardware.Camera.AutoFocusCallback
        public final void onAutoFocus(boolean z, Camera camera) {
            C1310b.this.f5024d.postDelayed(C1310b.this.f5027i, 1000L);
        }
    };

    /* renamed from: i */
    private Runnable f5027i = new Runnable() { // from class: com.cyjh.elfin.sweepcode.b.2
        @Override // java.lang.Runnable
        public final void run() {
            if (C1310b.this.f5023c) {
                C1310b.this.f5021a.autoFocus(C1310b.this.f5026f);
            }
        }
    };

    /* renamed from: d */
    Handler f5024d = new Handler();

    /* renamed from: com.cyjh.elfin.sweepcode.b$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void m6147a();
    }

    private C1310b() {
    }

    /* renamed from: a */
    public static synchronized C1310b m6134a() {
        C1310b c1310b;
        synchronized (C1310b.class) {
            if (f5020h == null) {
                f5020h = new C1310b();
            }
            c1310b = f5020h;
        }
        return c1310b;
    }

    /* renamed from: a */
    private void m6136a(Camera.PreviewCallback previewCallback) {
        this.f5025e = previewCallback;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:22|(1:24)(7:35|(8:37|(2:38|(2:40|(1:71)(2:44|45))(1:73))|46|(1:48)(1:69)|49|(2:50|(2:52|(1:65)(2:57|58))(2:67|68))|(1:62)|63)(1:74)|26|27|28|29|30)|25|26|27|28|29|30) */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x01b9, code lost:
    
        r14 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x01ba, code lost:
    
        r14.printStackTrace();
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m6137a(android.view.SurfaceHolder r14) {
        /*
            Method dump skipped, instructions count: 457
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.elfin.sweepcode.C1310b.m6137a(android.view.SurfaceHolder):void");
    }

    /* renamed from: b */
    private void m6139b() {
        this.f5021a = Camera.open();
    }

    /* renamed from: c */
    private void m6140c() {
        try {
            this.f5021a = Camera.open();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    private void m6143d() {
        if (this.f5021a != null) {
            this.f5021a.stopPreview();
        }
    }

    /* renamed from: e */
    private void m6144e() {
        Log.e("zzz", "openLight1");
        if (this.f5021a != null) {
            Log.e("zzz", "openLight2");
            this.f5022b = this.f5021a.getParameters();
            this.f5022b.setFlashMode("torch");
            this.f5021a.setParameters(this.f5022b);
        }
    }

    /* renamed from: f */
    private void m6145f() {
        if (this.f5021a != null) {
            this.f5022b = this.f5021a.getParameters();
            this.f5022b.setFlashMode("off");
            this.f5021a.setParameters(this.f5022b);
        }
    }

    /* renamed from: g */
    private void m6146g() {
        try {
            if (this.f5021a != null) {
                this.f5021a.setPreviewCallback(null);
                this.f5021a.stopPreview();
                this.f5023c = false;
                this.f5021a.release();
                this.f5021a = null;
                this.f5024d.removeCallbacks(null);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.hardware.Camera.PreviewCallback
    public final void onPreviewFrame(byte[] bArr, Camera camera) {
        if (this.f5025e != null) {
            this.f5025e.onPreviewFrame(bArr, camera);
        }
    }
}
