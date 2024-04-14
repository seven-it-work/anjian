package com.bumptech.glide.request;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.Pools;
import android.util.Log;
import com.bumptech.glide.C0844h;
import com.bumptech.glide.EnumC0848l;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.EnumC0849a;
import com.bumptech.glide.load.InterfaceC1022g;
import com.bumptech.glide.load.InterfaceC1028m;
import com.bumptech.glide.load.p042b.AbstractC0913i;
import com.bumptech.glide.load.p042b.C0870a;
import com.bumptech.glide.load.p042b.C0910f;
import com.bumptech.glide.load.p042b.C0914j;
import com.bumptech.glide.load.p042b.C0915k;
import com.bumptech.glide.load.p042b.C0917m;
import com.bumptech.glide.load.p042b.C0919o;
import com.bumptech.glide.load.p042b.C0920p;
import com.bumptech.glide.load.p042b.InterfaceC0909e;
import com.bumptech.glide.load.p042b.InterfaceC0925u;
import com.bumptech.glide.load.p042b.RunnableC0911g;
import com.bumptech.glide.load.p049d.p052c.C0995a;
import com.bumptech.glide.request.p056a.InterfaceC1056g;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.util.C1080e;
import com.bumptech.glide.util.C1084i;
import com.bumptech.glide.util.C1086k;
import com.bumptech.glide.util.p057a.AbstractC1076c;
import com.bumptech.glide.util.p057a.C1074a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.bumptech.glide.request.i */
/* loaded from: classes.dex */
public final class C1068i<R> implements InterfaceC1062c, InterfaceC1067h, SizeReadyCallback, C1074a.c {

    /* renamed from: b */
    private static final String f3390b = "Glide";

    /* renamed from: A */
    private Drawable f3393A;

    /* renamed from: B */
    private Drawable f3394B;

    /* renamed from: C */
    private int f3395C;

    /* renamed from: D */
    private int f3396D;

    /* renamed from: d */
    private boolean f3397d;

    /* renamed from: f */
    @Nullable
    private final String f3398f;

    /* renamed from: g */
    private final AbstractC1076c f3399g;

    /* renamed from: h */
    @Nullable
    private InterfaceC1065f<R> f3400h;

    /* renamed from: i */
    private InterfaceC1063d f3401i;

    /* renamed from: j */
    private Context f3402j;

    /* renamed from: k */
    private C0844h f3403k;

    /* renamed from: l */
    @Nullable
    private Object f3404l;

    /* renamed from: m */
    private Class<R> f3405m;

    /* renamed from: n */
    private C1066g f3406n;

    /* renamed from: o */
    private int f3407o;

    /* renamed from: p */
    private int f3408p;

    /* renamed from: q */
    private EnumC0848l f3409q;

    /* renamed from: r */
    private Target<R> f3410r;

    /* renamed from: s */
    @Nullable
    private List<InterfaceC1065f<R>> f3411s;

    /* renamed from: t */
    private C0914j f3412t;

    /* renamed from: u */
    private InterfaceC1056g<? super R> f3413u;

    /* renamed from: v */
    private InterfaceC0925u<R> f3414v;

    /* renamed from: w */
    private C0914j.d f3415w;

    /* renamed from: x */
    private long f3416x;

    /* renamed from: y */
    private int f3417y;

    /* renamed from: z */
    private Drawable f3418z;

    /* renamed from: c */
    private static final Pools.Pool<C1068i<?>> f3391c = C1074a.m3428a(new C1074a.a<C1068i<?>>() { // from class: com.bumptech.glide.request.i.1
        /* renamed from: b */
        private static C1068i<?> m3411b() {
            return new C1068i<>();
        }

        @Override // com.bumptech.glide.util.p057a.C1074a.a
        /* renamed from: a */
        public final /* synthetic */ C1068i<?> mo2576a() {
            return new C1068i<>();
        }
    });

    /* renamed from: a */
    private static final String f3389a = "Request";

