package com.bumptech.glide.load.p049d.p050a;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.util.Log;
import com.bumptech.glide.load.p042b.InterfaceC0925u;
import com.bumptech.glide.load.p042b.p043a.C0876f;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0875e;
import java.util.concurrent.locks.Lock;

/* renamed from: com.bumptech.glide.load.d.a.p */
/* loaded from: classes.dex */
final class C0981p {

    /* renamed from: a */
    private static final String f3070a = "DrawableToBitmap";

    /* renamed from: b */
    private static final InterfaceC0875e f3071b = new C0876f() { // from class: com.bumptech.glide.load.d.a.p.1
        @Override // com.bumptech.glide.load.p042b.p043a.C0876f, com.bumptech.glide.load.p042b.p043a.InterfaceC0875e
        /* renamed from: a */
        public final void mo2469a(Bitmap bitmap) {
        }
    };

    private C0981p() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: a */
    public static InterfaceC0925u<Bitmap> m2926a(InterfaceC0875e interfaceC0875e, Drawable drawable, int i, int i2) {
        Bitmap bitmap;
        Drawable current = drawable.getCurrent();
        boolean z = false;
        if (current instanceof BitmapDrawable) {
            bitmap = ((BitmapDrawable) current).getBitmap();
        } else if (current instanceof Animatable) {
            bitmap = null;
        } else {
            bitmap = m2927b(interfaceC0875e, current, i, i2);
            z = true;
        }
        if (!z) {
            interfaceC0875e = f3071b;
        }
        return C0971f.m2867a(bitmap, interfaceC0875e);
    }

    @Nullable
    /* renamed from: b */
    private static Bitmap m2927b(InterfaceC0875e interfaceC0875e, Drawable drawable, int i, int i2) {
        if (i == Integer.MIN_VALUE && drawable.getIntrinsicWidth() <= 0) {
            if (Log.isLoggable(f3070a, 5)) {
                Log.w(f3070a, "Unable to draw " + drawable + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic width");
            }
            return null;
        }
        if (i2 == Integer.MIN_VALUE && drawable.getIntrinsicHeight() <= 0) {
            if (Log.isLoggable(f3070a, 5)) {
                Log.w(f3070a, "Unable to draw " + drawable + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic height");
            }
            return null;
        }
        if (drawable.getIntrinsicWidth() > 0) {
            i = drawable.getIntrinsicWidth();
        }
        if (drawable.getIntrinsicHeight() > 0) {
            i2 = drawable.getIntrinsicHeight();
        }
        Lock m2950a = C0991z.m2950a();
        m2950a.lock();
        Bitmap mo2466a = interfaceC0875e.mo2466a(i, i2, Bitmap.Config.ARGB_8888);
        try {
            Canvas canvas = new Canvas(mo2466a);
            drawable.setBounds(0, 0, i, i2);
            drawable.draw(canvas);
            canvas.setBitmap(null);
            return mo2466a;
        } finally {
            m2950a.unlock();
        }
    }
}
