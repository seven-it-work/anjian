package org.junit.p231f;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.junit.p228e.p229a.C2933b;
import org.junit.p228e.p229a.C2935d;
import org.junit.p228e.p229a.C2942k;
import org.junit.p228e.p229a.InterfaceC2932a;

/* renamed from: org.junit.f.c */
/* loaded from: classes2.dex */
public final class C2957c implements InterfaceC2959e {

    /* renamed from: a */
    private static final List<a<?>> f10883a;

    /* renamed from: org.junit.f.c$a */
    /* loaded from: classes2.dex */
    private static abstract class a<T extends InterfaceC2932a> {

        /* renamed from: a */
        private static final C2956b f10884a = new C2956b();

        private a() {
        }

        /* synthetic */ a(byte b2) {
            this();
        }

        /* renamed from: a */
        private List<Exception> m13313a(T t) {
            ArrayList arrayList = new ArrayList();
            for (Annotation annotation : t.mo13184a()) {
                InterfaceC2960f interfaceC2960f = (InterfaceC2960f) annotation.annotationType().getAnnotation(InterfaceC2960f.class);
                if (interfaceC2960f != null) {
                    arrayList.addAll(mo13315a(C2956b.m13311a(interfaceC2960f), t));
                }
            }
            return arrayList;
        }

        /* renamed from: a */
        abstract Iterable<T> mo13314a(C2942k c2942k);

        /* renamed from: a */
        abstract List<Exception> mo13315a(AbstractC2955a abstractC2955a, T t);

        /* renamed from: b */
        public final List<Exception> m13316b(C2942k c2942k) {
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = mo13314a(c2942k).iterator();
            while (it.hasNext()) {
                arrayList.addAll(m13313a((a<T>) it.next()));
            }
            return arrayList;
        }
    }

    /* renamed from: org.junit.f.c$b */
    /* loaded from: classes2.dex */
    private static class b extends a<C2942k> {
        private b() {
            super((byte) 0);
        }

        /* synthetic */ b(byte b2) {
            this();
        }

        /* renamed from: a */
        private static List<Exception> m13317a() {
            return AbstractC2955a.m13309a();
        }

        @Override // org.junit.p231f.C2957c.a
        /* renamed from: a */
        final Iterable<C2942k> mo13314a(C2942k c2942k) {
            return Collections.singletonList(c2942k);
        }

        @Override // org.junit.p231f.C2957c.a
        /* renamed from: a */
        final /* bridge */ /* synthetic */ List mo13315a(AbstractC2955a abstractC2955a, C2942k c2942k) {
            return AbstractC2955a.m13309a();
        }
    }

    /* renamed from: org.junit.f.c$c */
    /* loaded from: classes2.dex */
    private static class c extends a<C2933b> {
        private c() {
            super((byte) 0);
        }

        /* synthetic */ c(byte b2) {
            this();
        }

        /* renamed from: a */
        private static List<Exception> m13318a() {
            return AbstractC2955a.m13310b();
        }

        @Override // org.junit.p231f.C2957c.a
        /* renamed from: a */
        final Iterable<C2933b> mo13314a(C2942k c2942k) {
            return C2942k.m13215a(c2942k.f10856d);
        }

        @Override // org.junit.p231f.C2957c.a
        /* renamed from: a */
        final /* synthetic */ List mo13315a(AbstractC2955a abstractC2955a, C2933b c2933b) {
            return AbstractC2955a.m13310b();
        }
    }

    /* renamed from: org.junit.f.c$d */
    /* loaded from: classes2.dex */
    private static class d extends a<C2935d> {
        private d() {
            super((byte) 0);
        }

        /* synthetic */ d(byte b2) {
            this();
        }

        /* renamed from: a, reason: avoid collision after fix types in other method */
        private static List<Exception> a2(AbstractC2955a abstractC2955a, C2935d c2935d) {
            return abstractC2955a.mo12746a(c2935d);
        }

        @Override // org.junit.p231f.C2957c.a
        /* renamed from: a */
        final Iterable<C2935d> mo13314a(C2942k c2942k) {
            List m13215a = C2942k.m13215a(c2942k.f10855c);
            Collections.sort(m13215a, C2942k.f10852a);
            return m13215a;
        }

        @Override // org.junit.p231f.C2957c.a
        /* renamed from: a */
        final /* bridge */ /* synthetic */ List mo13315a(AbstractC2955a abstractC2955a, C2935d c2935d) {
            return abstractC2955a.mo12746a(c2935d);
        }
    }

    static {
        byte b2 = 0;
        f10883a = Arrays.asList(new b(b2), new d(b2), new c(b2));
    }

    @Override // org.junit.p231f.InterfaceC2959e
    /* renamed from: a */
    public final List<Exception> mo13312a(C2942k c2942k) {
        ArrayList arrayList = new ArrayList();
        Iterator<a<?>> it = f10883a.iterator();
        while (it.hasNext()) {
            arrayList.addAll(it.next().m13316b(c2942k));
        }
        return arrayList;
    }
}
