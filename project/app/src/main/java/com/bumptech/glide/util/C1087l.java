package com.bumptech.glide.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import com.bumptech.glide.C0845i;
import com.bumptech.glide.request.p056a.InterfaceC1055f;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.target.ViewTarget;
import java.util.Arrays;

/* renamed from: com.bumptech.glide.util.l */
/* loaded from: classes.dex */
public final class C1087l<T> implements C0845i.b<T>, SizeReadyCallback {

    /* renamed from: a */
    private int[] f3467a;

    /* renamed from: b */
    private a f3468b;

    /* renamed from: com.bumptech.glide.util.l$a */
    /* loaded from: classes.dex */
    private static final class a extends ViewTarget<View, Object> {
        a(@NonNull View view, @NonNull SizeReadyCallback sizeReadyCallback) {
            super(view);
            getSize(sizeReadyCallback);
        }

        @Override // com.bumptech.glide.request.target.Target
        public final void onResourceReady(@NonNull Object obj, @Nullable InterfaceC1055f<? super Object> interfaceC1055f) {
        }
    }

    public C1087l() {
    }

    private C1087l(@NonNull View view) {
        this.f3468b = new a(view, this);
    }

    /* renamed from: a */
    private void m3497a(@NonNull View view) {
        if (this.f3467a == null && this.f3468b == null) {
            this.f3468b = new a(view, this);
        }
    }

    @Override // com.bumptech.glide.C0845i.b
    @Nullable
    /* renamed from: a */
    public final int[] mo2364a() {
        if (this.f3467a == null) {
            return null;
        }
        return Arrays.copyOf(this.f3467a, this.f3467a.length);
    }

    @Override // com.bumptech.glide.request.target.SizeReadyCallback
    public final void onSizeReady(int i, int i2) {
        this.f3467a = new int[]{i, i2};
        this.f3468b = null;
    }
}
