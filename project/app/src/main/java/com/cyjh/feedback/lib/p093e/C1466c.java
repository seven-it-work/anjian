package com.cyjh.feedback.lib.p093e;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.DisplayMetrics;
import android.util.LruCache;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.lang.reflect.Field;
import java.util.LinkedList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Semaphore;

/* renamed from: com.cyjh.feedback.lib.e.c */
/* loaded from: classes.dex */
public class C1466c {

    /* renamed from: a */
    private static final int f5681a = 3;

    /* renamed from: b */
    private static final int f5682b = 272;

    /* renamed from: c */
    private static C1466c f5683c;

    /* renamed from: d */
    private LruCache<String, Bitmap> f5684d;

    /* renamed from: e */
    private ExecutorService f5685e;

    /* renamed from: f */
    private LinkedList<Runnable> f5686f;

    /* renamed from: h */
    private Handler f5688h;

    /* renamed from: i */
    private Handler f5689i;

    /* renamed from: j */
    private int f5690j;

    /* renamed from: k */
    private Semaphore f5691k = new Semaphore(0);

    /* renamed from: l */
    private Semaphore f5692l = new Semaphore(3);

    /* renamed from: g */
    private Thread f5687g = new AnonymousClass1();

    /* renamed from: com.cyjh.feedback.lib.e.c$1, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 extends Thread {
        AnonymousClass1() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            super.run();
            Looper.prepare();
            C1466c.this.f5688h = new Handler() { // from class: com.cyjh.feedback.lib.e.c.1.1
                @Override // android.os.Handler
                public final void handleMessage(Message message) {
                    C1466c.this.f5685e.execute(C1466c.m6811a(C1466c.this));
                    try {
                        C1466c.this.f5692l.acquire();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            };
            C1466c.this.f5691k.release();
            Looper.loop();
        }
    }

    /* renamed from: com.cyjh.feedback.lib.e.c$2, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass2 extends LruCache<String, Bitmap> {
        AnonymousClass2(int i) {
            super(i);
        }

        /* renamed from: a */
        private static int m6824a(Bitmap bitmap) {
            return bitmap.getRowBytes() * bitmap.getHeight();
        }

