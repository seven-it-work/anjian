package com.bumptech.glide.load.p049d.p050a;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0875e;
import com.bumptech.glide.util.C1084i;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* renamed from: com.bumptech.glide.load.d.a.z */
/* loaded from: classes.dex */
public final class C0991z {

    /* renamed from: a */
    public static final int f3100a = 6;

    /* renamed from: b */
    private static final String f3101b = "TransformationUtils";

    /* renamed from: d */
    private static final int f3103d = 7;

    /* renamed from: f */
    private static final Paint f3105f;

    /* renamed from: g */
    private static final Set<String> f3106g;

    /* renamed from: h */
    private static final Lock f3107h;

    /* renamed from: c */
    private static final Paint f3102c = new Paint(6);

    /* renamed from: e */
    private static final Paint f3104e = new Paint(7);

    /* renamed from: com.bumptech.glide.load.d.a.z$a */
    /* loaded from: classes.dex */
    private static final class a implements Lock {
        a() {
        }

        @Override // java.util.concurrent.locks.Lock
        public final void lock() {
        }

        @Override // java.util.concurrent.locks.Lock
        public final void lockInterruptibly() throws InterruptedException {
        }

        @Override // java.util.concurrent.locks.Lock
        @NonNull
        public final Condition newCondition() {
            throw new UnsupportedOperationException("Should not be called");
        }

        @Override // java.util.concurrent.locks.Lock
        public final boolean tryLock() {
            return true;
        }

        @Override // java.util.concurrent.locks.Lock
        public final boolean tryLock(long j, @NonNull TimeUnit timeUnit) throws InterruptedException {
            return true;
        }

        @Override // java.util.concurrent.locks.Lock
        public final void unlock() {
        }
    }

    static {
        HashSet hashSet = new HashSet(Arrays.asList("XT1085", "XT1092", "XT1093", "XT1094", "XT1095", "XT1096", "XT1097", "XT1098", "XT1031", "XT1028", "XT937C", "XT1032", "XT1008", "XT1033", "XT1035", "XT1034", "XT939G", "XT1039", "XT1040", "XT1042", "XT1045", "XT1063", "XT1064", "XT1068", "XT1069", "XT1072", "XT1077", "XT1078", "XT1079"));
        f3106g = hashSet;
        f3107h = hashSet.contains(Build.MODEL) ? new ReentrantLock() : new a();
        Paint paint = new Paint(7);
        f3105f = paint;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    }

    private C0991z() {
    }

    /* renamed from: a */
    public static int m2944a(int i) {
        switch (i) {
            case 3:
            case 4:
                return 180;
            case 5:
            case 6:
                return 90;
            case 7:
            case 8:
                return 270;
            default:
                return 0;
        }
    }

    @NonNull
    /* renamed from: a */
    private static Bitmap.Config m2945a(@NonNull Bitmap bitmap) {
        return (Build.VERSION.SDK_INT < 26 || !Bitmap.Config.RGBA_F16.equals(bitmap.getConfig())) ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGBA_F16;
    }

    /* renamed from: a */
    private static Bitmap m2946a(@NonNull Bitmap bitmap, int i) {
        if (i != 0) {
            try {
                Matrix matrix = new Matrix();
                matrix.setRotate(i);
                return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            } catch (Exception e) {
                if (Log.isLoggable(f3101b, 6)) {
                    Log.e(f3101b, "Exception when trying to orient image", e);
                }
            }
        }
        return bitmap;
    }

    /* renamed from: a */
    private static Bitmap m2947a(@NonNull InterfaceC0875e interfaceC0875e, @NonNull Bitmap bitmap) {
        Bitmap.Config m2945a = m2945a(bitmap);
        if (m2945a.equals(bitmap.getConfig())) {
            return bitmap;
        }
        Bitmap mo2466a = interfaceC0875e.mo2466a(bitmap.getWidth(), bitmap.getHeight(), m2945a);
        new Canvas(mo2466a).drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        return mo2466a;
    }

