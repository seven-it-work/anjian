package com.iflytek.voiceads.videolib;

import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.view.Surface;
import android.view.TextureView;
import com.iflytek.voiceads.utils.C2313g;

/* renamed from: com.iflytek.voiceads.videolib.c */
/* loaded from: assets/AdDex.4.0.1.dex */
public class TextureViewSurfaceTextureListenerC2325c implements TextureView.SurfaceTextureListener {

    /* renamed from: a */
    public static JZTextureView f8744a;

    /* renamed from: b */
    public static TextureViewSurfaceTextureListenerC2325c f8745b;

    /* renamed from: c */
    public static SurfaceTexture f8746c;

    /* renamed from: d */
    public static Surface f8747d;

    /* renamed from: e */
    public AbstractC2324b f8748e;

    /* renamed from: f */
    public int f8749f = -1;

    /* renamed from: g */
    public int f8750g = 0;

    /* renamed from: h */
    public int f8751h = 0;

    /* renamed from: i */
    public HandlerThread f8752i = new HandlerThread("JZVideoPlayer");

    /* renamed from: j */
    public a f8753j;

    /* renamed from: k */
    public Handler f8754k;

    /* renamed from: com.iflytek.voiceads.videolib.c$a */
    /* loaded from: assets/AdDex.4.0.1.dex */
    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            switch (message.what) {
                case 0:
                    TextureViewSurfaceTextureListenerC2325c.this.f8750g = 0;
                    TextureViewSurfaceTextureListenerC2325c.this.f8751h = 0;
                    TextureViewSurfaceTextureListenerC2325c.this.f8748e.mo10241b();
                    if (TextureViewSurfaceTextureListenerC2325c.f8747d != null) {
                        TextureViewSurfaceTextureListenerC2325c.f8747d.release();
                    }
                    TextureViewSurfaceTextureListenerC2325c.f8747d = new Surface(TextureViewSurfaceTextureListenerC2325c.f8746c);
                    TextureViewSurfaceTextureListenerC2325c.this.f8748e.mo10239a(TextureViewSurfaceTextureListenerC2325c.f8747d);
                    return;
                case 1:
                default:
                    return;
                case 2:
                    TextureViewSurfaceTextureListenerC2325c.this.f8748e.mo10243d();
                    return;
            }
        }
    }

    public TextureViewSurfaceTextureListenerC2325c() {
        this.f8752i.start();
        this.f8753j = new a(this.f8752i.getLooper());
        this.f8754k = new Handler();
        if (this.f8748e == null) {
            this.f8748e = new C2326d();
        }
    }

    /* renamed from: a */
    public static TextureViewSurfaceTextureListenerC2325c m10246a() {
        if (f8745b == null) {
            f8745b = new TextureViewSurfaceTextureListenerC2325c();
        }
        return f8745b;
    }

    /* renamed from: a */
    public static void m10247a(long j) {
        m10246a().f8748e.mo10238a(j);
    }

    /* renamed from: a */
    public static void m10248a(C2323a c2323a) {
        m10246a().f8748e.f8743a = c2323a;
    }

    /* renamed from: a */
    public static void m10249a(boolean z) {
        m10246a().f8748e.mo10240a(z);
    }

    /* renamed from: b */
    public static Object m10250b() {
        if (m10246a().f8748e.f8743a == null) {
            return null;
        }
        return m10246a().f8748e.f8743a.m10234a();
    }

    /* renamed from: c */
    public static long m10251c() {
        return m10246a().f8748e.mo10244e();
    }

    /* renamed from: d */
    public static long m10252d() {
        return m10246a().f8748e.mo10245f();
    }

    /* renamed from: e */
    public static void m10253e() {
        m10246a().f8748e.mo10242c();
    }

    /* renamed from: f */
    public static void m10254f() {
        m10246a().f8748e.mo10237a();
    }

    /* renamed from: g */
    public void m10255g() {
        Message message = new Message();
        message.what = 2;
        this.f8753j.sendMessage(message);
    }

    /* renamed from: h */
    public void m10256h() {
        m10255g();
        Message message = new Message();
        message.what = 0;
        this.f8753j.sendMessage(message);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        if (C2337o.m10265c() == null) {
            return;
        }
        C2313g.m10136a("JZVideoPlayer", "onSurfaceTextureAvailable");
        try {
            if (f8746c == null) {
                f8746c = surfaceTexture;
                m10256h();
            } else {
                f8744a.setSurfaceTexture(f8746c);
            }
        } catch (Exception e) {
            C2313g.m10138b("JZVideoPlayer", "onSurfaceTextureAvailable:" + e.getMessage());
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        return f8746c == null;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }
}