    /* renamed from: e */
    private static final boolean f3392e = Log.isLoggable(f3389a, 2);

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* renamed from: com.bumptech.glide.request.i$a */
    /* loaded from: classes.dex */
    public static final class a {
        public static final int PENDING$613311b9 = 1;
        public static final int RUNNING$613311b9 = 2;
        public static final int WAITING_FOR_SIZE$613311b9 = 3;
        public static final int COMPLETE$613311b9 = 4;
        public static final int FAILED$613311b9 = 5;
        public static final int CLEARED$613311b9 = 6;
        private static final /* synthetic */ int[] $VALUES$48811ebe = {PENDING$613311b9, RUNNING$613311b9, WAITING_FOR_SIZE$613311b9, COMPLETE$613311b9, FAILED$613311b9, CLEARED$613311b9};

        private a(String str, int i) {
        }

        public static int[] values$43a1017f() {
            return (int[]) $VALUES$48811ebe.clone();
        }
    }

    C1068i() {
        this.f3398f = f3392e ? String.valueOf(super.hashCode()) : null;
        this.f3399g = new AbstractC1076c.b();
    }

    /* renamed from: a */
    private static int m3390a(int i, float f) {
        return i == Integer.MIN_VALUE ? i : Math.round(f * i);
    }

    /* renamed from: a */
    private Drawable m3391a(@DrawableRes int i) {
        return C0995a.m2965a(this.f3403k, i, this.f3406n.f3384s != null ? this.f3406n.f3384s : this.f3402j.getTheme());
    }

    /* renamed from: a */
    public static <R> C1068i<R> m3392a(Context context, C0844h c0844h, Object obj, Class<R> cls, C1066g c1066g, int i, int i2, EnumC0848l enumC0848l, Target<R> target, InterfaceC1065f<R> interfaceC1065f, @Nullable List<InterfaceC1065f<R>> list, InterfaceC1063d interfaceC1063d, C0914j c0914j, InterfaceC1056g<? super R> interfaceC1056g) {
        C1068i<R> c1068i = (C1068i) f3391c.acquire();
        if (c1068i == null) {
            c1068i = new C1068i<>();
        }
        ((C1068i) c1068i).f3402j = context;
        ((C1068i) c1068i).f3403k = c0844h;
        ((C1068i) c1068i).f3404l = obj;
        ((C1068i) c1068i).f3405m = cls;
        ((C1068i) c1068i).f3406n = c1066g;
        ((C1068i) c1068i).f3407o = i;
        ((C1068i) c1068i).f3408p = i2;
        ((C1068i) c1068i).f3409q = enumC0848l;
        ((C1068i) c1068i).f3410r = target;
        ((C1068i) c1068i).f3400h = interfaceC1065f;
        ((C1068i) c1068i).f3411s = list;
        ((C1068i) c1068i).f3401i = interfaceC1063d;
        ((C1068i) c1068i).f3412t = c0914j;
        ((C1068i) c1068i).f3413u = interfaceC1056g;
        ((C1068i) c1068i).f3417y = a.PENDING$613311b9;
        return c1068i;
    }

    /* renamed from: a */
    private void m3393a(C0920p c0920p, int i) {
        boolean z;
        this.f3399g.mo3441a();
        int i2 = this.f3403k.f2408i;
        if (i2 <= i) {
            Log.w(f3390b, "Load failed for " + this.f3404l + " with size [" + this.f3395C + "x" + this.f3396D + "]", c0920p);
            if (i2 <= 4) {
                c0920p.logRootCauses(f3390b);
            }
        }
        this.f3415w = null;
        this.f3417y = a.FAILED$613311b9;
        boolean z2 = true;
        this.f3397d = true;
        try {
            if (this.f3411s != null) {
                Iterator<InterfaceC1065f<R>> it = this.f3411s.iterator();
                z = false;
                while (it.hasNext()) {
                    z |= it.next().mo3273a(c0920p, this.f3404l, this.f3410r, m3408r());
                }
            } else {
                z = false;
            }
            if (this.f3400h == null || !this.f3400h.mo3273a(c0920p, this.f3404l, this.f3410r, m3408r())) {
                z2 = false;
            }
            if (!(z | z2) && m3407q()) {
                Drawable m3403m = this.f3404l == null ? m3403m() : null;
                if (m3403m == null) {
                    if (this.f3418z == null) {
                        this.f3418z = this.f3406n.f3369d;
                        if (this.f3418z == null && this.f3406n.f3370e > 0) {
                            this.f3418z = m3391a(this.f3406n.f3370e);
                        }
                    }
                    m3403m = this.f3418z;
                }
                if (m3403m == null) {
                    m3403m = m3402l();
                }
                this.f3410r.onLoadFailed(m3403m);
            }
            this.f3397d = false;
            if (this.f3401i != null) {
                this.f3401i.mo3256f(this);
            }
        } catch (Throwable th) {
            this.f3397d = false;
            throw th;
        }
    }

