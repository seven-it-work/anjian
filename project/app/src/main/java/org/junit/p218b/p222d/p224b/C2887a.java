package org.junit.p218b.p222d.p224b;

import java.lang.annotation.Annotation;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.junit.InterfaceC2962h;
import org.junit.InterfaceC2966l;
import org.junit.p227d.InterfaceC2919f;
import org.junit.p227d.InterfaceC2925l;
import org.junit.p228e.p229a.AbstractC2934c;
import org.junit.p228e.p229a.C2942k;

/* renamed from: org.junit.b.d.b.a */
/* loaded from: classes2.dex */
public final class C2887a {

    /* renamed from: a */
    public static final C2887a f10749a;

    /* renamed from: b */
    public static final C2887a f10750b;

    /* renamed from: c */
    public static final C2887a f10751c;

    /* renamed from: d */
    public static final C2887a f10752d;

    /* renamed from: e */
    private final Class<? extends Annotation> f10753e;

    /* renamed from: f */
    private final boolean f10754f;

    /* renamed from: g */
    private final List<j> f10755g;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.junit.b.d.b.a$a */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a */
        final Class<? extends Annotation> f10756a;

        /* renamed from: b */
        boolean f10757b;

        /* renamed from: c */
        final List<j> f10758c;

        private a(Class<? extends Annotation> cls) {
            this.f10756a = cls;
            this.f10757b = false;
            this.f10758c = new ArrayList();
        }

        /* synthetic */ a(Class cls, byte b2) {
            this(cls);
        }

        /* renamed from: b */
        private a m12907b() {
            this.f10757b = true;
            return this;
        }

        /* renamed from: a */
        final a m12910a(j jVar) {
            this.f10758c.add(jVar);
            return this;
        }

