package com.bumptech.glide.request.target;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.widget.ImageView;
import com.bumptech.glide.request.p056a.InterfaceC1055f;

/* loaded from: classes.dex */
public abstract class ImageViewTarget<Z> extends ViewTarget<ImageView, Z> implements InterfaceC1055f.a {

    @Nullable
    private Animatable animatable;

    public ImageViewTarget(ImageView imageView) {
        super(imageView);
    }

    @Deprecated
    public ImageViewTarget(ImageView imageView, boolean z) {
        super(imageView, z);
    }

    private void maybeUpdateAnimatable(@Nullable Z z) {
        if (!(z instanceof Animatable)) {
            this.animatable = null;
        } else {
            this.animatable = (Animatable) z;
            this.animatable.start();
        }
    }

    private void setResourceInternal(@Nullable Z z) {
        setResource(z);
        maybeUpdateAnimatable(z);
    }

    @Override // com.bumptech.glide.request.p056a.InterfaceC1055f.a
    @Nullable
    public Drawable getCurrentDrawable() {
        return ((ImageView) this.view).getDrawable();
    }

    @Override // com.bumptech.glide.request.target.ViewTarget, com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.request.target.Target
    public void onLoadCleared(@Nullable Drawable drawable) {
        super.onLoadCleared(drawable);
        if (this.animatable != null) {
            this.animatable.stop();
        }
        setResourceInternal(null);
        setDrawable(drawable);
    }

    @Override // com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.request.target.Target
    public void onLoadFailed(@Nullable Drawable drawable) {
        super.onLoadFailed(drawable);
        setResourceInternal(null);
        setDrawable(drawable);
    }

    @Override // com.bumptech.glide.request.target.ViewTarget, com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.request.target.Target
    public void onLoadStarted(@Nullable Drawable drawable) {
        super.onLoadStarted(drawable);
        setResourceInternal(null);
        setDrawable(drawable);
    }

    @Override // com.bumptech.glide.request.target.Target
    public void onResourceReady(@NonNull Z z, @Nullable InterfaceC1055f<? super Z> interfaceC1055f) {
        if (interfaceC1055f == null || !interfaceC1055f.mo3263a(z, this)) {
            setResourceInternal(z);
        } else {
            maybeUpdateAnimatable(z);
        }
    }

    @Override // com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.manager.InterfaceC1040i
    public void onStart() {
        if (this.animatable != null) {
            this.animatable.start();
        }
    }

    @Override // com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.manager.InterfaceC1040i
    public void onStop() {
        if (this.animatable != null) {
            this.animatable.stop();
        }
    }

    @Override // com.bumptech.glide.request.p056a.InterfaceC1055f.a
    public void setDrawable(Drawable drawable) {
        ((ImageView) this.view).setImageDrawable(drawable);
    }

    protected abstract void setResource(@Nullable Z z);
}
