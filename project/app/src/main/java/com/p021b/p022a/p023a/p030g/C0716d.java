package com.p021b.p022a.p023a.p030g;

import com.p021b.p022a.EnumC0739al;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;

/* renamed from: com.b.a.a.g.d */
/* loaded from: classes.dex */
final class C0716d extends C0720h {

    /* renamed from: a */
    final Method f1752a;

    /* renamed from: b */
    final Method f1753b;

    private C0716d(Method method, Method method2) {
        this.f1752a = method;
        this.f1753b = method2;
    }

    /* renamed from: a */
    public static C0716d m1792a() {
        try {
            return new C0716d(SSLParameters.class.getMethod("setApplicationProtocols", String[].class), SSLSocket.class.getMethod("getApplicationProtocol", new Class[0]));
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    @Override // com.p021b.p022a.p023a.p030g.C0720h
    /* renamed from: a */
    public final String mo1782a(SSLSocket sSLSocket) {
        try {
            String str = (String) this.f1753b.invoke(sSLSocket, new Object[0]);
            if (str == null) {
                return null;
            }
            if (str.equals("")) {
                return null;
            }
            return str;
        } catch (IllegalAccessException | InvocationTargetException unused) {
            throw new AssertionError();
        }
    }

    @Override // com.p021b.p022a.p023a.p030g.C0720h
    /* renamed from: a */
    public final void mo1786a(SSLSocket sSLSocket, String str, List<EnumC0739al> list) {
        try {
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            List<String> a2 = m1802a(list);
            this.f1752a.invoke(sSLParameters, a2.toArray(new String[a2.size()]));
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            throw new AssertionError();
        }
    }
}
