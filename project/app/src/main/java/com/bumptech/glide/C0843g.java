package com.bumptech.glide;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import com.bumptech.glide.load.p042b.C0914j;
import com.bumptech.glide.load.p042b.p043a.C0876f;
import com.bumptech.glide.load.p042b.p043a.C0880j;
import com.bumptech.glide.load.p042b.p043a.C0881k;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0872b;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0875e;
import com.bumptech.glide.load.p042b.p044b.C0895h;
import com.bumptech.glide.load.p042b.p044b.C0896i;
import com.bumptech.glide.load.p042b.p044b.C0899l;
import com.bumptech.glide.load.p042b.p044b.InterfaceC0888a;
import com.bumptech.glide.load.p042b.p044b.InterfaceC0897j;
import com.bumptech.glide.load.p042b.p045c.ExecutorServiceC0902a;
import com.bumptech.glide.manager.C1037f;
import com.bumptech.glide.manager.C1042k;
import com.bumptech.glide.manager.InterfaceC1035d;
import com.bumptech.glide.request.C1066g;
import java.util.Map;

/* renamed from: com.bumptech.glide.g */
/* loaded from: classes.dex */
public final class C0843g {

    /* renamed from: b */
    C0914j f2386b;

    /* renamed from: c */
    InterfaceC0875e f2387c;

    /* renamed from: d */
    InterfaceC0872b f2388d;

    /* renamed from: e */
    public InterfaceC0897j f2389e;

    /* renamed from: f */
    ExecutorServiceC0902a f2390f;

    /* renamed from: g */
    ExecutorServiceC0902a f2391g;

    /* renamed from: h */
    public InterfaceC0888a.a f2392h;

    /* renamed from: i */
    C0899l f2393i;

    /* renamed from: j */
    InterfaceC1035d f2394j;

    /* renamed from: m */
    @Nullable
    C1042k.a f2397m;

    /* renamed from: n */
    ExecutorServiceC0902a f2398n;

    /* renamed from: o */
    boolean f2399o;

    /* renamed from: a */
    final Map<Class<?>, AbstractC1048p<?, ?>> f2385a = new ArrayMap();

    /* renamed from: k */
    int f2395k = 4;

    /* renamed from: l */
    C1066g f2396l = new C1066g();

    @NonNull
    /* renamed from: a */
    private ComponentCallbacks2C0838f m2331a(@NonNull Context context) {
        if (this.f2390f == null) {
            this.f2390f = ExecutorServiceC0902a.m2584b();
        }
        if (this.f2391g == null) {
            this.f2391g = ExecutorServiceC0902a.m2579a();
        }
        if (this.f2398n == null) {
            this.f2398n = ExecutorServiceC0902a.m2587d();
        }
        if (this.f2393i == null) {
            this.f2393i = new C0899l.a(context).m2570a();
        }
        if (this.f2394j == null) {
            this.f2394j = new C1037f();
        }
        if (this.f2387c == null) {
            int i = this.f2393i.f2599b;
            if (i > 0) {
                this.f2387c = new C0881k(i);
            } else {
                this.f2387c = new C0876f();
            }
        }
        if (this.f2388d == null) {
            this.f2388d = new C0880j(this.f2393i.f2601d);
        }
        if (this.f2389e == null) {
            this.f2389e = new C0896i(this.f2393i.f2600c);
        }
        if (this.f2392h == null) {
            this.f2392h = new C0895h(context);
        }
        if (this.f2386b == null) {
            this.f2386b = new C0914j(this.f2389e, this.f2392h, this.f2391g, this.f2390f, ExecutorServiceC0902a.m2586c(), ExecutorServiceC0902a.m2587d(), this.f2399o);
        }
        return new ComponentCallbacks2C0838f(context, this.f2386b, this.f2389e, this.f2387c, this.f2388d, new C1042k(this.f2397m), this.f2394j, this.f2395k, this.f2396l.mo3385n(), this.f2385a);
    }

    @NonNull
    /* renamed from: a */
    private C0843g m2332a(int i) {
        if (i < 2 || i > 6) {
            throw new IllegalArgumentException("Log level must be one of Log.VERBOSE, Log.DEBUG, Log.INFO, Log.WARN, or Log.ERROR");
        }
        this.f2395k = i;
        return this;
    }

    @NonNull
    /* renamed from: a */
    private C0843g m2333a(@Nullable InterfaceC0872b interfaceC0872b) {
        this.f2388d = interfaceC0872b;
        return this;
    }

    @NonNull
    /* renamed from: a */
    private C0843g m2334a(@Nullable InterfaceC0875e interfaceC0875e) {
        this.f2387c = interfaceC0875e;
        return this;
    }

    @NonNull
    /* renamed from: a */
    private C0843g m2335a(@Nullable InterfaceC0888a.a aVar) {
        this.f2392h = aVar;
        return this;
    }

    @NonNull
    /* renamed from: a */
    private C0843g m2336a(@Nullable InterfaceC0897j interfaceC0897j) {
        this.f2389e = interfaceC0897j;
        return this;
    }

    @NonNull
    /* renamed from: a */
    private C0843g m2337a(@NonNull C0899l.a aVar) {
        this.f2393i = aVar.m2570a();
        return this;
    }

    @NonNull
    /* renamed from: a */
    private C0843g m2338a(@Nullable C0899l c0899l) {
        this.f2393i = c0899l;
        return this;
    }

    @Deprecated
    /* renamed from: a */
    private C0843g m2339a(@Nullable ExecutorServiceC0902a executorServiceC0902a) {
        this.f2390f = executorServiceC0902a;
        return this;
    }

    /* renamed from: a */
    private C0843g m2340a(C0914j c0914j) {
        this.f2386b = c0914j;
        return this;
    }

    @NonNull
    /* renamed from: a */
    private C0843g m2341a(@Nullable InterfaceC1035d interfaceC1035d) {
        this.f2394j = interfaceC1035d;
        return this;
    }

    @NonNull
    /* renamed from: a */
    private C0843g m2342a(@Nullable C1066g c1066g) {
        this.f2396l = c1066g;
        return this;
    }

    @NonNull
    /* renamed from: a */
    private <T> C0843g m2343a(@NonNull Class<T> cls, @Nullable AbstractC1048p<?, T> abstractC1048p) {
        this.f2385a.put(cls, abstractC1048p);
        return this;
    }

    @NonNull
    /* renamed from: a */
    private C0843g m2344a(boolean z) {
        this.f2399o = z;
        return this;
    }

    /* renamed from: a */
    private void m2345a(@Nullable C1042k.a aVar) {
        this.f2397m = aVar;
    }

    @NonNull
    /* renamed from: b */
    private C0843g m2346b(@Nullable ExecutorServiceC0902a executorServiceC0902a) {
        this.f2390f = executorServiceC0902a;
        return this;
    }

    @NonNull
    /* renamed from: c */
    private C0843g m2347c(@Nullable ExecutorServiceC0902a executorServiceC0902a) {
        this.f2391g = executorServiceC0902a;
        return this;
    }

    @NonNull
    /* renamed from: d */
    private C0843g m2348d(@Nullable ExecutorServiceC0902a executorServiceC0902a) {
        this.f2398n = executorServiceC0902a;
        return this;
    }
}
