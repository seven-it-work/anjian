package com.bumptech.glide;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.CheckResult;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RawRes;
import android.util.Log;
import android.view.View;
import com.bumptech.glide.load.p042b.AbstractC0913i;
import com.bumptech.glide.load.p049d.p054e.C1005c;
import com.bumptech.glide.manager.C1044m;
import com.bumptech.glide.manager.C1045n;
import com.bumptech.glide.manager.InterfaceC1034c;
import com.bumptech.glide.manager.InterfaceC1035d;
import com.bumptech.glide.manager.InterfaceC1039h;
import com.bumptech.glide.manager.InterfaceC1040i;
import com.bumptech.glide.manager.InterfaceC1043l;
import com.bumptech.glide.request.C1066g;
import com.bumptech.glide.request.InterfaceC1062c;
import com.bumptech.glide.request.p056a.InterfaceC1055f;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.target.ViewTarget;
import com.bumptech.glide.util.C1086k;
import java.io.File;
import java.net.URL;
import java.util.Iterator;
import java.util.Map;

/* renamed from: com.bumptech.glide.o */
/* loaded from: classes.dex */
public class C1047o implements InterfaceC0847k<C1046n<Drawable>>, InterfaceC1040i {

    /* renamed from: g */
    private static final C1066g f3280g = C1066g.m3309a((Class<?>) Bitmap.class).mo3385n();

    /* renamed from: h */
    private static final C1066g f3281h = C1066g.m3309a((Class<?>) C1005c.class).mo3385n();

    /* renamed from: i */
    private static final C1066g f3282i = C1066g.m3304a(AbstractC0913i.f2752c).mo3348a(EnumC0848l.LOW).mo3372d(true);

    /* renamed from: a */
    protected final ComponentCallbacks2C0838f f3283a;

    /* renamed from: b */
    protected final Context f3284b;

    /* renamed from: c */
    final InterfaceC1039h f3285c;

    /* renamed from: d */
    final C1044m f3286d;

    /* renamed from: e */
    final C1045n f3287e;

    /* renamed from: f */
    C1066g f3288f;

    /* renamed from: j */
    private final InterfaceC1043l f3289j;

    /* renamed from: k */
    private final Runnable f3290k;

    /* renamed from: l */
    private final Handler f3291l;

    /* renamed from: m */
    private final InterfaceC1034c f3292m;

    /* renamed from: com.bumptech.glide.o$a */
    /* loaded from: classes.dex */
    private static class a extends ViewTarget<View, Object> {
        a(@NonNull View view) {
            super(view);
        }

        @Override // com.bumptech.glide.request.target.Target
        public final void onResourceReady(@NonNull Object obj, @Nullable InterfaceC1055f<? super Object> interfaceC1055f) {
        }
    }

    /* renamed from: com.bumptech.glide.o$b */
    /* loaded from: classes.dex */
    private static class b implements InterfaceC1034c.a {

        /* renamed from: a */
        private final C1044m f3296a;

        b(@NonNull C1044m c1044m) {
            this.f3296a = c1044m;
        }

        @Override // com.bumptech.glide.manager.InterfaceC1034c.a
        /* renamed from: a */
        public final void mo3122a(boolean z) {
            if (z) {
                C1044m c1044m = this.f3296a;
                for (InterfaceC1062c interfaceC1062c : C1086k.m3483a(c1044m.f3255a)) {
                    if (!interfaceC1062c.mo3252d() && !interfaceC1062c.mo3257f()) {
                        interfaceC1062c.mo3248b();
                        if (c1044m.f3257c) {
                            c1044m.f3256b.add(interfaceC1062c);
                        } else {
                            interfaceC1062c.mo3246a();
                        }
                    }
                }
            }
        }
    }

    public C1047o(@NonNull ComponentCallbacks2C0838f componentCallbacks2C0838f, @NonNull InterfaceC1039h interfaceC1039h, @NonNull InterfaceC1043l interfaceC1043l, @NonNull Context context) {
        this(componentCallbacks2C0838f, interfaceC1039h, interfaceC1043l, new C1044m(), componentCallbacks2C0838f.f2372f, context);
    }

