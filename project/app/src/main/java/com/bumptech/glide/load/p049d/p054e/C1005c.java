package com.bumptech.glide.load.p049d.p054e;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import android.view.Gravity;
import com.bumptech.glide.ComponentCallbacks2C0838f;
import com.bumptech.glide.load.InterfaceC1028m;
import com.bumptech.glide.load.p049d.p054e.C1009g;
import com.bumptech.glide.p036c.InterfaceC0818b;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.util.C1084i;
import com.bumptech.glide.util.C1086k;
import java.nio.ByteBuffer;

/* renamed from: com.bumptech.glide.load.d.e.c */
/* loaded from: classes.dex */
public class C1005c extends Drawable implements Animatable, C1009g.b {

    /* renamed from: a */
    public static final int f3130a = -1;

    /* renamed from: b */
    public static final int f3131b = 0;

    /* renamed from: e */
    private static final int f3132e = 119;

    /* renamed from: c */
    final a f3133c;

    /* renamed from: d */
    boolean f3134d;

    /* renamed from: f */
    private boolean f3135f;

    /* renamed from: g */
    private boolean f3136g;

    /* renamed from: h */
    private boolean f3137h;

    /* renamed from: i */
    private int f3138i;

    /* renamed from: j */
    private int f3139j;

    /* renamed from: k */
    private boolean f3140k;

    /* renamed from: l */
    private Paint f3141l;

    /* renamed from: m */
    private Rect f3142m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.d.e.c$a */
    /* loaded from: classes.dex */
    public static final class a extends Drawable.ConstantState {

        /* renamed from: a */
        @VisibleForTesting
        final C1009g f3143a;

