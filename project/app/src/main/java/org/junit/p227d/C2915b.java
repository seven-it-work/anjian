package org.junit.p227d;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import org.junit.p228e.p229a.C2937f;
import org.p202a.C2749l;
import org.p202a.InterfaceC2748k;

/* renamed from: org.junit.d.b */
/* loaded from: classes2.dex */
public final class C2915b extends AbstractC2929p {

    /* renamed from: a */
    private List<Throwable> f10807a = new ArrayList();

    /* renamed from: org.junit.d.b$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    final class AnonymousClass1 implements Callable<Object> {

        /* renamed from: a */
        final /* synthetic */ String f10808a;

        /* renamed from: b */
        final /* synthetic */ Object f10809b;

        /* renamed from: c */
        final /* synthetic */ InterfaceC2748k f10810c;

        AnonymousClass1(String str, Object obj, InterfaceC2748k interfaceC2748k) {
            this.f10808a = str;
            this.f10809b = obj;
            this.f10810c = interfaceC2748k;
        }

        @Override // java.util.concurrent.Callable
        public final Object call() throws Exception {
            C2749l.m12426a(this.f10808a, this.f10809b, this.f10810c);
            return this.f10809b;
        }
    }

    /* renamed from: a */
    private <T> T m13091a(Callable<T> callable) {
        try {
            return callable.call();
        } catch (Throwable th) {
            this.f10807a.add(th);
            return null;
        }
    }

    /* renamed from: a */
    private <T> void m13092a(T t, InterfaceC2748k<T> interfaceC2748k) {
        m13091a(new AnonymousClass1("", t, interfaceC2748k));
    }

    /* renamed from: a */
    private <T> void m13093a(String str, T t, InterfaceC2748k<T> interfaceC2748k) {
        m13091a(new AnonymousClass1(str, t, interfaceC2748k));
    }

    /* renamed from: a */
    private void m13094a(Throwable th) {
        this.f10807a.add(th);
    }

    @Override // org.junit.p227d.AbstractC2929p
    /* renamed from: a */
    protected final void mo13095a() throws Throwable {
        C2937f.assertEmpty(this.f10807a);
    }
}
