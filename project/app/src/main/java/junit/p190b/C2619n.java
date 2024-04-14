package junit.p190b;

import com.cyjh.common.p067b.InterfaceC1133a;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;
import org.junit.p218b.C2907h;

/* renamed from: junit.b.n */
/* loaded from: classes.dex */
public class C2619n implements InterfaceC2614i {

    /* renamed from: a */
    public String f10085a;

    /* renamed from: b */
    public Vector<InterfaceC2614i> f10086b;

    public C2619n() {
        this.f10086b = new Vector<>(10);
    }

    public C2619n(Class<?> cls) {
        this.f10086b = new Vector<>(10);
        m11821b(cls);
    }

    public C2619n(Class<? extends AbstractC2615j> cls, String str) {
        this(cls);
        this.f10085a = str;
    }

    public C2619n(String str) {
        this.f10086b = new Vector<>(10);
        this.f10085a = str;
    }

    private C2619n(Class<?>... clsArr) {
        this.f10086b = new Vector<>(10);
        for (Class<?> cls : clsArr) {
            m11829a(AbstractC2615j.class.isAssignableFrom(cls) ? new C2619n(cls.asSubclass(AbstractC2615j.class)) : m11817a(cls.getCanonicalName() + " does not extend TestCase"));
        }
    }

    private C2619n(Class<? extends AbstractC2615j>[] clsArr, String str) {
        this(clsArr);
        this.f10085a = str;
    }

