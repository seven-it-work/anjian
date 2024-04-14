package com.p021b.p022a.p023a.p030g;

import android.util.Log;
import com.cyjh.elfin.p076d.InterfaceC1237b;
import com.p021b.p022a.EnumC0739al;
import com.p021b.p022a.p023a.C0650c;
import com.p021b.p022a.p023a.p031h.AbstractC0722b;
import com.p021b.p032b.C0783f;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;

/* renamed from: com.b.a.a.g.a */
/* loaded from: classes.dex */
final class C0713a extends C0720h {

    /* renamed from: a */
    private final Class<?> f1741a;

    /* renamed from: b */
    private final C0719g<Socket> f1742b;

    /* renamed from: c */
    private final C0719g<Socket> f1743c;

    /* renamed from: d */
    private final C0719g<Socket> f1744d;

    /* renamed from: e */
    private final C0719g<Socket> f1745e;

    /* renamed from: f */
    private final C0715c f1746f = C0715c.m1789a();

    private C0713a(Class<?> cls, C0719g<Socket> c0719g, C0719g<Socket> c0719g2, C0719g<Socket> c0719g3, C0719g<Socket> c0719g4) {
        this.f1741a = cls;
        this.f1742b = c0719g;
        this.f1743c = c0719g2;
        this.f1744d = c0719g3;
        this.f1745e = c0719g4;
    }

    /* renamed from: a */
    public static C0720h m1779a() {
        Class<?> cls;
        C0719g c0719g;
        C0719g c0719g2;
        try {
            try {
                cls = Class.forName("com.android.org.conscrypt.SSLParametersImpl");
            } catch (ClassNotFoundException unused) {
                cls = Class.forName("org.apache.harmony.xnet.provider.jsse.SSLParametersImpl");
            }
            Class<?> cls2 = cls;
            C0719g c0719g3 = new C0719g(null, "setUseSessionTickets", Boolean.TYPE);
            C0719g c0719g4 = new C0719g(null, "setHostname", String.class);
            try {
                Class.forName("android.net.Network");
                c0719g = new C0719g(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
                try {
                    c0719g2 = new C0719g(null, "setAlpnProtocols", byte[].class);
                } catch (ClassNotFoundException unused2) {
                    c0719g2 = null;
                    return new C0713a(cls2, c0719g3, c0719g4, c0719g, c0719g2);
                }
            } catch (ClassNotFoundException unused3) {
                c0719g = null;
            }
            return new C0713a(cls2, c0719g3, c0719g4, c0719g, c0719g2);
        } catch (ClassNotFoundException unused4) {
            return null;
        }
    }

    @Override // com.p021b.p022a.p023a.p030g.C0720h
    /* renamed from: a */
    public final AbstractC0722b mo1780a(X509TrustManager x509TrustManager) {
        try {
            Class<?> cls = Class.forName("android.net.http.X509TrustManagerExtensions");
            return new C0714b(cls.getConstructor(X509TrustManager.class).newInstance(x509TrustManager), cls.getMethod("checkServerTrusted", X509Certificate[].class, String.class, String.class));
        } catch (Exception unused) {
            return super.mo1780a(x509TrustManager);
        }
    }

    @Override // com.p021b.p022a.p023a.p030g.C0720h
    /* renamed from: a */
    public final Object mo1781a(String str) {
        return this.f1746f.m1790a(str);
    }

    @Override // com.p021b.p022a.p023a.p030g.C0720h
    /* renamed from: a */
    public final String mo1782a(SSLSocket sSLSocket) {
        byte[] bArr;
        if (this.f1744d == null || !this.f1744d.m1800a((C0719g<Socket>) sSLSocket) || (bArr = (byte[]) this.f1744d.m1801b(sSLSocket, new Object[0])) == null) {
            return null;
        }
        return new String(bArr, C0650c.f1503e);
    }

    @Override // com.p021b.p022a.p023a.p030g.C0720h
    /* renamed from: a */
    public final void mo1783a(int i, String str, Throwable th) {
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
                min = Math.min(indexOf, i3 + InterfaceC1237b.f4586c);
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

    @Override // com.p021b.p022a.p023a.p030g.C0720h
    /* renamed from: a */
    public final void mo1784a(String str, Object obj) {
        if (this.f1746f.m1791a(obj)) {
            return;
        }
        mo1783a(5, str, (Throwable) null);
    }

    @Override // com.p021b.p022a.p023a.p030g.C0720h
    /* renamed from: a */
    public final void mo1785a(Socket socket, InetSocketAddress inetSocketAddress, int i) {
        try {
            socket.connect(inetSocketAddress, i);
        } catch (AssertionError e) {
            if (!C0650c.m1616a(e)) {
                throw e;
            }
            throw new IOException(e);
        } catch (SecurityException e2) {
            IOException iOException = new IOException("Exception in connect");
            iOException.initCause(e2);
            throw iOException;
        }
    }

    @Override // com.p021b.p022a.p023a.p030g.C0720h
    /* renamed from: a */
    public final void mo1786a(SSLSocket sSLSocket, String str, List<EnumC0739al> list) {
        if (str != null) {
            this.f1742b.m1799a(sSLSocket, true);
            this.f1743c.m1799a(sSLSocket, str);
        }
        if (this.f1745e == null || !this.f1745e.m1800a((C0719g<Socket>) sSLSocket)) {
            return;
        }
        Object[] objArr = new Object[1];
        C0783f c0783f = new C0783f();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            EnumC0739al enumC0739al = list.get(i);
            if (enumC0739al != EnumC0739al.HTTP_1_0) {
                c0783f.mo2058h(enumC0739al.toString().length());
                c0783f.mo2038b(enumC0739al.toString());
            }
        }
        objArr[0] = c0783f.m2067n();
        this.f1745e.m1801b(sSLSocket, objArr);
    }

    @Override // com.p021b.p022a.p023a.p030g.C0720h
    /* renamed from: b */
    public final boolean mo1787b(String str) {
        try {
            Class<?> cls = Class.forName("android.security.NetworkSecurityPolicy");
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", String.class).invoke(cls.getMethod("getInstance", new Class[0]).invoke(null, new Object[0]), str)).booleanValue();
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return super.mo1787b(str);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused2) {
            throw new AssertionError();
        }
    }
}
