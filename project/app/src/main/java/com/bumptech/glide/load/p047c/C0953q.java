package com.bumptech.glide.load.p047c;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.Pools;
import com.bumptech.glide.EnumC0848l;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.EnumC0849a;
import com.bumptech.glide.load.InterfaceC1022g;
import com.bumptech.glide.load.p040a.InterfaceC0858d;
import com.bumptech.glide.load.p042b.C0920p;
import com.bumptech.glide.load.p047c.InterfaceC0950n;
import com.bumptech.glide.util.C1084i;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.bumptech.glide.load.c.q */
/* loaded from: classes.dex */
final class C0953q<Model, Data> implements InterfaceC0950n<Model, Data> {

    /* renamed from: a */
    private final List<InterfaceC0950n<Model, Data>> f2949a;

    /* renamed from: b */
    private final Pools.Pool<List<Throwable>> f2950b;

    /* renamed from: com.bumptech.glide.load.c.q$a */
    /* loaded from: classes.dex */
    static class a<Data> implements InterfaceC0858d<Data>, InterfaceC0858d.a<Data> {

        /* renamed from: a */
        private final List<InterfaceC0858d<Data>> f2951a;

        /* renamed from: b */
        private final Pools.Pool<List<Throwable>> f2952b;

        /* renamed from: c */
        private int f2953c;

        /* renamed from: d */
        private EnumC0848l f2954d;

        /* renamed from: e */
        private InterfaceC0858d.a<? super Data> f2955e;

        /* renamed from: f */
        @Nullable
        private List<Throwable> f2956f;

        a(@NonNull List<InterfaceC0858d<Data>> list, @NonNull Pools.Pool<List<Throwable>> pool) {
            this.f2952b = pool;
            C1084i.m3472a(list);
            this.f2951a = list;
            this.f2953c = 0;
        }

        /* renamed from: e */
        private void m2824e() {
            if (this.f2953c < this.f2951a.size() - 1) {
                this.f2953c++;
                mo2395a(this.f2954d, this.f2955e);
            } else {
                C1084i.m3470a(this.f2956f, "Argument must not be null");
                this.f2955e.mo2409a((Exception) new C0920p("Fetch failed", new ArrayList(this.f2956f)));
            }
        }

        @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
        @NonNull
        /* renamed from: a */
        public final Class<Data> mo2380a() {
            return this.f2951a.get(0).mo2380a();
        }

        @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
        /* renamed from: a */
        public final void mo2395a(@NonNull EnumC0848l enumC0848l, @NonNull InterfaceC0858d.a<? super Data> aVar) {
            this.f2954d = enumC0848l;
            this.f2955e = aVar;
            this.f2956f = this.f2952b.acquire();
            this.f2951a.get(this.f2953c).mo2395a(enumC0848l, this);
        }

        @Override // com.bumptech.glide.load.p040a.InterfaceC0858d.a
        /* renamed from: a */
        public final void mo2409a(@NonNull Exception exc) {
            ((List) C1084i.m3470a(this.f2956f, "Argument must not be null")).add(exc);
            m2824e();
        }

        @Override // com.bumptech.glide.load.p040a.InterfaceC0858d.a
        /* renamed from: a */
        public final void mo2410a(@Nullable Data data) {
            if (data != null) {
                this.f2955e.mo2410a((InterfaceC0858d.a<? super Data>) data);
            } else {
                m2824e();
            }
        }

        @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
        /* renamed from: b */
        public final void mo2396b() {
            if (this.f2956f != null) {
                this.f2952b.release(this.f2956f);
            }
            this.f2956f = null;
            Iterator<InterfaceC0858d<Data>> it = this.f2951a.iterator();
            while (it.hasNext()) {
                it.next().mo2396b();
            }
        }

        @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
        /* renamed from: c */
        public final void mo2397c() {
            Iterator<InterfaceC0858d<Data>> it = this.f2951a.iterator();
            while (it.hasNext()) {
                it.next().mo2397c();
            }
        }

        @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
        @NonNull
        /* renamed from: d */
        public final EnumC0849a mo2398d() {
            return this.f2951a.get(0).mo2398d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0953q(@NonNull List<InterfaceC0950n<Model, Data>> list, @NonNull Pools.Pool<List<Throwable>> pool) {
        this.f2949a = list;
        this.f2950b = pool;
    }

    @Override // com.bumptech.glide.load.p047c.InterfaceC0950n
    /* renamed from: a */
    public final InterfaceC0950n.a<Data> mo2750a(@NonNull Model model, int i, int i2, @NonNull C1025j c1025j) {
        InterfaceC0950n.a<Data> mo2750a;
        int size = this.f2949a.size();
        ArrayList arrayList = new ArrayList(size);
        InterfaceC1022g interfaceC1022g = null;
        for (int i3 = 0; i3 < size; i3++) {
            InterfaceC0950n<Model, Data> interfaceC0950n = this.f2949a.get(i3);
            if (interfaceC0950n.mo2751a(model) && (mo2750a = interfaceC0950n.mo2750a(model, i, i2, c1025j)) != null) {
                interfaceC1022g = mo2750a.f2942a;
                arrayList.add(mo2750a.f2944c);
            }
        }
        if (arrayList.isEmpty() || interfaceC1022g == null) {
            return null;
        }
        return new InterfaceC0950n.a<>(interfaceC1022g, new a(arrayList, this.f2950b));
    }

    @Override // com.bumptech.glide.load.p047c.InterfaceC0950n
    /* renamed from: a */
    public final boolean mo2751a(@NonNull Model model) {
        Iterator<InterfaceC0950n<Model, Data>> it = this.f2949a.iterator();
        while (it.hasNext()) {
            if (it.next().mo2751a(model)) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        return "MultiModelLoader{modelLoaders=" + Arrays.toString(this.f2949a.toArray()) + '}';
    }
}
