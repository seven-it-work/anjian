package com.bumptech.glide.load.p042b;

import android.support.annotation.VisibleForTesting;
import com.bumptech.glide.load.InterfaceC1022g;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.bumptech.glide.load.b.r */
/* loaded from: classes.dex */
public final class C0922r {

    /* renamed from: a */
    private final Map<InterfaceC1022g, C0915k<?>> f2829a = new HashMap();

    /* renamed from: b */
    private final Map<InterfaceC1022g, C0915k<?>> f2830b = new HashMap();

    /* renamed from: a */
    private C0915k<?> m2731a(InterfaceC1022g interfaceC1022g, boolean z) {
        return m2734a(z).get(interfaceC1022g);
    }

    @VisibleForTesting
    /* renamed from: a */
    private Map<InterfaceC1022g, C0915k<?>> m2732a() {
        return Collections.unmodifiableMap(this.f2829a);
    }

    /* renamed from: b */
    private void m2733b(InterfaceC1022g interfaceC1022g, C0915k<?> c0915k) {
        m2734a(c0915k.f2796i).put(interfaceC1022g, c0915k);
    }

    /* renamed from: a */
    public final Map<InterfaceC1022g, C0915k<?>> m2734a(boolean z) {
        return z ? this.f2830b : this.f2829a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m2735a(InterfaceC1022g interfaceC1022g, C0915k<?> c0915k) {
        Map<InterfaceC1022g, C0915k<?>> m2734a = m2734a(c0915k.f2796i);
        if (c0915k.equals(m2734a.get(interfaceC1022g))) {
            m2734a.remove(interfaceC1022g);
        }
    }
}
