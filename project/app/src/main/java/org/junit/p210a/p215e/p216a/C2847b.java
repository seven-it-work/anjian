package org.junit.p210a.p215e.p216a;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.junit.p210a.p215e.AbstractC2857e;
import org.junit.p210a.p215e.AbstractC2859g;
import org.junit.p210a.p215e.C2856d;
import org.junit.p210a.p215e.InterfaceC2858f;
import org.junit.p228e.p229a.C2942k;

/* renamed from: org.junit.a.e.a.b */
/* loaded from: classes2.dex */
public final class C2847b {

    /* renamed from: a */
    public final List<AbstractC2859g> f10704a;

    /* renamed from: b */
    public final List<C2856d> f10705b;

    /* renamed from: c */
    public final C2942k f10706c;

    public C2847b(List<AbstractC2859g> list, List<C2856d> list2, C2942k c2942k) {
        this.f10705b = list2;
        this.f10704a = list;
        this.f10706c = c2942k;
    }

    /* renamed from: a */
    private static List<AbstractC2859g> m12792a(C2856d c2856d) {
        Class<?> cls = c2856d.f10709a;
        return cls.isEnum() ? new C2849d(cls).mo12785a(c2856d) : (cls.equals(Boolean.class) || cls.equals(Boolean.TYPE)) ? new C2848c().mo12785a(c2856d) : Collections.emptyList();
    }

    /* renamed from: a */
    private static C2847b m12793a(Method method, C2942k c2942k) {
        List<C2856d> m12813a = C2856d.m12813a(c2942k.m13231c());
        m12813a.addAll(C2856d.m12811a(method));
        return new C2847b(new ArrayList(), m12813a, c2942k);
    }

    /* renamed from: a */
    private C2847b m12794a(AbstractC2859g abstractC2859g) {
        ArrayList arrayList = new ArrayList(this.f10704a);
        arrayList.add(abstractC2859g);
        return new C2847b(arrayList, this.f10705b.subList(1, this.f10705b.size()), this.f10706c);
    }

    /* renamed from: a */
    private AbstractC2857e m12795a(Class<? extends AbstractC2857e> cls) throws Exception {
        Object newInstance;
        Constructor<?>[] constructors = cls.getConstructors();
        int length = constructors.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                newInstance = cls.newInstance();
                break;
            }
            Constructor<?> constructor = constructors[i];
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            if (parameterTypes.length == 1 && parameterTypes[0].equals(C2942k.class)) {
                newInstance = constructor.newInstance(this.f10706c);
                break;
            }
            i++;
        }
        return (AbstractC2857e) newInstance;
    }

    /* renamed from: b */
    private AbstractC2857e m12796b(C2856d c2856d) throws Exception {
        InterfaceC2858f interfaceC2858f = (InterfaceC2858f) c2856d.m12823b(InterfaceC2858f.class);
        if (interfaceC2858f == null) {
            return new C2846a(this.f10706c);
        }
        Class<? extends AbstractC2857e> m12825a = interfaceC2858f.m12825a();
        for (Constructor<?> constructor : m12825a.getConstructors()) {
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            if (parameterTypes.length == 1 && parameterTypes[0].equals(C2942k.class)) {
                return (AbstractC2857e) constructor.newInstance(this.f10706c);
            }
        }
        return m12825a.newInstance();
    }

    /* renamed from: b */
    private boolean m12797b() {
        return this.f10705b.size() == 0;
    }

    /* renamed from: c */
    private C2856d m12798c() {
        return this.f10705b.get(0);
    }

    /* renamed from: d */
    private List<AbstractC2859g> m12799d() throws Throwable {
        AbstractC2857e c2846a;
        Object newInstance;
        C2856d c2856d = this.f10705b.get(0);
        InterfaceC2858f interfaceC2858f = (InterfaceC2858f) c2856d.m12823b(InterfaceC2858f.class);
        if (interfaceC2858f != null) {
            Class<? extends AbstractC2857e> m12825a = interfaceC2858f.m12825a();
            Constructor<?>[] constructors = m12825a.getConstructors();
            int length = constructors.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    newInstance = m12825a.newInstance();
                    break;
                }
                Constructor<?> constructor = constructors[i];
                Class<?>[] parameterTypes = constructor.getParameterTypes();
                if (parameterTypes.length == 1 && parameterTypes[0].equals(C2942k.class)) {
                    newInstance = constructor.newInstance(this.f10706c);
                    break;
                }
                i++;
            }
            c2846a = (AbstractC2857e) newInstance;
        } else {
            c2846a = new C2846a(this.f10706c);
        }
        List<AbstractC2859g> mo12785a = c2846a.mo12785a(c2856d);
        if (mo12785a.size() != 0) {
            return mo12785a;
        }
        Class<?> cls = c2856d.f10709a;
        return cls.isEnum() ? new C2849d(cls).mo12785a(c2856d) : (cls.equals(Boolean.class) || cls.equals(Boolean.TYPE)) ? new C2848c().mo12785a(c2856d) : Collections.emptyList();
    }

    /* renamed from: e */
    private Object[] m12800e() throws AbstractC2859g.a {
        return m12805a(0, m12804a());
    }

    /* renamed from: f */
    private Object[] m12801f() throws AbstractC2859g.a {
        return m12805a(m12804a(), this.f10704a.size());
    }

    /* renamed from: g */
    private Object[] m12802g() throws AbstractC2859g.a {
        return m12805a(0, this.f10704a.size());
    }

    /* renamed from: h */
    private Object[] m12803h() throws AbstractC2859g.a {
        Object[] objArr = new Object[this.f10704a.size()];
        for (int i = 0; i < objArr.length; i++) {
            objArr[i] = this.f10704a.get(i).mo12791b();
        }
        return objArr;
    }

    /* renamed from: a */
    public final int m12804a() {
        return C2856d.m12813a(this.f10706c.m13231c()).size();
    }

    /* renamed from: a */
    public final Object[] m12805a(int i, int i2) throws AbstractC2859g.a {
        Object[] objArr = new Object[i2 - i];
        for (int i3 = i; i3 < i2; i3++) {
            objArr[i3 - i] = this.f10704a.get(i3).mo12790a();
        }
        return objArr;
    }
}
