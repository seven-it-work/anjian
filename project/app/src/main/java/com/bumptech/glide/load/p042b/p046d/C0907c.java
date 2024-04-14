package com.bumptech.glide.load.p042b.p046d;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.bumptech.glide.load.b.d.c */
/* loaded from: classes.dex */
public final class C0907c {

    /* renamed from: a */
    final Map<C0908d, Integer> f2670a;

    /* renamed from: b */
    final List<C0908d> f2671b;

    /* renamed from: c */
    int f2672c;

    /* renamed from: d */
    int f2673d;

    public C0907c(Map<C0908d, Integer> map) {
        this.f2670a = map;
        this.f2671b = new ArrayList(map.keySet());
        Iterator<Integer> it = map.values().iterator();
        while (it.hasNext()) {
            this.f2672c += it.next().intValue();
        }
    }

    /* renamed from: b */
    private C0908d m2601b() {
        C0908d c0908d = this.f2671b.get(this.f2673d);
        Integer num = this.f2670a.get(c0908d);
        if (num.intValue() == 1) {
            this.f2670a.remove(c0908d);
            this.f2671b.remove(this.f2673d);
        } else {
            this.f2670a.put(c0908d, Integer.valueOf(num.intValue() - 1));
        }
        this.f2672c--;
        this.f2673d = this.f2671b.isEmpty() ? 0 : (this.f2673d + 1) % this.f2671b.size();
        return c0908d;
    }

    /* renamed from: c */
    private int m2602c() {
        return this.f2672c;
    }

    /* renamed from: a */
    public final boolean m2603a() {
        return this.f2672c == 0;
    }
}
