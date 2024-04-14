package com.p021b.p022a.p023a.p024a;

import com.p021b.p022a.p023a.p029f.InterfaceC0711a;
import com.p021b.p032b.InterfaceC0784g;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;

/* renamed from: com.b.a.a.a.f */
/* loaded from: classes.dex */
public final class C0637f implements Closeable, Flushable {

    /* renamed from: a */
    static final Pattern f1432a = Pattern.compile("[a-z0-9_-]{1,120}");

    /* renamed from: j */
    static final /* synthetic */ boolean f1433j = true;

    /* renamed from: b */
    final InterfaceC0711a f1434b;

    /* renamed from: c */
    final int f1435c;

    /* renamed from: d */
    InterfaceC0784g f1436d;

    /* renamed from: e */
    final LinkedHashMap<String, C0639h> f1437e;

    /* renamed from: f */
    int f1438f;

    /* renamed from: g */
    boolean f1439g;

    /* renamed from: h */
    boolean f1440h;

    /* renamed from: i */
    boolean f1441i;

    /* renamed from: k */
    private long f1442k;

    /* renamed from: l */
    private long f1443l;

    /* renamed from: m */
    private final Executor f1444m;

    /* renamed from: n */
    private final Runnable f1445n;

    /* renamed from: a */
    private boolean m1548a() {
        return this.f1438f >= 2000 && this.f1438f >= this.f1437e.size();
    }

    /* renamed from: a */
    private boolean m1549a(C0639h c0639h) {
        if (c0639h.f1454f != null) {
            C0638g c0638g = c0639h.f1454f;
            if (c0638g.f1446a.f1454f == c0638g) {
                for (int i = 0; i < c0638g.f1447b.f1435c; i++) {
                    try {
                        c0638g.f1447b.f1434b.mo1778a(c0638g.f1446a.f1452d[i]);
                    } catch (IOException unused) {
                    }
                }
                c0638g.f1446a.f1454f = null;
            }
        }
        for (int i2 = 0; i2 < this.f1435c; i2++) {
            this.f1434b.mo1778a(c0639h.f1451c[i2]);
            this.f1443l -= c0639h.f1450b[i2];
            c0639h.f1450b[i2] = 0;
        }
        this.f1438f++;
        this.f1436d.mo2038b("REMOVE").mo2058h(32).mo2038b(c0639h.f1449a).mo2058h(10);
        this.f1437e.remove(c0639h.f1449a);
        if (m1548a()) {
            this.f1444m.execute(this.f1445n);
        }
        return true;
    }

    /* renamed from: b */
    private synchronized boolean m1550b() {
        return this.f1440h;
    }

    /* renamed from: c */
    private synchronized void m1551c() {
        if (m1550b()) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* renamed from: d */
    private void m1552d() {
        while (this.f1443l > this.f1442k) {
            m1549a(this.f1437e.values().iterator().next());
        }
        this.f1441i = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final synchronized void m1553a(C0638g c0638g) {
        InterfaceC0784g interfaceC0784g;
        C0639h c0639h = c0638g.f1446a;
        if (c0639h.f1454f != c0638g) {
            throw new IllegalStateException();
        }
        for (int i = 0; i < this.f1435c; i++) {
            this.f1434b.mo1778a(c0639h.f1452d[i]);
        }
        this.f1438f++;
        c0639h.f1454f = null;
        if (false || c0639h.f1453e) {
            c0639h.f1453e = true;
            this.f1436d.mo2038b("CLEAN").mo2058h(32);
            this.f1436d.mo2038b(c0639h.f1449a);
            c0639h.m1555a(this.f1436d);
            interfaceC0784g = this.f1436d;
        } else {
            this.f1437e.remove(c0639h.f1449a);
            this.f1436d.mo2038b("REMOVE").mo2058h(32);
            this.f1436d.mo2038b(c0639h.f1449a);
            interfaceC0784g = this.f1436d;
        }
        interfaceC0784g.mo2058h(10);
        this.f1436d.flush();
        if (this.f1443l > this.f1442k || m1548a()) {
            this.f1444m.execute(this.f1445n);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        if (this.f1439g && !this.f1440h) {
            for (C0639h c0639h : (C0639h[]) this.f1437e.values().toArray(new C0639h[this.f1437e.size()])) {
                if (c0639h.f1454f != null) {
                    c0639h.f1454f.m1554a();
                }
            }
            m1552d();
            this.f1436d.close();
            this.f1436d = null;
            this.f1440h = true;
            return;
        }
        this.f1440h = true;
    }

    @Override // java.io.Flushable
    public final synchronized void flush() {
        if (this.f1439g) {
            m1551c();
            m1552d();
            this.f1436d.flush();
        }
    }
}
