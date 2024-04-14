package com.bumptech.glide;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.Pools;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.InterfaceC0961d;
import com.bumptech.glide.load.InterfaceC1026k;
import com.bumptech.glide.load.InterfaceC1027l;
import com.bumptech.glide.load.p040a.C0860f;
import com.bumptech.glide.load.p040a.InterfaceC0859e;
import com.bumptech.glide.load.p042b.C0912h;
import com.bumptech.glide.load.p042b.C0923s;
import com.bumptech.glide.load.p042b.InterfaceC0925u;
import com.bumptech.glide.load.p047c.C0952p;
import com.bumptech.glide.load.p047c.InterfaceC0950n;
import com.bumptech.glide.load.p047c.InterfaceC0951o;
import com.bumptech.glide.load.p049d.p055f.C1018f;
import com.bumptech.glide.load.p049d.p055f.InterfaceC1017e;
import com.bumptech.glide.p038e.C0832a;
import com.bumptech.glide.p038e.C0833b;
import com.bumptech.glide.p038e.C0834c;
import com.bumptech.glide.p038e.C0835d;
import com.bumptech.glide.p038e.C0836e;
import com.bumptech.glide.p038e.C0837f;
import com.bumptech.glide.util.C1083h;
import com.bumptech.glide.util.p057a.C1074a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.bumptech.glide.m */
/* loaded from: classes.dex */
public final class C1029m {

    /* renamed from: a */
    public static final String f3197a = "Gif";

    /* renamed from: b */
    public static final String f3198b = "Bitmap";

    /* renamed from: c */
    public static final String f3199c = "BitmapDrawable";

    /* renamed from: g */
    private static final String f3200g = "legacy_prepend_all";

    /* renamed from: h */
    private static final String f3201h = "legacy_append";

    /* renamed from: m */
    private final C0835d f3209m = new C0835d();

    /* renamed from: n */
    private final C0834c f3210n = new C0834c();

    /* renamed from: o */
    private final Pools.Pool<List<Throwable>> f3211o = C1074a.m3424a();

    /* renamed from: i */
    private final C0952p f3205i = new C0952p(this.f3211o);

    /* renamed from: d */
    public final C0832a f3202d = new C0832a();

    /* renamed from: j */
    private final C0836e f3206j = new C0836e();

    /* renamed from: e */
    public final C0837f f3203e = new C0837f();

    /* renamed from: f */
    public final C0860f f3204f = new C0860f();

    /* renamed from: k */
    private final C1018f f3207k = new C1018f();

    /* renamed from: l */
    private final C0833b f3208l = new C0833b();

    /* renamed from: com.bumptech.glide.m$a */
    /* loaded from: classes.dex */
    public static class a extends RuntimeException {
        public a(@NonNull String str) {
            super(str);
        }
    }

    /* renamed from: com.bumptech.glide.m$b */
    /* loaded from: classes.dex */
    public static final class b extends a {
        public b() {
            super("Failed to find image header parser.");
        }
    }

    /* renamed from: com.bumptech.glide.m$c */
    /* loaded from: classes.dex */
    public static class c extends a {
        public c(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            super("Failed to find any ModelLoaders for model: " + cls + " and data: " + cls2);
        }

        public c(@NonNull Object obj) {
            super("Failed to find any ModelLoaders for model: " + obj);
        }
    }

    /* renamed from: com.bumptech.glide.m$d */
    /* loaded from: classes.dex */
    public static class d extends a {
        public d(@NonNull Class<?> cls) {
            super("Failed to find result encoder for resource class: " + cls + ", you may need to consider registering a new Encoder for the requested type or DiskCacheStrategy.DATA/DiskCacheStrategy.NONE if caching your transformed resource is unnecessary.");
        }
    }

    /* renamed from: com.bumptech.glide.m$e */
    /* loaded from: classes.dex */
    public static class e extends a {
        public e(@NonNull Class<?> cls) {
            super("Failed to find source encoder for data class: " + cls);
        }
    }

    public C1029m() {
        ArrayList arrayList = new ArrayList(Arrays.asList(f3197a, f3198b, f3199c));
        arrayList.add(0, f3200g);
        arrayList.add(f3201h);
        this.f3206j.m2283a(arrayList);
    }

    @NonNull
    /* renamed from: a */
    private C1029m m3066a(@NonNull List<String> list) {
        ArrayList arrayList = new ArrayList(list);
        arrayList.add(0, f3200g);
        arrayList.add(f3201h);
        this.f3206j.m2283a(arrayList);
        return this;
    }

    /* renamed from: a */
    private boolean m3067a(@NonNull InterfaceC0925u<?> interfaceC0925u) {
        return this.f3203e.m2287a(interfaceC0925u.mo2722a()) != null;
    }

