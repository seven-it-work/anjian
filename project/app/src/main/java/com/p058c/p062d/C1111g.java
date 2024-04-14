package com.p058c.p062d;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.drawable.BitmapDrawable;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

/* renamed from: com.c.d.g */
/* loaded from: classes.dex */
public final class C1111g extends BitmapDrawable {

    /* renamed from: a */
    private float f3772a;

    /* renamed from: b */
    private WeakReference<ImageView> f3773b;

    /* renamed from: c */
    private boolean f3774c;

    /* renamed from: d */
    private Matrix f3775d;

    /* renamed from: e */
    private int f3776e;

    /* renamed from: f */
    private float f3777f;

    public C1111g(Resources resources, Bitmap bitmap, ImageView imageView, float f, float f2) {
        super(resources, bitmap);
        this.f3773b = new WeakReference<>(imageView);
        this.f3772a = f;
        this.f3777f = f2;
        imageView.setScaleType(ImageView.ScaleType.MATRIX);
        imageView.setImageMatrix(new Matrix());
        m4109a(imageView, bitmap, false);
    }

    /* renamed from: a */
    private float m4104a(int i, int i2) {
        return this.f3777f != Float.MAX_VALUE ? (1.0f - this.f3777f) / 2.0f : ((1.5f - Math.max(1.0f, Math.min(1.5f, i2 / i))) / 2.0f) + 0.25f;
    }

    /* renamed from: a */
    private int m4105a(int i, int i2, int i3) {
        float f = this.f3772a;
        if (this.f3772a == Float.MAX_VALUE) {
            f = i2 / i;
        }
        return (int) (i3 * f);
    }

    /* renamed from: a */
    private static int m4106a(ImageView imageView) {
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        int i = layoutParams != null ? layoutParams.width : 0;
        if (i <= 0) {
            i = imageView.getWidth();
        }
        return i > 0 ? (i - imageView.getPaddingLeft()) - imageView.getPaddingRight() : i;
    }

