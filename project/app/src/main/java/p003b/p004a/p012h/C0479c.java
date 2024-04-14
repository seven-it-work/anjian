package p003b.p004a.p012h;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;
import javax.net.ssl.SSLSocket;
import p003b.EnumC0492aa;
import p003b.p004a.C0439c;

/* renamed from: b.a.h.c */
/* loaded from: classes.dex */
final class C0479c extends C0481e {

    /* renamed from: a */
    private final Method f506a;

    /* renamed from: b */
    private final Method f507b;

    /* renamed from: f */
    private final Method f508f;

    /* renamed from: g */
    private final Class<?> f509g;

    /* renamed from: h */
    private final Class<?> f510h;

    /* renamed from: b.a.h.c$a */
    /* loaded from: classes.dex */
    private static class a implements InvocationHandler {

        /* renamed from: a */
        boolean f511a;

        /* renamed from: b */
        String f512b;

        /* renamed from: c */
        private final List<String> f513c;

        a(List<String> list) {
            this.f513c = list;
        }

        @Override // java.lang.reflect.InvocationHandler
        public final Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            Object obj2;
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            if (objArr == null) {
                objArr = C0439c.f164b;
            }
            if (name.equals("supports") && Boolean.TYPE == returnType) {
                return true;
            }
            if (name.equals("unsupported") && Void.TYPE == returnType) {
                this.f511a = true;
                return null;
            }
            if (name.equals("protocols") && objArr.length == 0) {
                return this.f513c;
            }
            if ((!name.equals("selectProtocol") && !name.equals("select")) || String.class != returnType || objArr.length != 1 || !(objArr[0] instanceof List)) {
                if ((!name.equals("protocolSelected") && !name.equals("selected")) || objArr.length != 1) {
                    return method.invoke(this, objArr);
                }
                this.f512b = (String) objArr[0];
                return null;
            }
            List list = (List) objArr[0];
            int size = list.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    obj2 = this.f513c.get(0);
                    break;
                }
                if (this.f513c.contains(list.get(i))) {
                    obj2 = list.get(i);
                    break;
                }
                i++;
            }
            String str = (String) obj2;
            this.f512b = str;
            return str;
        }
    }

    private C0479c(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
        this.f506a = method;
        this.f507b = method2;
        this.f508f = method3;
        this.f509g = cls;
        this.f510h = cls2;
    }

    /* renamed from: a */
    public static C0481e m477a() {
        try {
            Class<?> cls = Class.forName("org.eclipse.jetty.alpn.ALPN");
            Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN$Provider");
            return new C0479c(cls.getMethod("put", SSLSocket.class, cls2), cls.getMethod("get", SSLSocket.class), cls.getMethod("remove", SSLSocket.class), Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider"), Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"));
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return null;
        }
    }

    @Override // p003b.p004a.p012h.C0481e
    /* renamed from: a */
    public final String mo465a(SSLSocket sSLSocket) {
        try {
            a aVar = (a) Proxy.getInvocationHandler(this.f507b.invoke(null, sSLSocket));
            if (!aVar.f511a && aVar.f512b == null) {
                C0481e.f518c.mo467a(4, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", (Throwable) null);
                return null;
            }
            if (aVar.f511a) {
                return null;
            }
            return aVar.f512b;
        } catch (IllegalAccessException | InvocationTargetException unused) {
            throw new AssertionError();
        }
    }

    @Override // p003b.p004a.p012h.C0481e
    /* renamed from: a */
    public final void mo470a(SSLSocket sSLSocket, String str, List<EnumC0492aa> list) {
        try {
            this.f506a.invoke(null, sSLSocket, Proxy.newProxyInstance(C0481e.class.getClassLoader(), new Class[]{this.f509g, this.f510h}, new a(m488a(list))));
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new AssertionError(e);
        }
    }

    @Override // p003b.p004a.p012h.C0481e
    /* renamed from: b */
    public final void mo478b(SSLSocket sSLSocket) {
        try {
            this.f508f.invoke(null, sSLSocket);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            throw new AssertionError();
        }
    }
}
