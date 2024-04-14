package com.bumptech.glide.load.p042b;

import android.support.annotation.NonNull;
import android.support.v4.util.Pools;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.p040a.InterfaceC0859e;
import com.bumptech.glide.load.p042b.C0912h;
import com.bumptech.glide.util.C1084i;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* renamed from: com.bumptech.glide.load.b.s */
/* loaded from: classes.dex */
public final class C0923s<Data, ResourceType, Transcode> {

    /* renamed from: a */
    private final Class<Data> f2831a;

    /* renamed from: b */
    private final Pools.Pool<List<Throwable>> f2832b;

    /* renamed from: c */
    private final List<? extends C0912h<Data, ResourceType, Transcode>> f2833c;

    /* renamed from: d */
    private final String f2834d;

    public C0923s(Class<Data> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<C0912h<Data, ResourceType, Transcode>> list, Pools.Pool<List<Throwable>> pool) {
        this.f2831a = cls;
        this.f2832b = pool;
        this.f2833c = (List) C1084i.m3472a(list);
        this.f2834d = "Failed LoadPath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    /* renamed from: a */
    private InterfaceC0925u<Transcode> m2736a(InterfaceC0859e<Data> interfaceC0859e, @NonNull C1025j c1025j, int i, int i2, C0912h.a<ResourceType> aVar, List<Throwable> list) throws C0920p {
        int size = this.f2833c.size();
        InterfaceC0925u<Transcode> interfaceC0925u = null;
        for (int i3 = 0; i3 < size; i3++) {
            C0912h<Data, ResourceType, Transcode> c0912h = this.f2833c.get(i3);
            try {
                interfaceC0925u = c0912h.f2745a.mo3044a(aVar.mo2667a(c0912h.m2680a(interfaceC0859e, i, i2, c1025j)), c1025j);
            } catch (C0920p e) {
                list.add(e);
            }
            if (interfaceC0925u != null) {
                break;
            }
        }
        if (interfaceC0925u == null) {
            throw new C0920p(this.f2834d, new ArrayList(list));
        }
        return interfaceC0925u;
    }

    /* renamed from: a */
    private Class<Data> m2737a() {
        return this.f2831a;
    }

    /* renamed from: a */
    public final InterfaceC0925u<Transcode> m2738a(InterfaceC0859e<Data> interfaceC0859e, @NonNull C1025j c1025j, int i, int i2, C0912h.a<ResourceType> aVar) throws C0920p {
        List<Throwable> list = (List) C1084i.m3470a(this.f2832b.acquire(), "Argument must not be null");
        try {
            return m2736a(interfaceC0859e, c1025j, i, i2, aVar, list);
        } finally {
            this.f2832b.release(list);
        }
    }

    public final String toString() {
        return "LoadPath{decodePaths=" + Arrays.toString(this.f2833c.toArray()) + '}';
    }
}
