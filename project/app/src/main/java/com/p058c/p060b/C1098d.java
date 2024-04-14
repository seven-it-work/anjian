package com.p058c.p060b;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.media.ExifInterface;
import android.view.View;
import android.widget.ImageView;
import com.p058c.p059a.AbstractC1089a;
import com.p058c.p062d.C1105a;
import com.p058c.p062d.C1106b;
import com.p058c.p062d.C1111g;
import com.p058c.p062d.InterfaceC1108d;
import com.p058c.p062d.ViewOnClickListenerC1107c;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import org.apache.http.HttpHost;

/* renamed from: com.c.b.d */
/* loaded from: classes.dex */
public final class C1098d extends AbstractRunnableC1095a<Bitmap, C1098d> {

    /* renamed from: A */
    private static int f3613A = 20;

    /* renamed from: B */
    private static int f3614B = 2500;

    /* renamed from: C */
    private static int f3615C = 160000;

    /* renamed from: D */
    private static int f3616D = 1000000;

    /* renamed from: E */
    private static boolean f3617E = false;

    /* renamed from: F */
    private static Map<String, Bitmap> f3618F = null;

    /* renamed from: G */
    private static Map<String, Bitmap> f3619G = null;

    /* renamed from: H */
    private static Map<String, Bitmap> f3620H = null;

    /* renamed from: I */
    private static HashMap<String, WeakHashMap<ImageView, C1098d>> f3621I = new HashMap<>();

    /* renamed from: R */
    private static Bitmap f3622R = Bitmap.createBitmap(1, 1, Bitmap.Config.ALPHA_8);

    /* renamed from: S */
    private static Bitmap f3623S = Bitmap.createBitmap(1, 1, Bitmap.Config.ALPHA_8);

    /* renamed from: T */
    private static final int f3624T = 300;

    /* renamed from: z */
    private static int f3625z = 20;

    /* renamed from: J */
    private WeakReference<ImageView> f3626J;

    /* renamed from: K */
    private int f3627K;

    /* renamed from: L */
    private Bitmap f3628L;

    /* renamed from: M */
    private int f3629M;

    /* renamed from: N */
    private boolean f3630N = true;

    /* renamed from: O */
    private float f3631O = Float.MAX_VALUE;

    /* renamed from: P */
    private boolean f3632P;

    /* renamed from: Q */
    private boolean f3633Q;

    /* renamed from: u */
    public int f3634u;

    /* renamed from: v */
    public int f3635v;

    /* renamed from: w */
    public File f3636w;

    /* renamed from: x */
    public Bitmap f3637x;

    /* renamed from: y */
    public float f3638y;

    public C1098d() {
        this.f3565b = Bitmap.class;
        m3854b(true).m3844a(true).f3566c = "";
    }

    /* renamed from: a */
    private static int m3895a(int i, int i2) {
        int i3 = 1;
        for (int i4 = 0; i4 < 10 && i >= i2 * 2; i4++) {
            i /= 2;
            i3 *= 2;
        }
        return i3;
    }

    /* renamed from: a */
    public static Bitmap m3896a(Context context, int i) {
        String num = Integer.toString(i);
        Bitmap m3899a = m3899a(num, 0, 0);
        if (m3899a == null && (m3899a = BitmapFactory.decodeResource(context.getResources(), i)) != null) {
            m3916a(num, 0, 0, m3899a, false);
        }
        return m3899a;
    }

    /* renamed from: a */
    private static Bitmap m3897a(Bitmap bitmap, int i) {
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        RectF rectF = new RectF(rect);
        float f = i;
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-12434878);
        canvas.drawRoundRect(rectF, f, f, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return createBitmap;
    }

    /* renamed from: a */
    private static Bitmap m3898a(View view, Bitmap bitmap, int i) {
        int i2;
        if (bitmap != null && bitmap.getWidth() == 1 && bitmap.getHeight() == 1 && bitmap != f3622R) {
            bitmap = null;
        }
        if (bitmap != null) {
            i2 = 0;
        } else if (i == -2) {
            i2 = 8;
        } else {
            if (i != -1) {
                return bitmap;
            }
            i2 = 4;
        }
        view.setVisibility(i2);
        return bitmap;
    }