    /* renamed from: a */
    private static String m11814a(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    /* renamed from: a */
    private static Constructor<?> m11815a(Class<?> cls) throws NoSuchMethodException {
        try {
            return cls.getConstructor(String.class);
        } catch (NoSuchMethodException unused) {
            return cls.getConstructor(new Class[0]);
        }
    }

    /* renamed from: a */
    public static InterfaceC2614i m11816a(Class<?> cls, String str) {
        String str2;
        StringBuilder sb;
        Throwable e;
        Object newInstance;
        try {
            Constructor<?> m11815a = m11815a(cls);
            try {
                if (m11815a.getParameterTypes().length == 0) {
                    newInstance = m11815a.newInstance(new Object[0]);
                    if (newInstance instanceof AbstractC2615j) {
                        ((AbstractC2615j) newInstance).f10075a = str;
                    }
                } else {
                    newInstance = m11815a.newInstance(str);
                }
                return (InterfaceC2614i) newInstance;
            } catch (IllegalAccessException e2) {
                e = e2;
                sb = new StringBuilder("Cannot access test case: ");
                sb.append(str);
                sb.append(" (");
                sb.append(m11814a(e));
                sb.append(")");
                str2 = sb.toString();
                return m11817a(str2);
            } catch (InstantiationException e3) {
                e = e3;
                sb = new StringBuilder("Cannot instantiate test case: ");
                sb.append(str);
                sb.append(" (");
                sb.append(m11814a(e));
                sb.append(")");
                str2 = sb.toString();
                return m11817a(str2);
            } catch (InvocationTargetException e4) {
                sb = new StringBuilder("Exception in constructor: ");
                sb.append(str);
                sb.append(" (");
                e = e4.getTargetException();
                sb.append(m11814a(e));
                sb.append(")");
                str2 = sb.toString();
                return m11817a(str2);
            }
        } catch (NoSuchMethodException unused) {
            str2 = "Class " + cls.getName() + " has no public constructor TestCase(String name) or TestCase()";
        }
    }

    /* renamed from: a */
    private static InterfaceC2614i m11817a(final String str) {
        return new AbstractC2615j("warning") { // from class: junit.b.n.1
            @Override // junit.p190b.AbstractC2615j
            /* renamed from: c */
            protected final void mo11787c() {
                C2606a.m11695a(str);
            }
        };
    }

    /* renamed from: a */
    private void m11818a(Method method, List<String> list, Class<?> cls) {
        String name = method.getName();
        if (list.contains(name)) {
            return;
        }
        if (m11823b(method) && Modifier.isPublic(method.getModifiers())) {
            list.add(name);
            m11829a(m11816a(cls, name));
        } else if (m11823b(method)) {
            m11829a(m11817a("Test method isn't public: " + method.getName() + "(" + cls.getCanonicalName() + ")"));
        }
    }

    /* renamed from: a */
    private static boolean m11819a(Method method) {
        return m11823b(method) && Modifier.isPublic(method.getModifiers());
    }

    /* renamed from: b */
    private String m11820b() {
        return this.f10085a;
    }

    /* renamed from: b */
    private void m11821b(Class<?> cls) {
        StringBuilder sb;
        String str;
        InterfaceC2614i m11816a;
        this.f10085a = cls.getName();
        try {
            m11815a(cls);
        } catch (NoSuchMethodException unused) {
            sb = new StringBuilder("Class ");
            sb.append(cls.getName());
            str = " has no public constructor TestCase(String name) or TestCase()";
        }
        if (!Modifier.isPublic(cls.getModifiers())) {
            sb = new StringBuilder("Class ");
            sb.append(cls.getName());
            str = " is not public";
            sb.append(str);
            m11829a(m11817a(sb.toString()));
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Class<?> cls2 = cls; InterfaceC2614i.class.isAssignableFrom(cls2); cls2 = cls2.getSuperclass()) {
            for (Method method : C2907h.m12991a(cls2)) {
                String name = method.getName();
                if (!arrayList.contains(name)) {
                    if (m11823b(method) && Modifier.isPublic(method.getModifiers())) {
                        arrayList.add(name);
                        m11816a = m11816a(cls, name);
                    } else if (m11823b(method)) {
                        m11816a = m11817a("Test method isn't public: " + method.getName() + "(" + cls.getCanonicalName() + ")");
                    }
                    m11829a(m11816a);
                }
            }
        }
        if (this.f10086b.size() == 0) {
            m11829a(m11817a("No tests found in " + cls.getName()));
        }
    }

    /* renamed from: b */
    private void m11822b(String str) {
        this.f10085a = str;
    }

    /* renamed from: b */
    private static boolean m11823b(Method method) {
        return method.getParameterTypes().length == 0 && method.getName().startsWith(InterfaceC1133a.f3934aI) && method.getReturnType().equals(Void.TYPE);
    }

    /* renamed from: c */
    private int m11824c() {
        return this.f10086b.size();
    }

    /* renamed from: c */
    private static InterfaceC2614i m11825c(Class<?> cls) {
        if (AbstractC2615j.class.isAssignableFrom(cls)) {
            return new C2619n(cls.asSubclass(AbstractC2615j.class));
        }
        return m11817a(cls.getCanonicalName() + " does not extend TestCase");
    }

    /* renamed from: d */
    private Enumeration<InterfaceC2614i> m11826d() {
        return this.f10086b.elements();
    }

    /* renamed from: d */
    private void m11827d(Class<? extends AbstractC2615j> cls) {
        m11829a(new C2619n(cls));
    }

    @Override // junit.p190b.InterfaceC2614i
    /* renamed from: a */
    public final int mo11681a() {
        Iterator<InterfaceC2614i> it = this.f10086b.iterator();
        int i = 0;
        while (it.hasNext()) {
            i += it.next().mo11681a();
        }
        return i;
    }

    /* renamed from: a */
    public final InterfaceC2614i m11828a(int i) {
        return this.f10086b.get(i);
    }

    /* renamed from: a */
    public final void m11829a(InterfaceC2614i interfaceC2614i) {
        this.f10086b.add(interfaceC2614i);
    }

    /* renamed from: a */
    public void mo11678a(InterfaceC2614i interfaceC2614i, C2618m c2618m) {
        interfaceC2614i.mo11679a(c2618m);
    }

    @Override // junit.p190b.InterfaceC2614i
    /* renamed from: a */
    public void mo11679a(C2618m c2618m) {
        Iterator<InterfaceC2614i> it = this.f10086b.iterator();
        while (it.hasNext()) {
            InterfaceC2614i next = it.next();
            if (c2618m.m11812f()) {
                return;
            } else {
                mo11678a(next, c2618m);
            }
        }
    }

    public String toString() {
        return this.f10085a != null ? this.f10085a : super.toString();
    }
}
