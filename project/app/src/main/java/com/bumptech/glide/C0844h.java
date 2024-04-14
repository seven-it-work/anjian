package com.bumptech.glide;

import android.content.Context;
import android.content.ContextWrapper;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import android.widget.ImageView;
import com.bumptech.glide.load.p042b.C0914j;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0872b;
import com.bumptech.glide.request.C1066g;
import com.bumptech.glide.request.target.ImageViewTargetFactory;
import com.bumptech.glide.request.target.ViewTarget;
import java.util.Map;

/* renamed from: com.bumptech.glide.h */
/* loaded from: classes.dex */
public final class C0844h extends ContextWrapper {

    /* renamed from: a */
    @VisibleForTesting
    static final AbstractC1048p<?, ?> f2400a = new C0831e();

    /* renamed from: b */
    final Handler f2401b;

    /* renamed from: c */
    public final InterfaceC0872b f2402c;

    /* renamed from: d */
    public final C1029m f2403d;

    /* renamed from: e */
    final ImageViewTargetFactory f2404e;

    /* renamed from: f */
    final C1066g f2405f;

    /* renamed from: g */
    final Map<Class<?>, AbstractC1048p<?, ?>> f2406g;

    /* renamed from: h */
    final C0914j f2407h;

    /* renamed from: i */
    public final int f2408i;

    public C0844h(@NonNull Context context, @NonNull InterfaceC0872b interfaceC0872b, @NonNull C1029m c1029m, @NonNull ImageViewTargetFactory imageViewTargetFactory, @NonNull C1066g c1066g, @NonNull Map<Class<?>, AbstractC1048p<?, ?>> map, @NonNull C0914j c0914j, int i) {
        super(context.getApplicationContext());
        this.f2402c = interfaceC0872b;
        this.f2403d = c1029m;
        this.f2404e = imageViewTargetFactory;
        this.f2405f = c1066g;
        this.f2406g = map;
        this.f2407h = c0914j;
        this.f2408i = i;
        this.f2401b = new Handler(Looper.getMainLooper());
    }

    @NonNull
    /* renamed from: a */
    private <T> AbstractC1048p<?, T> m2349a(@NonNull Class<T> cls) {
        AbstractC1048p<?, T> abstractC1048p = (AbstractC1048p) this.f2406g.get(cls);
        if (abstractC1048p == null) {
            for (Map.Entry<Class<?>, AbstractC1048p<?, ?>> entry : this.f2406g.entrySet()) {
                if (entry.getKey().isAssignableFrom(cls)) {
                    abstractC1048p = (AbstractC1048p) entry.getValue();
                }
            }
        }
        return abstractC1048p == null ? (AbstractC1048p<?, T>) f2400a : abstractC1048p;
    }

    /* renamed from: a */
    private C1066g m2350a() {
        return this.f2405f;
    }

    @NonNull
    /* renamed from: a */
    private <X> ViewTarget<ImageView, X> m2351a(@NonNull ImageView imageView, @NonNull Class<X> cls) {
        return this.f2404e.buildTarget(imageView, cls);
    }

    @NonNull
    /* renamed from: b */
    private Handler m2352b() {
        return this.f2401b;
    }

    @NonNull
    /* renamed from: c */
    private C0914j m2353c() {
        return this.f2407h;
    }

    @NonNull
    /* renamed from: d */
    private C1029m m2354d() {
        return this.f2403d;
    }

    /* renamed from: e */
    private int m2355e() {
        return this.f2408i;
    }

    @NonNull
    /* renamed from: f */
    private InterfaceC0872b m2356f() {
        return this.f2402c;
    }
}
