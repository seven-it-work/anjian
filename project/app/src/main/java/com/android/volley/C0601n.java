package com.android.volley;

import com.android.volley.InterfaceC0589b;

/* renamed from: com.android.volley.n */
/* loaded from: classes.dex */
public final class C0601n<T> {

    /* renamed from: a */
    public final T f1291a;

    /* renamed from: b */
    public final InterfaceC0589b.a f1292b;

    /* renamed from: c */
    public final C0606s f1293c;

    /* renamed from: d */
    public boolean f1294d;

    /* renamed from: com.android.volley.n$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void mo1407a(C0606s c0606s);
    }

    /* renamed from: com.android.volley.n$b */
    /* loaded from: classes.dex */
    public interface b<T> {
        /* renamed from: a */
        void mo1408a(T t);
    }

    private C0601n(C0606s c0606s) {
        this.f1294d = false;
        this.f1291a = null;
        this.f1292b = null;
        this.f1293c = c0606s;
    }

    private C0601n(T t, InterfaceC0589b.a aVar) {
        this.f1294d = false;
        this.f1291a = t;
        this.f1292b = aVar;
        this.f1293c = null;
    }

    /* renamed from: a */
    public static <T> C0601n<T> m1404a(C0606s c0606s) {
        return new C0601n<>(c0606s);
    }

    /* renamed from: a */
    public static <T> C0601n<T> m1405a(T t, InterfaceC0589b.a aVar) {
        return new C0601n<>(t, aVar);
    }

    /* renamed from: a */
    private boolean m1406a() {
        return this.f1293c == null;
    }
}
