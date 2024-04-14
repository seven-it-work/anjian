package com.lidroid.xutils.cache;

import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class LruMemoryCache<K, V> {
    private int createCount;
    private int evictionCount;
    private int hitCount;
    private KeyExpiryMap<K, Long> keyExpiryMap;
    private final LinkedHashMap<K, V> map;
    private int maxSize;
    private int missCount;
    private int putCount;
    private int size;

    public LruMemoryCache(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.maxSize = i;
        this.map = new LinkedHashMap<>(0, 0.75f, true);
        this.keyExpiryMap = new KeyExpiryMap<>(0, 0.75f);
    }

    private int safeSizeOf(K k, V v) {
        int sizeOf = sizeOf(k, v);
        if (sizeOf > 0) {
            return sizeOf;
        }
        this.size = 0;
        for (Map.Entry<K, V> entry : this.map.entrySet()) {
            this.size += sizeOf(entry.getKey(), entry.getValue());
        }
        return sizeOf;
    }

    private void trimToSize(int i) {
        K key;
        V value;
        while (true) {
            synchronized (this) {
                if (this.size <= i || this.map.isEmpty()) {
                    break;
                }
                Map.Entry<K, V> next = this.map.entrySet().iterator().next();
                key = next.getKey();
                value = next.getValue();
                this.map.remove(key);
                this.keyExpiryMap.remove((Object) key);
                this.size -= safeSizeOf(key, value);
                this.evictionCount++;
            }
            entryRemoved(true, key, value, null);
        }
    }

    public final boolean containsKey(K k) {
        return this.map.containsKey(k);
    }

    protected V create(K k) {
        return null;
    }

    public final synchronized int createCount() {
        return this.createCount;
    }

    protected void entryRemoved(boolean z, K k, V v, V v2) {
    }

    public final void evictAll() {
        trimToSize(-1);
        this.keyExpiryMap.clear();
    }

    public final synchronized int evictionCount() {
        return this.evictionCount;
    }

    public final V get(K k) {
        V v;
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            if (!this.keyExpiryMap.containsKey(k)) {
                remove(k);
                return null;
            }
            V v2 = this.map.get(k);
            if (v2 != null) {
                this.hitCount++;
                return v2;
            }
            this.missCount++;
            V create = create(k);
            if (create == null) {
                return null;
            }
            synchronized (this) {
                this.createCount++;
                v = (V) this.map.put(k, create);
                if (v != null) {
                    this.map.put(k, v);
                } else {
                    this.size += safeSizeOf(k, create);
                }
            }
            if (v != null) {
                entryRemoved(false, k, create, v);
                return v;
            }
            trimToSize(this.maxSize);
            return create;
        }
    }

    public final synchronized int hitCount() {
        return this.hitCount;
    }

    public final synchronized int maxSize() {
        return this.maxSize;
    }

    public final synchronized int missCount() {
        return this.missCount;
    }

    public final V put(K k, V v) {
        return put(k, v, Long.MAX_VALUE);
    }

    public final V put(K k, V v, long j) {
        V put;
        if (k == null || v == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            this.putCount++;
            this.size += safeSizeOf(k, v);
            put = this.map.put(k, v);
            this.keyExpiryMap.put((KeyExpiryMap<K, Long>) k, Long.valueOf(j));
            if (put != null) {
                this.size -= safeSizeOf(k, put);
            }
        }
        if (put != null) {
            entryRemoved(false, k, put, v);
        }
        trimToSize(this.maxSize);
        return put;
    }

    public final synchronized int putCount() {
        return this.putCount;
    }

    public final V remove(K k) {
        V remove;
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            remove = this.map.remove(k);
            this.keyExpiryMap.remove((Object) k);
            if (remove != null) {
                this.size -= safeSizeOf(k, remove);
            }
        }
        if (remove != null) {
            entryRemoved(false, k, remove, null);
        }
        return remove;
    }

    public void setMaxSize(int i) {
        this.maxSize = i;
        trimToSize(i);
    }

    public final synchronized int size() {
        return this.size;
    }

    protected int sizeOf(K k, V v) {
        return 1;
    }

    public final synchronized Map<K, V> snapshot() {
        return new LinkedHashMap(this.map);
    }

    public final synchronized String toString() {
        int i;
        i = this.hitCount + this.missCount;
        return String.format("LruMemoryCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.maxSize), Integer.valueOf(this.hitCount), Integer.valueOf(this.missCount), Integer.valueOf(i != 0 ? (this.hitCount * 100) / i : 0));
    }
}
