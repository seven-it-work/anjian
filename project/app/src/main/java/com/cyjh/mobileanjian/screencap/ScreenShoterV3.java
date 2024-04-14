package com.cyjh.mobileanjian.screencap;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.hardware.display.VirtualDisplay;
import android.media.Image;
import android.media.ImageReader;
import android.media.projection.MediaProjection;
import android.media.projection.MediaProjectionManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.WindowManager;
import com.cyjh.mq.p110d.C1684f;
import java.nio.ByteBuffer;

@TargetApi(21)
/* loaded from: classes.dex */
public final class ScreenShoterV3 {

    /* renamed from: a */
    private static final String f6476a = "ScreenShoterV3";

    /* renamed from: b */
    private Context f6477b;

    /* renamed from: c */
    private MediaProjection f6478c;

    /* renamed from: d */
    private Object f6479d;

    /* renamed from: e */
    private HandlerThread f6480e;

    /* renamed from: f */
    private Handler f6481f;

    /* renamed from: g */
    private Intent f6482g;

    /* renamed from: h */
    private ImageReader f6483h;

    /* renamed from: i */
    private VirtualDisplay f6484i;

    /* renamed from: j */
    private ScreenShotImage f6485j;

    /* renamed from: k */
    private Bitmap f6486k;

    /* renamed from: l */
    private int f6487l;

    /* renamed from: m */
    private int f6488m;

    /* renamed from: n */
    private int f6489n;

    /* renamed from: o */
    private int f6490o;

    /* renamed from: p */
    private boolean f6491p;

    /* renamed from: q */
    private boolean f6492q;

    /* renamed from: r */
    private volatile boolean f6493r;

    /* renamed from: com.cyjh.mobileanjian.screencap.ScreenShoterV3$a */
    /* loaded from: classes.dex */
    private static class C1671a {

        /* renamed from: a */
        private static final ScreenShoterV3 f6495a = new ScreenShoterV3(0);

        private C1671a() {
        }
    }

    private ScreenShoterV3() {
        this.f6479d = new Object();
        this.f6491p = false;
        this.f6492q = false;
        this.f6493r = false;
    }

    /* synthetic */ ScreenShoterV3(byte b2) {
        this();
    }