    /* renamed from: a */
    public static Bitmap m2948a(@NonNull InterfaceC0875e interfaceC0875e, @NonNull Bitmap bitmap, int i) {
        if (!m2958b(i)) {
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
        RectF rectF = new RectF(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight());
        matrix.mapRect(rectF);
        Bitmap mo2466a = interfaceC0875e.mo2466a(Math.round(rectF.width()), Math.round(rectF.height()), m2955b(bitmap));
        matrix.postTranslate(-rectF.left, -rectF.top);
        m2953a(bitmap, mo2466a, matrix);
        return mo2466a;
    }

    /* renamed from: a */
    public static Bitmap m2949a(@NonNull InterfaceC0875e interfaceC0875e, @NonNull Bitmap bitmap, int i, int i2) {
        float width;
        float f;
        if (bitmap.getWidth() == i && bitmap.getHeight() == i2) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        float f2 = 0.0f;
        if (bitmap.getWidth() * i2 > bitmap.getHeight() * i) {
            width = i2 / bitmap.getHeight();
            f = (i - (bitmap.getWidth() * width)) * 0.5f;
        } else {
            width = i / bitmap.getWidth();
            f2 = (i2 - (bitmap.getHeight() * width)) * 0.5f;
            f = 0.0f;
        }
        matrix.setScale(width, width);
        matrix.postTranslate((int) (f + 0.5f), (int) (f2 + 0.5f));
        Bitmap mo2466a = interfaceC0875e.mo2466a(i, i2, m2955b(bitmap));
        m2952a(bitmap, mo2466a);
        m2953a(bitmap, mo2466a, matrix);
        return mo2466a;
    }

    /* renamed from: a */
    public static Lock m2950a() {
        return f3107h;
    }

    @VisibleForTesting
    /* renamed from: a */
    private static void m2951a(int i, Matrix matrix) {
        switch (i) {
            case 2:
                matrix.setScale(-1.0f, 1.0f);
                return;
            case 3:
                matrix.setRotate(180.0f);
                return;
            case 4:
                matrix.setRotate(180.0f);
                break;
            case 5:
                matrix.setRotate(90.0f);
                break;
            case 6:
                matrix.setRotate(90.0f);
                return;
            case 7:
                matrix.setRotate(-90.0f);
                break;
            case 8:
                matrix.setRotate(-90.0f);
                return;
            default:
                return;
        }
        matrix.postScale(-1.0f, 1.0f);
    }

    /* renamed from: a */
    private static void m2952a(Bitmap bitmap, Bitmap bitmap2) {
        bitmap2.setHasAlpha(bitmap.hasAlpha());
    }

    /* renamed from: a */
    private static void m2953a(@NonNull Bitmap bitmap, @NonNull Bitmap bitmap2, Matrix matrix) {
        f3107h.lock();
        try {
            Canvas canvas = new Canvas(bitmap2);
            canvas.drawBitmap(bitmap, matrix, f3102c);
            canvas.setBitmap(null);
        } finally {
            f3107h.unlock();
        }
    }

    /* renamed from: a */
    private static void m2954a(Canvas canvas) {
        canvas.setBitmap(null);
    }

    @NonNull
    /* renamed from: b */
    private static Bitmap.Config m2955b(@NonNull Bitmap bitmap) {
        return bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888;
    }

    /* renamed from: b */
    public static Bitmap m2956b(@NonNull InterfaceC0875e interfaceC0875e, @NonNull Bitmap bitmap, int i) {
        C1084i.m3473a(i > 0, "roundingRadius must be greater than 0.");
        Bitmap.Config m2945a = m2945a(bitmap);
        Bitmap m2947a = m2947a(interfaceC0875e, bitmap);
        Bitmap mo2466a = interfaceC0875e.mo2466a(m2947a.getWidth(), m2947a.getHeight(), m2945a);
        mo2466a.setHasAlpha(true);
        BitmapShader bitmapShader = new BitmapShader(m2947a, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setShader(bitmapShader);
        RectF rectF = new RectF(0.0f, 0.0f, mo2466a.getWidth(), mo2466a.getHeight());
        f3107h.lock();
        try {
            Canvas canvas = new Canvas(mo2466a);
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            float f = i;
            canvas.drawRoundRect(rectF, f, f, paint);
            canvas.setBitmap(null);
            f3107h.unlock();
            if (!m2947a.equals(bitmap)) {
                interfaceC0875e.mo2469a(m2947a);
            }
            return mo2466a;
        } catch (Throwable th) {
            f3107h.unlock();
            throw th;
        }
    }

    /* renamed from: b */
    public static Bitmap m2957b(@NonNull InterfaceC0875e interfaceC0875e, @NonNull Bitmap bitmap, int i, int i2) {
        if (bitmap.getWidth() == i && bitmap.getHeight() == i2) {
            if (Log.isLoggable(f3101b, 2)) {
                Log.v(f3101b, "requested target size matches input, returning input");
            }
            return bitmap;
        }
        float min = Math.min(i / bitmap.getWidth(), i2 / bitmap.getHeight());
        int round = Math.round(bitmap.getWidth() * min);
        int round2 = Math.round(bitmap.getHeight() * min);
        if (bitmap.getWidth() == round && bitmap.getHeight() == round2) {
            if (Log.isLoggable(f3101b, 2)) {
                Log.v(f3101b, "adjusted target size matches input, returning input");
            }
            return bitmap;
        }
        Bitmap mo2466a = interfaceC0875e.mo2466a((int) (bitmap.getWidth() * min), (int) (bitmap.getHeight() * min), m2955b(bitmap));
        m2952a(bitmap, mo2466a);
        if (Log.isLoggable(f3101b, 2)) {
            Log.v(f3101b, "request: " + i + "x" + i2);
            Log.v(f3101b, "toFit:   " + bitmap.getWidth() + "x" + bitmap.getHeight());
            Log.v(f3101b, "toReuse: " + mo2466a.getWidth() + "x" + mo2466a.getHeight());
            StringBuilder sb = new StringBuilder("minPct:   ");
            sb.append(min);
            Log.v(f3101b, sb.toString());
        }
        Matrix matrix = new Matrix();
        matrix.setScale(min, min);
        m2953a(bitmap, mo2466a, matrix);
        return mo2466a;
    }

    /* renamed from: b */
    public static boolean m2958b(int i) {
        switch (i) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            default:
                return false;
        }
    }

    @Deprecated
    /* renamed from: c */
    private static Bitmap m2959c(@NonNull InterfaceC0875e interfaceC0875e, @NonNull Bitmap bitmap, int i) {
        return m2956b(interfaceC0875e, bitmap, i);
    }

    /* renamed from: c */
    public static Bitmap m2960c(@NonNull InterfaceC0875e interfaceC0875e, @NonNull Bitmap bitmap, int i, int i2) {
        if (bitmap.getWidth() > i || bitmap.getHeight() > i2) {
            if (Log.isLoggable(f3101b, 2)) {
                Log.v(f3101b, "requested target size too big for input, fit centering instead");
            }
            return m2957b(interfaceC0875e, bitmap, i, i2);
        }
        if (Log.isLoggable(f3101b, 2)) {
            Log.v(f3101b, "requested target size larger or equal to input, returning input");
        }
        return bitmap;
    }

    /* renamed from: d */
    public static Bitmap m2961d(@NonNull InterfaceC0875e interfaceC0875e, @NonNull Bitmap bitmap, int i, int i2) {
        int min = Math.min(i, i2);
        float f = min;
        float f2 = f / 2.0f;
        float width = bitmap.getWidth();
        float height = bitmap.getHeight();
        float max = Math.max(f / width, f / height);
        float f3 = width * max;
        float f4 = max * height;
        float f5 = (f - f3) / 2.0f;
        float f6 = (f - f4) / 2.0f;
        RectF rectF = new RectF(f5, f6, f3 + f5, f4 + f6);
        Bitmap m2947a = m2947a(interfaceC0875e, bitmap);
        Bitmap mo2466a = interfaceC0875e.mo2466a(min, min, m2945a(bitmap));
        mo2466a.setHasAlpha(true);
        f3107h.lock();
        try {
            Canvas canvas = new Canvas(mo2466a);
            canvas.drawCircle(f2, f2, f2, f3104e);
            canvas.drawBitmap(m2947a, (Rect) null, rectF, f3105f);
            canvas.setBitmap(null);
            f3107h.unlock();
            if (!m2947a.equals(bitmap)) {
                interfaceC0875e.mo2469a(m2947a);
            }
            return mo2466a;
        } catch (Throwable th) {
            f3107h.unlock();
            throw th;
        }
    }
}
