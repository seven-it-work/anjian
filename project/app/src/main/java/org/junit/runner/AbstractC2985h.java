package org.junit.runner;

import java.util.Comparator;
import org.junit.p218b.p219a.C2864a;
import org.junit.p218b.p221c.C2878a;
import org.junit.p218b.p221c.C2879b;
import org.junit.p218b.p221c.C2880c;
import org.junit.p218b.p222d.C2886b;
import org.junit.p228e.p229a.C2936e;
import org.junit.runner.p232a.AbstractC2969a;

/* renamed from: org.junit.runner.h */
/* loaded from: classes2.dex */
public abstract class AbstractC2985h {
    /* renamed from: a */
    public static AbstractC2985h m13392a(Class<?> cls) {
        return new C2878a(cls);
    }

    /* renamed from: a */
    private static AbstractC2985h m13393a(Class<?> cls, String str) {
        return m13392a(cls).m13401a(AbstractC2969a.m13350b(C2980c.createTestDescription(cls, str)));
    }

    /* renamed from: a */
    private static AbstractC2985h m13394a(Class<?> cls, Throwable th) {
        return m13398a(new C2886b(cls, th));
    }

    /* renamed from: a */
    private AbstractC2985h m13395a(Comparator<C2980c> comparator) {
        return new C2880c(this, comparator);
    }

    /* renamed from: a */
    public static AbstractC2985h m13396a(C2968a c2968a, Class<?>... clsArr) {
        try {
            return m13398a(c2968a.mo12706a(new C2864a(true), clsArr));
        } catch (C2936e unused) {
            throw new RuntimeException("Bug in saff's brain: Suite constructor, called as above, should always complete");
        }
    }

    /* renamed from: a */
    private AbstractC2985h m13397a(C2980c c2980c) {
        return m13401a(AbstractC2969a.m13350b(c2980c));
    }

    /* renamed from: a */
    public static AbstractC2985h m13398a(final AbstractC2988k abstractC2988k) {
        return new AbstractC2985h() { // from class: org.junit.runner.h.1
            @Override // org.junit.runner.AbstractC2985h
            /* renamed from: a */
            public final AbstractC2988k mo12759a() {
                return AbstractC2988k.this;
            }
        };
    }

    /* renamed from: a */
    private static AbstractC2985h m13399a(Class<?>... clsArr) {
        return m13396a(JUnitCore.m13337a(), clsArr);
    }

    /* renamed from: b */
    private static AbstractC2985h m13400b(Class<?> cls) {
        return new C2878a(cls, false);
    }

    /* renamed from: a */
    public final AbstractC2985h m13401a(AbstractC2969a abstractC2969a) {
        return new C2879b(this, abstractC2969a);
    }

    /* renamed from: a */
    public abstract AbstractC2988k mo12759a();
}
