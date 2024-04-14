package com.p021b.p022a.p023a.p030g;

import com.p021b.p022a.C0736ai;
import com.p021b.p022a.EnumC0739al;
import com.p021b.p022a.p023a.p031h.AbstractC0722b;
import com.p021b.p022a.p023a.p031h.AbstractC0725e;
import com.p021b.p022a.p023a.p031h.C0721a;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;

/* renamed from: com.b.a.a.g.h */
/* loaded from: classes.dex */
public class C0720h {

    /* renamed from: a */
    private static final C0720h f1765a;

    /* renamed from: b */
    private static final Logger f1766b;

    static {
        C0720h m1779a = C0713a.m1779a();
        if (m1779a == null && (m1779a = C0716d.m1792a()) == null && (m1779a = C0717e.m1793a()) == null) {
            m1779a = new C0720h();
        }
        f1765a = m1779a;
        f1766b = Logger.getLogger(C0736ai.class.getName());
    }

    /* renamed from: a */
    public static List<String> m1802a(List<EnumC0739al> list) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            EnumC0739al enumC0739al = list.get(i);
            if (enumC0739al != EnumC0739al.HTTP_1_0) {
                arrayList.add(enumC0739al.toString());
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public static C0720h m1803b() {
        return f1765a;
    }

    /* renamed from: a */
    public AbstractC0722b mo1780a(X509TrustManager x509TrustManager) {
        return new C0721a(AbstractC0725e.m1815a(x509TrustManager));
    }

    /* renamed from: a */
    public Object mo1781a(String str) {
        if (f1766b.isLoggable(Level.FINE)) {
            return new Throwable(str);
        }
        return null;
    }

    /* renamed from: a */
    public String mo1782a(SSLSocket sSLSocket) {
        return null;
    }

    /* renamed from: a */
    public void mo1783a(int i, String str, Throwable th) {
        f1766b.log(i == 5 ? Level.WARNING : Level.INFO, str, th);
    }

    /* renamed from: a */
    public void mo1784a(String str, Object obj) {
        if (obj == null) {
            str = str + " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);";
        }
        mo1783a(5, str, (Throwable) obj);
    }

    /* renamed from: a */
    public void mo1785a(Socket socket, InetSocketAddress inetSocketAddress, int i) {
        socket.connect(inetSocketAddress, i);
    }

    /* renamed from: a */
    public void mo1786a(SSLSocket sSLSocket, String str, List<EnumC0739al> list) {
    }

    /* renamed from: b */
    public void mo1794b(SSLSocket sSLSocket) {
    }

    /* renamed from: b */
    public boolean mo1787b(String str) {
        return true;
    }
}