    private C1047o(ComponentCallbacks2C0838f componentCallbacks2C0838f, InterfaceC1039h interfaceC1039h, InterfaceC1043l interfaceC1043l, C1044m c1044m, InterfaceC1035d interfaceC1035d, Context context) {
        this.f3287e = new C1045n();
        this.f3290k = new Runnable() { // from class: com.bumptech.glide.o.1
            @Override // java.lang.Runnable
            public final void run() {
                C1047o.this.f3285c.mo3118a(C1047o.this);
            }
        };
        this.f3291l = new Handler(Looper.getMainLooper());
        this.f3283a = componentCallbacks2C0838f;
        this.f3285c = interfaceC1039h;
        this.f3289j = interfaceC1043l;
        this.f3286d = c1044m;
        this.f3284b = context;
        this.f3292m = interfaceC1035d.mo3123a(context.getApplicationContext(), new b(c1044m));
        if (C1086k.m3496d()) {
            this.f3291l.post(this.f3290k);
        } else {
            interfaceC1039h.mo3118a(this);
        }
        interfaceC1039h.mo3118a(this.f3292m);
        mo3213a(componentCallbacks2C0838f.f2368b.f2405f);
        synchronized (componentCallbacks2C0838f.f2373g) {
            if (componentCallbacks2C0838f.f2373g.contains(this)) {
                throw new IllegalStateException("Cannot register already registered manager");
            }
            componentCallbacks2C0838f.f2373g.add(this);
        }
    }

    /* renamed from: a */
    private void m3200a(@NonNull View view) {
        m3214a((Target<?>) new a(view));
    }

    /* renamed from: a */
    private void m3201a(@NonNull Target<?> target, @NonNull InterfaceC1062c interfaceC1062c) {
        this.f3287e.f3258a.add(target);
        C1044m c1044m = this.f3286d;
        c1044m.f3255a.add(interfaceC1062c);
        if (!c1044m.f3257c) {
            interfaceC1062c.mo3246a();
            return;
        }
        interfaceC1062c.mo3248b();
        if (Log.isLoggable("RequestTracker", 2)) {
            Log.v("RequestTracker", "Paused, delaying request");
        }
        c1044m.f3256b.add(interfaceC1062c);
    }

    /* renamed from: c */
    private void m3202c(@NonNull Target<?> target) {
        if (m3227b(target) || this.f3283a.m2323a(target) || target.getRequest() == null) {
            return;
        }
        InterfaceC1062c request = target.getRequest();
        target.setRequest(null);
        request.mo3248b();
    }

    /* renamed from: d */
    private void m3203d(@NonNull C1066g c1066g) {
        this.f3288f = this.f3288f.mo3353a(c1066g);
    }

    /* renamed from: f */
    private boolean m3204f() {
        C1086k.m3485a();
        return this.f3286d.f3257c;
    }

    /* renamed from: g */
    private void m3205g() {
        C1086k.m3485a();
        C1044m c1044m = this.f3286d;
        c1044m.f3257c = true;
        for (InterfaceC1062c interfaceC1062c : C1086k.m3483a(c1044m.f3255a)) {
            if (interfaceC1062c.mo3250c()) {
                interfaceC1062c.mo3248b();
                c1044m.f3256b.add(interfaceC1062c);
            }
        }
    }

    /* renamed from: h */
    private void m3206h() {
        C1086k.m3485a();
        C1044m c1044m = this.f3286d;
        c1044m.f3257c = true;
        for (InterfaceC1062c interfaceC1062c : C1086k.m3483a(c1044m.f3255a)) {
            if (interfaceC1062c.mo3250c() || interfaceC1062c.mo3252d()) {
                interfaceC1062c.mo3248b();
                c1044m.f3256b.add(interfaceC1062c);
            }
        }
    }

    /* renamed from: i */
    private void m3207i() {
        C1086k.m3485a();
        m3205g();
        Iterator<C1047o> it = this.f3289j.mo3104a().iterator();
        while (it.hasNext()) {
            it.next().m3205g();
        }
    }

