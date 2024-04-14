package com.bumptech.glide.load.p042b;

import android.support.annotation.NonNull;
import android.support.v4.util.Pools;
import android.util.Log;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.InterfaceC1026k;
import com.bumptech.glide.load.p040a.InterfaceC0859e;
import com.bumptech.glide.load.p049d.p055f.InterfaceC1017e;
import com.bumptech.glide.util.C1084i;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.bumptech.glide.load.b.h */
/* loaded from: classes.dex */
public final class C0912h<DataType, ResourceType, Transcode> {

    /* renamed from: b */
    private static final String f2744b = "DecodePath";

    /* renamed from: a */
    final InterfaceC1017e<ResourceType, Transcode> f2745a;

    /* renamed from: c */
    private final Class<DataType> f2746c;

    /* renamed from: d */
    private final List<? extends InterfaceC1026k<DataType, ResourceType>> f2747d;

    /* renamed from: e */
    private final Pools.Pool<List<Throwable>> f2748e;

    /* renamed from: f */
    private final String f2749f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.b.h$a */
    /* loaded from: classes.dex */
    public interface a<ResourceType> {
        @NonNull
        /* renamed from: a */
        InterfaceC0925u<ResourceType> mo2667a(@NonNull InterfaceC0925u<ResourceType> interfaceC0925u);
    }

    public C0912h(Class<DataType> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<? extends InterfaceC1026k<DataType, ResourceType>> list, InterfaceC1017e<ResourceType, Transcode> interfaceC1017e, Pools.Pool<List<Throwable>> pool) {
        this.f2746c = cls;
        this.f2747d = list;
        this.f2745a = interfaceC1017e;
        this.f2748e = pool;
        this.f2749f = "Failed DecodePath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    /* renamed from: a */
    private InterfaceC0925u<Transcode> m2678a(InterfaceC0859e<DataType> interfaceC0859e, int i, int i2, @NonNull C1025j c1025j, a<ResourceType> aVar) throws C0920p {
        return this.f2745a.mo3044a(aVar.mo2667a(m2680a(interfaceC0859e, i, i2, c1025j)), c1025j);
    }

    @NonNull
    /* renamed from: a */
    private InterfaceC0925u<ResourceType> m2679a(InterfaceC0859e<DataType> interfaceC0859e, int i, int i2, @NonNull C1025j c1025j, List<Throwable> list) throws C0920p {
        int size = this.f2747d.size();
        InterfaceC0925u<ResourceType> interfaceC0925u = null;
        for (int i3 = 0; i3 < size; i3++) {
            InterfaceC1026k<DataType, ResourceType> interfaceC1026k = this.f2747d.get(i3);
            try {
                if (interfaceC1026k.mo2848a(interfaceC0859e.mo2411a(), c1025j)) {
                    interfaceC0925u = interfaceC1026k.mo2847a(interfaceC0859e.mo2411a(), i, i2, c1025j);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e) {
                if (Log.isLoggable(f2744b, 2)) {
                    Log.v(f2744b, "Failed to decode data for " + interfaceC1026k, e);
                }
                list.add(e);
            }
            if (interfaceC0925u != null) {
                break;
            }
        }
        if (interfaceC0925u == null) {
            throw new C0920p(this.f2749f, new ArrayList(list));
        }
        return interfaceC0925u;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: a */
    public final InterfaceC0925u<ResourceType> m2680a(InterfaceC0859e<DataType> interfaceC0859e, int i, int i2, @NonNull C1025j c1025j) throws C0920p {
        List<Throwable> list = (List) C1084i.m3470a(this.f2748e.acquire(), "Argument must not be null");
        try {
            return m2679a(interfaceC0859e, i, i2, c1025j, list);
        } finally {
            this.f2748e.release(list);
        }
    }

    public final String toString() {
        return "DecodePath{ dataClass=" + this.f2746c + ", decoders=" + this.f2747d + ", transcoder=" + this.f2745a + '}';
    }
}
