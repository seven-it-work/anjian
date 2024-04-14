package junit.p190b;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;

/* renamed from: junit.b.m */
/* loaded from: classes.dex */
public final class C2618m {

    /* renamed from: a */
    protected List<C2616k> f10078a = new ArrayList();

    /* renamed from: b */
    protected List<C2616k> f10079b = new ArrayList();

    /* renamed from: c */
    protected List<InterfaceC2617l> f10080c = new ArrayList();

    /* renamed from: d */
    protected int f10081d = 0;

    /* renamed from: e */
    private boolean f10082e = false;

    /* renamed from: junit.b.m$1, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 implements InterfaceC2613h {

        /* renamed from: a */
        final /* synthetic */ AbstractC2615j f10083a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AnonymousClass1(AbstractC2615j abstractC2615j) throws Throwable {
            this.f10083a = abstractC2615j;
        }

        @Override // junit.p190b.InterfaceC2613h
        /* renamed from: a */
        public final void mo11686a() throws Throwable {
            this.f10083a.m11786b();
        }
    }

    /* renamed from: a */
    private synchronized void m11797a(InterfaceC2614i interfaceC2614i, C2607b c2607b) {
        this.f10078a.add(new C2616k(interfaceC2614i, c2607b));
        Iterator<InterfaceC2617l> it = m11800h().iterator();
        while (it.hasNext()) {
            it.next().mo11795a(interfaceC2614i, c2607b);
        }
    }

    /* renamed from: a */
    private void m11798a(AbstractC2615j abstractC2615j) {
        m11808b(abstractC2615j);
        m11805a(abstractC2615j, new AnonymousClass1(abstractC2615j));
        m11803a((InterfaceC2614i) abstractC2615j);
    }

    /* renamed from: b */
    private synchronized void m11799b(InterfaceC2617l interfaceC2617l) {
        this.f10080c.remove(interfaceC2617l);
    }

    /* renamed from: h */
    private synchronized List<InterfaceC2617l> m11800h() {
        ArrayList arrayList;
        arrayList = new ArrayList();
        arrayList.addAll(this.f10080c);
        return arrayList;
    }

    /* renamed from: i */
    private synchronized void m11801i() {
        this.f10082e = true;
    }

    /* renamed from: a */
    public final synchronized int m11802a() {
        return this.f10079b.size();
    }

    /* renamed from: a */
    public final void m11803a(InterfaceC2614i interfaceC2614i) {
        Iterator<InterfaceC2617l> it = m11800h().iterator();
        while (it.hasNext()) {
            it.next().mo11793a(interfaceC2614i);
        }
    }

    /* renamed from: a */
    public final synchronized void m11804a(InterfaceC2614i interfaceC2614i, Throwable th) {
        this.f10079b.add(new C2616k(interfaceC2614i, th));
        Iterator<InterfaceC2617l> it = m11800h().iterator();
        while (it.hasNext()) {
            it.next().mo11794a(interfaceC2614i, th);
        }
    }

    /* renamed from: a */
    public final void m11805a(InterfaceC2614i interfaceC2614i, InterfaceC2613h interfaceC2613h) {
        try {
            interfaceC2613h.mo11686a();
        } catch (ThreadDeath e) {
            throw e;
        } catch (C2607b e2) {
            m11797a(interfaceC2614i, e2);
        } catch (Throwable th) {
            m11804a(interfaceC2614i, th);
        }
    }

    /* renamed from: a */
    public final synchronized void m11806a(InterfaceC2617l interfaceC2617l) {
        this.f10080c.add(interfaceC2617l);
    }

    /* renamed from: b */
    public final synchronized Enumeration<C2616k> m11807b() {
        return Collections.enumeration(this.f10079b);
    }

    /* renamed from: b */
    public final void m11808b(InterfaceC2614i interfaceC2614i) {
        int mo11681a = interfaceC2614i.mo11681a();
        synchronized (this) {
            this.f10081d += mo11681a;
        }
        Iterator<InterfaceC2617l> it = m11800h().iterator();
        while (it.hasNext()) {
            it.next().mo11796b(interfaceC2614i);
        }
    }

    /* renamed from: c */
    public final synchronized int m11809c() {
        return this.f10078a.size();
    }

    /* renamed from: d */
    public final synchronized Enumeration<C2616k> m11810d() {
        return Collections.enumeration(this.f10078a);
    }

    /* renamed from: e */
    public final synchronized int m11811e() {
        return this.f10081d;
    }

    /* renamed from: f */
    public final synchronized boolean m11812f() {
        return this.f10082e;
    }

    /* renamed from: g */
    public final synchronized boolean m11813g() {
        boolean z;
        if (m11809c() == 0) {
            z = m11802a() == 0;
        }
        return z;
    }
}
