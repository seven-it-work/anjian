package p003b.p004a.p012h;

import android.util.Log;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import p003b.EnumC0492aa;
import p003b.p004a.C0439c;
import p003b.p004a.p014j.AbstractC0484b;
import p017c.C0535c;

/* renamed from: b.a.h.a */
/* loaded from: classes.dex */
final class C0477a extends C0481e {

    /* renamed from: a */
    private static final int f492a = 4000;

    /* renamed from: b */
    private final Class<?> f493b;

    /* renamed from: f */
    private final C0480d<Socket> f494f;

    /* renamed from: g */
    private final C0480d<Socket> f495g;

    /* renamed from: h */
    private final C0480d<Socket> f496h;

    /* renamed from: i */
    private final C0480d<Socket> f497i;

    /* renamed from: j */
    private final b f498j = b.m473a();

    /* renamed from: b.a.h.a$a */
    /* loaded from: classes.dex */
    static final class a extends AbstractC0484b {

        /* renamed from: a */
        private final Object f499a;

        /* renamed from: b */
        private final Method f500b;

        a(Object obj, Method method) {
            this.f499a = obj;
            this.f500b = method;
        }

        @Override // p003b.p004a.p014j.AbstractC0484b
        /* renamed from: a */
        public final List<Certificate> mo472a(List<Certificate> list, String str) throws SSLPeerUnverifiedException {
            try {
                return (List) this.f500b.invoke(this.f499a, (X509Certificate[]) list.toArray(new X509Certificate[list.size()]), "RSA", str);
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (InvocationTargetException e2) {
                SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e2.getMessage());
                sSLPeerUnverifiedException.initCause(e2);
                throw sSLPeerUnverifiedException;
            }
        }

        public final boolean equals(Object obj) {
            return obj instanceof a;
        }

        public final int hashCode() {
            return 0;
        }
    }

    /* renamed from: b.a.h.a$b */
    /* loaded from: classes.dex */
    static final class b {

        /* renamed from: a */
        private final Method f501a;

        /* renamed from: b */
        private final Method f502b;

        /* renamed from: c */
        private final Method f503c;

        private b(Method method, Method method2, Method method3) {
            this.f501a = method;
            this.f502b = method2;
            this.f503c = method3;
        }

        /* renamed from: a */
        static b m473a() {
            Method method;
            Method method2;
            Method method3 = null;
            try {
                Class<?> cls = Class.forName("dalvik.system.CloseGuard");
                Method method4 = cls.getMethod("get", new Class[0]);
                method2 = cls.getMethod("open", String.class);
                method = cls.getMethod("warnIfOpen", new Class[0]);
                method3 = method4;
            } catch (Exception unused) {
                method = null;
                method2 = null;
            }
            return new b(method3, method2, method);
        }

        /* renamed from: a */
        final Object m474a(String str) {
            if (this.f501a != null) {
                try {
                    Object invoke = this.f501a.invoke(null, new Object[0]);
                    this.f502b.invoke(invoke, str);
                    return invoke;
                } catch (Exception unused) {
                }
            }
            return null;
        }

        /* renamed from: a */
        final boolean m475a(Object obj) {
            if (obj == null) {
                return false;
            }
            try {
                this.f503c.invoke(obj, new Object[0]);
                return true;
            } catch (Exception unused) {
                return false;
            }
        }
    }

    private C0477a(Class<?> cls, C0480d<Socket> c0480d, C0480d<Socket> c0480d2, C0480d<Socket> c0480d3, C0480d<Socket> c0480d4) {
        this.f493b = cls;
        this.f494f = c0480d;
        this.f495g = c0480d2;
        this.f496h = c0480d3;
        this.f497i = c0480d4;
    }