        @Override // android.util.LruCache
        protected final /* synthetic */ int sizeOf(String str, Bitmap bitmap) {
            Bitmap bitmap2 = bitmap;
            return bitmap2.getRowBytes() * bitmap2.getHeight();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.feedback.lib.e.c$a */
    /* loaded from: classes.dex */
    public class a {

        /* renamed from: a */
        ImageView f5700a;

        /* renamed from: b */
        String f5701b;

        /* renamed from: c */
        Bitmap f5702c;

        a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.feedback.lib.e.c$b */
    /* loaded from: classes.dex */
    public class b {

        /* renamed from: a */
        int f5704a;

        /* renamed from: b */
        int f5705b;

        b() {
        }
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* renamed from: com.cyjh.feedback.lib.e.c$c */
    /* loaded from: classes.dex */
    public static final class c {
        public static final int FIFO$789f335a = 1;
        public static final int FILO$789f335a = 2;
        private static final /* synthetic */ int[] $VALUES$3b0acc75 = {FIFO$789f335a, FILO$789f335a};

        private c(String str, int i) {
        }

        public static int[] values$69fec954() {
            return (int[]) $VALUES$3b0acc75.clone();
        }
    }

    private C1466c(int i) {
        this.f5690j = i;
        this.f5687g.start();
        this.f5684d = new AnonymousClass2(((int) Runtime.getRuntime().maxMemory()) / 8);
        this.f5686f = new LinkedList<>();
        this.f5685e = Executors.newFixedThreadPool(3);
    }

    /* renamed from: a */
    private static int m6802a(BitmapFactory.Options options, b bVar) {
        int i = options.outWidth;
        int i2 = options.outHeight;
        if (i > bVar.f5704a || i2 > bVar.f5705b) {
            return Math.max(Math.round((i * 1.0f) / bVar.f5704a), Math.round((i2 * 1.0f) / bVar.f5705b));
        }
        return 1;
    }

    /* renamed from: a */
    private static int m6803a(Object obj, String str) {
        try {
            Field declaredField = ImageView.class.getDeclaredField(str);
            declaredField.setAccessible(true);
            int i = declaredField.getInt(obj);
            if (i > 0 && i < Integer.MAX_VALUE) {
                return i;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    /* renamed from: a */
    private Bitmap m6804a(String str) {
        return this.f5684d.get(str);
    }

    /* renamed from: a */
    static /* synthetic */ Bitmap m6805a(String str, b bVar) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        int i = options.outWidth;
        int i2 = options.outHeight;
        options.inSampleSize = (i > bVar.f5704a || i2 > bVar.f5705b) ? Math.max(Math.round((i * 1.0f) / bVar.f5704a), Math.round((i2 * 1.0f) / bVar.f5705b)) : 1;
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFile(str, options);
    }

    /* renamed from: a */
    private b m6807a(ImageView imageView) {
        DisplayMetrics displayMetrics = imageView.getContext().getResources().getDisplayMetrics();
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        int width = imageView.getWidth();
        if (width <= 0) {
            width = layoutParams.width;
        }
        if (width <= 0) {
            width = m6803a(imageView, "mMaxWidth");
        }
        if (width <= 0) {
            width = displayMetrics.widthPixels;
        }
        int height = imageView.getHeight();
        if (height <= 0) {
            height = layoutParams.height;
        }
        if (height <= 0) {
            height = m6803a(imageView, "mMaxHeight");
        }
        if (height <= 0) {
            height = displayMetrics.heightPixels;
        }
        b bVar = new b();
        bVar.f5704a = width;
        bVar.f5705b = height;
        return bVar;
    }

    /* renamed from: a */
    static /* synthetic */ b m6808a(C1466c c1466c, ImageView imageView) {
        DisplayMetrics displayMetrics = imageView.getContext().getResources().getDisplayMetrics();
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        int width = imageView.getWidth();
        if (width <= 0) {
            width = layoutParams.width;
        }
        if (width <= 0) {
            width = m6803a(imageView, "mMaxWidth");
        }
        if (width <= 0) {
            width = displayMetrics.widthPixels;
        }
        int height = imageView.getHeight();
        if (height <= 0) {
            height = layoutParams.height;
        }
        if (height <= 0) {
            height = m6803a(imageView, "mMaxHeight");
        }
        if (height <= 0) {
            height = displayMetrics.heightPixels;
        }
        b bVar = new b();
        bVar.f5704a = width;
        bVar.f5705b = height;
        return bVar;
    }

    /* renamed from: a */
    public static C1466c m6809a() {
        if (f5683c == null) {
            synchronized (C1466c.class) {
                if (f5683c == null) {
                    f5683c = new C1466c(c.FILO$789f335a);
                }
            }
        }
        return f5683c;
    }

    /* renamed from: a */
    public static C1466c m6810a(int i) {
        if (f5683c == null) {
            synchronized (C1466c.class) {
                if (f5683c == null) {
                    f5683c = new C1466c(i);
                }
            }
        }
        return f5683c;
    }

    /* renamed from: a */
    static /* synthetic */ Runnable m6811a(C1466c c1466c) {
        Runnable removeLast;
        if (c.FIFO$789f335a == c1466c.f5690j) {
            removeLast = c1466c.f5686f.removeFirst();
        } else {
            if (c.FILO$789f335a != c1466c.f5690j) {
                return null;
            }
            removeLast = c1466c.f5686f.removeLast();
        }
        return removeLast;
    }

    /* renamed from: a */
    private void m6812a(int i, int i2) {
        this.f5690j = i;
        this.f5692l = new Semaphore(i2);
        this.f5687g = new AnonymousClass1();
        this.f5687g.start();
        this.f5684d = new AnonymousClass2(((int) Runtime.getRuntime().maxMemory()) / 8);
        this.f5686f = new LinkedList<>();
        this.f5685e = Executors.newFixedThreadPool(i2);
    }

    /* renamed from: a */
    private void m6813a(Bitmap bitmap, String str) {
        if (m6804a(str) != null || bitmap == null) {
            return;
        }
        this.f5684d.put(str, bitmap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m6814a(Bitmap bitmap, String str, ImageView imageView) {
        a aVar = new a();
        aVar.f5702c = bitmap;
        aVar.f5701b = str;
        aVar.f5700a = imageView;
        Message obtainMessage = this.f5689i.obtainMessage();
        obtainMessage.obj = aVar;
        this.f5689i.sendMessage(obtainMessage);
    }

    /* renamed from: a */
    static /* synthetic */ void m6815a(C1466c c1466c, Bitmap bitmap, String str) {
        if (c1466c.m6804a(str) != null || bitmap == null) {
            return;
        }
        c1466c.f5684d.put(str, bitmap);
    }

    /* renamed from: a */
    private synchronized void m6817a(Runnable runnable) {
        this.f5686f.add(runnable);
        try {
            if (this.f5688h == null) {
                this.f5691k.acquire();
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        this.f5688h.sendEmptyMessage(272);
    }

    /* renamed from: b */
    private static Bitmap m6818b(String str, b bVar) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        int i = options.outWidth;
        int i2 = options.outHeight;
        options.inSampleSize = (i > bVar.f5704a || i2 > bVar.f5705b) ? Math.max(Math.round((i * 1.0f) / bVar.f5704a), Math.round((i2 * 1.0f) / bVar.f5705b)) : 1;
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFile(str, options);
    }

    /* renamed from: b */
    private Runnable m6819b() {
        Runnable removeLast;
        if (c.FIFO$789f335a == this.f5690j) {
            removeLast = this.f5686f.removeFirst();
        } else {
            if (c.FILO$789f335a != this.f5690j) {
                return null;
            }
            removeLast = this.f5686f.removeLast();
        }
        return removeLast;
    }

    /* renamed from: a */
    public final void m6823a(final String str, final ImageView imageView) {
        imageView.setTag(str);
        if (this.f5689i == null) {
            this.f5689i = new Handler() { // from class: com.cyjh.feedback.lib.e.c.3
                @Override // android.os.Handler
                public final void handleMessage(Message message) {
                    a aVar = (a) message.obj;
                    Bitmap bitmap = aVar.f5702c;
                    String str2 = aVar.f5701b;
                    ImageView imageView2 = aVar.f5700a;
                    if (imageView2.getTag().toString().equals(str2)) {
                        imageView2.setImageBitmap(bitmap);
                    }
                }
            };
        }
        Bitmap m6804a = m6804a(str);
        if (m6804a != null) {
            m6814a(m6804a, str, imageView);
        } else {
            m6817a(new Runnable() { // from class: com.cyjh.feedback.lib.e.c.4
                @Override // java.lang.Runnable
                public final void run() {
                    Bitmap m6805a = C1466c.m6805a(str, C1466c.m6808a(C1466c.this, imageView));
                    C1466c.m6815a(C1466c.this, m6805a, str);
                    C1466c.this.m6814a(m6805a, str, imageView);
                    C1466c.this.f5692l.release();
                }
            });
        }
    }
}
