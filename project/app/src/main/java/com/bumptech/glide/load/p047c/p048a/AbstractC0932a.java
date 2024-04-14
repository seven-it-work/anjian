package com.bumptech.glide.load.p047c.p048a;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.InterfaceC1022g;
import com.bumptech.glide.load.p047c.C0943g;
import com.bumptech.glide.load.p047c.C0949m;
import com.bumptech.glide.load.p047c.InterfaceC0944h;
import com.bumptech.glide.load.p047c.InterfaceC0950n;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.bumptech.glide.load.c.a.a */
/* loaded from: classes.dex */
public abstract class AbstractC0932a<Model> implements InterfaceC0950n<Model, InputStream> {

    /* renamed from: a */
    private final InterfaceC0950n<C0943g, InputStream> f2875a;

    /* renamed from: b */
    @Nullable
    private final C0949m<Model, C0943g> f2876b;

    private AbstractC0932a(InterfaceC0950n<C0943g, InputStream> interfaceC0950n) {
        this(interfaceC0950n, (byte) 0);
    }

    private AbstractC0932a(InterfaceC0950n<C0943g, InputStream> interfaceC0950n, byte b2) {
        this.f2875a = interfaceC0950n;
        this.f2876b = null;
    }

    /* renamed from: a */
    private static List<InterfaceC1022g> m2752a(Collection<String> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<String> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(new C0943g(it.next()));
        }
        return arrayList;
    }

    /* renamed from: b */
    private static List<String> m2753b() {
        return Collections.emptyList();
    }

    @Nullable
    /* renamed from: c */
    private static InterfaceC0944h m2754c() {
        return InterfaceC0944h.f2920b;
    }

    @Override // com.bumptech.glide.load.p047c.InterfaceC0950n
    @Nullable
    /* renamed from: a */
    public final InterfaceC0950n.a<InputStream> mo2750a(@NonNull Model model, int i, int i2, @NonNull C1025j c1025j) {
        C0943g m2805a = this.f2876b != null ? this.f2876b.m2805a(model, i, i2) : null;
        if (m2805a == null) {
            String m2755a = m2755a();
            if (TextUtils.isEmpty(m2755a)) {
                return null;
            }
            C0943g c0943g = new C0943g(m2755a, InterfaceC0944h.f2920b);
            if (this.f2876b != null) {
                this.f2876b.m2806a(model, i, i2, c0943g);
            }
            m2805a = c0943g;
        }
        List emptyList = Collections.emptyList();
        InterfaceC0950n.a<InputStream> mo2750a = this.f2875a.mo2750a(m2805a, i, i2, c1025j);
        return (mo2750a == null || emptyList.isEmpty()) ? mo2750a : new InterfaceC0950n.a<>(mo2750a.f2942a, m2752a((Collection<String>) emptyList), mo2750a.f2944c);
    }

    /* renamed from: a */
    protected abstract String m2755a();
}