        /* renamed from: a */
        final C2887a m12911a() {
            return new C2887a(this);
        }
    }

    /* renamed from: org.junit.b.d.b.a$b */
    /* loaded from: classes2.dex */
    private static final class b implements j {
        private b() {
        }

        /* synthetic */ b(byte b2) {
            this();
        }

        /* renamed from: a */
        private static boolean m12912a(AbstractC2934c<?> abstractC2934c) {
            return Modifier.isPublic(abstractC2934c.mo13191e().getModifiers());
        }

        @Override // org.junit.p218b.p222d.p224b.C2887a.j
        /* renamed from: a */
        public final void mo12913a(AbstractC2934c<?> abstractC2934c, Class<? extends Annotation> cls, List<Throwable> list) {
            if (Modifier.isPublic(abstractC2934c.mo13191e().getModifiers())) {
                return;
            }
            list.add(new C2888b(abstractC2934c, cls, "must be declared in a public class."));
        }
    }

    /* renamed from: org.junit.b.d.b.a$c */
    /* loaded from: classes2.dex */
    private static final class c implements j {
        private c() {
        }

        /* synthetic */ c(byte b2) {
            this();
        }

        @Override // org.junit.p218b.p222d.p224b.C2887a.j
        /* renamed from: a */
        public final void mo12913a(AbstractC2934c<?> abstractC2934c, Class<? extends Annotation> cls, List<Throwable> list) {
            if (C2887a.m12900b(abstractC2934c)) {
                return;
            }
            list.add(new C2888b(abstractC2934c, cls, "must implement MethodRule or TestRule."));
        }
    }

    /* renamed from: org.junit.b.d.b.a$d */
    /* loaded from: classes2.dex */
    private static final class d implements j {
        private d() {
        }

        /* synthetic */ d(byte b2) {
            this();
        }

        @Override // org.junit.p218b.p222d.p224b.C2887a.j
        /* renamed from: a */
        public final void mo12913a(AbstractC2934c<?> abstractC2934c, Class<? extends Annotation> cls, List<Throwable> list) {
            if (C2887a.m12903e(abstractC2934c)) {
                return;
            }
            list.add(new C2888b(abstractC2934c, cls, "must implement TestRule."));
        }
    }

    /* renamed from: org.junit.b.d.b.a$e */
    /* loaded from: classes2.dex */
    private static final class e implements j {
        private e() {
        }

        /* synthetic */ e(byte b2) {
            this();
        }

        @Override // org.junit.p218b.p222d.p224b.C2887a.j
        /* renamed from: a */
        public final void mo12913a(AbstractC2934c<?> abstractC2934c, Class<? extends Annotation> cls, List<Throwable> list) {
            boolean m12904f = C2887a.m12904f(abstractC2934c);
            boolean z = abstractC2934c.mo13183a(InterfaceC2962h.class) != null;
            if (abstractC2934c.m13193f()) {
                if (m12904f || !z) {
                    list.add(new C2888b(abstractC2934c, cls, C2887a.m12904f(abstractC2934c) ? "must not be static." : "must not be static or it must be annotated with @ClassRule."));
                }
            }
        }
    }

    /* renamed from: org.junit.b.d.b.a$f */
    /* loaded from: classes2.dex */
    private static final class f implements j {
        private f() {
        }

        /* synthetic */ f(byte b2) {
            this();
        }

        @Override // org.junit.p218b.p222d.p224b.C2887a.j
        /* renamed from: a */
        public final void mo12913a(AbstractC2934c<?> abstractC2934c, Class<? extends Annotation> cls, List<Throwable> list) {
            if (abstractC2934c.m13194g()) {
                return;
            }
            list.add(new C2888b(abstractC2934c, cls, "must be public."));
        }
    }

    /* renamed from: org.junit.b.d.b.a$g */
    /* loaded from: classes2.dex */
    private static final class g implements j {
        private g() {
        }

        /* synthetic */ g(byte b2) {
            this();
        }

        @Override // org.junit.p218b.p222d.p224b.C2887a.j
        /* renamed from: a */
        public final void mo12913a(AbstractC2934c<?> abstractC2934c, Class<? extends Annotation> cls, List<Throwable> list) {
            if (abstractC2934c.m13193f()) {
                return;
            }
            list.add(new C2888b(abstractC2934c, cls, "must be static."));
        }
    }

    /* renamed from: org.junit.b.d.b.a$h */
    /* loaded from: classes2.dex */
    private static final class h implements j {
        private h() {
        }

        /* synthetic */ h(byte b2) {
            this();
        }

        @Override // org.junit.p218b.p222d.p224b.C2887a.j
        /* renamed from: a */
        public final void mo12913a(AbstractC2934c<?> abstractC2934c, Class<? extends Annotation> cls, List<Throwable> list) {
            if (C2887a.m12900b(abstractC2934c)) {
                return;
            }
            list.add(new C2888b(abstractC2934c, cls, "must return an implementation of MethodRule or TestRule."));
        }
    }

    /* renamed from: org.junit.b.d.b.a$i */
    /* loaded from: classes2.dex */
    private static final class i implements j {
        private i() {
        }

        /* synthetic */ i(byte b2) {
            this();
        }

        @Override // org.junit.p218b.p222d.p224b.C2887a.j
        /* renamed from: a */
        public final void mo12913a(AbstractC2934c<?> abstractC2934c, Class<? extends Annotation> cls, List<Throwable> list) {
            if (C2887a.m12903e(abstractC2934c)) {
                return;
            }
            list.add(new C2888b(abstractC2934c, cls, "must return an implementation of TestRule."));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.junit.b.d.b.a$j */
    /* loaded from: classes2.dex */
    public interface j {
        /* renamed from: a */
        void mo12913a(AbstractC2934c<?> abstractC2934c, Class<? extends Annotation> cls, List<Throwable> list);
    }

    static {
        byte b2 = 0;
        f10749a = m12896a().m12910a(new b(b2)).m12910a(new g(b2)).m12910a(new f(b2)).m12910a(new d(b2)).m12911a();
        f10750b = m12899b().m12910a(new e(b2)).m12910a(new f(b2)).m12910a(new c(b2)).m12911a();
        a m12896a = m12896a();
        m12896a.f10757b = true;
        f10751c = m12896a.m12910a(new b(b2)).m12910a(new g(b2)).m12910a(new f(b2)).m12910a(new i(b2)).m12911a();
        a m12899b = m12899b();
        m12899b.f10757b = true;
        f10752d = m12899b.m12910a(new e(b2)).m12910a(new f(b2)).m12910a(new h(b2)).m12911a();
    }

    C2887a(a aVar) {
        this.f10753e = aVar.f10756a;
        this.f10754f = aVar.f10757b;
        this.f10755g = aVar.f10758c;
    }

    /* renamed from: a */
    private static a m12896a() {
        return new a(InterfaceC2962h.class, (byte) 0);
    }

    /* renamed from: a */
    private void m12897a(AbstractC2934c<?> abstractC2934c, List<Throwable> list) {
        Iterator<j> it = this.f10755g.iterator();
        while (it.hasNext()) {
            it.next().mo12913a(abstractC2934c, this.f10753e, list);
        }
    }

    /* renamed from: b */
    private static a m12899b() {
        return new a(InterfaceC2966l.class, (byte) 0);
    }

    /* renamed from: b */
    static /* synthetic */ boolean m12900b(AbstractC2934c abstractC2934c) {
        return m12904f(abstractC2934c) || m12903e(abstractC2934c);
    }

    /* renamed from: d */
    private static boolean m12902d(AbstractC2934c<?> abstractC2934c) {
        return m12904f(abstractC2934c) || m12903e(abstractC2934c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public static boolean m12903e(AbstractC2934c<?> abstractC2934c) {
        return InterfaceC2925l.class.isAssignableFrom(abstractC2934c.mo13190d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public static boolean m12904f(AbstractC2934c<?> abstractC2934c) {
        return InterfaceC2919f.class.isAssignableFrom(abstractC2934c.mo13190d());
    }

    /* renamed from: a */
    public final void m12905a(C2942k c2942k, List<Throwable> list) {
        for (AbstractC2934c<?> abstractC2934c : this.f10754f ? c2942k.m13229b(this.f10753e) : c2942k.m13232c(this.f10753e)) {
            Iterator<j> it = this.f10755g.iterator();
            while (it.hasNext()) {
                it.next().mo12913a(abstractC2934c, this.f10753e, list);
            }
        }
    }
}