    @NonNull
    /* renamed from: b */
    private <X> InterfaceC0961d<X> m3068b(@NonNull X x) throws e {
        InterfaceC0961d<X> m2267a = this.f3202d.m2267a(x.getClass());
        if (m2267a != null) {
            return m2267a;
        }
        throw new e(x.getClass());
    }

    @NonNull
    /* renamed from: b */
    private <X> InterfaceC1027l<X> m3069b(@NonNull InterfaceC0925u<X> interfaceC0925u) throws d {
        InterfaceC1027l<X> m2287a = this.f3203e.m2287a(interfaceC0925u.mo2722a());
        if (m2287a != null) {
            return m2287a;
        }
        throw new d(interfaceC0925u.mo2722a());
    }

    @NonNull
    @Deprecated
    /* renamed from: b */
    private <Data> C1029m m3070b(@NonNull Class<Data> cls, @NonNull InterfaceC0961d<Data> interfaceC0961d) {
        return m3083a(cls, interfaceC0961d);
    }

    @NonNull
    @Deprecated
    /* renamed from: b */
    private <TResource> C1029m m3071b(@NonNull Class<TResource> cls, @NonNull InterfaceC1027l<TResource> interfaceC1027l) {
        return m3084a((Class) cls, (InterfaceC1027l) interfaceC1027l);
    }

    @NonNull
    /* renamed from: b */
    private <Model, Data> C1029m m3072b(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull InterfaceC0951o<Model, Data> interfaceC0951o) {
        this.f3205i.m2819b(cls, cls2, interfaceC0951o);
        return this;
    }

    @NonNull
    /* renamed from: b */
    private <Data, TResource> C1029m m3073b(@NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull InterfaceC1026k<Data, TResource> interfaceC1026k) {
        this.f3206j.m2285b(f3200g, interfaceC1026k, cls, cls2);
        return this;
    }

    @NonNull
    /* renamed from: b */
    private <Data, TResource> C1029m m3074b(@NonNull String str, @NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull InterfaceC1026k<Data, TResource> interfaceC1026k) {
        this.f3206j.m2285b(str, interfaceC1026k, cls, cls2);
        return this;
    }

    @NonNull
    /* renamed from: c */
    private <X> InterfaceC0859e<X> m3075c(@NonNull X x) {
        return this.f3204f.m2415a((C0860f) x);
    }

    @NonNull
    /* renamed from: c */
    private <Data> C1029m m3076c(@NonNull Class<Data> cls, @NonNull InterfaceC0961d<Data> interfaceC0961d) {
        this.f3202d.m2269b(cls, interfaceC0961d);
        return this;
    }

    @NonNull
    /* renamed from: c */
    private <TResource> C1029m m3077c(@NonNull Class<TResource> cls, @NonNull InterfaceC1027l<TResource> interfaceC1027l) {
        this.f3203e.m2289b(cls, interfaceC1027l);
        return this;
    }

    @NonNull
    /* renamed from: c */
    private <Model, Data> C1029m m3078c(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull InterfaceC0951o<? extends Model, ? extends Data> interfaceC0951o) {
        this.f3205i.m2820c(cls, cls2, interfaceC0951o);
        return this;
    }

    @NonNull
    /* renamed from: c */
    private <Data, TResource, Transcode> List<C0912h<Data, TResource, Transcode>> m3079c(@NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull Class<Transcode> cls3) {
        ArrayList arrayList = new ArrayList();
        for (Class cls4 : this.f3206j.m2284b(cls, cls2)) {
            for (Class cls5 : this.f3207k.m3048b(cls4, cls3)) {
                arrayList.add(new C0912h(cls, cls4, cls5, this.f3206j.m2281a(cls, cls4), this.f3207k.m3046a(cls4, cls5), this.f3211o));
            }
        }
        return arrayList;
    }

    @Nullable
    /* renamed from: a */
    public final <Data, TResource, Transcode> C0923s<Data, TResource, Transcode> m3080a(@NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull Class<Transcode> cls3) {
        C0923s<Data, TResource, Transcode> m2276a = this.f3210n.m2276a(cls, cls2, cls3);
        if (C0834c.m2274a(m2276a)) {
            return null;
        }
        if (m2276a != null) {
            return m2276a;
        }
        ArrayList arrayList = new ArrayList();
        for (Class cls4 : this.f3206j.m2284b(cls, cls2)) {
            for (Iterator it = this.f3207k.m3048b(cls4, cls3).iterator(); it.hasNext(); it = it) {
                Class cls5 = (Class) it.next();
                arrayList.add(new C0912h(cls, cls4, cls5, this.f3206j.m2281a(cls, cls4), this.f3207k.m3046a(cls4, cls5), this.f3211o));
            }
        }
        C0923s<Data, TResource, Transcode> c0923s = arrayList.isEmpty() ? null : new C0923s<>(cls, cls2, cls3, arrayList, this.f3211o);
        C0834c c0834c = this.f3210n;
        synchronized (c0834c.f2351b) {
            c0834c.f2351b.put(new C1083h(cls, cls2, cls3), c0923s != null ? c0923s : C0834c.f2350a);
        }
        return c0923s;
    }

