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
/* renamed from: com.bumptech.glide.load.b.b */
/* loaded from: classes.dex */
public final class C0887b implements InterfaceC0858d.a<Object>, InterfaceC0909e {

    /* renamed from: a */
    private final List<InterfaceC1022g> f2557a;

    /* renamed from: b */
    private final C0910f<?> f2558b;

    /* renamed from: c */
    private final InterfaceC0909e.a f2559c;

    /* renamed from: d */
    private int f2560d;

    /* renamed from: e */
    private InterfaceC1022g f2561e;

    /* renamed from: f */
    private List<InterfaceC0950n<File, ?>> f2562f;

    /* renamed from: g */
    private int f2563g;

    /* renamed from: h */
    private volatile InterfaceC0950n.a<?> f2564h;

    /* renamed from: i */
    private File f2565i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0887b(C0910f<?> c0910f, InterfaceC0909e.a aVar) {
        this(c0910f.m2638c(), c0910f, aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0887b(List<InterfaceC1022g> list, C0910f<?> c0910f, InterfaceC0909e.a aVar) {
        this.f2560d = -1;
        this.f2557a = list;
        this.f2558b = c0910f;
        this.f2559c = aVar;
    }

    /* renamed from: c */
    private boolean m2526c() {
        return this.f2563g < this.f2562f.size();
    }

    @Override // com.bumptech.glide.load.p040a.InterfaceC0858d.a
    /* renamed from: a */
    public final void mo2409a(@NonNull Exception exc) {
        this.f2559c.mo2612a(this.f2561e, exc, this.f2564h.f2944c, EnumC0849a.DATA_DISK_CACHE);
    }

    @Override // com.bumptech.glide.load.p040a.InterfaceC0858d.a
    /* renamed from: a */
    public final void mo2410a(Object obj) {
        this.f2559c.mo2613a(this.f2561e, obj, this.f2564h.f2944c, EnumC0849a.DATA_DISK_CACHE, this.f2561e);
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0909e
    /* renamed from: a */
    public final boolean mo2527a() {
        while (true) {
            boolean z = false;
            if (this.f2562f != null && m2526c()) {
                this.f2564h = null;
                while (!z && m2526c()) {
                    List<InterfaceC0950n<File, ?>> list = this.f2562f;
                    int i = this.f2563g;
                    this.f2563g = i + 1;
                    this.f2564h = list.get(i).mo2750a(this.f2565i, this.f2558b.f2687e, this.f2558b.f2688f, this.f2558b.f2691i);
                    if (this.f2564h != null && this.f2558b.m2634a(this.f2564h.f2944c.mo2380a())) {
                        this.f2564h.f2944c.mo2395a(this.f2558b.f2697o, this);
                        z = true;
                    }
                }
                return z;
            }
            this.f2560d++;
            if (this.f2560d >= this.f2557a.size()) {
                return false;
            }
            InterfaceC1022g interfaceC1022g = this.f2557a.get(this.f2560d);
            this.f2565i = this.f2558b.m2632a().mo2529a(new C0901c(interfaceC1022g, this.f2558b.f2696n));
            if (this.f2565i != null) {
                this.f2561e = interfaceC1022g;
                this.f2562f = this.f2558b.m2633a(this.f2565i);
                this.f2563g = 0;
            }
        }
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0909e
    /* renamed from: b */
    public final void mo2528b() {
        InterfaceC0950n.a<?> aVar = this.f2564h;
        if (aVar != null) {
            aVar.f2944c.mo2397c();
        }
    }
}
