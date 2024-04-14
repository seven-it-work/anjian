package org.p202a.p204b;

import java.lang.reflect.Array;
import java.util.Iterator;

/* renamed from: org.a.b.a */
/* loaded from: classes2.dex */
public final class C2736a implements Iterator<Object> {

    /* renamed from: a */
    private final Object f10413a;

    /* renamed from: b */
    private int f10414b = 0;

    public C2736a(Object obj) {
        if (!obj.getClass().isArray()) {
            throw new IllegalArgumentException("not an array");
        }
        this.f10413a = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f10414b < Array.getLength(this.f10413a);
    }

    @Override // java.util.Iterator
    public final Object next() {
        Object obj = this.f10413a;
        int i = this.f10414b;
        this.f10414b = i + 1;
        return Array.get(obj, i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("cannot remove items from an array");
    }
}
