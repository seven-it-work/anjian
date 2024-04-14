package com.bumptech.glide.util;

import android.support.v4.util.ArrayMap;
import android.support.v4.util.SimpleArrayMap;

/* loaded from: classes.dex */
public final class CachedHashCodeArrayMap<K, V> extends ArrayMap<K, V> {

    /* renamed from: a */
    private int f3423a;

    @Override // android.support.v4.util.SimpleArrayMap, java.util.Map
    public final void clear() {
        this.f3423a = 0;
        super.clear();
    }

    @Override // android.support.v4.util.SimpleArrayMap, java.util.Map
    public final int hashCode() {
        if (this.f3423a == 0) {
            this.f3423a = super.hashCode();
        }
        return this.f3423a;
    }

    @Override // android.support.v4.util.SimpleArrayMap, java.util.Map
    public final V put(K k, V v) {
        this.f3423a = 0;
        return (V) super.put(k, v);
    }

    @Override // android.support.v4.util.SimpleArrayMap
    public final void putAll(SimpleArrayMap<? extends K, ? extends V> simpleArrayMap) {
        this.f3423a = 0;
        super.putAll(simpleArrayMap);
    }

    @Override // android.support.v4.util.SimpleArrayMap
    public final V removeAt(int i) {
        this.f3423a = 0;
        return (V) super.removeAt(i);
    }

    @Override // android.support.v4.util.SimpleArrayMap
    public final V setValueAt(int i, V v) {
        this.f3423a = 0;
        return (V) super.setValueAt(i, v);
    }
}