    /* renamed from: a */
    private void m3394a(InterfaceC0925u<?> interfaceC0925u) {
        C0914j.m2689a(interfaceC0925u);
        this.f3414v = null;
    }

    /* renamed from: a */
    private void m3395a(InterfaceC0925u<R> interfaceC0925u, R r, EnumC0849a enumC0849a) {
        boolean z;
        boolean m3408r = m3408r();
        this.f3417y = a.COMPLETE$613311b9;
        this.f3414v = interfaceC0925u;
        if (this.f3403k.f2408i <= 3) {
            Log.d(f3390b, "Finished loading " + r.getClass().getSimpleName() + " from " + enumC0849a + " for " + this.f3404l + " with size [" + this.f3395C + "x" + this.f3396D + "] in " + C1080e.m3452a(this.f3416x) + " ms");
        }
        boolean z2 = true;
        this.f3397d = true;
        try {
            if (this.f3411s != null) {
                Iterator<InterfaceC1065f<R>> it = this.f3411s.iterator();
                z = false;
                while (it.hasNext()) {
                    z |= it.next().mo3274a(r, this.f3404l, this.f3410r, enumC0849a, m3408r);
                }
            } else {
                z = false;
            }
            if (this.f3400h == null || !this.f3400h.mo3274a(r, this.f3404l, this.f3410r, enumC0849a, m3408r)) {
                z2 = false;
            }
            if (!(z2 | z)) {
                this.f3410r.onResourceReady(r, this.f3413u.mo3262a(enumC0849a, m3408r));
            }
            this.f3397d = false;
            if (this.f3401i != null) {
                this.f3401i.mo3254e(this);
            }
        } catch (Throwable th) {
            this.f3397d = false;
            throw th;
        }
    }

    /* renamed from: a */
    private void m3396a(String str) {
        Log.v(f3389a, str + " this: " + this.f3398f);
    }

    /* renamed from: a */
    private static boolean m3397a(C1068i<?> c1068i, C1068i<?> c1068i2) {
        return (((C1068i) c1068i).f3411s == null ? 0 : ((C1068i) c1068i).f3411s.size()) == (((C1068i) c1068i2).f3411s == null ? 0 : ((C1068i) c1068i2).f3411s.size());
    }

    /* renamed from: b */
    private void m3398b(Context context, C0844h c0844h, Object obj, Class<R> cls, C1066g c1066g, int i, int i2, EnumC0848l enumC0848l, Target<R> target, InterfaceC1065f<R> interfaceC1065f, @Nullable List<InterfaceC1065f<R>> list, InterfaceC1063d interfaceC1063d, C0914j c0914j, InterfaceC1056g<? super R> interfaceC1056g) {
        this.f3402j = context;
        this.f3403k = c0844h;
        this.f3404l = obj;
        this.f3405m = cls;
        this.f3406n = c1066g;
        this.f3407o = i;
        this.f3408p = i2;
        this.f3409q = enumC0848l;
        this.f3410r = target;
        this.f3400h = interfaceC1065f;
        this.f3411s = list;
        this.f3401i = interfaceC1063d;
        this.f3412t = c0914j;
        this.f3413u = interfaceC1056g;
        this.f3417y = a.PENDING$613311b9;
    }

