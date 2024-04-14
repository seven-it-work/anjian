package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.manager.InterfaceC1040i;
import com.bumptech.glide.request.InterfaceC1062c;
import com.bumptech.glide.request.p056a.InterfaceC1055f;

/* loaded from: classes.dex */
public interface Target<R> extends InterfaceC1040i {
    public static final int SIZE_ORIGINAL = Integer.MIN_VALUE;

    @Nullable
    InterfaceC1062c getRequest();

    void getSize(@NonNull SizeReadyCallback sizeReadyCallback);

    void onLoadCleared(@Nullable Drawable drawable);

    void onLoadFailed(@Nullable Drawable drawable);

    void onLoadStarted(@Nullable Drawable drawable);

    void onResourceReady(@NonNull R r, @Nullable InterfaceC1055f<? super R> interfaceC1055f);

    void removeCallback(@NonNull SizeReadyCallback sizeReadyCallback);

    void setRequest(@Nullable InterfaceC1062c interfaceC1062c);
}
