package com.zbar.p185a.p186a;

import android.content.Context;
import android.graphics.Point;
import android.hardware.Camera;
import android.os.Build;
import android.os.Handler;
import android.util.Log;
import android.view.Display;
import android.view.SurfaceHolder;
import android.view.WindowManager;
import com.cyjh.elfin.p073a.C1225b;
import com.hjol.R;
import java.io.IOException;

/* renamed from: com.zbar.a.a.c */
/* loaded from: classes.dex */
public final class C2578c {

    /* renamed from: a */
    static final int f9990a;

    /* renamed from: j */
    private static C2578c f9991j;

    /* renamed from: b */
    public final C2577b f9992b;

    /* renamed from: c */
    public Camera f9993c;

    /* renamed from: d */
    public boolean f9994d;

    /* renamed from: e */
    public boolean f9995e;

    /* renamed from: f */
    public final boolean f9996f;

    /* renamed from: g */
    public final C2580e f9997g;

    /* renamed from: h */
    public final C2576a f9998h;

    /* renamed from: i */
    public Camera.Parameters f9999i;

    static {
        int i;
        try {
            i = Build.VERSION.SDK_INT;
        } catch (NumberFormatException unused) {
            i = C1225b.f4496ak;
        }
        f9990a = i;
    }

    private C2578c(Context context) {
        this.f9992b = new C2577b(context);
        this.f9996f = f9990a > 3;
        this.f9997g = new C2580e(this.f9992b, this.f9996f);
        this.f9998h = new C2576a();
    }

    /* renamed from: a */
    public static C2578c m11635a() {
        return f9991j;
    }

    /* renamed from: a */
    public static void m11636a(Context context) {
        if (f9991j == null) {
            f9991j = new C2578c(context);
        }
    }

    /* renamed from: a */
    private void m11637a(SurfaceHolder surfaceHolder) throws IOException {
        if (this.f9993c == null) {
            this.f9993c = Camera.open();
            if (this.f9993c == null) {
                throw new IOException();
            }
            this.f9993c.setPreviewDisplay(surfaceHolder);
            if (!this.f9994d) {
                this.f9994d = true;
                C2577b c2577b = this.f9992b;
                Camera.Parameters parameters = this.f9993c.getParameters();
                c2577b.f9988e = parameters.getPreviewFormat();
                c2577b.f9989f = parameters.get("preview-format");
                Display defaultDisplay = ((WindowManager) c2577b.f9985b.getSystemService("window")).getDefaultDisplay();
                c2577b.f9986c = new Point(defaultDisplay.getWidth(), defaultDisplay.getHeight());
                Point point = new Point();
                point.x = c2577b.f9986c.x;
                point.y = c2577b.f9986c.y;
                if (c2577b.f9986c.x < c2577b.f9986c.y) {
                    point.x = c2577b.f9986c.y;
                    point.y = c2577b.f9986c.x;
                }
                String str = parameters.get("preview-size-values");
                if (str == null) {
                    str = parameters.get("preview-size-value");
                }
                Point m11627a = str != null ? C2577b.m11627a(str, point) : null;
                if (m11627a == null) {
                    m11627a = new Point((point.x >> 3) << 3, (point.y >> 3) << 3);
                }
                c2577b.f9987d = m11627a;
            }
            C2577b c2577b2 = this.f9992b;
            Camera camera = this.f9993c;
            Camera.Parameters parameters2 = camera.getParameters();
            parameters2.setPreviewSize(c2577b2.f9987d.x, c2577b2.f9987d.y);
            if (Build.MODEL.contains("Behold II") && f9990a == 3) {
                parameters2.set("flash-value", 1);
            } else {
                parameters2.set("flash-value", 2);
            }
            parameters2.set("flash-mode", "off");
            String str2 = parameters2.get("zoom-supported");
            if (str2 == null || Boolean.parseBoolean(str2)) {
                String str3 = parameters2.get("max-zoom");
                int i = 27;
                if (str3 != null) {
                    try {
                        int parseDouble = (int) (Double.parseDouble(str3) * 10.0d);
                        if (27 > parseDouble) {
                            i = parseDouble;
                        }
                    } catch (NumberFormatException unused) {
                        Log.w(C2577b.f9982a, "Bad max-zoom: " + str3);
                    }
                }
                String str4 = parameters2.get("taking-picture-zoom-max");
                if (str4 != null) {
                    try {
                        int parseInt = Integer.parseInt(str4);
                        if (i > parseInt) {
                            i = parseInt;
                        }
                    } catch (NumberFormatException unused2) {
                        Log.w(C2577b.f9982a, "Bad taking-picture-zoom-max: " + str4);
                    }
                }
                String str5 = parameters2.get("mot-zoom-values");
                if (str5 != null) {
                    i = C2577b.m11624a(str5, i);
                }
                String str6 = parameters2.get("mot-zoom-step");
                if (str6 != null) {
                    try {
                        int parseDouble2 = (int) (Double.parseDouble(str6.trim()) * 10.0d);
                        if (parseDouble2 > 1) {
                            i -= i % parseDouble2;
                        }
                    } catch (NumberFormatException unused3) {
                    }
                }
                if (str3 != null || str5 != null) {
                    parameters2.set("zoom", String.valueOf(i / 10.0d));
                }
                if (str4 != null) {
                    parameters2.set("taking-picture-zoom", i);
                }
            }
            camera.setDisplayOrientation(90);
            camera.setParameters(parameters2);
            C2579d.m11650a();
        }
    }

    /* renamed from: b */
    private Point m11638b() {
        return this.f9992b.f9987d;
    }

    /* renamed from: c */
    private void m11639c() {
        if (this.f9993c != null) {
            C2579d.m11652b();
            this.f9993c.release();
            this.f9993c = null;
        }
    }

    /* renamed from: d */
    private void m11640d() {
        if (this.f9993c == null || this.f9995e) {
            return;
        }
        this.f9993c.startPreview();
        this.f9995e = true;
    }

    /* renamed from: e */
    private void m11641e() {
        if (this.f9993c == null || !this.f9995e) {
            return;
        }
        if (!this.f9996f) {
            this.f9993c.setPreviewCallback(null);
        }
        this.f9993c.stopPreview();
        this.f9997g.m11654a(null, 0);
        this.f9998h.m11623a(null, 0);
        this.f9995e = false;
    }

    /* renamed from: f */
    private void m11642f() {
        Log.e("zzz", "openLight1");
        if (this.f9993c != null) {
            Log.e("zzz", "openLight2");
            this.f9999i = this.f9993c.getParameters();
            this.f9999i.setFlashMode("torch");
            this.f9993c.setParameters(this.f9999i);
        }
    }

    /* renamed from: g */
    private void m11643g() {
        if (this.f9993c != null) {
            this.f9999i = this.f9993c.getParameters();
            this.f9999i.setFlashMode("off");
            this.f9993c.setParameters(this.f9999i);
        }
    }

    /* renamed from: a */
    public final void m11644a(Handler handler) {
        if (this.f9993c == null || !this.f9995e) {
            return;
        }
        this.f9997g.m11654a(handler, R.id.decode);
        if (this.f9996f) {
            this.f9993c.setOneShotPreviewCallback(this.f9997g);
        } else {
            this.f9993c.setPreviewCallback(this.f9997g);
        }
    }

    /* renamed from: b */
    public final void m11645b(Handler handler) {
        if (this.f9993c == null || !this.f9995e) {
            return;
        }
        this.f9998h.m11623a(handler, R.id.auto_focus);
        this.f9993c.autoFocus(this.f9998h);
    }
}
