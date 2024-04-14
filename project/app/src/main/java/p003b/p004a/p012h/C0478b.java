package p003b.p004a.p012h;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import p003b.EnumC0492aa;

/* renamed from: b.a.h.b */
/* loaded from: classes.dex */
final class C0478b extends C0481e {

    /* renamed from: a */
    final Method f504a;

    /* renamed from: b */
    final Method f505b;

    private C0478b(Method method, Method method2) {
        this.f504a = method;
        this.f505b = method2;
    }

    /* renamed from: a */
    public static C0478b m476a() {
        try {
            return new C0478b(SSLParameters.class.getMethod("setApplicationProtocols", String[].class), SSLSocket.class.getMethod("getApplicationProtocol", new Class[0]));
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    @Override // p003b.p004a.p012h.C0481e
    /* renamed from: a */
    public final String mo465a(SSLSocket sSLSocket) {
        try {
            String str = (String) this.f505b.invoke(sSLSocket, new Object[0]);
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

    @Override // p003b.p004a.p012h.C0481e
    /* renamed from: a */
    public final X509TrustManager mo466a(SSLSocketFactory sSLSocketFactory) {
        throw new UnsupportedOperationException("clientBuilder.sslSocketFactory(SSLSocketFactory) not supported on JDK 9+");
    }

    @Override // p003b.p004a.p012h.C0481e
    /* renamed from: a */
    public final void mo470a(SSLSocket sSLSocket, String str, List<EnumC0492aa> list) {
        try {
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            List<String> a2 = m488a(list);
            this.f504a.invoke(sSLParameters, a2.toArray(new String[a2.size()]));
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            throw new AssertionError();
        }
    }
}
