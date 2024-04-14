package org.junit.p228e;

import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Collections;
import java.util.List;
import org.junit.p218b.p219a.C2864a;
import org.junit.p228e.p229a.AbstractC2939h;
import org.junit.p228e.p229a.C2936e;
import org.junit.runner.AbstractC2988k;
import org.junit.runner.C2980c;
import org.junit.runner.p233b.C2977c;

/* renamed from: org.junit.e.g */
/* loaded from: classes2.dex */
public class C2953g extends AbstractC2952f<AbstractC2988k> {

    /* renamed from: a */
    private final List<AbstractC2988k> f10880a;

    @Target({ElementType.TYPE})
    @Inherited
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: org.junit.e.g$a */
    /* loaded from: classes.dex */
    public @interface a {
        /* renamed from: a */
        Class<?>[] m13308a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public C2953g(Class<?> cls, List<AbstractC2988k> list) throws C2936e {
        super(cls);
        this.f10880a = Collections.unmodifiableList(list);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public C2953g(java.lang.Class<?> r4, org.junit.p228e.p229a.AbstractC2939h r5) throws org.junit.p228e.p229a.C2936e {
        /*
            r3 = this;
            java.lang.Class<org.junit.e.g$a> r0 = org.junit.p228e.C2953g.a.class
            java.lang.annotation.Annotation r0 = r4.getAnnotation(r0)
            org.junit.e.g$a r0 = (org.junit.p228e.C2953g.a) r0
            if (r0 != 0) goto L20
            org.junit.e.a.e r5 = new org.junit.e.a.e
            java.lang.String r0 = "class '%s' must have a SuiteClasses annotation"
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = 0
            java.lang.String r4 = r4.getName()
            r1[r2] = r4
            java.lang.String r4 = java.lang.String.format(r0, r1)
            r5.<init>(r4)
            throw r5
        L20:
            java.lang.Class[] r0 = r0.m13308a()
            r3.<init>(r5, r4, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.junit.p228e.C2953g.<init>(java.lang.Class, org.junit.e.a.h):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public C2953g(AbstractC2939h abstractC2939h, Class<?> cls, Class<?>[] clsArr) throws C2936e {
        this(cls, abstractC2939h.m13213a(cls, clsArr));
    }

    public C2953g(AbstractC2939h abstractC2939h, Class<?>[] clsArr) throws C2936e {
        this((Class<?>) null, abstractC2939h.m13213a((Class<?>) null, clsArr));
    }

    private C2953g(Class<?>[] clsArr) throws C2936e {
        this(new C2864a(true), null, clsArr);
    }

    /* renamed from: a */
    private static C2980c m13305a(AbstractC2988k abstractC2988k) {
        return abstractC2988k.mo11738b();
    }

    /* renamed from: a */
    public static AbstractC2988k m13306a() {
        try {
            return new C2953g(new Class[0]);
        } catch (C2936e unused) {
            throw new RuntimeException("This shouldn't be possible");
        }
    }

    /* renamed from: a, reason: avoid collision after fix types in other method */
    private static void a2(AbstractC2988k abstractC2988k, C2977c c2977c) {
        abstractC2988k.mo12858a(c2977c);
    }

    /* renamed from: a */
    private static Class<?>[] m13307a(Class<?> cls) throws C2936e {
        a aVar = (a) cls.getAnnotation(a.class);
        if (aVar == null) {
            throw new C2936e(String.format("class '%s' must have a SuiteClasses annotation", cls.getName()));
        }
        return aVar.m13308a();
    }

    @Override // org.junit.p228e.AbstractC2952f
    /* renamed from: a */
    protected final /* bridge */ /* synthetic */ void mo13255a(AbstractC2988k abstractC2988k, C2977c c2977c) {
        abstractC2988k.mo12858a(c2977c);
    }

    @Override // org.junit.p228e.AbstractC2952f
    /* renamed from: b */
    protected final /* bridge */ /* synthetic */ C2980c mo13257b(AbstractC2988k abstractC2988k) {
        return abstractC2988k.mo11738b();
    }

    @Override // org.junit.p228e.AbstractC2952f
    /* renamed from: d */
    protected List<AbstractC2988k> mo13258d() {
        return this.f10880a;
    }
}