    /* renamed from: a */
    private static Bitmap m3899a(String str, int i, int i2) {
        String m3923b = m3923b(str, i, i2);
        Bitmap bitmap = m3942h().get(m3923b);
        if (bitmap == null) {
            bitmap = m3944i().get(m3923b);
        }
        if (bitmap != null) {
            return bitmap;
        }
        Bitmap bitmap2 = m3946j().get(m3923b);
        if (bitmap2 == null || AbstractRunnableC1095a.f3544t != 200) {
            return bitmap2;
        }
        f3620H = null;
        return null;
    }

    /* renamed from: a */
    private static Bitmap m3900a(String str, Bitmap bitmap) {
        int i;
        if (bitmap == null) {
            return null;
        }
        try {
            i = new ExifInterface(str).getAttributeInt("Orientation", 1);
        } catch (Exception e) {
            C1105a.m4049a((Throwable) e);
            i = 1;
        }
        if (i <= 0) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        switch (i) {
            case 2:
                matrix.setScale(-1.0f, 1.0f);
                break;
            case 3:
                matrix.setRotate(180.0f);
                break;
            case 4:
                matrix.setRotate(180.0f);
                matrix.postScale(-1.0f, 1.0f);
                break;
            case 5:
                matrix.setRotate(90.0f);
                matrix.postScale(-1.0f, 1.0f);
                break;
            case 6:
                matrix.setRotate(90.0f);
                break;
            case 7:
                matrix.setRotate(-90.0f);
                matrix.postScale(-1.0f, 1.0f);
                break;
            case 8:
                matrix.setRotate(-90.0f);
                break;
        }
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        C1105a.m4061b((Object) "before", (Object) (String.valueOf(bitmap.getWidth()) + ":" + bitmap.getHeight()));
        C1105a.m4061b((Object) "after", (Object) (String.valueOf(createBitmap.getWidth()) + ":" + createBitmap.getHeight()));
        if (bitmap == createBitmap) {
            return createBitmap;
        }
        bitmap.recycle();
        return createBitmap;
    }

