package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import com.bumptech.glide.request.InterfaceC1062c;

@Deprecated
/* loaded from: classes.dex */
public abstract class BaseTarget<Z> implements Target<Z> {
    private InterfaceC1062c request;

    @Override // com.bumptech.glide.request.target.Target
    @Nullable
    public InterfaceC1062c getRequest() {
        return this.request;
    }

    @Override // com.bumptech.glide.manager.InterfaceC1040i
    public void onDestroy() {
    }

    @Override // com.bumptech.glide.request.target.Target
    public void onLoadCleared(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public void onLoadFailed(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public void onLoadStarted(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.manager.InterfaceC1040i
    public void onStart() {
    }

    @Override // com.bumptech.glide.manager.InterfaceC1040i
    public void onStop() {
    }

    @Override // com.bumptech.glide.request.target.Target
    public void setRequest(@Nullable InterfaceC1062c interfaceC1062c) {
        this.request = interfaceC1062c;
    }
}
