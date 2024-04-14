package com.bumptech.glide.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* renamed from: com.bumptech.glide.util.f */
/* loaded from: classes.dex */
public class C1081f<T, Y> {

    /* renamed from: a */
    private final Map<T, Y> f3452a = new LinkedHashMap(100, 0.75f, true);

    /* renamed from: b */
    private final long f3453b;

    /* renamed from: c */
    private long f3454c;

    /* renamed from: d */
    private long f3455d;

    public C1081f(long j) {
        this.f3453b = j;
        this.f3454c = j;
    }

    /* renamed from: d */
    private synchronized int m3454d() {
        return this.f3452a.size();
    }

    /* renamed from: d */
    private synchronized boolean m3455d(@NonNull T t) {
        return this.f3452a.containsKey(t);
    }

    /* renamed from: e */
    private void m3456e() {
        m3459a(this.f3454c);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public int mo2546a(@Nullable Y y) {
        return 1;
    }

    /* renamed from: a */
    public final synchronized long m3457a() {
        return this.f3455d;
    }

    /* renamed from: a */
    public final synchronized void m3458a(float f) {
        try {
            if (f < 0.0f) {
                throw new IllegalArgumentException("Multiplier must be >= 0");
            }
            this.f3454c = Math.round(((float) this.f3453b) * f);
            m3456e();
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final synchronized void m3459a(long j) {
        while (this.f3455d > j) {
            Iterator<Map.Entry<T, Y>> it = this.f3452a.entrySet().iterator();
            Map.Entry<T, Y> next = it.next();
            Y value = next.getValue();
            this.f3455d -= mo2546a((C1081f<T, Y>) value);
            T key = next.getKey();
            it.remove();
            mo2551a(key, value);
        }
    }

    /* renamed from: a */
    public void mo2551a(@NonNull T t, @Nullable Y y) {
    }

    /* renamed from: b */
    public final synchronized long m3460b() {
        return this.f3454c;
    }

    @Nullable
    /* renamed from: b */
    public final synchronized Y m3461b(@NonNull T t) {
        return this.f3452a.get(t);
    }

    @Nullable
    /* renamed from: b */
    public final synchronized Y m3462b(@NonNull T t, @Nullable Y y) {
        long mo2546a = mo2546a((C1081f<T, Y>) y);
        if (mo2546a >= this.f3454c) {
            mo2551a(t, y);
            return null;
        }
        if (y != null) {
            this.f3455d += mo2546a;
        }
        Y put = this.f3452a.put(t, y);
        if (put != null) {
            this.f3455d -= mo2546a((C1081f<T, Y>) put);
            if (!put.equals(y)) {
                mo2551a(t, put);
            }
        }
        m3456e();
        return put;
    }

    @Nullable
    /* renamed from: c */
    public final synchronized Y m3463c(@NonNull T t) {
        Y remove;
        remove = this.f3452a.remove(t);
        if (remove != null) {
            this.f3455d -= mo2546a((C1081f<T, Y>) remove);
        }
        return remove;
    }

    /* renamed from: c */
    public final void m3464c() {
        m3459a(0L);
    }
}
