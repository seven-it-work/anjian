package com.bumptech.glide.load.p042b;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.EnumC0849a;
import com.bumptech.glide.load.InterfaceC1022g;
import com.bumptech.glide.load.p040a.InterfaceC0858d;
import com.bumptech.glide.load.p042b.InterfaceC0909e;
import com.bumptech.glide.load.p047c.InterfaceC0950n;
import java.io.File;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.bumptech.glide.load.b.v */
/* loaded from: classes.dex */
public final class C0926v implements InterfaceC0858d.a<Object>, InterfaceC0909e {

    /* renamed from: a */
    private final InterfaceC0909e.a f2840a;

    /* renamed from: b */
    private final C0910f<?> f2841b;

    /* renamed from: c */
    private int f2842c;

    /* renamed from: d */
    private int f2843d = -1;

    /* renamed from: e */
    private InterfaceC1022g f2844e;

    /* renamed from: f */
    private List<InterfaceC0950n<File, ?>> f2845f;

    /* renamed from: g */
    private int f2846g;

    /* renamed from: h */
    private volatile InterfaceC0950n.a<?> f2847h;

    /* renamed from: i */
    private File f2848i;

    /* renamed from: j */
    private C0927w f2849j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0926v(C0910f<?> c0910f, InterfaceC0909e.a aVar) {
        this.f2841b = c0910f;
        this.f2840a = aVar;
    }

    /* renamed from: c */
    private boolean m2744c() {
        return this.f2846g < this.f2845f.size();
    }

    @Override // com.bumptech.glide.load.p040a.InterfaceC0858d.a
    /* renamed from: a */
    public final void mo2409a(@NonNull Exception exc) {
        this.f2840a.mo2612a(this.f2849j, exc, this.f2847h.f2944c, EnumC0849a.RESOURCE_DISK_CACHE);
    }

    @Override // com.bumptech.glide.load.p040a.InterfaceC0858d.a
    /* renamed from: a */
    public final void mo2410a(Object obj) {
        this.f2840a.mo2613a(this.f2844e, obj, this.f2847h.f2944c, EnumC0849a.RESOURCE_DISK_CACHE, this.f2849j);
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0909e
    /* renamed from: a */
    public final boolean mo2527a() {
        List<InterfaceC1022g> m2638c = this.f2841b.m2638c();
        boolean z = false;
        if (m2638c.isEmpty()) {
            return false;
        }
        C0910f<?> c0910f = this.f2841b;
        List<Class<?>> m3091b = c0910f.f2685c.f2403d.m3091b(c0910f.f2686d.getClass(), c0910f.f2689g, c0910f.f2693k);
        if (m3091b.isEmpty() && File.class.equals(this.f2841b.f2693k)) {
            return false;
        }
        while (true) {
            if (this.f2845f != null && m2744c()) {
                this.f2847h = null;
                while (!z && m2744c()) {
                    List<InterfaceC0950n<File, ?>> list = this.f2845f;
                    int i = this.f2846g;
                    this.f2846g = i + 1;
                    this.f2847h = list.get(i).mo2750a(this.f2848i, this.f2841b.f2687e, this.f2841b.f2688f, this.f2841b.f2691i);
                    if (this.f2847h != null && this.f2841b.m2634a(this.f2847h.f2944c.mo2380a())) {
                        this.f2847h.f2944c.mo2395a(this.f2841b.f2697o, this);
                        z = true;
                    }
                }
                return z;
            }
            this.f2843d++;
            if (this.f2843d >= m3091b.size()) {
                this.f2842c++;
                if (this.f2842c >= m2638c.size()) {
                    return false;
                }
                this.f2843d = 0;
            }
            InterfaceC1022g interfaceC1022g = m2638c.get(this.f2842c);
            Class<?> cls = m3091b.get(this.f2843d);
            this.f2849j = new C0927w(this.f2841b.f2685c.f2402c, interfaceC1022g, this.f2841b.f2696n, this.f2841b.f2687e, this.f2841b.f2688f, this.f2841b.m2637c(cls), cls, this.f2841b.f2691i);
            this.f2848i = this.f2841b.m2632a().mo2529a(this.f2849j);
            if (this.f2848i != null) {
                this.f2844e = interfaceC1022g;
                this.f2845f = this.f2841b.m2633a(this.f2848i);
                this.f2846g = 0;
            }
        }
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0909e
    /* renamed from: b */
    public final void mo2528b() {
        InterfaceC0950n.a<?> aVar = this.f2847h;
        if (aVar != null) {
            aVar.f2944c.mo2397c();
        }
    }
}
