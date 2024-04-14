package p003b.p004a.p012h;

import com.umeng.analytics.pro.C2427b;
import java.io.IOException;
import java.lang.reflect.Field;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import p003b.C0528z;
import p003b.EnumC0492aa;
import p003b.p004a.p014j.AbstractC0484b;
import p003b.p004a.p014j.AbstractC0487e;
import p003b.p004a.p014j.C0483a;
import p017c.C0535c;

/* renamed from: b.a.h.e */
/* loaded from: classes.dex */
public class C0481e {

    /* renamed from: a */
    private static final Logger f517a;

    /* renamed from: c */
    static final C0481e f518c;

    /* renamed from: d */
    public static final int f519d = 4;

    /* renamed from: e */
    public static final int f520e = 5;

    static {
        C0481e m462a = C0477a.m462a();
        if (m462a == null && (m462a = C0478b.m476a()) == null && (m462a = C0479c.m477a()) == null) {
            m462a = new C0481e();
        }
        f518c = m462a;
        f517a = Logger.getLogger(C0528z.class.getName());
    }

    /* renamed from: a */
    private static C0481e m486a() {
        C0481e m462a = C0477a.m462a();
        if (m462a != null) {
            return m462a;
        }
        C0478b m476a = C0478b.m476a();
        if (m476a != null) {
            return m476a;
        }
        C0481e m477a = C0479c.m477a();
        return m477a != null ? m477a : new C0481e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <T> T m487a(Object obj, Class<T> cls, String str) {
        do {
            for (Class<?> cls2 = obj.getClass(); cls2 != Object.class; cls2 = cls2.getSuperclass()) {
                try {
                    Field declaredField = cls2.getDeclaredField(str);
                    declaredField.setAccessible(true);
                    Object obj2 = declaredField.get(obj);
                    if (obj2 == null || !cls.isInstance(obj2)) {
                        return null;
                    }
                    return cls.cast(obj2);
                } catch (IllegalAccessException unused) {
                    throw new AssertionError();
                } catch (NoSuchFieldException unused2) {
                }
            }
            if (str.equals("delegate")) {
                break;
            }
            obj = m487a(obj, (Class<Object>) Object.class, "delegate");
        } while (obj != null);
        return null;
    }

    /* renamed from: a */
    public static List<String> m488a(List<EnumC0492aa> list) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            EnumC0492aa enumC0492aa = list.get(i);
            if (enumC0492aa != EnumC0492aa.HTTP_1_0) {
                arrayList.add(enumC0492aa.toString());
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public static C0481e m489b() {
        return f518c;
    }

    /* renamed from: b */
    private static byte[] m490b(List<EnumC0492aa> list) {
        C0535c c0535c = new C0535c();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            EnumC0492aa enumC0492aa = list.get(i);
            if (enumC0492aa != EnumC0492aa.HTTP_1_0) {
                c0535c.mo1157l(enumC0492aa.toString().length());
                c0535c.mo1114b(enumC0492aa.toString());
            }
        }
        return c0535c.mo1172v();
    }

    /* renamed from: c */
    public static String m491c() {
        return "OkHttp";
    }

    /* renamed from: a */
    public AbstractC0484b mo463a(X509TrustManager x509TrustManager) {
        return new C0483a(AbstractC0487e.m515a(x509TrustManager));
    }

    /* renamed from: a */
    public Object mo464a(String str) {
        if (f517a.isLoggable(Level.FINE)) {
            return new Throwable(str);
        }
        return null;
    }

    /* renamed from: a */
    public String mo465a(SSLSocket sSLSocket) {
        return null;
    }

    /* renamed from: a */
    public X509TrustManager mo466a(SSLSocketFactory sSLSocketFactory) {
        try {
            Object m487a = m487a(sSLSocketFactory, Class.forName("sun.security.ssl.SSLContextImpl"), C2427b.f8946M);
            if (m487a == null) {
                return null;
            }
            return (X509TrustManager) m487a(m487a, X509TrustManager.class, "trustManager");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    /* renamed from: a */
    public void mo467a(int i, String str, Throwable th) {
        f517a.log(i == 5 ? Level.WARNING : Level.INFO, str, th);
    }

    /* renamed from: a */
    public void mo468a(String str, Object obj) {
        if (obj == null) {
            str = str + " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);";
        }
        mo467a(5, str, (Throwable) obj);
    }

    /* renamed from: a */
    public void mo469a(Socket socket, InetSocketAddress inetSocketAddress, int i) throws IOException {
        socket.connect(inetSocketAddress, i);
    }

    /* renamed from: a */
    public void mo470a(SSLSocket sSLSocket, String str, List<EnumC0492aa> list) {
    }

    /* renamed from: b */
    public void mo478b(SSLSocket sSLSocket) {
    }

    /* renamed from: b */
    public boolean mo471b(String str) {
        return true;
    }
}
