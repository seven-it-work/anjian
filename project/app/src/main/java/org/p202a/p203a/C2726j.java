package org.p202a.p203a;

import org.p202a.AbstractC2745h;
import org.p202a.InterfaceC2744g;
import org.p202a.InterfaceC2746i;
import org.p202a.InterfaceC2748k;

/* renamed from: org.a.a.j */
/* loaded from: classes2.dex */
public final class C2726j extends AbstractC2745h<Object> {

    /* renamed from: a */
    private final Class<?> f10407a;

    /* renamed from: b */
    private final Class<?> f10408b;

    public C2726j(Class<?> cls) {
        this.f10407a = cls;
        if (Boolean.TYPE.equals(cls)) {
            cls = Boolean.class;
        } else if (Byte.TYPE.equals(cls)) {
            cls = Byte.class;
        } else if (Character.TYPE.equals(cls)) {
            cls = Character.class;
        } else if (Double.TYPE.equals(cls)) {
            cls = Double.class;
        } else if (Float.TYPE.equals(cls)) {
            cls = Float.class;
        } else if (Integer.TYPE.equals(cls)) {
            cls = Integer.class;
        } else if (Long.TYPE.equals(cls)) {
            cls = Long.class;
        } else if (Short.TYPE.equals(cls)) {
            cls = Short.class;
        }
        this.f10408b = cls;
    }

    @InterfaceC2746i
    /* renamed from: a */
    public static <T> InterfaceC2748k<T> m12350a(Class<?> cls) {
        return new C2726j(cls);
    }

    /* renamed from: b */
    private static Class<?> m12351b(Class<?> cls) {
        return Boolean.TYPE.equals(cls) ? Boolean.class : Byte.TYPE.equals(cls) ? Byte.class : Character.TYPE.equals(cls) ? Character.class : Double.TYPE.equals(cls) ? Double.class : Float.TYPE.equals(cls) ? Float.class : Integer.TYPE.equals(cls) ? Integer.class : Long.TYPE.equals(cls) ? Long.class : Short.TYPE.equals(cls) ? Short.class : cls;
    }

    @InterfaceC2746i
    /* renamed from: c */
    private static <T> InterfaceC2748k<T> m12352c(Class<T> cls) {
        return new C2726j(cls);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.p202a.AbstractC2745h
    /* renamed from: b */
    public final boolean mo12311b(Object obj, InterfaceC2744g interfaceC2744g) {
        String str;
        if (obj == null) {
            str = "null";
        } else {
            if (this.f10408b.isInstance(obj)) {
                return true;
            }
            interfaceC2744g = interfaceC2744g.mo12296a(obj);
            str = " is a " + obj.getClass().getName();
        }
        interfaceC2744g.mo12297a(str);
        return false;
    }

    @Override // org.p202a.InterfaceC2750m
    public final void describeTo(InterfaceC2744g interfaceC2744g) {
        interfaceC2744g.mo12297a("an instance of ").mo12297a(this.f10407a.getName());
    }
}