    /* renamed from: a */
    private static Bitmap m3901a(String str, BitmapFactory.Options options, boolean z) {
        Bitmap bitmap;
        Bitmap bitmap2;
        if (options == null) {
            options = new BitmapFactory.Options();
        }
        options.inInputShareable = true;
        options.inPurgeable = true;
        FileInputStream fileInputStream = null;
        try {
            try {
                FileInputStream fileInputStream2 = new FileInputStream(str);
                try {
                    try {
                        bitmap = BitmapFactory.decodeFileDescriptor(fileInputStream2.getFD(), null, options);
                        if (bitmap == null || !z) {
                            bitmap2 = bitmap;
                        } else {
                            try {
                                bitmap2 = m3900a(str, bitmap);
                            } catch (IOException e) {
                                e = e;
                                fileInputStream = fileInputStream2;
                                C1105a.m4065b(e);
                                C1105a.m4035a((Closeable) fileInputStream);
                                return bitmap;
                            }
                        }
                        C1105a.m4035a((Closeable) fileInputStream2);
                        return bitmap2;
                    } catch (IOException e2) {
                        e = e2;
                        bitmap = null;
                    }
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    C1105a.m4035a((Closeable) fileInputStream);
                    throw th;
                }
            } catch (IOException e3) {
                e = e3;
                bitmap = null;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* renamed from: a */
    private Bitmap m3902a(String str, byte[] bArr) {
        return m3903a(str, bArr, this.f3634u, this.f3630N, this.f3629M, this.f3633Q);
    }

    /* renamed from: a */
    private static Bitmap m3903a(String str, byte[] bArr, int i, boolean z, int i2, boolean z2) {
        BitmapFactory.Options options;
        Bitmap bitmap;
        if (str == null && bArr == null) {
            return null;
        }
        if (i > 0) {
            BitmapFactory.Options options2 = new BitmapFactory.Options();
            options2.inJustDecodeBounds = true;
            m3904a(str, bArr, options2, z2);
            int i3 = options2.outWidth;
            if (!z) {
                i3 = Math.max(i3, options2.outHeight);
            }
            int m3895a = m3895a(i3, i);
            options = new BitmapFactory.Options();
            options.inSampleSize = m3895a;
        } else {
            options = null;
        }
        try {
            bitmap = m3904a(str, bArr, options, z2);
        } catch (OutOfMemoryError e) {
            m3940g();
            C1105a.m4065b(e);
            bitmap = null;
        }
        if (i2 <= 0) {
            return bitmap;
        }
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        RectF rectF = new RectF(rect);
        float f = i2;
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-12434878);
        canvas.drawRoundRect(rectF, f, f, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return createBitmap;
    }

    /* renamed from: a */
    private static Bitmap m3904a(String str, byte[] bArr, BitmapFactory.Options options, boolean z) {
        Bitmap m3901a = str != null ? m3901a(str, options, z) : bArr != null ? BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options) : null;
        if (m3901a == null && options != null && !options.inJustDecodeBounds) {
            C1105a.m4061b((Object) "decode image failed", (Object) str);
        }
        return m3901a;
    }

    /* renamed from: a */
    private static Drawable m3905a(ImageView imageView, Bitmap bitmap, float f, float f2) {
        return f > 0.0f ? new C1111g(imageView.getResources(), bitmap, imageView, f, f2) : new BitmapDrawable(imageView.getResources(), bitmap);
    }

    /* renamed from: a */
    private C1098d m3906a(float f) {
        this.f3638y = f;
        return this;
    }

    /* renamed from: a */
    private C1098d m3907a(int i) {
        this.f3634u = i;
        return this;
    }

    /* renamed from: a */
    private C1098d m3908a(Bitmap bitmap) {
        this.f3628L = bitmap;
        return this;
    }

    /* renamed from: a */
    private C1098d m3909a(File file) {
        this.f3636w = file;
        return this;
    }

    /* renamed from: a */
    public static void m3910a(Activity activity, Context context, ImageView imageView, String str, Object obj, AbstractC1089a abstractC1089a, C1099e c1099e, HttpHost httpHost) {
        m3911a(activity, context, imageView, str, c1099e.f3639a, c1099e.f3640b, c1099e.f3643e, c1099e.f3644f, c1099e.f3641c, c1099e.f3645g, c1099e.f3646h, c1099e.f3648j, obj, abstractC1089a, c1099e.f3642d, c1099e.f3647i, httpHost);
    }

    /* renamed from: a */
    public static void m3911a(Activity activity, Context context, ImageView imageView, String str, boolean z, boolean z2, int i, int i2, Bitmap bitmap, int i3, float f, float f2, Object obj, AbstractC1089a abstractC1089a, int i4, int i5, HttpHost httpHost) {
        Bitmap m3899a = z ? m3899a(str, i, i5) : null;
        if (m3899a != null) {
            imageView.setTag(InterfaceC1108d.f3762y, str);
            ViewOnClickListenerC1107c.m4088a(obj, str, false);
            m3913a(imageView, m3899a, bitmap, i2, i3, f, f2, 4);
            return;
        }
        C1098d c1098d = new C1098d();
        c1098d.f3566c = str;
        C1098d a2 = c1098d.m3948a(imageView).m3854b(z).m3844a(z2);
        a2.f3634u = i;
        a2.f3635v = i2;
        a2.f3628L = bitmap;
        a2.f3627K = i3;
        a2.f3638y = f;
        a2.f3631O = f2;
        C1098d a3 = a2.m3838a(obj).m3836a(abstractC1089a);
        a3.f3573j = i4;
        C1098d c1098d2 = a3;
        c1098d2.f3629M = i5;
        c1098d2.f3567d = null;
        if (httpHost != null) {
            c1098d.m3840a(httpHost.getHostName(), httpHost.getPort());
        }
        if (activity != null) {
            c1098d.m3848a(activity);
        } else {
            c1098d.mo3849a(context);
        }
    }

    /* renamed from: a */
    private void m3912a(ImageView imageView, Bitmap bitmap) {
        m3914a(imageView, bitmap, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x003b, code lost:
    
        if (r11 == 3) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x003e, code lost:
    
        if (r11 == 1) goto L27;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v2, types: [android.graphics.drawable.Drawable] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v5, types: [android.graphics.drawable.TransitionDrawable] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void m3913a(android.widget.ImageView r4, android.graphics.Bitmap r5, android.graphics.Bitmap r6, int r7, int r8, float r9, float r10, int r11) {
        /*
            r0 = 0
            r1 = 1
            if (r5 == 0) goto L15
            int r2 = r5.getWidth()
            if (r2 != r1) goto L15
            int r2 = r5.getHeight()
            if (r2 != r1) goto L15
            android.graphics.Bitmap r2 = com.p058c.p060b.C1098d.f3622R
            if (r5 == r2) goto L15
            r5 = r0
        L15:
            r2 = 0
            if (r5 == 0) goto L1c
            r4.setVisibility(r2)
            goto L2a
        L1c:
            r3 = -2
            if (r7 != r3) goto L25
            r7 = 8
        L21:
            r4.setVisibility(r7)
            goto L2a
        L25:
            r3 = -1
            if (r7 != r3) goto L2a
            r7 = 4
            goto L21
        L2a:
            if (r5 != 0) goto L30
            r4.setImageBitmap(r0)
            return
        L30:
            android.graphics.drawable.Drawable r5 = m3905a(r4, r5, r9, r10)
            switch(r8) {
                case -3: goto L3a;
                case -2: goto L3e;
                case -1: goto L38;
                default: goto L37;
            }
        L37:
            goto L41
        L38:
            r7 = 1
            goto L42
        L3a:
            r7 = 3
            if (r11 != r7) goto L3e
            goto L38
        L3e:
            if (r11 != r1) goto L41
            goto L38
        L41:
            r7 = 0
        L42:
            if (r7 == 0) goto L75
            if (r6 != 0) goto L5c
            android.view.animation.AlphaAnimation r6 = new android.view.animation.AlphaAnimation
            r7 = 0
            r8 = 1065353216(0x3f800000, float:1.0)
            r6.<init>(r7, r8)
            android.view.animation.DecelerateInterpolator r7 = new android.view.animation.DecelerateInterpolator
            r7.<init>()
            r6.setInterpolator(r7)
            r7 = 300(0x12c, double:1.48E-321)
            r6.setDuration(r7)
            goto L81
        L5c:
            android.graphics.drawable.Drawable r6 = m3905a(r4, r6, r9, r10)
            r7 = 2
            android.graphics.drawable.Drawable[] r7 = new android.graphics.drawable.Drawable[r7]
            r7[r2] = r6
            r7[r1] = r5
            android.graphics.drawable.TransitionDrawable r5 = new android.graphics.drawable.TransitionDrawable
            r5.<init>(r7)
            r5.setCrossFadeEnabled(r1)
            r6 = 300(0x12c, float:4.2E-43)
            r5.startTransition(r6)
            goto L80
        L75:
            if (r8 <= 0) goto L80
            android.content.Context r6 = r4.getContext()
            android.view.animation.Animation r6 = android.view.animation.AnimationUtils.loadAnimation(r6, r8)
            goto L81
        L80:
            r6 = r0
        L81:
            r4.setImageDrawable(r5)
            if (r6 == 0) goto L91
            long r7 = android.view.animation.AnimationUtils.currentAnimationTimeMillis()
            r6.setStartTime(r7)
            r4.startAnimation(r6)
            return
        L91:
            r4.setAnimation(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p058c.p060b.C1098d.m3913a(android.widget.ImageView, android.graphics.Bitmap, android.graphics.Bitmap, int, int, float, float, int):void");
    }

    /* renamed from: a */
    private void m3914a(ImageView imageView, Bitmap bitmap, boolean z) {
        Drawable m3905a;
        if (bitmap == null) {
            m3905a = null;
        } else {
            if (!z) {
                if (this.f3576m != null) {
                    m3913a(imageView, bitmap, this.f3628L, this.f3635v, this.f3627K, this.f3638y, this.f3631O, this.f3576m.f3604r);
                    return;
                }
                return;
            }
            m3905a = m3905a(imageView, bitmap, this.f3638y, this.f3631O);
        }
        imageView.setImageDrawable(m3905a);
    }

    /* renamed from: a */
    private static void m3915a(C1098d c1098d, String str, ImageView imageView, Bitmap bitmap) {
        if (imageView == null || c1098d == null) {
            return;
        }
        if (str.equals(imageView.getTag(InterfaceC1108d.f3762y))) {
            c1098d.m3914a(imageView, bitmap, false);
        }
        c1098d.m3858c(false);
    }

    /* renamed from: a */
    private static void m3916a(String str, int i, int i2, Bitmap bitmap, boolean z) {
        if (bitmap == null) {
            return;
        }
        Map<String, Bitmap> m3946j = z ? m3946j() : bitmap.getWidth() * bitmap.getHeight() <= f3614B ? m3944i() : m3942h();
        if (i <= 0 && i2 <= 0) {
            m3946j.put(str, bitmap);
            return;
        }
        m3946j.put(m3923b(str, i, i2), bitmap);
        if (m3946j.containsKey(str)) {
            return;
        }
        m3946j.put(str, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.p058c.p060b.AbstractRunnableC1095a
    /* renamed from: a, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public void mo3851a(String str, Bitmap bitmap, C1097c c1097c) {
        ImageView imageView = this.f3626J.get();
        WeakHashMap<ImageView, C1098d> remove = f3621I.remove(str);
        if (remove == null || !remove.containsKey(imageView)) {
            m3915a(this, str, imageView, bitmap);
        }
        if (remove != null) {
            for (ImageView imageView2 : remove.keySet()) {
                C1098d c1098d = remove.get(imageView2);
                c1098d.f3576m = c1097c;
                m3915a(c1098d, str, imageView2, bitmap);
            }
        }
    }

    /* renamed from: a */
    private void m3917a(String str, ImageView imageView) {
        if (str.equals(imageView.getTag(InterfaceC1108d.f3762y)) && this.f3628L == null) {
            return;
        }
        imageView.setTag(InterfaceC1108d.f3762y, str);
        if (this.f3628L == null || m3857b(imageView.getContext())) {
            m3914a(imageView, (Bitmap) null, true);
        } else {
            m3914a(imageView, this.f3628L, true);
        }
    }

    /* renamed from: b */
    private Bitmap m3918b(File file) {
        return m3902a(file.getAbsolutePath(), (byte[]) null);
    }

    /* renamed from: b */
    private Bitmap m3919b(byte[] bArr, C1097c c1097c) {
        File file = c1097c.f3599m;
        Bitmap m3902a = m3902a(file != null ? file.getAbsolutePath() : null, bArr);
        if (m3902a == null) {
            if (this.f3635v > 0) {
                ImageView imageView = this.f3626J.get();
                if (imageView != null) {
                    String num = Integer.toString(this.f3635v);
                    Bitmap mo3853b = mo3853b(num);
                    if (mo3853b == null) {
                        m3902a = BitmapFactory.decodeResource(imageView.getResources(), this.f3635v);
                        if (m3902a != null) {
                            mo3855b(num, m3902a);
                        }
                    } else {
                        m3902a = mo3853b;
                    }
                } else {
                    m3902a = null;
                }
            } else if (this.f3635v == -2 || this.f3635v == -1) {
                m3902a = f3623S;
            } else if (this.f3635v == -3) {
                m3902a = this.f3628L;
            }
            if (c1097c.f3595i != 200) {
                this.f3632P = true;
            }
            if (c1097c.f3604r == 1 && file != null) {
                C1105a.m4041a((Object) "invalid bm from net");
                file.delete();
            }
        }
        return m3902a;
    }

    /* renamed from: b */
    private C1098d m3920b(float f) {
        this.f3631O = f;
        return this;
    }

    /* renamed from: b */
    private C1098d m3921b(int i) {
        this.f3635v = i;
        return this;
    }

    /* renamed from: b */
    private C1098d m3922b(Bitmap bitmap) {
        this.f3637x = bitmap;
        return this;
    }

    /* renamed from: b */
    private static String m3923b(String str, int i, int i2) {
        if (i > 0) {
            str = String.valueOf(str) + "#" + i;
        }
        if (i2 <= 0) {
            return str;
        }
        return String.valueOf(str) + "#" + i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.p058c.p060b.AbstractRunnableC1095a
    /* renamed from: b, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public void mo3855b(String str, Bitmap bitmap) {
        m3916a(str, this.f3634u, this.f3629M, bitmap, this.f3632P);
    }

    /* renamed from: b */
    private void m3924b(String str, ImageView imageView) {
        HashMap<String, WeakHashMap<ImageView, C1098d>> hashMap;
        WeakHashMap<ImageView, C1098d> weakHashMap;
        WeakHashMap<ImageView, C1098d> weakHashMap2 = f3621I.get(str);
        if (weakHashMap2 != null) {
            weakHashMap2.put(imageView, this);
            return;
        }
        if (f3621I.containsKey(str)) {
            weakHashMap = new WeakHashMap<>();
            weakHashMap.put(imageView, this);
            hashMap = f3621I;
        } else {
            hashMap = f3621I;
            weakHashMap = null;
        }
        hashMap.put(str, weakHashMap);
    }

    /* renamed from: b */
    private static boolean m3925b(int i, int i2) {
        switch (i) {
            case -3:
                if (i2 == 3) {
                    return true;
                }
                break;
            case -2:
                break;
            case -1:
                return true;
            default:
                return false;
        }
        return i2 == 1;
    }

    /* renamed from: c */
    public static Bitmap m3926c(String str) {
        return m3903a(str, null, 0, true, 0, false);
    }

    /* renamed from: c */
    private C1098d m3927c(int i) {
        this.f3627K = i;
        return this;
    }

    /* renamed from: d */
    private C1098d m3928d(int i) {
        this.f3629M = i;
        return this;
    }

    /* renamed from: d */
    private C1098d m3929d(boolean z) {
        this.f3633Q = z;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public static void m3930d() {
        f3621I.clear();
    }

    /* renamed from: d */
    public static boolean m3931d(String str) {
        return m3942h().containsKey(str) || m3944i().containsKey(str) || m3946j().containsKey(str);
    }

    /* renamed from: e */
    private Bitmap m3932e() {
        ImageView imageView = this.f3626J.get();
        if (imageView == null) {
            return null;
        }
        String num = Integer.toString(this.f3635v);
        Bitmap mo3853b = mo3853b(num);
        if (mo3853b != null) {
            return mo3853b;
        }
        Bitmap decodeResource = BitmapFactory.decodeResource(imageView.getResources(), this.f3635v);
        if (decodeResource == null) {
            return decodeResource;
        }
        mo3855b(num, decodeResource);
        return decodeResource;
    }

    /* renamed from: e */
    public static Bitmap m3933e(String str) {
        return m3899a(str, 0, 0);
    }

    /* renamed from: e */
    private static Matrix m3934e(int i) {
        Matrix matrix = new Matrix();
        switch (i) {
            case 2:
                matrix.setScale(-1.0f, 1.0f);
                return matrix;
            case 3:
                matrix.setRotate(180.0f);
                return matrix;
            case 4:
                matrix.setRotate(180.0f);
                break;
            case 5:
                matrix.setRotate(90.0f);
                break;
            case 6:
                matrix.setRotate(90.0f);
                return matrix;
            case 7:
                matrix.setRotate(-90.0f);
                break;
            case 8:
                matrix.setRotate(-90.0f);
                return matrix;
            default:
                return matrix;
        }
        matrix.postScale(-1.0f, 1.0f);
        return matrix;
    }

    /* renamed from: e */
    private static void m3935e(boolean z) {
        f3617E = z;
    }

    /* renamed from: f */
    private static Bitmap m3936f() {
        return f3622R;
    }

    /* renamed from: f */
    private static void m3937f(int i) {
        f3625z = i;
        m3940g();
    }

    /* renamed from: f */
    private static void m3938f(String str) {
        f3621I.remove(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.p058c.p060b.AbstractRunnableC1095a
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public Bitmap mo3853b(String str) {
        if (this.f3637x != null) {
            return this.f3637x;
        }
        if (this.f3578o) {
            return m3899a(str, this.f3634u, this.f3629M);
        }
        return null;
    }

    /* renamed from: g */
    private static void m3940g() {
        f3619G = null;
        f3618F = null;
        f3620H = null;
    }

    /* renamed from: g */
    private static void m3941g(int i) {
        f3613A = i;
        m3940g();
    }

    /* renamed from: h */
    private static Map<String, Bitmap> m3942h() {
        if (f3619G == null) {
            f3619G = Collections.synchronizedMap(new C1106b(f3613A, f3615C, f3616D));
        }
        return f3619G;
    }

    /* renamed from: h */
    private static void m3943h(int i) {
        f3615C = i;
        m3940g();
    }

    /* renamed from: i */
    private static Map<String, Bitmap> m3944i() {
        if (f3618F == null) {
            f3618F = Collections.synchronizedMap(new C1106b(f3625z, f3614B, 250000));
        }
        return f3618F;
    }

    /* renamed from: i */
    private static void m3945i(int i) {
        f3614B = i;
        m3940g();
    }

    /* renamed from: j */
    private static Map<String, Bitmap> m3946j() {
        if (f3620H == null) {
            f3620H = Collections.synchronizedMap(new C1106b(100, f3615C, 250000));
        }
        return f3620H;
    }

    /* renamed from: j */
    private static void m3947j(int i) {
        f3616D = i;
        m3940g();
    }

    /* renamed from: a */
    public final C1098d m3948a(ImageView imageView) {
        this.f3626J = new WeakReference<>(imageView);
        return this;
    }

    @Override // com.p058c.p060b.AbstractRunnableC1095a
    /* renamed from: a */
    protected final File mo3835a(File file, String str) {
        return (this.f3636w == null || !this.f3636w.exists()) ? super.mo3835a(file, str) : this.f3636w;
    }

    @Override // com.p058c.p060b.AbstractRunnableC1095a
    /* renamed from: a */
    protected final /* synthetic */ Bitmap mo3837a(File file, C1097c c1097c) {
        return m3902a(file.getAbsolutePath(), (byte[]) null);
    }

    @Override // com.p058c.p060b.AbstractRunnableC1095a
    /* renamed from: a */
    public final /* synthetic */ Bitmap mo3845a(byte[] bArr, C1097c c1097c) {
        File file = c1097c.f3599m;
        Bitmap m3902a = m3902a(file != null ? file.getAbsolutePath() : null, bArr);
        if (m3902a == null) {
            if (this.f3635v > 0) {
                ImageView imageView = this.f3626J.get();
                if (imageView != null) {
                    String num = Integer.toString(this.f3635v);
                    Bitmap mo3853b = mo3853b(num);
                    if (mo3853b == null) {
                        m3902a = BitmapFactory.decodeResource(imageView.getResources(), this.f3635v);
                        if (m3902a != null) {
                            mo3855b(num, m3902a);
                        }
                    } else {
                        m3902a = mo3853b;
                    }
                } else {
                    m3902a = null;
                }
            } else if (this.f3635v == -2 || this.f3635v == -1) {
                m3902a = f3623S;
            } else if (this.f3635v == -3) {
                m3902a = this.f3628L;
            }
            if (c1097c.f3595i != 200) {
                this.f3632P = true;
            }
            if (c1097c.f3604r == 1 && file != null) {
                C1105a.m4041a((Object) "invalid bm from net");
                file.delete();
            }
        }
        return m3902a;
    }

    @Override // com.p058c.p060b.AbstractRunnableC1095a
    /* renamed from: a */
    public final void mo3849a(Context context) {
        String str = this.f3566c;
        ImageView imageView = this.f3626J.get();
        Bitmap bitmap = null;
        if (str == null) {
            m3858c(false);
            m3914a(imageView, (Bitmap) null, false);
            return;
        }
        Bitmap mo3853b = mo3853b(str);
        if (mo3853b != null) {
            imageView.setTag(InterfaceC1108d.f3762y, str);
            C1097c c1097c = new C1097c();
            c1097c.f3604r = 4;
            this.f3576m = c1097c.m3892a();
            mo3851a(str, mo3853b, this.f3576m);
            return;
        }
        if (!str.equals(imageView.getTag(InterfaceC1108d.f3762y)) || this.f3628L != null) {
            imageView.setTag(InterfaceC1108d.f3762y, str);
            if (this.f3628L != null && !m3857b(imageView.getContext())) {
                bitmap = this.f3628L;
            }
            m3914a(imageView, bitmap, true);
        }
        if (f3621I.containsKey(str)) {
            m3858c(true);
            m3924b(str, imageView);
        } else {
            m3924b(str, imageView);
            super.mo3849a(imageView.getContext());
        }
    }

    @Override // com.p058c.p060b.AbstractRunnableC1095a
    /* renamed from: a */
    protected final /* synthetic */ void mo3850a(String str) {
        f3621I.remove(str);
    }

    @Override // com.p058c.p060b.AbstractRunnableC1095a
    /* renamed from: b */
    protected final boolean mo3856b() {
        return !f3617E;
    }
}
