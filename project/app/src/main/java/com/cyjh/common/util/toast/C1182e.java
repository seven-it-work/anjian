package com.cyjh.common.util.toast;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.media.ExifInterface;
import android.os.Build;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.FloatRange;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.v4.content.ContextCompat;
import android.support.v4.os.EnvironmentCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.view.View;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;

/* renamed from: com.cyjh.common.util.toast.e */
/* loaded from: classes.dex */
public final class C1182e {

    /* renamed from: com.cyjh.common.util.toast.e$a */
    /* loaded from: classes.dex */
    public enum a {
        TYPE_JPG("jpg"),
        TYPE_PNG("png"),
        TYPE_GIF("gif"),
        TYPE_TIFF("tiff"),
        TYPE_BMP("bmp"),
        TYPE_WEBP("webp"),
        TYPE_ICO("ico"),
        TYPE_UNKNOWN(EnvironmentCompat.MEDIA_UNKNOWN);

        String value;

        a(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    private C1182e() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    /* renamed from: a */
    private static int m4749a(BitmapFactory.Options options, int i, int i2) {
        int i3 = options.outHeight;
        int i4 = options.outWidth;
        int i5 = 1;
        while (true) {
            if (i3 <= i2 && i4 <= i) {
                return i5;
            }
            i3 >>= 1;
            i4 >>= 1;
            i5 <<= 1;
        }
    }

    /* renamed from: a */
    private static Bitmap m4750a(@DrawableRes int i) {
        Drawable drawable = ContextCompat.getDrawable(C1194q.m5135a(), i);
        if (drawable == null) {
            return null;
        }
        Canvas canvas = new Canvas();
        Bitmap createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        canvas.setBitmap(createBitmap);
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        drawable.draw(canvas);
        return createBitmap;
    }

    /* renamed from: a */
    private static Bitmap m4751a(@DrawableRes int i, int i2, int i3) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        Resources resources = C1194q.m5135a().getResources();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(resources, i, options);
        options.inSampleSize = m4749a(options, i2, i3);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeResource(resources, i, options);
    }

    /* renamed from: a */
    private static Bitmap m4752a(Bitmap bitmap, float f) {
        return m4757a(bitmap, f, 0.0f, 0, false);
    }

    /* renamed from: a */
    private static Bitmap m4753a(Bitmap bitmap, float f, float f2) {
        return m4758a(bitmap, f, f2, false);
    }

    /* renamed from: a */
    private static Bitmap m4754a(Bitmap bitmap, float f, float f2, float f3, float f4) {
        return m4755a(bitmap, f, f2, f3, f4, false);
    }

    /* renamed from: a */
    private static Bitmap m4755a(Bitmap bitmap, float f, float f2, float f3, float f4, boolean z) {
        if (m4837g(bitmap)) {
            return null;
        }
        Matrix matrix = new Matrix();
        matrix.setSkew(f, f2, f3, f4);
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        if (z && !bitmap.isRecycled() && createBitmap != bitmap) {
            bitmap.recycle();
        }
        return createBitmap;
    }

    /* renamed from: a */
    private static Bitmap m4756a(Bitmap bitmap, float f, @FloatRange(from = 0.0d) float f2, @ColorInt int i) {
        return m4757a(bitmap, f, f2, i, false);
    }

    /* renamed from: a */
    private static Bitmap m4757a(Bitmap bitmap, float f, @FloatRange(from = 0.0d) float f2, @ColorInt int i, boolean z) {
        return m4780a(bitmap, new float[]{f, f, f, f, f, f, f, f}, f2, i, z);
    }

    /* renamed from: a */
    private static Bitmap m4758a(Bitmap bitmap, float f, float f2, boolean z) {
        if (m4837g(bitmap)) {
            return null;
        }
        Matrix matrix = new Matrix();
        matrix.setScale(f, f2);
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        if (z && !bitmap.isRecycled() && createBitmap != bitmap) {
            bitmap.recycle();
        }
        return createBitmap;
    }

    /* renamed from: a */
    private static Bitmap m4759a(Bitmap bitmap, @FloatRange(from = 1.0d) float f, @ColorInt int i) {
        return m4763a(bitmap, f, i, true, 0.0f, false);
    }

    /* renamed from: a */
    private static Bitmap m4760a(Bitmap bitmap, @FloatRange(from = 1.0d) float f, @ColorInt int i, @FloatRange(from = 0.0d) float f2) {
        return m4763a(bitmap, f, i, false, f2, false);
    }

    /* renamed from: a */
    private static Bitmap m4761a(Bitmap bitmap, @FloatRange(from = 1.0d) float f, @ColorInt int i, @FloatRange(from = 0.0d) float f2, boolean z) {
        return m4763a(bitmap, f, i, false, f2, z);
    }

    /* renamed from: a */
    private static Bitmap m4762a(Bitmap bitmap, @FloatRange(from = 1.0d) float f, @ColorInt int i, boolean z) {
        return m4763a(bitmap, f, i, true, 0.0f, z);
    }

    /* renamed from: a */
    private static Bitmap m4763a(Bitmap bitmap, @FloatRange(from = 1.0d) float f, @ColorInt int i, boolean z, float f2, boolean z2) {
        return m4764a(bitmap, f, i, z, new float[]{f2, f2, f2, f2, f2, f2, f2, f2}, z2);
    }