    @NonNull
    /* renamed from: a */
    public final C1029m m3081a(@NonNull ImageHeaderParser imageHeaderParser) {
        this.f3208l.m2272a(imageHeaderParser);
        return this;
    }

    @NonNull
    /* renamed from: a */
    public final C1029m m3082a(@NonNull InterfaceC0859e.a<?> aVar) {
        this.f3204f.m2416a(aVar);
        return this;
    }

    @NonNull
    /* renamed from: a */
    public final <Data> C1029m m3083a(@NonNull Class<Data> cls, @NonNull InterfaceC0961d<Data> interfaceC0961d) {
        this.f3202d.m2268a(cls, interfaceC0961d);
        return this;
    }

    @NonNull
    /* renamed from: a */
    public final <TResource> C1029m m3084a(@NonNull Class<TResource> cls, @NonNull InterfaceC1027l<TResource> interfaceC1027l) {
        this.f3203e.m2288a(cls, interfaceC1027l);
        return this;
    }

    @NonNull
    /* renamed from: a */
    public final <Model, Data> C1029m m3085a(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull InterfaceC0951o<Model, Data> interfaceC0951o) {
        this.f3205i.m2817a(cls, cls2, interfaceC0951o);
        return this;
    }

    @NonNull
    /* renamed from: a */
    public final <TResource, Transcode> C1029m m3086a(@NonNull Class<TResource> cls, @NonNull Class<Transcode> cls2, @NonNull InterfaceC1017e<TResource, Transcode> interfaceC1017e) {
        this.f3207k.m3047a(cls, cls2, interfaceC1017e);
        return this;
    }

    @NonNull
    /* renamed from: a */
    public final <Data, TResource> C1029m m3087a(@NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull InterfaceC1026k<Data, TResource> interfaceC1026k) {
        m3088a(f3201h, cls, cls2, interfaceC1026k);
        return this;
    }

    @NonNull
    /* renamed from: a */
    public final <Data, TResource> C1029m m3088a(@NonNull String str, @NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull InterfaceC1026k<Data, TResource> interfaceC1026k) {
        this.f3206j.m2282a(str, interfaceC1026k, cls, cls2);
        return this;
    }

    @NonNull
    /* renamed from: a */
    public final List<ImageHeaderParser> m3089a() {
        List<ImageHeaderParser> m2271a = this.f3208l.m2271a();
        if (m2271a.isEmpty()) {
            throw new b();
        }
        return m2271a;
    }

    @NonNull
    /* renamed from: a */
    public final <Model> List<InterfaceC0950n<Model, ?>> m3090a(@NonNull Model model) {
        List m2818b = this.f3205i.m2818b((Class) model.getClass());
        int size = m2818b.size();
        List<InterfaceC0950n<Model, ?>> emptyList = Collections.emptyList();
        boolean z = true;
        for (int i = 0; i < size; i++) {
            InterfaceC0950n<Model, ?> interfaceC0950n = (InterfaceC0950n) m2818b.get(i);
            if (interfaceC0950n.mo2751a(model)) {
                if (z) {
                    emptyList = new ArrayList<>(size - i);
                    z = false;
                }
                emptyList.add(interfaceC0950n);
            }
        }
        if (emptyList.isEmpty()) {
            throw new c(model);
        }
        return emptyList;
    }

    @NonNull
    /* renamed from: b */
    public final <Model, TResource, Transcode> List<Class<?>> m3091b(@NonNull Class<Model> cls, @NonNull Class<TResource> cls2, @NonNull Class<Transcode> cls3) {
        List<Class<?>> m2279a = this.f3209m.m2279a(cls, cls2);
        if (m2279a != null) {
            return m2279a;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Class<?>> it = this.f3205i.m2816a((Class<?>) cls).iterator();
        while (it.hasNext()) {
            for (Class cls4 : this.f3206j.m2284b(it.next(), cls2)) {
                if (!this.f3207k.m3048b(cls4, cls3).isEmpty() && !arrayList.contains(cls4)) {
                    arrayList.add(cls4);
                }
            }
        }
        C0835d c0835d = this.f3209m;
        List<Class<?>> unmodifiableList = Collections.unmodifiableList(arrayList);
        synchronized (c0835d.f2353a) {
            c0835d.f2353a.put(new C1083h(cls, cls2), unmodifiableList);
        }
        return arrayList;
    }
}
