package org.junit.runner.p233b;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.junit.runner.C2980c;
import org.junit.runner.C2986i;
import org.junit.runner.p233b.C2976b;

/* renamed from: org.junit.runner.b.c */
/* loaded from: classes2.dex */
public final class C2977c {

    /* renamed from: a */
    public final List<C2976b> f10905a = new CopyOnWriteArrayList();

    /* renamed from: b */
    private volatile boolean f10906b = false;

    /* renamed from: org.junit.runner.b.c$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 extends a {

        /* renamed from: a */
        final /* synthetic */ C2980c f10907a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(C2980c c2980c) throws Exception {
            super(C2977c.this);
            this.f10907a = c2980c;
        }

        @Override // org.junit.runner.p233b.C2977c.a
        /* renamed from: a */
        protected final void mo13373a(C2976b c2976b) throws Exception {
            c2976b.mo13357d(this.f10907a);
        }
    }

    /* renamed from: org.junit.runner.b.c$2, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass2 extends a {

        /* renamed from: a */
        final /* synthetic */ C2986i f10909a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(C2986i c2986i) throws Exception {
            super(C2977c.this);
            this.f10909a = c2986i;
        }

        @Override // org.junit.runner.p233b.C2977c.a
        /* renamed from: a */
        protected final void mo13373a(C2976b c2976b) throws Exception {
            c2976b.mo12760a(this.f10909a);
        }
    }

    /* renamed from: org.junit.runner.b.c$5, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass5 extends a {

        /* renamed from: a */
        final /* synthetic */ C2975a f10915a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass5(C2975a c2975a) {
            super(C2977c.this);
            this.f10915a = c2975a;
        }

        @Override // org.junit.runner.p233b.C2977c.a
        /* renamed from: a */
        protected final void mo13373a(C2976b c2976b) throws Exception {
            c2976b.mo13356b(this.f10915a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.junit.runner.b.c$a */
    /* loaded from: classes2.dex */
    public abstract class a {

        /* renamed from: a */
        private final List<C2976b> f10921a;

        a(C2977c c2977c) {
            this(c2977c.f10905a);
        }

        a(List<C2976b> list) {
            this.f10921a = list;
        }

        /* renamed from: a */
        public final void m13374a() {
            int size = this.f10921a.size();
            ArrayList arrayList = new ArrayList(size);
            ArrayList arrayList2 = new ArrayList(size);
            for (C2976b c2976b : this.f10921a) {
                try {
                    mo13373a(c2976b);
                    arrayList.add(c2976b);
                } catch (Exception e) {
                    arrayList2.add(new C2975a(C2980c.TEST_MECHANISM, e));
                }
            }
            C2977c.this.m13366a(arrayList, arrayList2);
        }

        /* renamed from: a */
        protected abstract void mo13373a(C2976b c2976b) throws Exception;
    }

    /* renamed from: a */
    private void m13359a() {
        this.f10906b = true;
    }

    /* renamed from: a */
    private void m13361a(C2986i c2986i) {
        new AnonymousClass2(c2986i).m13374a();
    }

    /* renamed from: b */
    private void m13362b(C2975a c2975a) {
        new AnonymousClass5(c2975a).m13374a();
    }

    /* renamed from: c */
    private void m13363c(C2976b c2976b) {
        if (c2976b == null) {
            throw new NullPointerException("Cannot remove a null listener");
        }
        this.f10905a.remove(m13370b(c2976b));
    }

    /* renamed from: d */
    private void m13364d(C2976b c2976b) {
        if (c2976b == null) {
            throw new NullPointerException("Cannot add a null listener");
        }
        this.f10905a.add(0, m13370b(c2976b));
    }

    /* renamed from: d */
    private void m13365d(C2980c c2980c) {
        new AnonymousClass1(c2980c).m13374a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m13366a(List<C2976b> list, final List<C2975a> list2) {
        if (list2.isEmpty()) {
            return;
        }
        new a(list) { // from class: org.junit.runner.b.c.4
            @Override // org.junit.runner.p233b.C2977c.a
            /* renamed from: a */
            protected final void mo13373a(C2976b c2976b) throws Exception {
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    c2976b.mo11739a((C2975a) it.next());
                }
            }
        }.m13374a();
    }

    /* renamed from: a */
    public final void m13367a(C2975a c2975a) {
        m13366a(this.f10905a, Arrays.asList(c2975a));
    }

    /* renamed from: a */
    public final void m13368a(C2976b c2976b) {
        if (c2976b == null) {
            throw new NullPointerException("Cannot add a null listener");
        }
        this.f10905a.add(m13370b(c2976b));
    }

    /* renamed from: a */
    public final void m13369a(final C2980c c2980c) throws C2978d {
        if (this.f10906b) {
            throw new C2978d();
        }
        new a() { // from class: org.junit.runner.b.c.3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(C2977c.this);
            }

            @Override // org.junit.runner.p233b.C2977c.a
            /* renamed from: a */
            protected final void mo13373a(C2976b c2976b) throws Exception {
                c2976b.mo11741b(c2980c);
            }
        }.m13374a();
    }

    /* renamed from: b */
    public final C2976b m13370b(C2976b c2976b) {
        return c2976b.getClass().isAnnotationPresent(C2976b.a.class) ? c2976b : new C2979e(c2976b, this);
    }

    /* renamed from: b */
    public final void m13371b(final C2980c c2980c) {
        new a() { // from class: org.junit.runner.b.c.6
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(C2977c.this);
            }

            @Override // org.junit.runner.p233b.C2977c.a
            /* renamed from: a */
            protected final void mo13373a(C2976b c2976b) throws Exception {
                c2976b.mo13000c(c2980c);
            }
        }.m13374a();
    }

    /* renamed from: c */
    public final void m13372c(final C2980c c2980c) {
        new a() { // from class: org.junit.runner.b.c.7
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(C2977c.this);
            }

            @Override // org.junit.runner.p233b.C2977c.a
            /* renamed from: a */
            protected final void mo13373a(C2976b c2976b) throws Exception {
                c2976b.mo11740a(c2980c);
            }
        }.m13374a();
    }
}
