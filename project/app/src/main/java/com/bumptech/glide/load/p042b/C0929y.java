package com.bumptech.glide.load.p042b;

import android.support.annotation.NonNull;
import android.util.Log;
import com.bumptech.glide.C1029m;
import com.bumptech.glide.load.EnumC0849a;
import com.bumptech.glide.load.InterfaceC0961d;
import com.bumptech.glide.load.InterfaceC1022g;
import com.bumptech.glide.load.p040a.InterfaceC0858d;
import com.bumptech.glide.load.p042b.InterfaceC0909e;
import com.bumptech.glide.load.p047c.InterfaceC0950n;
import com.bumptech.glide.util.C1080e;
import java.util.Collections;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.bumptech.glide.load.b.y */
/* loaded from: classes.dex */
public final class C0929y implements InterfaceC0858d.a<Object>, InterfaceC0909e, InterfaceC0909e.a {

    /* renamed from: a */
    private static final String f2862a = "SourceGenerator";

    /* renamed from: b */
    private final C0910f<?> f2863b;

    /* renamed from: c */
    private final InterfaceC0909e.a f2864c;

    /* renamed from: d */
    private int f2865d;

    /* renamed from: e */
    private C0887b f2866e;

    /* renamed from: f */
    private Object f2867f;

    /* renamed from: g */
    private volatile InterfaceC0950n.a<?> f2868g;

    /* renamed from: h */
    private C0901c f2869h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0929y(C0910f<?> c0910f, InterfaceC0909e.a aVar) {
        this.f2863b = c0910f;
        this.f2864c = aVar;
    }

    /* renamed from: b */
    private void m2747b(Object obj) {
        long m3453a = C1080e.m3453a();
        try {
            InterfaceC0961d m2267a = this.f2863b.f2685c.f2403d.f3202d.m2267a(obj.getClass());
            if (m2267a == null) {
                throw new C1029m.e(obj.getClass());
            }
            C0904d c0904d = new C0904d(m2267a, obj, this.f2863b.f2691i);
            this.f2869h = new C0901c(this.f2868g.f2942a, this.f2863b.f2696n);
            this.f2863b.m2632a().mo2531a(this.f2869h, c0904d);
            if (Log.isLoggable(f2862a, 2)) {
                Log.v(f2862a, "Finished encoding source to cache, key: " + this.f2869h + ", data: " + obj + ", encoder: " + m2267a + ", duration: " + C1080e.m3452a(m3453a));
            }
            this.f2868g.f2944c.mo2396b();
            this.f2866e = new C0887b(Collections.singletonList(this.f2868g.f2942a), this.f2863b, this);
        } catch (Throwable th) {
            this.f2868g.f2944c.mo2396b();
            throw th;
        }
    }

    /* renamed from: d */
    private boolean m2748d() {
        return this.f2865d < this.f2863b.m2636b().size();
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0909e.a
    /* renamed from: a */
    public final void mo2612a(InterfaceC1022g interfaceC1022g, Exception exc, InterfaceC0858d<?> interfaceC0858d, EnumC0849a enumC0849a) {
        this.f2864c.mo2612a(interfaceC1022g, exc, interfaceC0858d, this.f2868g.f2944c.mo2398d());
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0909e.a
    /* renamed from: a */
    public final void mo2613a(InterfaceC1022g interfaceC1022g, Object obj, InterfaceC0858d<?> interfaceC0858d, EnumC0849a enumC0849a, InterfaceC1022g interfaceC1022g2) {
        this.f2864c.mo2613a(interfaceC1022g, obj, interfaceC0858d, this.f2868g.f2944c.mo2398d(), interfaceC1022g);
    }

    @Override // com.bumptech.glide.load.p040a.InterfaceC0858d.a
    /* renamed from: a */
    public final void mo2409a(@NonNull Exception exc) {
        this.f2864c.mo2612a(this.f2869h, exc, this.f2868g.f2944c, this.f2868g.f2944c.mo2398d());
    }

    @Override // com.bumptech.glide.load.p040a.InterfaceC0858d.a
    /* renamed from: a */
    public final void mo2410a(Object obj) {
        AbstractC0913i abstractC0913i = this.f2863b.f2698p;
        if (obj == null || !abstractC0913i.mo2682a(this.f2868g.f2944c.mo2398d())) {
            this.f2864c.mo2613a(this.f2868g.f2942a, obj, this.f2868g.f2944c, this.f2868g.f2944c.mo2398d(), this.f2869h);
        } else {
            this.f2867f = obj;
            this.f2864c.mo2614c();
        }
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0909e
    /* renamed from: a */
    public final boolean mo2527a() {
        if (this.f2867f != null) {
            Object obj = this.f2867f;
            this.f2867f = null;
            long m3453a = C1080e.m3453a();
            try {
                InterfaceC0961d m2267a = this.f2863b.f2685c.f2403d.f3202d.m2267a(obj.getClass());
                if (m2267a == null) {
                    throw new C1029m.e(obj.getClass());
                }
                C0904d c0904d = new C0904d(m2267a, obj, this.f2863b.f2691i);
                this.f2869h = new C0901c(this.f2868g.f2942a, this.f2863b.f2696n);
                this.f2863b.m2632a().mo2531a(this.f2869h, c0904d);
                if (Log.isLoggable(f2862a, 2)) {
                    Log.v(f2862a, "Finished encoding source to cache, key: " + this.f2869h + ", data: " + obj + ", encoder: " + m2267a + ", duration: " + C1080e.m3452a(m3453a));
                }
                this.f2868g.f2944c.mo2396b();
                this.f2866e = new C0887b(Collections.singletonList(this.f2868g.f2942a), this.f2863b, this);
            } catch (Throwable th) {
                this.f2868g.f2944c.mo2396b();
                throw th;
            }
        }
        if (this.f2866e != null && this.f2866e.mo2527a()) {
            return true;
        }
        this.f2866e = null;
        this.f2868g = null;
        boolean z = false;
        while (!z) {
            if (!(this.f2865d < this.f2863b.m2636b().size())) {
                break;
            }
            List<InterfaceC0950n.a<?>> m2636b = this.f2863b.m2636b();
            int i = this.f2865d;
            this.f2865d = i + 1;
            this.f2868g = m2636b.get(i);
            if (this.f2868g != null && (this.f2863b.f2698p.mo2682a(this.f2868g.f2944c.mo2398d()) || this.f2863b.m2634a(this.f2868g.f2944c.mo2380a()))) {
                this.f2868g.f2944c.mo2395a(this.f2863b.f2697o, this);
                z = true;
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0909e
    /* renamed from: b */
    public final void mo2528b() {
        InterfaceC0950n.a<?> aVar = this.f2868g;
        if (aVar != null) {
            aVar.f2944c.mo2397c();
        }
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0909e.a
    /* renamed from: c */
    public final void mo2614c() {
        throw new UnsupportedOperationException();
    }
}
