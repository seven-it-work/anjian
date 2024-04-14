package com.p021b.p022a.p023a.p025b;

import com.p021b.p022a.C0630a;
import com.p021b.p022a.C0736ai;
import com.p021b.p022a.C0750aw;
import com.p021b.p022a.C0764n;
import com.p021b.p022a.C0776z;
import com.p021b.p022a.EnumC0739al;
import com.p021b.p022a.InterfaceC0763m;
import com.p021b.p022a.p023a.p026c.InterfaceC0653c;
import com.p021b.p022a.p023a.p027d.C0665a;
import com.p021b.p022a.p023a.p028e.AbstractC0703s;
import com.p021b.p022a.p023a.p028e.C0674ab;
import com.p021b.p022a.p023a.p028e.C0692h;
import com.p021b.p022a.p023a.p028e.C0694j;
import com.p021b.p022a.p023a.p028e.EnumC0686b;
import com.p021b.p022a.p023a.p030g.C0720h;
import com.p021b.p032b.C0791n;
import com.p021b.p032b.InterfaceC0784g;
import com.p021b.p032b.InterfaceC0785h;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* renamed from: com.b.a.a.b.c */
/* loaded from: classes.dex */
public final class C0644c extends AbstractC0703s implements InterfaceC0763m {

    /* renamed from: a */
    public boolean f1461a;

    /* renamed from: b */
    public int f1462b;

    /* renamed from: c */
    public int f1463c = 1;

    /* renamed from: d */
    public final List<Reference<C0648g>> f1464d = new ArrayList();

    /* renamed from: e */
    public long f1465e = Long.MAX_VALUE;

    /* renamed from: g */
    private final C0764n f1466g;

    /* renamed from: h */
    private final C0750aw f1467h;

    /* renamed from: i */
    private Socket f1468i;

    /* renamed from: j */
    private Socket f1469j;

    /* renamed from: k */
    private C0776z f1470k;

    /* renamed from: l */
    private EnumC0739al f1471l;

    /* renamed from: m */
    private C0694j f1472m;

    /* renamed from: n */
    private InterfaceC0785h f1473n;

    /* renamed from: o */
    private InterfaceC0784g f1474o;

    public C0644c(C0764n c0764n, C0750aw c0750aw) {
        this.f1466g = c0764n;
        this.f1467h = c0750aw;
    }

    /* renamed from: a */
    private void m1562a(int i, int i2) {
        Proxy m1942b = this.f1467h.m1942b();
        this.f1468i = (m1942b.type() == Proxy.Type.DIRECT || m1942b.type() == Proxy.Type.HTTP) ? this.f1467h.m1941a().m1522c().createSocket() : new Socket(m1942b);
        this.f1468i.setSoTimeout(i2);
        try {
            C0720h.m1803b().mo1785a(this.f1468i, this.f1467h.m1943c(), i);
            this.f1473n = C0791n.m2102a(C0791n.m2105b(this.f1468i));
            this.f1474o = C0791n.m2101a(C0791n.m2103a(this.f1468i));
        } catch (ConnectException e) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.f1467h.m1943c());
            connectException.initCause(e);
            throw connectException;
        }
    }

    /* renamed from: a */
    public final InterfaceC0653c m1563a(C0736ai c0736ai, C0648g c0648g) {
        if (this.f1472m != null) {
            return new C0692h(c0736ai, c0648g, this.f1472m);
        }
        this.f1469j.setSoTimeout(c0736ai.m1869b());
        this.f1473n.mo1544a().mo2091a(c0736ai.m1869b(), TimeUnit.MILLISECONDS);
        this.f1474o.mo1662a().mo2091a(c0736ai.m1870c(), TimeUnit.MILLISECONDS);
        return new C0665a(c0736ai, c0648g, this.f1473n, this.f1474o);
    }

    @Override // com.p021b.p022a.InterfaceC0763m
    /* renamed from: a */
    public final C0750aw mo1564a() {
        return this.f1467h;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:112:0x033e  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x034b  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0355 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0345  */
    /* JADX WARN: Type inference failed for: r6v4, types: [com.b.a.a.g.h] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.net.Socket, javax.net.ssl.SSLSocket] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void m1565a(int r18, int r19, int r20, boolean r21) {
        /*
            Method dump skipped, instructions count: 854
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p021b.p022a.p023a.p025b.C0644c.m1565a(int, int, int, boolean):void");
    }

    @Override // com.p021b.p022a.p023a.p028e.AbstractC0703s
    /* renamed from: a */
    public final void mo1566a(C0674ab c0674ab) {
        c0674ab.m1674a(EnumC0686b.REFUSED_STREAM);
    }

    @Override // com.p021b.p022a.p023a.p028e.AbstractC0703s
    /* renamed from: a */
    public final void mo1567a(C0694j c0694j) {
        synchronized (this.f1466g) {
            this.f1463c = c0694j.m1753a();
        }
    }

    /* renamed from: a */
    public final boolean m1568a(C0630a c0630a) {
        return this.f1464d.size() < this.f1463c && c0630a.equals(this.f1467h.m1941a()) && !this.f1461a;
    }

    /* renamed from: a */
    public final boolean m1569a(boolean z) {
        if (this.f1469j.isClosed() || this.f1469j.isInputShutdown() || this.f1469j.isOutputShutdown()) {
            return false;
        }
        if (this.f1472m != null) {
            return !this.f1472m.m1768c();
        }
        if (z) {
            try {
                int soTimeout = this.f1469j.getSoTimeout();
                try {
                    this.f1469j.setSoTimeout(1);
                    return !this.f1473n.mo2047d();
                } finally {
                    this.f1469j.setSoTimeout(soTimeout);
                }
            } catch (SocketTimeoutException unused) {
            } catch (IOException unused2) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public final Socket m1570b() {
        return this.f1469j;
    }

    /* renamed from: c */
    public final C0776z m1571c() {
        return this.f1470k;
    }

    /* renamed from: d */
    public final boolean m1572d() {
        return this.f1472m != null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Connection{");
        sb.append(this.f1467h.m1941a().m1520a().m1847f());
        sb.append(":");
        sb.append(this.f1467h.m1941a().m1520a().m1848g());
        sb.append(", proxy=");
        sb.append(this.f1467h.m1942b());
        sb.append(" hostAddress=");
        sb.append(this.f1467h.m1943c());
        sb.append(" cipherSuite=");
        sb.append(this.f1470k != null ? this.f1470k.m2002a() : "none");
        sb.append(" protocol=");
        sb.append(this.f1471l);
        sb.append('}');
        return sb.toString();
    }
}