    /* renamed from: i */
    private void m3399i() {
        m3400j();
        this.f3399g.mo3441a();
        this.f3410r.removeCallback(this);
        if (this.f3415w != null) {
            C0914j.d dVar = this.f3415w;
            C0915k<?> c0915k = dVar.f2779a;
            InterfaceC1067h interfaceC1067h = dVar.f2780b;
            C1086k.m3485a();
            c0915k.f2789b.mo3441a();
            if (c0915k.f2799l || c0915k.f2800m) {
                if (c0915k.f2801n == null) {
                    c0915k.f2801n = new ArrayList(2);
                }
                if (!c0915k.f2801n.contains(interfaceC1067h)) {
                    c0915k.f2801n.add(interfaceC1067h);
                }
            } else {
                c0915k.f2788a.remove(interfaceC1067h);
                if (c0915k.f2788a.isEmpty() && !c0915k.f2800m && !c0915k.f2799l && !c0915k.f2804q) {
                    c0915k.f2804q = true;
                    RunnableC0911g<?> runnableC0911g = c0915k.f2803p;
                    runnableC0911g.f2727t = true;
                    InterfaceC0909e interfaceC0909e = runnableC0911g.f2726s;
                    if (interfaceC0909e != null) {
                        interfaceC0909e.mo2528b();
                    }
                    c0915k.f2790c.mo2693a(c0915k, c0915k.f2792e);
                }
            }
            this.f3415w = null;
        }
    }

    /* renamed from: j */
    private void m3400j() {
        if (this.f3397d) {
            throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
        }
    }

    /* renamed from: k */
    private Drawable m3401k() {
        if (this.f3418z == null) {
            this.f3418z = this.f3406n.f3369d;
            if (this.f3418z == null && this.f3406n.f3370e > 0) {
                this.f3418z = m3391a(this.f3406n.f3370e);
            }
        }
        return this.f3418z;
    }

    /* renamed from: l */
    private Drawable m3402l() {
        if (this.f3393A == null) {
            this.f3393A = this.f3406n.f3371f;
            if (this.f3393A == null && this.f3406n.f3372g > 0) {
                this.f3393A = m3391a(this.f3406n.f3372g);
            }
        }
        return this.f3393A;
    }

    /* renamed from: m */
    private Drawable m3403m() {
        if (this.f3394B == null) {
            this.f3394B = this.f3406n.f3379n;
            if (this.f3394B == null && this.f3406n.f3380o > 0) {
                this.f3394B = m3391a(this.f3406n.f3380o);
            }
        }
        return this.f3394B;
    }

    /* renamed from: n */
    private void m3404n() {
        if (m3407q()) {
            Drawable m3403m = this.f3404l == null ? m3403m() : null;
            if (m3403m == null) {
                if (this.f3418z == null) {
                    this.f3418z = this.f3406n.f3369d;
                    if (this.f3418z == null && this.f3406n.f3370e > 0) {
                        this.f3418z = m3391a(this.f3406n.f3370e);
                    }
                }
                m3403m = this.f3418z;
            }
            if (m3403m == null) {
                m3403m = m3402l();
            }
            this.f3410r.onLoadFailed(m3403m);
        }
    }

    /* renamed from: o */
    private boolean m3405o() {
        return this.f3401i == null || this.f3401i.mo3249b(this);
    }

    /* renamed from: p */
    private boolean m3406p() {
        return this.f3401i == null || this.f3401i.mo3253d(this);
    }

    /* renamed from: q */
    private boolean m3407q() {
        return this.f3401i == null || this.f3401i.mo3251c(this);
    }

    /* renamed from: r */
    private boolean m3408r() {
        return this.f3401i == null || !this.f3401i.mo3260i();
    }

    /* renamed from: s */
    private void m3409s() {
        if (this.f3401i != null) {
            this.f3401i.mo3254e(this);
        }
    }

