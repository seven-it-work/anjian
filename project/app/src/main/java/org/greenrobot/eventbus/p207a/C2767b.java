package org.greenrobot.eventbus.p207a;

import org.greenrobot.eventbus.C2781l;

/* renamed from: org.greenrobot.eventbus.a.b */
/* loaded from: classes2.dex */
public final class C2767b extends AbstractC2766a {

    /* renamed from: a */
    private final C2770e[] f10459a;

    private C2767b(Class cls, boolean z, C2770e[] c2770eArr) {
        super(cls, z);
        this.f10459a = c2770eArr;
    }

    @Override // org.greenrobot.eventbus.p207a.InterfaceC2768c
    /* renamed from: d */
    public final synchronized C2781l[] mo12478d() {
        C2781l[] c2781lArr;
        int length = this.f10459a.length;
        c2781lArr = new C2781l[length];
        for (int i = 0; i < length; i++) {
            C2770e c2770e = this.f10459a[i];
            c2781lArr[i] = m12475a(c2770e.f10460a, c2770e.f10462c, c2770e.f10461b, c2770e.f10463d, c2770e.f10464e);
        }
        return c2781lArr;
    }
}