    /* renamed from: a */
    public static C0481e m462a() {
        Class<?> cls;
        C0480d c0480d;
        C0480d c0480d2;
        try {
            try {
                cls = Class.forName("com.android.org.conscrypt.SSLParametersImpl");
            } catch (ClassNotFoundException unused) {
                cls = Class.forName("org.apache.harmony.xnet.provider.jsse.SSLParametersImpl");
            }
            Class<?> cls2 = cls;
            C0480d c0480d3 = new C0480d(null, "setUseSessionTickets", Boolean.TYPE);
            C0480d c0480d4 = new C0480d(null, "setHostname", String.class);
            try {
                Class.forName("android.net.Network");
                c0480d = new C0480d(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
                try {
                    c0480d2 = new C0480d(null, "setAlpnProtocols", byte[].class);
                } catch (ClassNotFoundException unused2) {
                    c0480d2 = null;
                    return new C0477a(cls2, c0480d3, c0480d4, c0480d, c0480d2);
                }
            } catch (ClassNotFoundException unused3) {
                c0480d = null;
            }
            return new C0477a(cls2, c0480d3, c0480d4, c0480d, c0480d2);
        } catch (ClassNotFoundException unused4) {
            return null;
        }
    }

    @Override // p003b.p004a.p012h.C0481e
    /* renamed from: a */
    public final AbstractC0484b mo463a(X509TrustManager x509TrustManager) {
        try {
            Class<?> cls = Class.forName("android.net.http.X509TrustManagerExtensions");
            return new a(cls.getConstructor(X509TrustManager.class).newInstance(x509TrustManager), cls.getMethod("checkServerTrusted", X509Certificate[].class, String.class, String.class));
        } catch (Exception unused) {
            return super.mo463a(x509TrustManager);
        }
    }

    @Override // p003b.p004a.p012h.C0481e
    /* renamed from: a */
    public final Object mo464a(String str) {
        return this.f498j.m474a(str);
    }

    @Override // p003b.p004a.p012h.C0481e
    /* renamed from: a */
    public final String mo465a(SSLSocket sSLSocket) {
        byte[] bArr;
        if (this.f496h == null || !this.f496h.m484a((C0480d<Socket>) sSLSocket) || (bArr = (byte[]) this.f496h.m485b(sSLSocket, new Object[0])) == null) {
            return null;
        }
        return new String(bArr, C0439c.f167e);
    }

    @Override // p003b.p004a.p012h.C0481e
    /* renamed from: a */
    public final X509TrustManager mo466a(SSLSocketFactory sSLSocketFactory) {
        Object a2 = m487a(sSLSocketFactory, this.f493b, "sslParameters");
        if (a2 == null) {
            try {
                a2 = m487a(sSLSocketFactory, Class.forName("com.google.android.gms.org.conscrypt.SSLParametersImpl", false, sSLSocketFactory.getClass().getClassLoader()), "sslParameters");
            } catch (ClassNotFoundException unused) {
                return super.mo466a(sSLSocketFactory);
            }
        }
        X509TrustManager x509TrustManager = (X509TrustManager) m487a(a2, X509TrustManager.class, "x509TrustManager");
        return x509TrustManager != null ? x509TrustManager : (X509TrustManager) m487a(a2, X509TrustManager.class, "trustManager");
    }

    @Override // p003b.p004a.p012h.C0481e
    /* renamed from: a */
    public final void mo467a(int i, String str, Throwable th) {
        int min;
        int i2 = i != 5 ? 3 : 5;
        if (th != null) {
            str = str + '\n' + Log.getStackTraceString(th);
        }
        int i3 = 0;
        int length = str.length();
        while (i3 < length) {
            int indexOf = str.indexOf(10, i3);
            if (indexOf == -1) {
                indexOf = length;
            }
            while (true) {
                min = Math.min(indexOf, i3 + 4000);
                Log.println(i2, "OkHttp", str.substring(i3, min));
                if (min >= indexOf) {
                    break;
                } else {
                    i3 = min;
                }
            }
            i3 = min + 1;
        }
    }

    @Override // p003b.p004a.p012h.C0481e
    /* renamed from: a */
    public final void mo468a(String str, Object obj) {
        if (this.f498j.m475a(obj)) {
            return;
        }
        mo467a(5, str, (Throwable) null);
    }

    @Override // p003b.p004a.p012h.C0481e
    /* renamed from: a */
    public final void mo469a(Socket socket, InetSocketAddress inetSocketAddress, int i) throws IOException {
        try {
            socket.connect(inetSocketAddress, i);
        } catch (AssertionError e) {
            if (!C0439c.m149a(e)) {
                throw e;
            }
            throw new IOException(e);
        } catch (SecurityException e2) {
            IOException iOException = new IOException("Exception in connect");
            iOException.initCause(e2);
            throw iOException;
        }
    }

    @Override // p003b.p004a.p012h.C0481e
    /* renamed from: a */
    public final void mo470a(SSLSocket sSLSocket, String str, List<EnumC0492aa> list) {
        if (str != null) {
            this.f494f.m483a(sSLSocket, true);
            this.f495g.m483a(sSLSocket, str);
        }
        if (this.f497i == null || !this.f497i.m484a((C0480d<Socket>) sSLSocket)) {
            return;
        }
        Object[] objArr = new Object[1];
        C0535c c0535c = new C0535c();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            EnumC0492aa enumC0492aa = list.get(i);
            if (enumC0492aa != EnumC0492aa.HTTP_1_0) {
                c0535c.mo1157l(enumC0492aa.toString().length());
                c0535c.mo1114b(enumC0492aa.toString());
            }
        }
        objArr[0] = c0535c.mo1172v();
        this.f497i.m485b(sSLSocket, objArr);
    }

    @Override // p003b.p004a.p012h.C0481e
    /* renamed from: b */
    public final boolean mo471b(String str) {
        try {
            Class<?> cls = Class.forName("android.security.NetworkSecurityPolicy");
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", String.class).invoke(cls.getMethod("getInstance", new Class[0]).invoke(null, new Object[0]), str)).booleanValue();
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return super.mo471b(str);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused2) {
            throw new AssertionError();
        }
    }
}
