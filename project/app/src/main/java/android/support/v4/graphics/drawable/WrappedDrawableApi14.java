package android.support.v4.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

/* loaded from: classes.dex */
class WrappedDrawableApi14 extends Drawable implements Drawable.Callback, TintAwareDrawable, WrappedDrawable {
    static final PorterDuff.Mode DEFAULT_TINT_MODE = PorterDuff.Mode.SRC_IN;
    private boolean mColorFilterSet;
    private int mCurrentColor;
    private PorterDuff.Mode mCurrentMode;
    Drawable mDrawable;
    private boolean mMutated;
    DrawableWrapperState mState;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static abstract class DrawableWrapperState extends Drawable.ConstantState {
        int mChangingConfigurations;
        Drawable.ConstantState mDrawableState;
        ColorStateList mTint;
        PorterDuff.Mode mTintMode;

        /* JADX INFO: Access modifiers changed from: package-private */
        public DrawableWrapperState(@Nullable DrawableWrapperState drawableWrapperState, @Nullable Resources resources) {
            this.mTint = null;
            this.mTintMode = WrappedDrawableApi14.DEFAULT_TINT_MODE;
            if (drawableWrapperState != null) {
                this.mChangingConfigurations = drawableWrapperState.mChangingConfigurations;
                this.mDrawableState = drawableWrapperState.mDrawableState;
                this.mTint = drawableWrapperState.mTint;
                this.mTintMode = drawableWrapperState.mTintMode;
            }
        }

        boolean canConstantState() {
            return this.mDrawableState != null;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.mChangingConfigurations | (this.mDrawableState != null ? this.mDrawableState.getChangingConfigurations() : 0);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return newDrawable(null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public abstract Drawable newDrawable(@Nullable Resources resources);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class DrawableWrapperStateBase extends DrawableWrapperState {
        DrawableWrapperStateBase(@Nullable DrawableWrapperState drawableWrapperState, @Nullable Resources resources) {
            super(drawableWrapperState, resources);
        }

        @Override // android.support.v4.graphics.drawable.WrappedDrawableApi14.DrawableWrapperState, android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable(@Nullable Resources resources) {
            return new WrappedDrawableApi14(this, resources);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WrappedDrawableApi14(@Nullable Drawable drawable) {
        this.mState = mutateConstantState();
        setWrappedDrawable(drawable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WrappedDrawableApi14(@NonNull DrawableWrapperState drawableWrapperState, @Nullable Resources resources) {
        this.mState = drawableWrapperState;
        updateLocalState(resources);
    }

    private void updateLocalState(@Nullable Resources resources) {
        if (this.mState == null || this.mState.mDrawableState == null) {
            return;
        }
        setWrappedDrawable(this.mState.mDrawableState.newDrawable(resources));
    }

    private boolean updateTint(int[] iArr) {
        if (!isCompatTintEnabled()) {
            return false;
        }
        ColorStateList colorStateList = this.mState.mTint;
        PorterDuff.Mode mode = this.mState.mTintMode;
        if (colorStateList == null || mode == null) {
            this.mColorFilterSet = false;
            clearColorFilter();
        } else {
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (!this.mColorFilterSet || colorForState != this.mCurrentColor || mode != this.mCurrentMode) {
                setColorFilter(colorForState, mode);
                this.mCurrentColor = colorForState;
                this.mCurrentMode = mode;
                this.mColorFilterSet = true;
                return true;
            }
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        this.mDrawable.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | (this.mState != null ? this.mState.getChangingConfigurations() : 0) | this.mDrawable.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable.ConstantState getConstantState() {
        if (this.mState == null || !this.mState.canConstantState()) {
            return null;
        }
        this.mState.mChangingConfigurations = getChangingConfigurations();
        return this.mState;
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable getCurrent() {
        return this.mDrawable.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.mDrawable.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.mDrawable.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.mDrawable.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.mDrawable.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.mDrawable.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        return this.mDrawable.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public int[] getState() {
        return this.mDrawable.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        return this.mDrawable.getTransparentRegion();
    }

    @Override // android.support.v4.graphics.drawable.WrappedDrawable
    public final Drawable getWrappedDrawable() {
        return this.mDrawable;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        invalidateSelf();
    }

    protected boolean isCompatTintEnabled() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = (!isCompatTintEnabled() || this.mState == null) ? null : this.mState.mTint;
        return (colorStateList != null && colorStateList.isStateful()) || this.mDrawable.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        this.mDrawable.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            this.mState = mutateConstantState();
            if (this.mDrawable != null) {
                this.mDrawable.mutate();
            }
            if (this.mState != null) {
                this.mState.mDrawableState = this.mDrawable != null ? this.mDrawable.getConstantState() : null;
            }
            this.mMutated = true;
        }
        return this;
    }

    @NonNull
    DrawableWrapperState mutateConstantState() {
        return new DrawableWrapperStateBase(this.mState, null);
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        if (this.mDrawable != null) {
            this.mDrawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        return this.mDrawable.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j) {
        scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.mDrawable.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i) {
        this.mDrawable.setChangingConfigurations(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mDrawable.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.mDrawable.setDither(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.mDrawable.setFilterBitmap(z);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(@NonNull int[] iArr) {
        return updateTint(iArr) || this.mDrawable.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable, android.support.v4.graphics.drawable.TintAwareDrawable
    public void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable, android.support.v4.graphics.drawable.TintAwareDrawable
    public void setTintList(ColorStateList colorStateList) {
        this.mState.mTint = colorStateList;
        updateTint(getState());
    }

    @Override // android.graphics.drawable.Drawable, android.support.v4.graphics.drawable.TintAwareDrawable
    public void setTintMode(@NonNull PorterDuff.Mode mode) {
        this.mState.mTintMode = mode;
        updateTint(getState());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2) || this.mDrawable.setVisible(z, z2);
    }

    @Override // android.support.v4.graphics.drawable.WrappedDrawable
    public final void setWrappedDrawable(Drawable drawable) {
        if (this.mDrawable != null) {
            this.mDrawable.setCallback(null);
        }
        this.mDrawable = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            setVisible(drawable.isVisible(), true);
            setState(drawable.getState());
            setLevel(drawable.getLevel());
            setBounds(drawable.getBounds());
            if (this.mState != null) {
                this.mState.mDrawableState = drawable.getConstantState();
            }
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        unscheduleSelf(runnable);
    }
}