    /* renamed from: t */
    private void m3410t() {
        if (this.f3401i != null) {
            this.f3401i.mo3256f(this);
        }
    }

    @Override // com.bumptech.glide.request.InterfaceC1062c
    /* renamed from: a */
    public final void mo3246a() {
        m3400j();
        this.f3399g.mo3441a();
        this.f3416x = C1080e.m3453a();
        if (this.f3404l == null) {
            if (C1086k.m3486a(this.f3407o, this.f3408p)) {
                this.f3395C = this.f3407o;
                this.f3396D = this.f3408p;
            }
            m3393a(new C0920p("Received null model"), m3403m() == null ? 5 : 3);
            return;
        }
        if (this.f3417y == a.RUNNING$613311b9) {
            throw new IllegalArgumentException("Cannot restart a running request");
        }
        if (this.f3417y == a.COMPLETE$613311b9) {
            mo3389a((InterfaceC0925u<?>) this.f3414v, EnumC0849a.MEMORY_CACHE);
            return;
        }
        this.f3417y = a.WAITING_FOR_SIZE$613311b9;
        if (C1086k.m3486a(this.f3407o, this.f3408p)) {
            onSizeReady(this.f3407o, this.f3408p);
        } else {
            this.f3410r.getSize(this);
        }
        if ((this.f3417y == a.RUNNING$613311b9 || this.f3417y == a.WAITING_FOR_SIZE$613311b9) && m3407q()) {
            this.f3410r.onLoadStarted(m3402l());
        }
        if (f3392e) {
            m3396a("finished run method in " + C1080e.m3452a(this.f3416x));
        }
    }

