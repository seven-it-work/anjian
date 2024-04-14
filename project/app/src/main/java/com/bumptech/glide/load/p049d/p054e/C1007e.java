package com.bumptech.glide.load.p049d.p054e;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.p042b.InterfaceC0921q;
import com.bumptech.glide.load.p049d.p052c.AbstractC0996b;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.util.C1086k;

/* renamed from: com.bumptech.glide.load.d.e.e */
/* loaded from: classes.dex */
public final class C1007e extends AbstractC0996b<C1005c> implements InterfaceC0921q {
    public C1007e(C1005c c1005c) {
        super(c1005c);
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
    @NonNull
    /* renamed from: a */
    public final Class<C1005c> mo2722a() {
        return C1005c.class;
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
    /* renamed from: c */
    public final int mo2725c() {
        C1009g c1009g = ((C1005c) this.f3112a).f3133c.f3143a;
        return c1009g.f3146a.mo2217m() + C1086k.m3475a(c1009g.m3035b().getWidth(), c1009g.m3035b().getHeight(), c1009g.m3035b().getConfig());
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
    /* renamed from: d */
    public final void mo2726d() {
        ((C1005c) this.f3112a).stop();
        C1005c c1005c = (C1005c) this.f3112a;
        c1005c.f3134d = true;
        C1009g c1009g = c1005c.f3133c.f3143a;
        c1009g.f3147b.clear();
        c1009g.m3037d();
        c1009g.f3149d = false;
        if (c1009g.f3151f != null) {
            c1009g.f3148c.m3214a((Target<?>) c1009g.f3151f);
            c1009g.f3151f = null;
        }
        if (c1009g.f3153h != null) {
            c1009g.f3148c.m3214a((Target<?>) c1009g.f3153h);
            c1009g.f3153h = null;
        }
        if (c1009g.f3156k != null) {
            c1009g.f3148c.m3214a((Target<?>) c1009g.f3156k);
            c1009g.f3156k = null;
        }
        c1009g.f3146a.mo2219o();
        c1009g.f3152g = true;
    }

    @Override // com.bumptech.glide.load.p049d.p052c.AbstractC0996b, com.bumptech.glide.load.p042b.InterfaceC0921q
    /* renamed from: e */
    public final void mo2730e() {
        ((C1005c) this.f3112a).m3010a().prepareToDraw();
    }
}
