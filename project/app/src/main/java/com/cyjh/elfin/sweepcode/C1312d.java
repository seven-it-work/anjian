package com.cyjh.elfin.sweepcode;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.hardware.Camera;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.p077e.p080c.C1266q;
import java.nio.charset.StandardCharsets;
import java.util.Iterator;
import net.sourceforge.zbar.Image;
import net.sourceforge.zbar.ImageScanner;
import net.sourceforge.zbar.Symbol;

/* renamed from: com.cyjh.elfin.sweepcode.d */
/* loaded from: classes.dex */
public final class C1312d {

    /* renamed from: a */
    public ImageScanner f5030a;

    /* renamed from: b */
    public b f5031b;

    /* renamed from: com.cyjh.elfin.sweepcode.d$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void mo6170a();

        /* renamed from: a */
        void mo6171a(String str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.elfin.sweepcode.d$b */
    /* loaded from: classes.dex */
    public class b extends Thread {

        /* renamed from: a */
        public boolean f5035a;

        /* renamed from: c */
        private final Image f5037c;

        /* renamed from: d */
        private final a f5038d;

        public b(Image image, a aVar) {
            this.f5037c = image;
            this.f5038d = aVar;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            super.run();
            try {
                this.f5035a = true;
                C1312d.m6163a(C1312d.this, this.f5037c, this.f5038d);
            } catch (Exception e) {
                e.printStackTrace();
                if (this.f5038d != null) {
                    this.f5038d.mo6170a();
                }
            } finally {
                this.f5035a = false;
            }
        }
    }

    static {
        System.loadLibrary("iconv");
    }

    /* renamed from: a */
    static /* synthetic */ String m6160a(C1312d c1312d, Image image) {
        if (c1312d.f5030a.scanImage(image) == 0) {
            return null;
        }
        Iterator<Symbol> it = c1312d.f5030a.getResults().iterator();
        while (it.hasNext()) {
            Symbol next = it.next();
            if (next.getType() != 0) {
                String str = Build.VERSION.SDK_INT >= 19 ? new String(next.getDataBytes(), StandardCharsets.UTF_8) : next.getData();
                if (!TextUtils.isEmpty(str)) {
                    return str;
                }
            }
        }
        return null;
    }

    /* renamed from: a */
    private String m6161a(Image image) {
        if (this.f5030a.scanImage(image) == 0) {
            return null;
        }
        Iterator<Symbol> it = this.f5030a.getResults().iterator();
        while (it.hasNext()) {
            Symbol next = it.next();
            if (next.getType() != 0) {
                String str = Build.VERSION.SDK_INT >= 19 ? new String(next.getDataBytes(), StandardCharsets.UTF_8) : next.getData();
                if (!TextUtils.isEmpty(str)) {
                    return str;
                }
            }
        }
        return null;
    }

    /* renamed from: a */
    private void m6162a() {
        this.f5030a = new ImageScanner();
        this.f5030a.setConfig(0, 256, 3);
        this.f5030a.setConfig(0, 257, 3);
    }

    /* renamed from: a */
    static /* synthetic */ void m6163a(C1312d c1312d, Image image, a aVar) throws Exception {
        if (c1312d.f5030a.scanImage(image) != 0) {
            Iterator<Symbol> it = c1312d.f5030a.getResults().iterator();
            if (it.hasNext()) {
                Symbol next = it.next();
                if (aVar != null) {
                    aVar.mo6171a(next.getData().trim());
                    return;
                }
                return;
            }
        }
        if (aVar != null) {
            aVar.mo6170a();
        }
    }

    /* renamed from: a */
    private void m6164a(final String str, final a aVar) {
        C1266q.m5808a((C1266q.d) new C1266q.b<String>() { // from class: com.cyjh.elfin.sweepcode.d.1
            /* renamed from: a */
            private void m6168a(String str2) {
                if (TextUtils.isEmpty(str2)) {
                    aVar.mo6170a();
                } else {
                    aVar.mo6171a(str2);
                }
            }

            /* renamed from: e */
            private String m6169e() throws Throwable {
                Bitmap m6167b = C1312d.m6167b(str);
                if (m6167b == null) {
                    return null;
                }
                int width = m6167b.getWidth();
                int height = m6167b.getHeight();
                Image image = new Image(width, height, "RGB4");
                int[] iArr = new int[width * height];
                m6167b.getPixels(iArr, 0, width, 0, 0, width, height);
                image.setData(iArr);
                return C1312d.m6160a(C1312d.this, image.convert("Y800"));
            }

            @Override // com.cyjh.elfin.p077e.p080c.C1266q.d
            /* renamed from: a */
            public final /* synthetic */ Object mo5887a() throws Throwable {
                Bitmap m6167b = C1312d.m6167b(str);
                if (m6167b == null) {
                    return null;
                }
                int width = m6167b.getWidth();
                int height = m6167b.getHeight();
                Image image = new Image(width, height, "RGB4");
                int[] iArr = new int[width * height];
                m6167b.getPixels(iArr, 0, width, 0, 0, width, height);
                image.setData(iArr);
                return C1312d.m6160a(C1312d.this, image.convert("Y800"));
            }

            @Override // com.cyjh.elfin.p077e.p080c.C1266q.d
            /* renamed from: a */
            public final /* synthetic */ void mo5888a(Object obj) {
                String str2 = (String) obj;
                if (TextUtils.isEmpty(str2)) {
                    aVar.mo6170a();
                } else {
                    aVar.mo6171a(str2);
                }
            }
        });
    }

    /* renamed from: a */
    private void m6165a(Image image, a aVar) throws Exception {
        if (this.f5030a.scanImage(image) != 0) {
            Iterator<Symbol> it = this.f5030a.getResults().iterator();
            if (it.hasNext()) {
                Symbol next = it.next();
                if (aVar != null) {
                    aVar.mo6171a(next.getData().trim());
                    return;
                }
                return;
            }
        }
        if (aVar != null) {
            aVar.mo6170a();
        }
    }

    /* renamed from: a */
    private void m6166a(byte[] bArr, Camera camera, View view, a aVar) {
        try {
            if (this.f5031b != null && this.f5031b.f5035a) {
                throw new Exception();
            }
            Camera.Size previewSize = camera.getParameters().getPreviewSize();
            Image image = new Image(previewSize.width, previewSize.height, "Y800");
            int m6148a = C1311c.m6148a(AppContext.m5350a());
            C1311c.m6150b(AppContext.m5350a());
            float f = (float) ((m6148a * 1.0d) / previewSize.height);
            image.setData(bArr);
            image.setCrop((int) (view.getTop() / f), (int) (view.getLeft() / f), (int) (view.getBottom() / f), (int) (view.getRight() / f));
            this.f5031b = new b(image, aVar);
            this.f5031b.start();
        } catch (Exception unused) {
            if (aVar != null) {
                aVar.mo6170a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static Bitmap m6167b(String str) {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            int i = 1;
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            int i2 = options.outHeight / 400;
            if (i2 > 0) {
                i = i2;
            }
            options.inSampleSize = i;
            options.inJustDecodeBounds = false;
            return BitmapFactory.decodeFile(str, options);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
