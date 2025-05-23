package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.widget.EdgeEffect;

/* loaded from: classes.dex */
public final class EdgeEffectCompat {
    private static final EdgeEffectBaseImpl IMPL;
    private EdgeEffect mEdgeEffect;

    @RequiresApi(21)
    /* loaded from: classes.dex */
    static class EdgeEffectApi21Impl extends EdgeEffectBaseImpl {
        EdgeEffectApi21Impl() {
        }

        @Override // android.support.v4.widget.EdgeEffectCompat.EdgeEffectBaseImpl
        public void onPull(EdgeEffect edgeEffect, float f, float f2) {
            edgeEffect.onPull(f, f2);
        }
    }

    /* loaded from: classes.dex */
    static class EdgeEffectBaseImpl {
        EdgeEffectBaseImpl() {
        }

        public void onPull(EdgeEffect edgeEffect, float f, float f2) {
            edgeEffect.onPull(f);
        }
    }

    static {
        IMPL = Build.VERSION.SDK_INT >= 21 ? new EdgeEffectApi21Impl() : new EdgeEffectBaseImpl();
    }

    @Deprecated
    public EdgeEffectCompat(Context context) {
        this.mEdgeEffect = new EdgeEffect(context);
    }

    public static void onPull(@NonNull EdgeEffect edgeEffect, float f, float f2) {
        IMPL.onPull(edgeEffect, f, f2);
    }

    @Deprecated
    public final boolean draw(Canvas canvas) {
        return this.mEdgeEffect.draw(canvas);
    }

    @Deprecated
    public final void finish() {
        this.mEdgeEffect.finish();
    }

    @Deprecated
    public final boolean isFinished() {
        return this.mEdgeEffect.isFinished();
    }

    @Deprecated
    public final boolean onAbsorb(int i) {
        this.mEdgeEffect.onAbsorb(i);
        return true;
    }

    @Deprecated
    public final boolean onPull(float f) {
        this.mEdgeEffect.onPull(f);
        return true;
    }

    @Deprecated
    public final boolean onPull(float f, float f2) {
        IMPL.onPull(this.mEdgeEffect, f, f2);
        return true;
    }

    @Deprecated
    public final boolean onRelease() {
        this.mEdgeEffect.onRelease();
        return this.mEdgeEffect.isFinished();
    }

    @Deprecated
    public final void setSize(int i, int i2) {
        this.mEdgeEffect.setSize(i, i2);
    }
}