    /* renamed from: a */
    private Matrix m4107a(ImageView imageView, Bitmap bitmap) {
        float f;
        float max;
        int width = bitmap.getWidth();
        if (this.f3775d != null && width == this.f3776e) {
            return this.f3775d;
        }
        int height = bitmap.getHeight();
        int m4106a = m4106a(imageView);
        int m4105a = m4105a(width, height, m4106a);
        if (width <= 0 || height <= 0 || m4106a <= 0 || m4105a <= 0) {
            return null;
        }
        if (this.f3775d == null || width != this.f3776e) {
            this.f3775d = new Matrix();
            float f2 = 0.0f;
            if (width * m4105a >= m4106a * height) {
                float f3 = m4105a / height;
                f2 = (m4106a - (width * f3)) * 0.5f;
                f = f3;
                max = 0.0f;
            } else {
                float f4 = width;
                f = m4106a / f4;
                max = (m4105a - (height * f)) * (this.f3777f != Float.MAX_VALUE ? (1.0f - this.f3777f) / 2.0f : 0.25f + ((1.5f - Math.max(1.0f, Math.min(1.5f, height / f4))) / 2.0f));
            }
            this.f3775d.setScale(f, f);
            this.f3775d.postTranslate(f2, max);
            this.f3776e = width;
        }
        return this.f3775d;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0086  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m4108a(android.graphics.Canvas r10, android.widget.ImageView r11, android.graphics.Bitmap r12) {
        /*
            r9 = this;
            int r0 = r12.getWidth()
            android.graphics.Matrix r1 = r9.f3775d
            if (r1 == 0) goto Lc
            int r1 = r9.f3776e
            if (r0 == r1) goto L80
        Lc:
            int r1 = r12.getHeight()
            int r2 = m4106a(r11)
            int r3 = r9.m4105a(r0, r1, r2)
            if (r0 <= 0) goto L83
            if (r1 <= 0) goto L83
            if (r2 <= 0) goto L83
            if (r3 > 0) goto L21
            goto L83
        L21:
            android.graphics.Matrix r4 = r9.f3775d
            if (r4 == 0) goto L29
            int r4 = r9.f3776e
            if (r0 == r4) goto L80
        L29:
            android.graphics.Matrix r4 = new android.graphics.Matrix
            r4.<init>()
            r9.f3775d = r4
            int r4 = r0 * r3
            int r5 = r2 * r1
            r6 = 0
            if (r4 < r5) goto L45
            float r3 = (float) r3
            float r1 = (float) r1
            float r3 = r3 / r1
            float r1 = (float) r2
            float r2 = (float) r0
            float r2 = r2 * r3
            float r1 = r1 - r2
            r2 = 1056964608(0x3f000000, float:0.5)
            float r1 = r1 * r2
            r2 = r3
            goto L74
        L45:
            float r2 = (float) r2
            float r4 = (float) r0
            float r2 = r2 / r4
            float r5 = r9.f3777f
            r7 = 2139095039(0x7f7fffff, float:3.4028235E38)
            int r5 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            r7 = 1073741824(0x40000000, float:2.0)
            r8 = 1065353216(0x3f800000, float:1.0)
            if (r5 == 0) goto L5a
            float r4 = r9.f3777f
            float r8 = r8 - r4
            float r8 = r8 / r7
            goto L6b
        L5a:
            float r5 = (float) r1
            float r5 = r5 / r4
            r4 = 1069547520(0x3fc00000, float:1.5)
            float r5 = java.lang.Math.min(r4, r5)
            float r5 = java.lang.Math.max(r8, r5)
            r8 = 1048576000(0x3e800000, float:0.25)
            float r4 = r4 - r5
            float r4 = r4 / r7
            float r8 = r8 + r4
        L6b:
            float r3 = (float) r3
            float r1 = (float) r1
            float r1 = r1 * r2
            float r3 = r3 - r1
            float r1 = r3 * r8
            r6 = r1
            r1 = 0
        L74:
            android.graphics.Matrix r3 = r9.f3775d
            r3.setScale(r2, r2)
            android.graphics.Matrix r2 = r9.f3775d
            r2.postTranslate(r1, r6)
            r9.f3776e = r0
        L80:
            android.graphics.Matrix r0 = r9.f3775d
            goto L84
        L83:
            r0 = 0
        L84:
            if (r0 == 0) goto Lb1
            int r1 = r11.getPaddingTop()
            int r2 = r11.getPaddingBottom()
            int r1 = r1 + r2
            int r2 = r11.getPaddingLeft()
            int r3 = r11.getPaddingRight()
            int r2 = r2 + r3
            if (r1 > 0) goto L9c
            if (r2 <= 0) goto Laa
        L9c:
            int r3 = r11.getWidth()
            int r3 = r3 - r2
            int r2 = r11.getHeight()
            int r2 = r2 - r1
            r1 = 0
            r10.clipRect(r1, r1, r3, r2)
        Laa:
            android.graphics.Paint r1 = r9.getPaint()
            r10.drawBitmap(r12, r0, r1)
        Lb1:
            boolean r10 = r9.f3774c
            if (r10 != 0) goto Lb9
            r10 = 1
            r9.m4109a(r11, r12, r10)
        Lb9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p058c.p062d.C1111g.m4108a(android.graphics.Canvas, android.widget.ImageView, android.graphics.Bitmap):void");
    }

    /* renamed from: a */
    private void m4109a(ImageView imageView, Bitmap bitmap, boolean z) {
        int m4106a = m4106a(imageView);
        if (m4106a <= 0) {
            return;
        }
        int m4105a = m4105a(bitmap.getWidth(), bitmap.getHeight(), m4106a) + imageView.getPaddingTop() + imageView.getPaddingBottom();
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        if (layoutParams == null) {
            return;
        }
        if (m4105a != layoutParams.height) {
            layoutParams.height = m4105a;
            imageView.setLayoutParams(layoutParams);
        }
        if (z) {
            this.f3774c = true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void draw(android.graphics.Canvas r12) {
        /*
            Method dump skipped, instructions count: 216
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p058c.p062d.C1111g.draw(android.graphics.Canvas):void");
    }
}