    @Override // com.bumptech.glide.request.InterfaceC1067h
    /* renamed from: a */
    public final void mo3388a(C0920p c0920p) {
        m3393a(c0920p, 5);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.request.InterfaceC1067h
    /* renamed from: a */
    public final void mo3389a(InterfaceC0925u<?> interfaceC0925u, EnumC0849a enumC0849a) {
        this.f3399g.mo3441a();
        this.f3415w = null;
        if (interfaceC0925u == null) {
            mo3388a(new C0920p("Expected to receive a Resource<R> with an object of " + this.f3405m + " inside, but instead got null."));
            return;
        }
        Object mo2724b = interfaceC0925u.mo2724b();
        if (mo2724b != null && this.f3405m.isAssignableFrom(mo2724b.getClass())) {
            if (this.f3401i == null || this.f3401i.mo3249b(this)) {
                m3395a(interfaceC0925u, mo2724b, enumC0849a);
                return;
            } else {
                m3394a(interfaceC0925u);
                this.f3417y = a.COMPLETE$613311b9;
                return;
            }
        }
        m3394a(interfaceC0925u);
        StringBuilder sb = new StringBuilder("Expected to receive an object of ");
        sb.append(this.f3405m);
        sb.append(" but instead got ");
        sb.append(mo2724b != null ? mo2724b.getClass() : "");
        sb.append("{");
        sb.append(mo2724b);
        sb.append("} inside Resource{");
        sb.append(interfaceC0925u);
        sb.append("}.");
        sb.append(mo2724b != null ? "" : " To indicate failure return a null Resource object, rather than a Resource object containing null data.");
        mo3388a(new C0920p(sb.toString()));
    }

    @Override // com.bumptech.glide.request.InterfaceC1062c
    /* renamed from: a */
    public final boolean mo3247a(InterfaceC1062c interfaceC1062c) {
        if (interfaceC1062c instanceof C1068i) {
            C1068i c1068i = (C1068i) interfaceC1062c;
            if (this.f3407o == c1068i.f3407o && this.f3408p == c1068i.f3408p && C1086k.m3493b(this.f3404l, c1068i.f3404l) && this.f3405m.equals(c1068i.f3405m) && this.f3406n.equals(c1068i.f3406n) && this.f3409q == c1068i.f3409q) {
                if ((this.f3411s == null ? 0 : this.f3411s.size()) == (c1068i.f3411s == null ? 0 : c1068i.f3411s.size())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.bumptech.glide.request.InterfaceC1062c
    /* renamed from: b */
    public final void mo3248b() {
        C1086k.m3485a();
        m3400j();
        this.f3399g.mo3441a();
        if (this.f3417y == a.CLEARED$613311b9) {
            return;
        }
        m3400j();
        this.f3399g.mo3441a();
        this.f3410r.removeCallback(this);
        boolean z = true;
        if (this.f3415w != null) {
            C0914j.d dVar = this.f3415w;
            C0915k<?> c0915k = dVar.f2779a;
            InterfaceC1067h interfaceC1067h = dVar.f2780b;
            C1086k.m3485a();
            c0915k.f2789b.mo3441a();
            if (c0915k.f2799l || c0915k.f2800m) {
                if (c0915k.f2801n == null) {
                    c0915k.f2801n = new ArrayList(2);
                }
                if (!c0915k.f2801n.contains(interfaceC1067h)) {
                    c0915k.f2801n.add(interfaceC1067h);
                }
            } else {
                c0915k.f2788a.remove(interfaceC1067h);
                if (c0915k.f2788a.isEmpty() && !c0915k.f2800m && !c0915k.f2799l && !c0915k.f2804q) {
                    c0915k.f2804q = true;
                    RunnableC0911g<?> runnableC0911g = c0915k.f2803p;
                    runnableC0911g.f2727t = true;
                    InterfaceC0909e interfaceC0909e = runnableC0911g.f2726s;
                    if (interfaceC0909e != null) {
                        interfaceC0909e.mo2528b();
                    }
                    c0915k.f2790c.mo2693a(c0915k, c0915k.f2792e);
                }
            }
            this.f3415w = null;
        }
        if (this.f3414v != null) {
            m3394a((InterfaceC0925u<?>) this.f3414v);
        }
        if (this.f3401i != null && !this.f3401i.mo3253d(this)) {
            z = false;
        }
        if (z) {
            this.f3410r.onLoadCleared(m3402l());
        }
        this.f3417y = a.CLEARED$613311b9;
    }

    @Override // com.bumptech.glide.request.InterfaceC1062c
    /* renamed from: c */
    public final boolean mo3250c() {
        return this.f3417y == a.RUNNING$613311b9 || this.f3417y == a.WAITING_FOR_SIZE$613311b9;
    }

    @Override // com.bumptech.glide.request.InterfaceC1062c
    /* renamed from: d */
    public final boolean mo3252d() {
        return this.f3417y == a.COMPLETE$613311b9;
    }

    @Override // com.bumptech.glide.request.InterfaceC1062c
    /* renamed from: e */
    public final boolean mo3255e() {
        return mo3252d();
    }

    @Override // com.bumptech.glide.request.InterfaceC1062c
    /* renamed from: f */
    public final boolean mo3257f() {
        return this.f3417y == a.CLEARED$613311b9;
    }

    @Override // com.bumptech.glide.request.InterfaceC1062c
    /* renamed from: g */
    public final boolean mo3258g() {
        return this.f3417y == a.FAILED$613311b9;
    }

    @Override // com.bumptech.glide.util.p057a.C1074a.c
    @NonNull
    /* renamed from: g_ */
    public final AbstractC1076c mo2577g_() {
        return this.f3399g;
    }

    @Override // com.bumptech.glide.request.InterfaceC1062c
    /* renamed from: h */
    public final void mo3259h() {
        m3400j();
        this.f3402j = null;
        this.f3403k = null;
        this.f3404l = null;
        this.f3405m = null;
        this.f3406n = null;
        this.f3407o = -1;
        this.f3408p = -1;
        this.f3410r = null;
        this.f3411s = null;
        this.f3400h = null;
        this.f3401i = null;
        this.f3413u = null;
        this.f3415w = null;
        this.f3418z = null;
        this.f3393A = null;
        this.f3394B = null;
        this.f3395C = -1;
        this.f3396D = -1;
        f3391c.release(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v3, types: [com.bumptech.glide.request.h] */
    /* JADX WARN: Type inference failed for: r4v9, types: [com.bumptech.glide.request.h] */
    @Override // com.bumptech.glide.request.target.SizeReadyCallback
    public final void onSizeReady(int i, int i2) {
        C0919o c0919o;
        long j;
        C0919o<?> c0919o2;
        C1068i<R> c1068i;
        C0914j.d dVar;
        String str;
        C1068i<R> c1068i2;
        C1068i<R> c1068i3;
        this.f3399g.mo3441a();
        if (f3392e) {
            m3396a("Got onSizeReady in " + C1080e.m3452a(this.f3416x));
        }
        if (this.f3417y != a.WAITING_FOR_SIZE$613311b9) {
            return;
        }
        this.f3417y = a.RUNNING$613311b9;
        float f = this.f3406n.f3363a;
        this.f3395C = m3390a(i, f);
        this.f3396D = m3390a(i2, f);
        if (f3392e) {
            m3396a("finished setup for calling load in " + C1080e.m3452a(this.f3416x));
        }
        C0914j c0914j = this.f3412t;
        C0844h c0844h = this.f3403k;
        Object obj = this.f3404l;
        InterfaceC1022g interfaceC1022g = this.f3406n.f3376k;
        int i3 = this.f3395C;
        int i4 = this.f3396D;
        Class<?> cls = this.f3406n.f3383r;
        Class cls2 = (Class<R>) this.f3405m;
        EnumC0848l enumC0848l = this.f3409q;
        AbstractC0913i abstractC0913i = this.f3406n.f3367b;
        Map<Class<?>, InterfaceC1028m<?>> map = this.f3406n.f3382q;
        boolean z = this.f3406n.f3377l;
        boolean z2 = this.f3406n.f3387v;
        C1025j c1025j = this.f3406n.f3381p;
        boolean z3 = this.f3406n.f3373h;
        boolean z4 = this.f3406n.f3385t;
        boolean z5 = this.f3406n.f3388w;
        boolean z6 = this.f3406n.f3386u;
        C1086k.m3485a();
        long m3453a = C0914j.f2755a ? C1080e.m3453a() : 0L;
        C0917m c0917m = new C0917m(obj, interfaceC1022g, i3, i4, map, cls, cls2, c1025j);
        if (z3) {
            C0870a c0870a = c0914j.f2763g;
            C0870a.b bVar = c0870a.f2484b.get(c0917m);
            if (bVar == null) {
                c0919o = null;
            } else {
                c0919o = (C0919o) bVar.get();
                if (c0919o == null) {
                    c0870a.m2436a(bVar);
                }
            }
            if (c0919o != null) {
                c0919o.m2727e();
            }
        } else {
            c0919o = null;
        }
        if (c0919o != null) {
            ?? r4 = this;
            r4.mo3389a(c0919o, EnumC0849a.MEMORY_CACHE);
            c1068i2 = r4;
            if (C0914j.f2755a) {
                str = "Loaded resource from active resources";
                j = m3453a;
                c1068i3 = r4;
                C0914j.m2690a(str, j, c0917m);
                c1068i2 = c1068i3;
            }
            c1068i = c1068i2;
            dVar = null;
        } else {
            j = m3453a;
            ?? r42 = this;
            if (z3) {
                InterfaceC0925u<?> mo2547a = c0914j.f2759c.mo2547a(c0917m);
                c0919o2 = mo2547a == null ? null : mo2547a instanceof C0919o ? (C0919o) mo2547a : new C0919o<>(mo2547a, true, true);
                if (c0919o2 != null) {
                    c0919o2.m2727e();
                    c0914j.f2763g.m2437a(c0917m, c0919o2);
                }
            } else {
                c0919o2 = null;
            }
            if (c0919o2 != null) {
                r42.mo3389a(c0919o2, EnumC0849a.MEMORY_CACHE);
                c1068i2 = r42;
                if (C0914j.f2755a) {
                    str = "Loaded resource from cache";
                    c1068i3 = r42;
                    C0914j.m2690a(str, j, c0917m);
                    c1068i2 = c1068i3;
                }
                c1068i = c1068i2;
                dVar = null;
            } else {
                C0915k<?> c0915k = c0914j.f2758b.m2734a(z6).get(c0917m);
                if (c0915k != null) {
                    c0915k.m2714a((InterfaceC1067h) r42);
                    if (C0914j.f2755a) {
                        C0914j.m2690a("Added to existing load", j, c0917m);
                    }
                    dVar = new C0914j.d(r42, c0915k);
                    c1068i = r42;
                } else {
                    C0915k<?> c0915k2 = (C0915k) C1084i.m3470a(c0914j.f2760d.f2775f.acquire(), "Argument must not be null");
                    c0915k2.f2792e = c0917m;
                    c0915k2.f2793f = z3;
                    c0915k2.f2794g = z4;
                    c0915k2.f2795h = z5;
                    c0915k2.f2796i = z6;
                    C0914j.a aVar = c0914j.f2762f;
                    RunnableC0911g<R> runnableC0911g = (RunnableC0911g) C1084i.m3470a(aVar.f2767b.acquire(), "Argument must not be null");
                    int i5 = aVar.f2768c;
                    aVar.f2768c = i5 + 1;
                    C0910f<R> c0910f = runnableC0911g.f2708a;
                    RunnableC0911g.d dVar2 = runnableC0911g.f2709b;
                    c0910f.f2685c = c0844h;
                    c0910f.f2686d = obj;
                    c0910f.f2696n = interfaceC1022g;
                    c0910f.f2687e = i3;
                    c0910f.f2688f = i4;
                    c0910f.f2698p = abstractC0913i;
                    c0910f.f2689g = cls;
                    c0910f.f2690h = dVar2;
                    c0910f.f2693k = cls2;
                    c0910f.f2697o = enumC0848l;
                    c0910f.f2691i = c1025j;
                    c0910f.f2692j = map;
                    c0910f.f2699q = z;
                    c0910f.f2700r = z2;
                    runnableC0911g.f2712e = c0844h;
                    runnableC0911g.f2713f = interfaceC1022g;
                    runnableC0911g.f2714g = enumC0848l;
                    runnableC0911g.f2715h = c0917m;
                    runnableC0911g.f2716i = i3;
                    runnableC0911g.f2717j = i4;
                    runnableC0911g.f2718k = abstractC0913i;
                    runnableC0911g.f2723p = z6;
                    runnableC0911g.f2719l = c1025j;
                    runnableC0911g.f2720m = c0915k2;
                    runnableC0911g.f2721n = i5;
                    runnableC0911g.f2722o = RunnableC0911g.f.INITIALIZE;
                    runnableC0911g.f2724q = obj;
                    c0914j.f2758b.m2734a(c0915k2.f2796i).put(c0917m, c0915k2);
                    c1068i = this;
                    c0915k2.m2714a(c1068i);
                    c0915k2.f2803p = runnableC0911g;
                    RunnableC0911g.g m2662a = runnableC0911g.m2662a(RunnableC0911g.g.INITIALIZE);
                    (m2662a == RunnableC0911g.g.RESOURCE_CACHE || m2662a == RunnableC0911g.g.DATA_CACHE ? c0915k2.f2791d : c0915k2.m2713a()).execute(runnableC0911g);
                    if (C0914j.f2755a) {
                        C0914j.m2690a("Started new load", j, c0917m);
                    }
                    dVar = new C0914j.d(c1068i, c0915k2);
                }
            }
        }
        c1068i.f3415w = dVar;
        if (c1068i.f3417y != a.RUNNING$613311b9) {
            c1068i.f3415w = null;
        }
        if (f3392e) {
            c1068i.m3396a("finished onSizeReady in " + C1080e.m3452a(c1068i.f3416x));
        }
    }
}