    /* renamed from: j */
    private void m3208j() {
        C1086k.m3485a();
        C1044m c1044m = this.f3286d;
        c1044m.f3257c = false;
        for (InterfaceC1062c interfaceC1062c : C1086k.m3483a(c1044m.f3255a)) {
            if (!interfaceC1062c.mo3252d() && !interfaceC1062c.mo3250c()) {
                interfaceC1062c.mo3246a();
            }
        }
        c1044m.f3256b.clear();
    }

    /* renamed from: k */
    private void m3209k() {
        C1086k.m3485a();
        m3208j();
        Iterator<C1047o> it = this.f3289j.mo3104a().iterator();
        while (it.hasNext()) {
            it.next().m3208j();
        }
    }

    /* renamed from: l */
    private C1066g m3210l() {
        return this.f3288f;
    }

    @CheckResult
    @NonNull
    /* renamed from: a */
    public C1046n<Bitmap> mo3211a() {
        return mo3212a(Bitmap.class).mo3180a(f3280g);
    }

    @CheckResult
    @NonNull
    /* renamed from: a */
    public <ResourceType> C1046n<ResourceType> mo3212a(@NonNull Class<ResourceType> cls) {
        return new C1046n<>(this.f3283a, this, cls, this.f3284b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void mo3213a(@NonNull C1066g c1066g) {
        this.f3288f = c1066g.clone().mo3386o();
    }

    /* renamed from: a */
    public final void m3214a(@Nullable final Target<?> target) {
        if (target == null) {
            return;
        }
        if (!C1086k.m3494c()) {
            this.f3291l.post(new Runnable() { // from class: com.bumptech.glide.o.2
                @Override // java.lang.Runnable
                public final void run() {
                    C1047o.this.m3214a(target);
                }
            });
            return;
        }
        if (m3227b(target) || this.f3283a.m2323a(target) || target.getRequest() == null) {
            return;
        }
        InterfaceC1062c request = target.getRequest();
        target.setRequest(null);
        request.mo3248b();
    }

    @CheckResult
    @NonNull
    /* renamed from: b */
    public C1046n<C1005c> mo3215b() {
        return mo3212a(C1005c.class).mo3180a(f3281h);
    }

    @Override // com.bumptech.glide.InterfaceC0847k
    @CheckResult
    @NonNull
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public C1046n<Drawable> mo2366a(@Nullable Bitmap bitmap) {
        return mo3228c().mo2366a(bitmap);
    }

    @Override // com.bumptech.glide.InterfaceC0847k
    @CheckResult
    @NonNull
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public C1046n<Drawable> mo2367a(@Nullable Drawable drawable) {
        return mo3228c().mo2367a(drawable);
    }

    @Override // com.bumptech.glide.InterfaceC0847k
    @CheckResult
    @NonNull
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public C1046n<Drawable> mo2368a(@Nullable Uri uri) {
        return mo3228c().mo2368a(uri);
    }

    @Override // com.bumptech.glide.InterfaceC0847k
    @CheckResult
    @NonNull
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public C1046n<Drawable> mo2369a(@Nullable File file) {
        return mo3228c().mo2369a(file);
    }

    @Override // com.bumptech.glide.InterfaceC0847k
    @CheckResult
    @NonNull
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public C1046n<Drawable> mo2370a(@RawRes @DrawableRes @Nullable Integer num) {
        return mo3228c().mo2370a(num);
    }

    @Override // com.bumptech.glide.InterfaceC0847k
    @CheckResult
    @NonNull
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public C1046n<Drawable> mo2371a(@Nullable Object obj) {
        return mo3228c().mo2371a(obj);
    }

    @Override // com.bumptech.glide.InterfaceC0847k
    @CheckResult
    @NonNull
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public C1046n<Drawable> mo2372a(@Nullable String str) {
        return mo3228c().mo2372a(str);
    }

    @Override // com.bumptech.glide.InterfaceC0847k
    @CheckResult
    @Deprecated
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public C1046n<Drawable> mo2373a(@Nullable URL url) {
        return mo3228c().mo2373a(url);
    }

    @Override // com.bumptech.glide.InterfaceC0847k
    @CheckResult
    @NonNull
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public C1046n<Drawable> mo2374a(@Nullable byte[] bArr) {
        return mo3228c().mo2374a(bArr);
    }

    @NonNull
    /* renamed from: b */
    public C1047o mo3225b(@NonNull C1066g c1066g) {
        this.f3288f = this.f3288f.mo3353a(c1066g);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: b */
    public final <T> AbstractC1048p<?, T> m3226b(Class<T> cls) {
        C0844h c0844h = this.f3283a.f2368b;
        AbstractC1048p<?, T> abstractC1048p = (AbstractC1048p) c0844h.f2406g.get(cls);
        if (abstractC1048p == null) {
            for (Map.Entry<Class<?>, AbstractC1048p<?, ?>> entry : c0844h.f2406g.entrySet()) {
                if (entry.getKey().isAssignableFrom(cls)) {
                    abstractC1048p = (AbstractC1048p) entry.getValue();
                }
            }
        }
        return abstractC1048p == null ? (AbstractC1048p<?, T>) C0844h.f2400a : abstractC1048p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final boolean m3227b(@NonNull Target<?> target) {
        InterfaceC1062c request = target.getRequest();
        if (request == null) {
            return true;
        }
        if (!this.f3286d.m3157a(request, true)) {
            return false;
        }
        this.f3287e.f3258a.remove(target);
        target.setRequest(null);
        return true;
    }

    @CheckResult
    @NonNull
    /* renamed from: c */
    public C1046n<Drawable> mo3228c() {
        return mo3212a(Drawable.class);
    }

    @CheckResult
    @NonNull
    /* renamed from: c */
    public C1046n<File> mo3229c(@Nullable Object obj) {
        return mo3231d().mo2371a(obj);
    }

    @NonNull
    /* renamed from: c */
    public C1047o mo3230c(@NonNull C1066g c1066g) {
        mo3213a(c1066g);
        return this;
    }

    @CheckResult
    @NonNull
    /* renamed from: d */
    public C1046n<File> mo3231d() {
        return mo3212a(File.class).mo3180a(f3282i);
    }

    @CheckResult
    @NonNull
    /* renamed from: e */
    public C1046n<File> mo3232e() {
        return mo3212a(File.class).mo3180a(C1066g.m3303a());
    }

    @Override // com.bumptech.glide.manager.InterfaceC1040i
    public void onDestroy() {
        this.f3287e.onDestroy();
        Iterator it = C1086k.m3483a(this.f3287e.f3258a).iterator();
        while (it.hasNext()) {
            m3214a((Target<?>) it.next());
        }
        this.f3287e.f3258a.clear();
        C1044m c1044m = this.f3286d;
        Iterator it2 = C1086k.m3483a(c1044m.f3255a).iterator();
        while (it2.hasNext()) {
            c1044m.m3157a((InterfaceC1062c) it2.next(), false);
        }
        c1044m.f3256b.clear();
        this.f3285c.mo3120b(this);
        this.f3285c.mo3120b(this.f3292m);
        this.f3291l.removeCallbacks(this.f3290k);
        ComponentCallbacks2C0838f componentCallbacks2C0838f = this.f3283a;
        synchronized (componentCallbacks2C0838f.f2373g) {
            if (!componentCallbacks2C0838f.f2373g.contains(this)) {
                throw new IllegalStateException("Cannot unregister not yet registered manager");
            }
            componentCallbacks2C0838f.f2373g.remove(this);
        }
    }

    @Override // com.bumptech.glide.manager.InterfaceC1040i
    public void onStart() {
        m3208j();
        this.f3287e.onStart();
    }

    @Override // com.bumptech.glide.manager.InterfaceC1040i
    public void onStop() {
        m3205g();
        this.f3287e.onStop();
    }

    public String toString() {
        return super.toString() + "{tracker=" + this.f3286d + ", treeNode=" + this.f3289j + "}";
    }
}
