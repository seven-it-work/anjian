package com.bumptech.glide.load.p047c;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.InterfaceC1022g;
import com.bumptech.glide.load.p040a.InterfaceC0858d;
import com.bumptech.glide.util.C1084i;
import java.util.Collections;
import java.util.List;

/* renamed from: com.bumptech.glide.load.c.n */
/* loaded from: classes.dex */
public interface InterfaceC0950n<Model, Data> {

    /* renamed from: com.bumptech.glide.load.c.n$a */
    /* loaded from: classes.dex */
    public static class a<Data> {

        /* renamed from: a */
        public final InterfaceC1022g f2942a;

        /* renamed from: b */
        public final List<InterfaceC1022g> f2943b;

        /* renamed from: c */
        public final InterfaceC0858d<Data> f2944c;

        public a(@NonNull InterfaceC1022g interfaceC1022g, @NonNull InterfaceC0858d<Data> interfaceC0858d) {
            this(interfaceC1022g, Collections.emptyList(), interfaceC0858d);
        }

        public a(@NonNull InterfaceC1022g interfaceC1022g, @NonNull List<InterfaceC1022g> list, @NonNull InterfaceC0858d<Data> interfaceC0858d) {
            this.f2942a = (InterfaceC1022g) C1084i.m3470a(interfaceC1022g, "Argument must not be null");
            this.f2943b = (List) C1084i.m3470a(list, "Argument must not be null");
            this.f2944c = (InterfaceC0858d) C1084i.m3470a(interfaceC0858d, "Argument must not be null");
        }
    }

    @Nullable
    /* renamed from: a */
    a<Data> mo2750a(@NonNull Model model, int i, int i2, @NonNull C1025j c1025j);

    /* renamed from: a */
    boolean mo2751a(@NonNull Model model);
}