    /* renamed from: a */
    private static Bitmap m4764a(Bitmap bitmap, @FloatRange(from = 1.0d) float f, @ColorInt int i, boolean z, float[] fArr, boolean z2) {
        if (m4837g(bitmap)) {
            return null;
        }
        if (!z2) {
            bitmap = bitmap.copy(bitmap.getConfig(), true);
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Canvas canvas = new Canvas(bitmap);
        Paint paint = new Paint(1);
        paint.setColor(i);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(f);
        if (z) {
            canvas.drawCircle(width / 2.0f, height / 2.0f, (Math.min(width, height) / 2.0f) - (f / 2.0f), paint);
            return bitmap;
        }
        RectF rectF = new RectF(0.0f, 0.0f, width, height);
        float f2 = f / 2.0f;
        rectF.inset(f2, f2);
        Path path = new Path();
        path.addRoundRect(rectF, fArr, Path.Direction.CW);
        canvas.drawPath(path, paint);
        return bitmap;
    }

    /* renamed from: a */
    private static Bitmap m4765a(Bitmap bitmap, @FloatRange(from = 1.0d) float f, @ColorInt int i, float[] fArr) {
        return m4764a(bitmap, f, i, false, fArr, false);
    }

    /* renamed from: a */
    private static Bitmap m4766a(Bitmap bitmap, @FloatRange(from = 1.0d) float f, @ColorInt int i, float[] fArr, boolean z) {
        return m4764a(bitmap, f, i, false, fArr, z);
    }

    /* renamed from: a */
    private static Bitmap m4767a(Bitmap bitmap, float f, boolean z) {
        return m4757a(bitmap, f, 0.0f, 0, z);
    }

    /* renamed from: a */
    private static Bitmap m4768a(@NonNull Bitmap bitmap, @ColorInt int i) {
        if (m4837g(bitmap)) {
            return null;
        }
        Bitmap copy = bitmap.copy(bitmap.getConfig(), true);
        new Canvas(copy).drawColor(i, PorterDuff.Mode.DARKEN);
        return copy;
    }

    /* renamed from: a */
    private static Bitmap m4769a(Bitmap bitmap, int i, float f, float f2) {
        if (m4837g(bitmap)) {
            return null;
        }
        if (i == 0) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        matrix.setRotate(i, f, f2);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    /* renamed from: a */
    private static Bitmap m4770a(Bitmap bitmap, int i, int i2) {
        return m4772a(bitmap, i, i2, false);
    }

    /* renamed from: a */
    private static Bitmap m4771a(Bitmap bitmap, int i, int i2, int i3, int i4) {
        if (m4837g(bitmap)) {
            return null;
        }
        return Bitmap.createBitmap(bitmap, i, i2, i3, i4);
    }

    /* renamed from: a */
    private static Bitmap m4772a(Bitmap bitmap, int i, int i2, boolean z) {
        if (m4837g(bitmap)) {
            return null;
        }
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, i, i2, true);
        if (z && !bitmap.isRecycled() && createScaledBitmap != bitmap) {
            bitmap.recycle();
        }
        return createScaledBitmap;
    }

    /* renamed from: a */
    private static Bitmap m4773a(Bitmap bitmap, int i, boolean z) {
        int i2;
        int[] iArr;
        Bitmap copy = z ? bitmap : bitmap.copy(bitmap.getConfig(), true);
        int i3 = i <= 0 ? 1 : i;
        int width = copy.getWidth();
        int height = copy.getHeight();
        int i4 = width * height;
        int[] iArr2 = new int[i4];
        copy.getPixels(iArr2, 0, width, 0, 0, width, height);
        int i5 = width - 1;
        int i6 = height - 1;
        int i7 = i3 + i3 + 1;
        int[] iArr3 = new int[i4];
        int[] iArr4 = new int[i4];
        int[] iArr5 = new int[i4];
        int[] iArr6 = new int[Math.max(width, height)];
        int i8 = (i7 + 1) >> 1;
        int i9 = i8 * i8;
        int i10 = i9 * 256;
        int[] iArr7 = new int[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            iArr7[i11] = i11 / i9;
        }
        int[][] iArr8 = (int[][]) Array.newInstance((Class<?>) int.class, i7, 3);
        int i12 = i3 + 1;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (i13 < height) {
            Bitmap bitmap2 = copy;
            int i16 = -i3;
            int i17 = 0;
            int i18 = 0;
            int i19 = 0;
            int i20 = 0;
            int i21 = 0;
            int i22 = 0;
            int i23 = 0;
            int i24 = 0;
            int i25 = 0;
            while (i16 <= i3) {
                int i26 = i6;
                int i27 = height;
                int i28 = iArr2[i14 + Math.min(i5, Math.max(i16, 0))];
                int[] iArr9 = iArr8[i16 + i3];
                iArr9[0] = (i28 & 16711680) >> 16;
                iArr9[1] = (i28 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                iArr9[2] = i28 & 255;
                int abs = i12 - Math.abs(i16);
                i17 += iArr9[0] * abs;
                i18 += iArr9[1] * abs;
                i19 += iArr9[2] * abs;
                if (i16 > 0) {
                    i20 += iArr9[0];
                    i21 += iArr9[1];
                    i22 += iArr9[2];
                } else {
                    i23 += iArr9[0];
                    i24 += iArr9[1];
                    i25 += iArr9[2];
                }
                i16++;
                height = i27;
                i6 = i26;
            }
            int i29 = i6;
            int i30 = height;
            int i31 = i3;
            int i32 = 0;
            while (i32 < width) {
                iArr3[i14] = iArr7[i17];
                iArr4[i14] = iArr7[i18];
                iArr5[i14] = iArr7[i19];
                int i33 = i17 - i23;
                int i34 = i18 - i24;
                int i35 = i19 - i25;
                int[] iArr10 = iArr8[((i31 - i3) + i7) % i7];
                int i36 = i23 - iArr10[0];
                int i37 = i24 - iArr10[1];
                int i38 = i25 - iArr10[2];
                if (i13 == 0) {
                    iArr = iArr7;
                    iArr6[i32] = Math.min(i32 + i3 + 1, i5);
                } else {
                    iArr = iArr7;
                }
                int i39 = iArr2[i15 + iArr6[i32]];
                iArr10[0] = (i39 & 16711680) >> 16;
                iArr10[1] = (i39 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                iArr10[2] = i39 & 255;
                int i40 = i20 + iArr10[0];
                int i41 = i21 + iArr10[1];
                int i42 = i22 + iArr10[2];
                i17 = i33 + i40;
                i18 = i34 + i41;
                i19 = i35 + i42;
                i31 = (i31 + 1) % i7;
                int[] iArr11 = iArr8[i31 % i7];
                i23 = i36 + iArr11[0];
                i24 = i37 + iArr11[1];
                i25 = i38 + iArr11[2];
                i20 = i40 - iArr11[0];
                i21 = i41 - iArr11[1];
                i22 = i42 - iArr11[2];
                i14++;
                i32++;
                iArr7 = iArr;
            }
            i15 += width;
            i13++;
            copy = bitmap2;
            height = i30;
            i6 = i29;
        }
        int i43 = i6;
        Bitmap bitmap3 = copy;
        int i44 = height;
        int[] iArr12 = iArr7;
        int i45 = 0;
        while (i45 < width) {
            int i46 = -i3;
            int i47 = i46 * width;
            int i48 = 0;
            int i49 = 0;
            int i50 = 0;
            int i51 = 0;
            int i52 = 0;
            int i53 = 0;
            int i54 = 0;
            int i55 = 0;
            int i56 = 0;
            while (i46 <= i3) {
                int[] iArr13 = iArr6;
                int max = Math.max(0, i47) + i45;
                int[] iArr14 = iArr8[i46 + i3];
                iArr14[0] = iArr3[max];
                iArr14[1] = iArr4[max];
                iArr14[2] = iArr5[max];
                int abs2 = i12 - Math.abs(i46);
                i48 += iArr3[max] * abs2;
                i49 += iArr4[max] * abs2;
                i50 += iArr5[max] * abs2;
                if (i46 > 0) {
                    i51 += iArr14[0];
                    i52 += iArr14[1];
                    i53 += iArr14[2];
                } else {
                    i54 += iArr14[0];
                    i55 += iArr14[1];
                    i56 += iArr14[2];
                }
                int i57 = i43;
                if (i46 < i57) {
                    i47 += width;
                }
                i46++;
                i43 = i57;
                iArr6 = iArr13;
            }
            int[] iArr15 = iArr6;
            int i58 = i43;
            int i59 = i52;
            int i60 = i53;
            int i61 = i44;
            int i62 = 0;
            int i63 = i3;
            int i64 = i51;
            int i65 = i50;
            int i66 = i49;
            int i67 = i48;
            int i68 = i45;
            while (i62 < i61) {
                iArr2[i68] = (iArr2[i68] & (-16777216)) | (iArr12[i67] << 16) | (iArr12[i66] << 8) | iArr12[i65];
                int i69 = i67 - i54;
                int i70 = i66 - i55;
                int i71 = i65 - i56;
                int[] iArr16 = iArr8[((i63 - i3) + i7) % i7];
                int i72 = i54 - iArr16[0];
                int i73 = i55 - iArr16[1];
                int i74 = i56 - iArr16[2];
                if (i45 == 0) {
                    i2 = i3;
                    iArr15[i62] = Math.min(i62 + i12, i58) * width;
                } else {
                    i2 = i3;
                }
                int i75 = iArr15[i62] + i45;
                iArr16[0] = iArr3[i75];
                iArr16[1] = iArr4[i75];
                iArr16[2] = iArr5[i75];
                int i76 = i64 + iArr16[0];
                int i77 = i59 + iArr16[1];
                int i78 = i60 + iArr16[2];
                i67 = i69 + i76;
                i66 = i70 + i77;
                i65 = i71 + i78;
                i63 = (i63 + 1) % i7;
                int[] iArr17 = iArr8[i63];
                i54 = i72 + iArr17[0];
                i55 = i73 + iArr17[1];
                i56 = i74 + iArr17[2];
                i64 = i76 - iArr17[0];
                i59 = i77 - iArr17[1];
                i60 = i78 - iArr17[2];
                i68 += width;
                i62++;
                i3 = i2;
            }
            i45++;
            i43 = i58;
            i44 = i61;
            iArr6 = iArr15;
        }
        bitmap3.setPixels(iArr2, 0, width, 0, 0, width, i44);
        return bitmap3;
    }

    /* renamed from: a */
    private static Bitmap m4774a(Bitmap bitmap, Bitmap bitmap2, int i, int i2, int i3) {
        if (m4837g(bitmap)) {
            return null;
        }
        Bitmap copy = bitmap.copy(bitmap.getConfig(), true);
        if (!m4837g(bitmap2)) {
            Paint paint = new Paint(1);
            Canvas canvas = new Canvas(copy);
            paint.setAlpha(i3);
            canvas.drawBitmap(bitmap2, i, i2, paint);
        }
        return copy;
    }

    /* renamed from: a */
    private static Bitmap m4775a(Bitmap bitmap, Boolean bool) {
        if (m4837g(bitmap)) {
            return null;
        }
        Bitmap extractAlpha = bitmap.extractAlpha();
        if (bool.booleanValue() && !bitmap.isRecycled() && extractAlpha != bitmap) {
            bitmap.recycle();
        }
        return extractAlpha;
    }

    /* renamed from: a */
    private static Bitmap m4776a(Bitmap bitmap, String str, float f, @ColorInt int i, float f2, float f3) {
        if (m4837g(bitmap) || str == null) {
            return null;
        }
        Bitmap copy = bitmap.copy(bitmap.getConfig(), true);
        Paint paint = new Paint(1);
        Canvas canvas = new Canvas(copy);
        paint.setColor(i);
        paint.setTextSize(f);
        paint.getTextBounds(str, 0, str.length(), new Rect());
        canvas.drawText(str, f2, f3 + f, paint);
        return copy;
    }

    /* renamed from: a */
    private static Bitmap m4777a(Bitmap bitmap, String str, int i, @ColorInt int i2, float f, float f2) {
        float f3 = i;
        if (m4837g(bitmap) || str == null) {
            return null;
        }
        Bitmap copy = bitmap.copy(bitmap.getConfig(), true);
        Paint paint = new Paint(1);
        Canvas canvas = new Canvas(copy);
        paint.setColor(i2);
        paint.setTextSize(f3);
        paint.getTextBounds(str, 0, str.length(), new Rect());
        canvas.drawText(str, f, f2 + f3, paint);
        return copy;
    }

    /* renamed from: a */
    private static Bitmap m4778a(Bitmap bitmap, boolean z) {
        return m4807b(bitmap, 0, 0, z);
    }

    /* renamed from: a */
    private static Bitmap m4779a(Bitmap bitmap, float[] fArr, @FloatRange(from = 0.0d) float f, @ColorInt int i) {
        return m4780a(bitmap, fArr, f, i, false);
    }

    /* renamed from: a */
    private static Bitmap m4780a(Bitmap bitmap, float[] fArr, @FloatRange(from = 0.0d) float f, @ColorInt int i, boolean z) {
        if (m4837g(bitmap)) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Paint paint = new Paint(1);
        Bitmap createBitmap = Bitmap.createBitmap(width, height, bitmap.getConfig());
        paint.setShader(new BitmapShader(bitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP));
        Canvas canvas = new Canvas(createBitmap);
        RectF rectF = new RectF(0.0f, 0.0f, width, height);
        float f2 = f / 2.0f;
        rectF.inset(f2, f2);
        Path path = new Path();
        path.addRoundRect(rectF, fArr, Path.Direction.CW);
        canvas.drawPath(path, paint);
        if (f > 0.0f) {
            paint.setShader(null);
            paint.setColor(i);
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(f);
            paint.setStrokeCap(Paint.Cap.ROUND);
            canvas.drawPath(path, paint);
        }
        if (z && !bitmap.isRecycled() && createBitmap != bitmap) {
            bitmap.recycle();
        }
        return createBitmap;
    }

    /* renamed from: a */
    private static Bitmap m4781a(@Nullable Drawable drawable) {
        Bitmap createBitmap;
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            if (bitmapDrawable.getBitmap() != null) {
                return bitmapDrawable.getBitmap();
            }
        }
        if (drawable.getIntrinsicWidth() <= 0 || drawable.getIntrinsicHeight() <= 0) {
            createBitmap = Bitmap.createBitmap(1, 1, drawable.getOpacity() != -1 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
        } else {
            createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), drawable.getOpacity() != -1 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
        }
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return createBitmap;
    }

    /* renamed from: a */
    private static Bitmap m4782a(View view) {
        Bitmap createBitmap;
        if (view == null) {
            return null;
        }
        boolean isDrawingCacheEnabled = view.isDrawingCacheEnabled();
        boolean willNotCacheDrawing = view.willNotCacheDrawing();
        view.setDrawingCacheEnabled(true);
        view.setWillNotCacheDrawing(false);
        Bitmap drawingCache = view.getDrawingCache();
        if (drawingCache == null || drawingCache.isRecycled()) {
            view.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
            view.buildDrawingCache();
            Bitmap drawingCache2 = view.getDrawingCache();
            if (drawingCache2 == null || drawingCache2.isRecycled()) {
                createBitmap = Bitmap.createBitmap(view.getMeasuredWidth(), view.getMeasuredHeight(), Bitmap.Config.RGB_565);
                view.draw(new Canvas(createBitmap));
            } else {
                createBitmap = Bitmap.createBitmap(drawingCache2);
            }
        } else {
            createBitmap = Bitmap.createBitmap(drawingCache);
        }
        view.setWillNotCacheDrawing(willNotCacheDrawing);
        view.setDrawingCacheEnabled(isDrawingCacheEnabled);
        return createBitmap;
    }

    /* renamed from: a */
    private static Bitmap m4783a(File file) {
        if (file == null) {
            return null;
        }
        return BitmapFactory.decodeFile(file.getAbsolutePath());
    }

    /* renamed from: a */
    private static Bitmap m4784a(File file, int i, int i2) {
        if (file == null) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        options.inSampleSize = m4749a(options, i, i2);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFile(file.getAbsolutePath(), options);
    }

    /* renamed from: a */
    private static Bitmap m4785a(FileDescriptor fileDescriptor) {
        if (fileDescriptor == null) {
            return null;
        }
        return BitmapFactory.decodeFileDescriptor(fileDescriptor);
    }

    /* renamed from: a */
    private static Bitmap m4786a(FileDescriptor fileDescriptor, int i, int i2) {
        if (fileDescriptor == null) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
        options.inSampleSize = m4749a(options, i, i2);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
    }

    /* renamed from: a */
    private static Bitmap m4787a(InputStream inputStream) {
        if (inputStream == null) {
            return null;
        }
        return BitmapFactory.decodeStream(inputStream);
    }

    /* renamed from: a */
    private static Bitmap m4788a(InputStream inputStream, int i, int i2) {
        if (inputStream == null) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(inputStream, null, options);
        options.inSampleSize = m4749a(options, i, i2);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeStream(inputStream, null, options);
    }

    /* renamed from: a */
    private static Bitmap m4789a(String str) {
        if (C1196s.m5200b(str)) {
            return null;
        }
        return BitmapFactory.decodeFile(str);
    }

    /* renamed from: a */
    private static Bitmap m4790a(String str, int i, int i2) {
        if (C1196s.m5200b(str)) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inSampleSize = m4749a(options, i, i2);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFile(str, options);
    }

    /* renamed from: a */
    private static Bitmap m4791a(@Nullable byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        return BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    private static Bitmap m4792a(byte[] bArr, int i) {
        if (bArr.length == 0) {
            return null;
        }
        return BitmapFactory.decodeByteArray(bArr, i, bArr.length);
    }

    /* renamed from: a */
    private static Bitmap m4793a(byte[] bArr, int i, int i2, int i3) {
        if (bArr.length == 0) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(bArr, i, bArr.length, options);
        options.inSampleSize = m4749a(options, i2, i3);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeByteArray(bArr, i, bArr.length, options);
    }

    /* renamed from: a */
    private static byte[] m4794a(Bitmap bitmap) {
        return m4796a(bitmap, Bitmap.CompressFormat.PNG, 100);
    }

    /* renamed from: a */
    private static byte[] m4795a(Bitmap bitmap, long j) {
        int i = 0;
        if (m4837g(bitmap) || j <= 0) {
            return new byte[0];
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i2 = 100;
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        if (byteArrayOutputStream.size() > j) {
            byteArrayOutputStream.reset();
            bitmap.compress(Bitmap.CompressFormat.JPEG, 0, byteArrayOutputStream);
            if (byteArrayOutputStream.size() < j) {
                int i3 = 0;
                while (i < i2) {
                    i3 = (i + i2) / 2;
                    byteArrayOutputStream.reset();
                    bitmap.compress(Bitmap.CompressFormat.JPEG, i3, byteArrayOutputStream);
                    long size = byteArrayOutputStream.size();
                    if (size == j) {
                        break;
                    }
                    if (size > j) {
                        i2 = i3 - 1;
                    } else {
                        i = i3 + 1;
                    }
                }
                if (i2 == i3 - 1) {
                    byteArrayOutputStream.reset();
                    bitmap.compress(Bitmap.CompressFormat.JPEG, i, byteArrayOutputStream);
                }
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: a */
    private static byte[] m4796a(@Nullable Bitmap bitmap, @NonNull Bitmap.CompressFormat compressFormat, int i) {
        if (bitmap == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(compressFormat, i, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: a */
    private static byte[] m4797a(Drawable drawable, Bitmap.CompressFormat compressFormat, int i) {
        if (drawable == null) {
            return null;
        }
        return m4796a(m4781a(drawable), compressFormat, i);
    }

    /* renamed from: b */
    private static int m4798b(String str) {
        try {
            int attributeInt = new ExifInterface(str).getAttributeInt("Orientation", 1);
            if (attributeInt == 3) {
                return 180;
            }
            if (attributeInt != 6) {
                return attributeInt != 8 ? 0 : 270;
            }
            return 90;
        } catch (IOException e) {
            e.printStackTrace();
            return -1;
        }
    }

    @RequiresApi(17)
    /* renamed from: b */
    private static Bitmap m4799b(Bitmap bitmap, @FloatRange(from = 0.0d, fromInclusive = false, m22to = 25.0d) float f) {
        return m4802b(bitmap, f, false);
    }

    /* renamed from: b */
    private static Bitmap m4800b(Bitmap bitmap, float f, float f2) {
        return m4755a(bitmap, f, f2, 0.0f, 0.0f, false);
    }

    /* renamed from: b */
    private static Bitmap m4801b(Bitmap bitmap, float f, float f2, boolean z) {
        return m4755a(bitmap, f, f2, 0.0f, 0.0f, z);
    }

    @RequiresApi(17)
    /* renamed from: b */
    private static Bitmap m4802b(Bitmap bitmap, @FloatRange(from = 0.0d, fromInclusive = false, m22to = 25.0d) float f, boolean z) {
        RenderScript renderScript;
        if (!z) {
            bitmap = bitmap.copy(bitmap.getConfig(), true);
        }
        try {
            renderScript = RenderScript.create(C1194q.m5135a());
        } catch (Throwable th) {
            th = th;
            renderScript = null;
        }
        try {
            renderScript.setMessageHandler(new RenderScript.RSMessageHandler());
            Allocation createFromBitmap = Allocation.createFromBitmap(renderScript, bitmap, Allocation.MipmapControl.MIPMAP_NONE, 1);
            Allocation createTyped = Allocation.createTyped(renderScript, createFromBitmap.getType());
            ScriptIntrinsicBlur create = ScriptIntrinsicBlur.create(renderScript, Element.U8_4(renderScript));
            create.setInput(createFromBitmap);
            create.setRadius(f);
            create.forEach(createTyped);
            createTyped.copyTo(bitmap);
            if (renderScript != null) {
                renderScript.destroy();
            }
            return bitmap;
        } catch (Throwable th2) {
            th = th2;
            if (renderScript != null) {
                renderScript.destroy();
            }
            throw th;
        }
    }

    /* renamed from: b */
    private static Bitmap m4803b(@NonNull Bitmap bitmap, @ColorInt int i) {
        if (m4837g(bitmap)) {
            return null;
        }
        Bitmap copy = bitmap.copy(bitmap.getConfig(), true);
        new Canvas(copy).drawColor(i, PorterDuff.Mode.DARKEN);
        return copy;
    }

    /* renamed from: b */
    private static Bitmap m4804b(Bitmap bitmap, int i, float f, float f2) {
        if (m4837g(bitmap)) {
            return null;
        }
        if (i == 0) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        matrix.setRotate(i, f, f2);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    /* renamed from: b */
    private static Bitmap m4805b(Bitmap bitmap, @IntRange(from = 0) int i, @ColorInt int i2) {
        return m4807b(bitmap, i, i2, false);
    }

    /* renamed from: b */
    private static Bitmap m4806b(Bitmap bitmap, int i, int i2, int i3, int i4) {
        if (m4837g(bitmap)) {
            return null;
        }
        return Bitmap.createBitmap(bitmap, i, i2, i3, i4);
    }

    /* renamed from: b */
    private static Bitmap m4807b(Bitmap bitmap, @IntRange(from = 0) int i, @ColorInt int i2, boolean z) {
        if (m4837g(bitmap)) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int min = Math.min(width, height);
        Paint paint = new Paint(1);
        Bitmap createBitmap = Bitmap.createBitmap(width, height, bitmap.getConfig());
        float f = min;
        float f2 = f / 2.0f;
        float f3 = width;
        float f4 = height;
        RectF rectF = new RectF(0.0f, 0.0f, f3, f4);
        rectF.inset((width - min) / 2.0f, (height - min) / 2.0f);
        Matrix matrix = new Matrix();
        matrix.setTranslate(rectF.left, rectF.top);
        if (width != height) {
            matrix.preScale(f / f3, f / f4);
        }
        BitmapShader bitmapShader = new BitmapShader(bitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        Canvas canvas = new Canvas(createBitmap);
        canvas.drawRoundRect(rectF, f2, f2, paint);
        if (i > 0) {
            paint.setShader(null);
            paint.setColor(i2);
            paint.setStyle(Paint.Style.STROKE);
            float f5 = i;
            paint.setStrokeWidth(f5);
            canvas.drawCircle(f3 / 2.0f, f4 / 2.0f, f2 - (f5 / 2.0f), paint);
        }
        if (z && !bitmap.isRecycled() && createBitmap != bitmap) {
            bitmap.recycle();
        }
        return createBitmap;
    }

    /* renamed from: b */
    private static Bitmap m4808b(Bitmap bitmap, Bitmap bitmap2, int i, int i2, int i3) {
        if (m4837g(bitmap)) {
            return null;
        }
        Bitmap copy = bitmap.copy(bitmap.getConfig(), true);
        if (!m4837g(bitmap2)) {
            Paint paint = new Paint(1);
            Canvas canvas = new Canvas(copy);
            paint.setAlpha(i3);
            canvas.drawBitmap(bitmap2, i, i2, paint);
        }
        return copy;
    }

    /* renamed from: b */
    private static Drawable m4809b(@Nullable Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return new BitmapDrawable(C1194q.m5135a().getResources(), bitmap);
    }

    /* renamed from: b */
    private static Drawable m4810b(byte[] bArr) {
        Bitmap decodeByteArray = (bArr == null || bArr.length == 0) ? null : BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
        if (decodeByteArray == null) {
            return null;
        }
        return new BitmapDrawable(C1194q.m5135a().getResources(), decodeByteArray);
    }

    /* renamed from: b */
    private static boolean m4811b(File file) {
        if (file == null || !file.exists()) {
            return false;
        }
        return m4820c(file.getPath());
    }

    /* renamed from: b */
    private static byte[] m4812b(Bitmap bitmap, long j) {
        int i = 0;
        if (m4837g(bitmap) || j <= 0) {
            return new byte[0];
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i2 = 100;
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        if (byteArrayOutputStream.size() > j) {
            byteArrayOutputStream.reset();
            bitmap.compress(Bitmap.CompressFormat.JPEG, 0, byteArrayOutputStream);
            if (byteArrayOutputStream.size() < j) {
                int i3 = 0;
                while (i < i2) {
                    i3 = (i + i2) / 2;
                    byteArrayOutputStream.reset();
                    bitmap.compress(Bitmap.CompressFormat.JPEG, i3, byteArrayOutputStream);
                    long size = byteArrayOutputStream.size();
                    if (size == j) {
                        break;
                    }
                    if (size > j) {
                        i2 = i3 - 1;
                    } else {
                        i = i3 + 1;
                    }
                }
                if (i2 == i3 - 1) {
                    byteArrayOutputStream.reset();
                    bitmap.compress(Bitmap.CompressFormat.JPEG, i, byteArrayOutputStream);
                }
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: b */
    private static byte[] m4813b(@Nullable Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        return m4796a(m4781a(drawable), Bitmap.CompressFormat.PNG, 100);
    }

    /* renamed from: c */
    private static Bitmap m4814c(Bitmap bitmap) {
        return m4807b(bitmap, 0, 0, false);
    }

    /* renamed from: c */
    private static Bitmap m4815c(Bitmap bitmap, @FloatRange(from = 0.0d, fromInclusive = false, m22to = 1.0d) float f, @FloatRange(from = 0.0d, fromInclusive = false, m22to = 25.0d) float f2) {
        return m4825d(bitmap, f, f2, false);
    }

    /* renamed from: c */
    private static Bitmap m4816c(Bitmap bitmap, @FloatRange(from = 0.0d, fromInclusive = false, m22to = 1.0d) float f, @FloatRange(from = 0.0d, fromInclusive = false, m22to = 25.0d) float f2, boolean z) {
        return m4825d(bitmap, f, f2, z);
    }

    /* renamed from: c */
    private static Bitmap m4817c(Bitmap bitmap, int i) {
        if (m4837g(bitmap)) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Matrix matrix = new Matrix();
        matrix.preScale(1.0f, -1.0f);
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, height - i, width, i, matrix, false);
        Bitmap createBitmap2 = Bitmap.createBitmap(width, height + i, bitmap.getConfig());
        Canvas canvas = new Canvas(createBitmap2);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        float f = height + 0;
        canvas.drawBitmap(createBitmap, 0.0f, f, (Paint) null);
        Paint paint = new Paint(1);
        paint.setShader(new LinearGradient(0.0f, height, 0.0f, createBitmap2.getHeight() + 0, 1895825407, (int) ViewCompat.MEASURED_SIZE_MASK, Shader.TileMode.MIRROR));
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
        canvas.drawRect(0.0f, f, width, createBitmap2.getHeight(), paint);
        if (!createBitmap.isRecycled()) {
            createBitmap.recycle();
        }
        return createBitmap2;
    }

    /* renamed from: c */
    private static Bitmap m4818c(Bitmap bitmap, int i, int i2) {
        return m4772a(bitmap, i, i2, false);
    }

    /* renamed from: c */
    private static Bitmap m4819c(Bitmap bitmap, int i, int i2, boolean z) {
        return m4772a(bitmap, i, i2, z);
    }

    /* renamed from: c */
    private static boolean m4820c(String str) {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            if (options.outWidth > 0) {
                if (options.outHeight > 0) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    /* renamed from: c */
    private static boolean m4821c(byte[] bArr) {
        return bArr.length >= 2 && bArr[0] == -1 && bArr[1] == -40;
    }

    /* renamed from: c */
    private static int[] m4822c(File file) {
        if (file == null) {
            return new int[]{0, 0};
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        return new int[]{options.outWidth, options.outHeight};
    }

    /* renamed from: d */
    private static Bitmap m4823d(Bitmap bitmap) {
        Boolean bool = false;
        if (m4837g(bitmap)) {
            return null;
        }
        Bitmap extractAlpha = bitmap.extractAlpha();
        if (bool.booleanValue() && !bitmap.isRecycled() && extractAlpha != bitmap) {
            bitmap.recycle();
        }
        return extractAlpha;
    }

    /* renamed from: d */
    private static Bitmap m4824d(Bitmap bitmap, float f, float f2) {
        return m4758a(bitmap, f, f2, false);
    }

    /* renamed from: d */
    private static Bitmap m4825d(Bitmap bitmap, @FloatRange(from = 0.0d, fromInclusive = false, m22to = 1.0d) float f, @FloatRange(from = 0.0d, fromInclusive = false, m22to = 25.0d) float f2, boolean z) {
        if (m4837g(bitmap)) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Matrix matrix = new Matrix();
        matrix.setScale(f, f);
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        Paint paint = new Paint(3);
        Canvas canvas = new Canvas();
        paint.setColorFilter(new PorterDuffColorFilter(0, PorterDuff.Mode.SRC_ATOP));
        canvas.scale(f, f);
        canvas.drawBitmap(createBitmap, 0.0f, 0.0f, paint);
        Bitmap m4802b = Build.VERSION.SDK_INT >= 17 ? m4802b(createBitmap, f2, z) : m4773a(createBitmap, (int) f2, z);
        if (f == 1.0f) {
            if (z && !bitmap.isRecycled() && m4802b != bitmap) {
                bitmap.recycle();
            }
            return m4802b;
        }
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(m4802b, width, height, true);
        if (!m4802b.isRecycled()) {
            m4802b.recycle();
        }
        if (z && !bitmap.isRecycled() && createScaledBitmap != bitmap) {
            bitmap.recycle();
        }
        return createScaledBitmap;
    }

    /* renamed from: d */
    private static Bitmap m4826d(Bitmap bitmap, int i) {
        if (m4837g(bitmap)) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Matrix matrix = new Matrix();
        matrix.preScale(1.0f, -1.0f);
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, height - i, width, i, matrix, false);
        Bitmap createBitmap2 = Bitmap.createBitmap(width, height + i, bitmap.getConfig());
        Canvas canvas = new Canvas(createBitmap2);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        float f = height + 0;
        canvas.drawBitmap(createBitmap, 0.0f, f, (Paint) null);
        Paint paint = new Paint(1);
        paint.setShader(new LinearGradient(0.0f, height, 0.0f, createBitmap2.getHeight() + 0, 1895825407, (int) ViewCompat.MEASURED_SIZE_MASK, Shader.TileMode.MIRROR));
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
        canvas.drawRect(0.0f, f, width, createBitmap2.getHeight(), paint);
        if (!createBitmap.isRecycled()) {
            createBitmap.recycle();
        }
        return createBitmap2;
    }

    /* renamed from: d */
    private static Bitmap m4827d(Bitmap bitmap, int i, int i2) {
        if (m4837g(bitmap)) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length, options);
        options.inSampleSize = m4749a(options, i, i2);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length, options);
    }

    /* renamed from: d */
    private static boolean m4828d(byte[] bArr) {
        return bArr.length >= 6 && bArr[0] == 71 && bArr[1] == 73 && bArr[2] == 70 && bArr[3] == 56 && (bArr[4] == 55 || bArr[4] == 57) && bArr[5] == 97;
    }

    /* renamed from: e */
    private static Bitmap m4829e(Bitmap bitmap) {
        if (m4837g(bitmap)) {
            return null;
        }
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(0.0f);
        paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        return createBitmap;
    }

    /* renamed from: e */
    private static Bitmap m4830e(Bitmap bitmap, float f, float f2, boolean z) {
        return m4758a(bitmap, f, f2, z);
    }

    /* renamed from: e */
    private static Bitmap m4831e(Bitmap bitmap, int i) {
        return m4773a(bitmap, i, false);
    }

    /* renamed from: e */
    private static Bitmap m4832e(Bitmap bitmap, int i, int i2) {
        if (m4837g(bitmap)) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length, options);
        options.inSampleSize = m4749a(options, i, i2);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length, options);
    }

    /* renamed from: e */
    private static boolean m4833e(byte[] bArr) {
        return bArr.length >= 8 && bArr[0] == -119 && bArr[1] == 80 && bArr[2] == 78 && bArr[3] == 71 && bArr[4] == 13 && bArr[5] == 10 && bArr[6] == 26 && bArr[7] == 10;
    }

    /* renamed from: f */
    private static Bitmap m4834f(Bitmap bitmap) {
        if (m4837g(bitmap)) {
            return null;
        }
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(0.0f);
        paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        return createBitmap;
    }

    /* renamed from: f */
    private static boolean m4835f(byte[] bArr) {
        return bArr.length >= 2 && bArr[0] == 66 && bArr[1] == 77;
    }

    /* renamed from: f */
    private static byte[] m4836f(Bitmap bitmap, @IntRange(from = 0, m23to = 100) int i) {
        if (m4837g(bitmap)) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.JPEG, i, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: g */
    private static boolean m4837g(Bitmap bitmap) {
        return bitmap == null || bitmap.getWidth() == 0 || bitmap.getHeight() == 0;
    }

    /* renamed from: g */
    private static byte[] m4838g(Bitmap bitmap, @IntRange(from = 0, m23to = 100) int i) {
        if (m4837g(bitmap)) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.JPEG, i, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: h */
    private static Bitmap m4839h(Bitmap bitmap, int i) {
        if (m4837g(bitmap)) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = i;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        return BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length, options);
    }

    /* renamed from: i */
    private static Bitmap m4840i(Bitmap bitmap, int i) {
        if (m4837g(bitmap)) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = i;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        return BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length, options);
    }
}
