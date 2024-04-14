package com.p021b.p022a.p023a.p030g;

import com.p021b.p022a.EnumC0739al;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;
import javax.net.ssl.SSLSocket;

/* renamed from: com.b.a.a.g.e */
/* loaded from: classes.dex */
final class C0717e extends C0720h {

    /* renamed from: a */
    private final Method f1754a;

    /* renamed from: b */
    private final Method f1755b;

    /* renamed from: c */
    private final Method f1756c;

    /* renamed from: d */
    private final Class<?> f1757d;

    /* renamed from: e */
    private final Class<?> f1758e;

    private C0717e(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
        this.f1754a = method;
        this.f1755b = method2;
        this.f1756c = method3;
        this.f1757d = cls;
        this.f1758e = cls2;
    }

    /* renamed from: a */
    public static C0720h m1793a() {
        try {
            Class<?> cls = Class.forName("org.eclipse.jetty.alpn.ALPN");
            Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN$Provider");
            return new C0717e(cls.getMethod("put", SSLSocket.class, cls2), cls.getMethod("get", SSLSocket.class), cls.getMethod("remove", SSLSocket.class), Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider"), Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"));
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return null;
        }
    }

    @Override // com.p021b.p022a.p023a.p030g.C0720h
    /* renamed from: a */
    public final String mo1782a(SSLSocket sSLSocket) {
        try {
            C0718f c0718f = (C0718f) Proxy.getInvocationHandler(this.f1755b.invoke(null, sSLSocket));
            if (!c0718f.f1759a && c0718f.f1760b == null) {
                C0720h.m1803b().mo1783a(4, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", (Throwable) null);
                return null;
            }
            if (c0718f.f1759a) {
                return null;
            }
            return c0718f.f1760b;
        } catch (IllegalAccessException | InvocationTargetException unused) {
            throw new AssertionError();
        }
    }

    @Override // com.p021b.p022a.p023a.p030g.C0720h
    /* renamed from: a */
    public final void mo1786a(SSLSocket sSLSocket, String str, List<EnumC0739al> list) {
        try {
            this.f1754a.invoke(null, sSLSocket, Proxy.newProxyInstance(C0720h.class.getClassLoader(), new Class[]{this.f1757d, this.f1758e}, new C0718f(m1802a(list))));
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.p021b.p022a.p023a.p030g.C0720h
    /* renamed from: b */
    public final void mo1794b(SSLSocket sSLSocket) {
        try {
            this.f1756c.invoke(null, sSLSocket);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            throw new AssertionError();
        }
    }
}