        a(C1009g c1009g) {
            this.f3143a = c1009g;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public final Drawable newDrawable() {
            return new C1005c(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public final Drawable newDrawable(Resources resources) {
            return newDrawable();
        }
    }

    @Deprecated
    private C1005c(Context context, InterfaceC0818b interfaceC0818b, InterfaceC1028m<Bitmap> interfaceC1028m, int i, int i2, Bitmap bitmap) {
        this(context, interfaceC0818b, interfaceC1028m, i, i2, bitmap, (byte) 0);
    }

    public C1005c(Context context, InterfaceC0818b interfaceC0818b, InterfaceC1028m<Bitmap> interfaceC1028m, int i, int i2, Bitmap bitmap, byte b2) {
        this(new a(new C1009g(ComponentCallbacks2C0838f.m2307b(context), interfaceC0818b, i, i2, interfaceC1028m, bitmap)));
    }

    C1005c(a aVar) {
        this.f3137h = true;
        this.f3139j = -1;
        this.f3133c = (a) C1084i.m3470a(aVar, "Argument must not be null");
    }

    @VisibleForTesting
    private C1005c(C1009g c1009g, Paint paint) {
        this(new a(c1009g));
        this.f3141l = paint;
    }

    /* renamed from: a */
    private void m2994a(int i) {
        if (i <= 0 && i != -1 && i != 0) {
            throw new IllegalArgumentException("Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC");
        }
        if (i != 0) {
            this.f3139j = i;
            return;
        }
        int mo2216l = this.f3133c.f3143a.f3146a.mo2216l();
        if (mo2216l == 0) {
            mo2216l = -1;
        }
        this.f3139j = mo2216l;
    }

    /* renamed from: a */
    private void m2995a(InterfaceC1028m<Bitmap> interfaceC1028m, Bitmap bitmap) {
        this.f3133c.f3143a.m3034a(interfaceC1028m, bitmap);
    }

    /* renamed from: a */
    private void m2996a(boolean z) {
        this.f3135f = z;
    }

    /* renamed from: d */
    private int m2997d() {
        C1009g c1009g = this.f3133c.f3143a;
        return c1009g.f3146a.mo2217m() + C1086k.m3475a(c1009g.m3035b().getWidth(), c1009g.m3035b().getHeight(), c1009g.m3035b().getConfig());
    }

    /* renamed from: e */
    private InterfaceC1028m<Bitmap> m2998e() {
        return this.f3133c.f3143a.f3155j;
    }

    /* renamed from: f */
    private int m2999f() {
        return this.f3133c.f3143a.m3032a();
    }

    /* renamed from: g */
    private int m3000g() {
        C1009g c1009g = this.f3133c.f3143a;
        if (c1009g.f3151f != null) {
            return c1009g.f3151f.f3162a;
        }
        return -1;
    }

    /* renamed from: h */
    private void m3001h() {
        this.f3138i = 0;
    }

    /* renamed from: i */
    private void m3002i() {
        C1084i.m3473a(!this.f3135f, "You cannot restart a currently running animation.");
        C1009g c1009g = this.f3133c.f3143a;
        C1084i.m3473a(!c1009g.f3149d, "Can't restart a running animation");
        c1009g.f3150e = true;
        if (c1009g.f3156k != null) {
            c1009g.f3148c.m3214a((Target<?>) c1009g.f3156k);
            c1009g.f3156k = null;
        }
        start();
    }

    /* renamed from: j */
    private void m3003j() {
        C1084i.m3473a(!this.f3134d, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.");
        if (this.f3133c.f3143a.m3032a() != 1) {
            if (this.f3135f) {
                return;
            }
            this.f3135f = true;
            C1009g c1009g = this.f3133c.f3143a;
            if (c1009g.f3152g) {
                throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
            }
            if (c1009g.f3147b.contains(this)) {
                throw new IllegalStateException("Cannot subscribe twice in a row");
            }
            boolean isEmpty = c1009g.f3147b.isEmpty();
            c1009g.f3147b.add(this);
            if (isEmpty && !c1009g.f3149d) {
                c1009g.f3149d = true;
                c1009g.f3152g = false;
                c1009g.m3036c();
            }
        }
        invalidateSelf();
    }

    /* renamed from: k */
    private void m3004k() {
        this.f3135f = false;
        C1009g c1009g = this.f3133c.f3143a;
        c1009g.f3147b.remove(this);
        if (c1009g.f3147b.isEmpty()) {
            c1009g.f3149d = false;
        }
    }

    /* renamed from: l */
    private Rect m3005l() {
        if (this.f3142m == null) {
            this.f3142m = new Rect();
        }
        return this.f3142m;
    }

    /* renamed from: m */
    private Paint m3006m() {
        if (this.f3141l == null) {
            this.f3141l = new Paint(2);
        }
        return this.f3141l;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: n */
    private Drawable.Callback m3007n() {
        Drawable.Callback callback = getCallback();
        while (callback instanceof Drawable) {
            callback = ((Drawable) callback).getCallback();
        }
        return callback;
    }

    /* renamed from: o */
    private void m3008o() {
        this.f3134d = true;
        C1009g c1009g = this.f3133c.f3143a;
        c1009g.f3147b.clear();
        c1009g.m3037d();
        c1009g.f3149d = false;
        if (c1009g.f3151f != null) {
            c1009g.f3148c.m3214a((Target<?>) c1009g.f3151f);
            c1009g.f3151f = null;
        }
        if (c1009g.f3153h != null) {
            c1009g.f3148c.m3214a((Target<?>) c1009g.f3153h);
            c1009g.f3153h = null;
        }
        if (c1009g.f3156k != null) {
            c1009g.f3148c.m3214a((Target<?>) c1009g.f3156k);
            c1009g.f3156k = null;
        }
        c1009g.f3146a.mo2219o();
        c1009g.f3152g = true;
    }

    /* renamed from: p */
    private boolean m3009p() {
        return this.f3134d;
    }

    /* renamed from: a */
    public final Bitmap m3010a() {
        return this.f3133c.f3143a.f3154i;
    }

    /* renamed from: b */
    public final ByteBuffer m3011b() {
        return this.f3133c.f3143a.f3146a.mo2207c().asReadOnlyBuffer();
    }

    @Override // com.bumptech.glide.load.p049d.p054e.C1009g.b
    /* renamed from: c */
    public final void mo3012c() {
        Object callback = getCallback();
        while (callback instanceof Drawable) {
            callback = ((Drawable) callback).getCallback();
        }
        if (callback == null) {
            stop();
            invalidateSelf();
            return;
        }
        invalidateSelf();
        C1009g c1009g = this.f3133c.f3143a;
        if ((c1009g.f3151f != null ? c1009g.f3151f.f3162a : -1) == this.f3133c.f3143a.m3032a() - 1) {
            this.f3138i++;
        }
        if (this.f3139j == -1 || this.f3138i < this.f3139j) {
            return;
        }
        stop();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (this.f3134d) {
            return;
        }
        if (this.f3140k) {
            Gravity.apply(119, getIntrinsicWidth(), getIntrinsicHeight(), getBounds(), m3005l());
            this.f3140k = false;
        }
        canvas.drawBitmap(this.f3133c.f3143a.m3035b(), (Rect) null, m3005l(), m3006m());
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f3133c;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f3133c.f3143a.m3035b().getHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f3133c.f3143a.m3035b().getWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f3135f;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f3140k = true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        m3006m().setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        m3006m().setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        C1084i.m3473a(!this.f3134d, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.");
        this.f3137h = z;
        if (!z) {
            m3004k();
        } else if (this.f3136g) {
            m3003j();
        }
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f3136g = true;
        this.f3138i = 0;
        if (this.f3137h) {
            m3003j();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f3136g = false;
        m3004k();
    }
}