    /* renamed from: a */
    private Bitmap m7555a(int i, int i2) throws IllegalStateException {
        Image acquireLatestImage = this.f6483h.acquireLatestImage();
        if (acquireLatestImage == null) {
            return this.f6486k;
        }
        Bitmap m7557a = m7557a(acquireLatestImage, i, i2);
        this.f6486k = m7557a;
        return m7557a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00e1  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.graphics.Bitmap m7557a(android.media.Image r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 243
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.mobileanjian.screencap.ScreenShoterV3.m7557a(android.media.Image, int, int):android.graphics.Bitmap");
    }

    /* renamed from: a */
    private ScreenShotImage m7559a() throws IllegalStateException {
        Image acquireLatestImage = this.f6483h.acquireLatestImage();
        if (acquireLatestImage == null) {
            return this.f6485j;
        }
        ScreenShotImage m7565b = m7565b(acquireLatestImage);
        this.f6485j = m7565b;
        return m7565b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public ScreenShotImage m7565b(Image image) {
        try {
            ScreenShotImage screenShotImage = new ScreenShotImage();
            int width = image.getWidth();
            int height = image.getHeight();
            Image.Plane[] planes = image.getPlanes();
            ByteBuffer buffer = planes[0].getBuffer();
            int rowStride = planes[0].getRowStride();
            int pixelStride = planes[0].getPixelStride();
            byte[] bArr = new byte[buffer.capacity()];
            buffer.get(bArr);
            screenShotImage.width = width;
            screenShotImage.height = height;
            screenShotImage.rotation = this.f6490o;
            screenShotImage.rowStride = rowStride;
            screenShotImage.pixelStride = pixelStride;
            screenShotImage.data = bArr;
            if (image != null) {
                image.close();
            }
            return screenShotImage;
        } catch (Exception unused) {
            if (image == null) {
                return null;
            }
            image.close();
            return null;
        } catch (Throwable th) {
            if (image != null) {
                image.close();
            }
            throw th;
        }
    }

    /* renamed from: b */
    private synchronized void m7566b() {
        recycler();
        updateScreenSize();
        MediaProjectionManager mediaProjectionManager = (MediaProjectionManager) this.f6477b.getSystemService("media_projection");
        if (this.f6478c == null && mediaProjectionManager != null) {
            this.f6478c = mediaProjectionManager.getMediaProjection(-1, this.f6482g);
        }
        this.f6480e = new HandlerThread("imageReaderHandler");
        this.f6480e.start();
        this.f6481f = new Handler(this.f6480e.getLooper());
        C1684f.a m7702a = C1684f.m7702a("getprop phone.id");
        this.f6483h = (m7702a.f6592b == null || m7702a.f6592b.length() <= 0) ? ImageReader.newInstance(this.f6487l, this.f6488m, 1, 3) : ImageReader.newInstance(this.f6487l, this.f6488m, 2, 3);
        this.f6484i = this.f6478c.createVirtualDisplay("screen-mirror", this.f6487l, this.f6488m, this.f6489n, 16, this.f6483h.getSurface(), null, null);
        this.f6491p = true;
        if (this.f6483h != null) {
            this.f6483h.setOnImageAvailableListener(new ImageReader.OnImageAvailableListener() { // from class: com.cyjh.mobileanjian.screencap.ScreenShoterV3.1
                @Override // android.media.ImageReader.OnImageAvailableListener
                public final void onImageAvailable(ImageReader imageReader) {
                    if (ScreenShoterV3.this.f6491p) {
                        Image acquireLatestImage = ScreenShoterV3.this.f6483h.acquireLatestImage();
                        if (acquireLatestImage == null) {
                            ScreenShoterV3.this.f6493r = false;
                            return;
                        }
                        ScreenShoterV3.this.f6485j = ScreenShoterV3.this.m7565b(acquireLatestImage);
                        ScreenShoterV3.this.f6486k = ScreenShoterV3.m7557a(acquireLatestImage, 0, 0);
                        ScreenShoterV3.this.f6493r = true;
                        ScreenShoterV3.m7568c(ScreenShoterV3.this);
                        if (ScreenShoterV3.this.f6483h != null) {
                            ScreenShoterV3.this.f6483h.setOnImageAvailableListener(null, null);
                        }
                    }
                }
            }, this.f6481f);
        }
    }

    /* renamed from: c */
    private boolean m7567c() {
        return this.f6493r;
    }

    /* renamed from: c */
    static /* synthetic */ boolean m7568c(ScreenShoterV3 screenShoterV3) {
        screenShoterV3.f6491p = false;
        return false;
    }

    public static synchronized ScreenShoterV3 getInstance() {
        ScreenShoterV3 screenShoterV3;
        synchronized (ScreenShoterV3.class) {
            screenShoterV3 = C1671a.f6495a;
        }
        return screenShoterV3;
    }

    public final void init(Context context, Intent intent) {
        if (this.f6492q) {
            return;
        }
        this.f6492q = true;
        this.f6477b = context.getApplicationContext();
        this.f6482g = intent;
        this.f6489n = Resources.getSystem().getDisplayMetrics().densityDpi;
    }

    public final void init(Context context, Intent intent, MediaProjection mediaProjection) {
        if (this.f6492q) {
            return;
        }
        this.f6492q = true;
        this.f6477b = context.getApplicationContext();
        this.f6482g = intent;
        this.f6489n = Resources.getSystem().getDisplayMetrics().densityDpi;
        this.f6478c = mediaProjection;
    }

    public final boolean isInited() {
        return this.f6492q;
    }

    public final ScreenShotImage obtainScreenShotImage() {
        ScreenShotImage m7559a;
        if (this.f6493r) {
            try {
                return m7559a();
            } catch (IllegalStateException e) {
                e.printStackTrace();
            }
        }
        synchronized (this.f6479d) {
            m7566b();
            int i = 0;
            while (!this.f6493r && (i = i + 1) < 50) {
                try {
                    Thread.sleep(20L);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
            m7559a = m7559a();
        }
        return m7559a;
    }

    public final Bitmap obtainScreenShotImageReturnBitmap(int i, int i2) {
        Bitmap m7555a;
        if (this.f6493r) {
            try {
                return m7555a(i, i2);
            } catch (IllegalStateException e) {
                e.printStackTrace();
            }
        }
        synchronized (this.f6479d) {
            m7566b();
            int i3 = 0;
            while (!this.f6493r && (i3 = i3 + 1) < 50) {
                try {
                    Thread.sleep(20L);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
            m7555a = m7555a(i, i2);
        }
        return m7555a;
    }

    public final void recycler() {
        this.f6493r = false;
        this.f6491p = false;
        this.f6488m = 0;
        this.f6487l = 0;
        this.f6490o = 0;
        synchronized (this.f6479d) {
            if (this.f6480e != null) {
                this.f6480e.quit();
                this.f6480e = null;
            }
            if (this.f6481f != null) {
                this.f6481f.removeCallbacksAndMessages(null);
                this.f6481f = null;
            }
            if (this.f6478c != null) {
                this.f6478c.stop();
                this.f6478c = null;
            }
            if (this.f6484i != null) {
                this.f6484i.release();
                this.f6484i = null;
            }
            if (this.f6483h != null) {
                this.f6483h.close();
                this.f6483h = null;
            }
        }
    }

    public final void updateScreenSize() {
        WindowManager windowManager;
        if (this.f6492q) {
            int i = 0;
            this.f6493r = false;
            int[] m7570a = C1672a.m7570a(this.f6477b);
            int i2 = m7570a[0];
            int i3 = m7570a[1];
            Context context = this.f6477b;
            if (context != null && (windowManager = (WindowManager) context.getSystemService("window")) != null) {
                i = windowManager.getDefaultDisplay().getRotation();
            }
            this.f6490o = i;
            if (this.f6487l == i2 && this.f6488m == i3) {
                return;
            }
            this.f6487l = i2;
            this.f6488m = i3;
        }
    }
}
