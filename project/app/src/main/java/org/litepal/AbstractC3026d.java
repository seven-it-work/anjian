package org.litepal;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import net.grandcentrix.tray.provider.TrayContract;
import org.litepal.p234a.InterfaceC2991a;
import org.litepal.p235b.C3012e;
import org.litepal.p235b.p238c.C3010a;
import org.litepal.p239c.C3021b;
import org.litepal.p241e.C3029a;
import org.litepal.p242f.p244b.C3037a;
import org.litepal.p242f.p244b.C3038b;
import org.litepal.p242f.p244b.C3039c;
import org.litepal.p242f.p244b.C3040d;
import org.litepal.p242f.p245c.AbstractC3047f;
import org.litepal.p242f.p245c.C3042a;
import org.litepal.p242f.p245c.C3043b;
import org.litepal.p242f.p245c.C3044c;
import org.litepal.p242f.p245c.C3045d;
import org.litepal.p242f.p245c.C3046e;
import org.litepal.p242f.p245c.C3048g;
import org.litepal.p246g.C3054a;
import org.litepal.p246g.C3058c;

/* renamed from: org.litepal.d */
/* loaded from: classes2.dex */
public abstract class AbstractC3026d {

    /* renamed from: a */
    public static final String f11041a = "LitePalBase";

    /* renamed from: d */
    private static final int f11042d = 1;

    /* renamed from: e */
    private static final int f11043e = 2;

    /* renamed from: b */
    protected Collection<C3037a> f11044b;

    /* renamed from: c */
    protected Collection<C3039c> f11045c;

    /* renamed from: f */
    private AbstractC3047f[] f11046f = {new C3046e(), new C3048g(), new C3043b(), new C3045d(), new C3044c(), new C3042a()};

    /* renamed from: g */
    private Map<String, List<Field>> f11047g = new HashMap();

    /* renamed from: h */
    private Map<String, List<Field>> f11048h = new HashMap();

    /* renamed from: i */
    private Collection<C3010a> f11049i;

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static Class<?> m13676a(Field field) {
        Type genericType = field.getGenericType();
        if (genericType == null || !(genericType instanceof ParameterizedType)) {
            return null;
        }
        return (Class) ((ParameterizedType) genericType).getActualTypeArguments()[0];
    }

    /* renamed from: a */
    private Collection<C3039c> m13677a() {
        return this.f11045c;
    }

    /* renamed from: a */
    private Collection<C3037a> m13678a(List<String> list) {
        if (this.f11044b == null) {
            this.f11044b = new HashSet();
        }
        if (this.f11045c == null) {
            this.f11045c = new HashSet();
        }
        this.f11044b.clear();
        this.f11045c.clear();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            m13696a(it.next(), 1);
        }
        return this.f11044b;
    }

    /* renamed from: a */
    private static void m13679a(Class<?> cls, List<Field> list) {
        while (cls != C3012e.class && cls != Object.class) {
            Field[] declaredFields = cls.getDeclaredFields();
            if (declaredFields != null && declaredFields.length > 0) {
                for (Field field : declaredFields) {
                    InterfaceC2991a interfaceC2991a = (InterfaceC2991a) field.getAnnotation(InterfaceC2991a.class);
                    if ((interfaceC2991a == null || !interfaceC2991a.m13408d()) && !Modifier.isStatic(field.getModifiers())) {
                        String name = field.getType().getName();
                        boolean z = true;
                        if (!"boolean".equals(name) && !"java.lang.Boolean".equals(name) && !"float".equals(name) && !"java.lang.Float".equals(name) && !"double".equals(name) && !"java.lang.Double".equals(name) && !"int".equals(name) && !"java.lang.Integer".equals(name) && !"long".equals(name) && !"java.lang.Long".equals(name) && !"short".equals(name) && !"java.lang.Short".equals(name) && !"char".equals(name) && !"java.lang.Character".equals(name) && !"[B".equals(name) && !"[Ljava.lang.Byte;".equals(name) && !"java.lang.String".equals(name) && !"java.util.Date".equals(name)) {
                            z = false;
                        }
                        if (z) {
                            list.add(field);
                        }
                    }
                }
            }
            cls = cls.getSuperclass();
        }
    }

    /* renamed from: a */
    private void m13680a(String str, String str2, String str3, int i) {
        C3037a c3037a = new C3037a();
        c3037a.f11164a = C3058c.m13951a(str);
        c3037a.f11165b = C3058c.m13951a(str2);
        c3037a.f11166c = C3058c.m13951a(str3);
        c3037a.f11167d = i;
        this.f11044b.add(c3037a);
    }

    /* renamed from: a */
    private void m13681a(String str, String str2, String str3, Field field, Field field2, int i) {
        C3010a c3010a = new C3010a();
        c3010a.f11011a = str;
        c3010a.f11012b = str2;
        c3010a.f11013c = str3;
        c3010a.f11014d = field;
        c3010a.f11015e = field2;
        c3010a.f11016f = i;
        this.f11049i.add(c3010a);
    }

    /* renamed from: a */
    private void m13682a(String str, Field field, int i) throws ClassNotFoundException {
        String name;
        int i2;
        AbstractC3026d abstractC3026d;
        String str2;
        String str3;
        Class<?> type = field.getType();
        if (C3029a.m13714a().m13730d().contains(type.getName())) {
            boolean z = false;
            for (Field field2 : Class.forName(type.getName()).getDeclaredFields()) {
                if (!Modifier.isStatic(field2.getModifiers())) {
                    Class<?> type2 = field2.getType();
                    if (str.equals(type2.getName())) {
                        if (i == 1) {
                            m13680a(str, type.getName(), type.getName(), 1);
                        } else if (i == 2) {
                            name = type.getName();
                            str3 = type.getName();
                            i2 = 1;
                            abstractC3026d = this;
                            str2 = str;
                            abstractC3026d.m13681a(str2, name, str3, field, field2, i2);
                        }
                        z = true;
                    } else if (m13683a(type2) && str.equals(m13684b(field2))) {
                        if (i == 1) {
                            m13680a(str, type.getName(), str, 2);
                        } else if (i == 2) {
                            name = type.getName();
                            i2 = 2;
                            abstractC3026d = this;
                            str2 = str;
                            str3 = str;
                            abstractC3026d.m13681a(str2, name, str3, field, field2, i2);
                        }
                        z = true;
                    }
                }
            }
            if (z) {
                return;
            }
            if (i == 1) {
                m13680a(str, type.getName(), type.getName(), 1);
            } else if (i == 2) {
                m13681a(str, type.getName(), type.getName(), field, null, 1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static boolean m13683a(Class<?> cls) {
        return List.class.isAssignableFrom(cls) || Set.class.isAssignableFrom(cls);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public static String m13684b(Field field) {
        Class<?> m13676a = m13676a(field);
        if (m13676a != null) {
            return m13676a.getName();
        }
        return null;
    }

    /* renamed from: b */
    private static void m13685b(Class<?> cls, List<Field> list) {
        while (cls != C3012e.class && cls != Object.class) {
            Field[] declaredFields = cls.getDeclaredFields();
            if (declaredFields != null && declaredFields.length > 0) {
                for (Field field : declaredFields) {
                    InterfaceC2991a interfaceC2991a = (InterfaceC2991a) field.getAnnotation(InterfaceC2991a.class);
                    if ((interfaceC2991a == null || !interfaceC2991a.m13408d()) && !Modifier.isStatic(field.getModifiers()) && m13683a(field.getType())) {
                        String m13684b = m13684b(field);
                        if (C3054a.m13937c(m13684b) || cls.getName().equalsIgnoreCase(m13684b)) {
                            list.add(field);
                        }
                    }
                }
            }
            cls = cls.getSuperclass();
        }
    }

    /* renamed from: b */
    private void m13686b(String str, Field field, int i) throws ClassNotFoundException {
        String str2;
        int i2;
        AbstractC3026d abstractC3026d;
        String str3;
        String str4;
        if (m13683a(field.getType())) {
            String m13684b = m13684b(field);
            if (!C3029a.m13714a().m13730d().contains(m13684b)) {
                if (C3054a.m13937c(m13684b) && i == 1) {
                    C3039c c3039c = new C3039c();
                    c3039c.f11173a = C3058c.m13960b(str, field.getName());
                    c3039c.f11174b = C3058c.m13964d(field.getName());
                    c3039c.f11175c = m13694g(m13684b);
                    c3039c.f11176d = C3058c.m13959b(str);
                    this.f11045c.add(c3039c);
                    return;
                }
                return;
            }
            boolean z = false;
            for (Field field2 : Class.forName(m13684b).getDeclaredFields()) {
                if (!Modifier.isStatic(field2.getModifiers())) {
                    Class<?> type = field2.getType();
                    if (str.equals(type.getName())) {
                        if (i == 1) {
                            m13680a(str, m13684b, m13684b, 2);
                        } else if (i == 2) {
                            i2 = 2;
                            abstractC3026d = this;
                            str3 = str;
                            str4 = m13684b;
                            str2 = m13684b;
                            abstractC3026d.m13681a(str3, str4, str2, field, field2, i2);
                        }
                        z = true;
                    } else if (m13683a(type) && str.equals(m13684b(field2))) {
                        if (i == 1) {
                            if (str.equalsIgnoreCase(m13684b)) {
                                C3039c c3039c2 = new C3039c();
                                c3039c2.f11173a = C3058c.m13960b(str, field.getName());
                                c3039c2.f11174b = C3058c.m13953a(field);
                                c3039c2.f11175c = "integer";
                                c3039c2.f11176d = C3058c.m13959b(str);
                                this.f11045c.add(c3039c2);
                            } else {
                                m13680a(str, m13684b, null, 3);
                            }
                        } else if (i == 2 && !str.equalsIgnoreCase(m13684b)) {
                            str2 = null;
                            i2 = 3;
                            abstractC3026d = this;
                            str3 = str;
                            str4 = m13684b;
                            abstractC3026d.m13681a(str3, str4, str2, field, field2, i2);
                        }
                        z = true;
                    }
                }
            }
            if (z) {
                return;
            }
            if (i == 1) {
                m13680a(str, m13684b, m13684b, 2);
            } else if (i == 2) {
                m13681a(str, m13684b, m13684b, field, null, 2);
            }
        }
    }

    /* renamed from: b */
    private static boolean m13687b(Class<?> cls) {
        return List.class.isAssignableFrom(cls);
    }

    /* renamed from: c */
    private static boolean m13688c(Class<?> cls) {
        return Set.class.isAssignableFrom(cls);
    }

    /* renamed from: c */
    private static boolean m13689c(Field field) {
        return !field.getType().isPrimitive();
    }

    /* renamed from: d */
    private static boolean m13690d(Field field) {
        return Modifier.isPrivate(field.getModifiers());
    }

    /* renamed from: e */
    private C3038b m13691e(Field field) {
        boolean z;
        String str;
        boolean z2;
        String m13694g = m13694g(field.getType().getName());
        InterfaceC2991a interfaceC2991a = (InterfaceC2991a) field.getAnnotation(InterfaceC2991a.class);
        if (interfaceC2991a != null) {
            z2 = interfaceC2991a.m13405a();
            z = interfaceC2991a.m13406b();
            str = interfaceC2991a.m13407c();
        } else {
            z = false;
            str = "";
            z2 = true;
        }
        C3038b c3038b = new C3038b();
        c3038b.f11168a = C3058c.m13964d(field.getName());
        c3038b.f11169b = m13694g;
        c3038b.f11170c = z2;
        c3038b.f11171d = z;
        c3038b.m13871a(str);
        return c3038b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: e */
    public static boolean m13692e(String str) {
        return TrayContract.Preferences.Columns.f10375ID.equalsIgnoreCase(str) || "id".equalsIgnoreCase(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public static String m13693f(String str) {
        return C3054a.m13930a(str + TrayContract.Preferences.Columns.f10375ID);
    }

    /* renamed from: g */
    private String m13694g(String str) {
        for (AbstractC3047f abstractC3047f : this.f11046f) {
            String mo13895a = abstractC3047f.mo13895a(str);
            if (mo13895a != null) {
                return mo13895a;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final C3040d m13695a(String str) {
        String m13951a = C3058c.m13951a(str);
        C3040d c3040d = new C3040d();
        c3040d.f11178a = m13951a;
        c3040d.f11180c = str;
        for (Field field : m13698c(str)) {
            String m13694g = m13694g(field.getType().getName());
            boolean z = true;
            boolean z2 = false;
            String str2 = "";
            InterfaceC2991a interfaceC2991a = (InterfaceC2991a) field.getAnnotation(InterfaceC2991a.class);
            if (interfaceC2991a != null) {
                z = interfaceC2991a.m13405a();
                z2 = interfaceC2991a.m13406b();
                str2 = interfaceC2991a.m13407c();
            }
            C3038b c3038b = new C3038b();
            c3038b.f11168a = C3058c.m13964d(field.getName());
            c3038b.f11169b = m13694g;
            c3038b.f11170c = z;
            c3038b.f11171d = z2;
            c3038b.m13871a(str2);
            c3040d.m13889a(c3038b);
        }
        return c3040d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m13696a(String str, int i) {
        Field[] fieldArr;
        int i2;
        InterfaceC2991a interfaceC2991a;
        int i3;
        int i4;
        int i5;
        int i6;
        Field[] fieldArr2;
        int i7;
        int i8;
        Field[] fieldArr3;
        Field[] fieldArr4;
        int i9;
        Class<?> cls;
        try {
            Field[] declaredFields = Class.forName(str).getDeclaredFields();
            int length = declaredFields.length;
            int i10 = 0;
            while (i10 < length) {
                Field field = declaredFields[i10];
                if (!(!field.getType().isPrimitive()) == true || ((interfaceC2991a = (InterfaceC2991a) field.getAnnotation(InterfaceC2991a.class)) != null && interfaceC2991a.m13408d())) {
                    fieldArr = declaredFields;
                    i2 = length;
                } else {
                    Class<?> type = field.getType();
                    if (C3029a.m13714a().m13730d().contains(type.getName())) {
                        Field[] declaredFields2 = Class.forName(type.getName()).getDeclaredFields();
                        int length2 = declaredFields2.length;
                        boolean z = false;
                        int i11 = 0;
                        while (i11 < length2) {
                            Field field2 = declaredFields2[i11];
                            if (Modifier.isStatic(field2.getModifiers())) {
                                i7 = i11;
                                i8 = length2;
                                fieldArr3 = declaredFields2;
                                fieldArr4 = declaredFields;
                                i9 = length;
                                cls = type;
                            } else {
                                Class<?> type2 = field2.getType();
                                if (str.equals(type2.getName())) {
                                    if (i == 1) {
                                        m13680a(str, type.getName(), type.getName(), 1);
                                    } else if (i == 2) {
                                        i7 = i11;
                                        i8 = length2;
                                        fieldArr3 = declaredFields2;
                                        fieldArr4 = declaredFields;
                                        cls = type;
                                        m13681a(str, type.getName(), type.getName(), field, field2, 1);
                                        i9 = length;
                                        z = true;
                                    }
                                    i7 = i11;
                                    i8 = length2;
                                    fieldArr3 = declaredFields2;
                                    fieldArr4 = declaredFields;
                                    cls = type;
                                    i9 = length;
                                    z = true;
                                } else {
                                    i7 = i11;
                                    i8 = length2;
                                    fieldArr3 = declaredFields2;
                                    fieldArr4 = declaredFields;
                                    cls = type;
                                    if (m13683a(type2) && str.equals(m13684b(field2))) {
                                        if (i == 1) {
                                            m13680a(str, cls.getName(), str, 2);
                                        } else if (i == 2) {
                                            i9 = length;
                                            m13681a(str, cls.getName(), str, field, field2, 2);
                                            z = true;
                                        }
                                        i9 = length;
                                        z = true;
                                    } else {
                                        i9 = length;
                                    }
                                }
                            }
                            i11 = i7 + 1;
                            type = cls;
                            declaredFields2 = fieldArr3;
                            length2 = i8;
                            declaredFields = fieldArr4;
                            length = i9;
                        }
                        fieldArr = declaredFields;
                        i2 = length;
                        i3 = 2;
                        i4 = 1;
                        Class<?> cls2 = type;
                        if (!z) {
                            if (i == 1) {
                                m13680a(str, cls2.getName(), cls2.getName(), 1);
                            } else if (i == 2) {
                                m13681a(str, cls2.getName(), cls2.getName(), field, null, 1);
                            }
                        }
                    } else {
                        fieldArr = declaredFields;
                        i2 = length;
                        i3 = 2;
                        i4 = 1;
                    }
                    if (m13683a(field.getType())) {
                        String m13684b = m13684b(field);
                        if (C3029a.m13714a().m13730d().contains(m13684b)) {
                            Field[] declaredFields3 = Class.forName(m13684b).getDeclaredFields();
                            int length3 = declaredFields3.length;
                            boolean z2 = false;
                            int i12 = 0;
                            while (i12 < length3) {
                                Field field3 = declaredFields3[i12];
                                if (Modifier.isStatic(field3.getModifiers())) {
                                    i5 = i12;
                                    i6 = length3;
                                    fieldArr2 = declaredFields3;
                                } else {
                                    Class<?> type3 = field3.getType();
                                    if (str.equals(type3.getName())) {
                                        if (i == i4) {
                                            m13680a(str, m13684b, m13684b, i3);
                                        } else if (i == i3) {
                                            i5 = i12;
                                            i6 = length3;
                                            fieldArr2 = declaredFields3;
                                            m13681a(str, m13684b, m13684b, field, field3, 2);
                                        }
                                        i5 = i12;
                                        i6 = length3;
                                        fieldArr2 = declaredFields3;
                                    } else {
                                        i5 = i12;
                                        i6 = length3;
                                        fieldArr2 = declaredFields3;
                                        if (m13683a(type3) && str.equals(m13684b(field3))) {
                                            if (i == i4) {
                                                if (str.equalsIgnoreCase(m13684b)) {
                                                    C3039c c3039c = new C3039c();
                                                    c3039c.f11173a = C3058c.m13960b(str, field.getName());
                                                    c3039c.f11174b = C3058c.m13953a(field);
                                                    c3039c.f11175c = "integer";
                                                    c3039c.f11176d = C3058c.m13959b(str);
                                                    this.f11045c.add(c3039c);
                                                } else {
                                                    m13680a(str, m13684b, null, 3);
                                                }
                                            } else if (i == i3 && !str.equalsIgnoreCase(m13684b)) {
                                                m13681a(str, m13684b, null, field, field3, 3);
                                            }
                                        }
                                    }
                                    z2 = true;
                                }
                                i12 = i5 + 1;
                                length3 = i6;
                                declaredFields3 = fieldArr2;
                            }
                            if (!z2) {
                                if (i == i4) {
                                    m13680a(str, m13684b, m13684b, i3);
                                } else if (i == i3) {
                                    m13681a(str, m13684b, m13684b, field, null, 2);
                                }
                            }
                        } else if (C3054a.m13937c(m13684b) && i == i4) {
                            C3039c c3039c2 = new C3039c();
                            c3039c2.f11173a = C3058c.m13960b(str, field.getName());
                            c3039c2.f11174b = C3058c.m13964d(field.getName());
                            c3039c2.f11175c = m13694g(m13684b);
                            c3039c2.f11176d = C3058c.m13959b(str);
                            this.f11045c.add(c3039c2);
                        }
                    }
                }
                i10++;
                declaredFields = fieldArr;
                length = i2;
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            throw new C3021b(C3021b.CLASS_NOT_FOUND + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public final Collection<C3010a> m13697b(String str) {
        if (this.f11049i == null) {
            this.f11049i = new HashSet();
        }
        this.f11049i.clear();
        m13696a(str, 2);
        return this.f11049i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public final List<Field> m13698c(String str) {
        List<Field> list = this.f11047g.get(str);
        if (list != null) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        try {
            m13679a(Class.forName(str), arrayList);
            this.f11047g.put(str, arrayList);
            return arrayList;
        } catch (ClassNotFoundException unused) {
            throw new C3021b(C3021b.CLASS_NOT_FOUND + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public final List<Field> m13699d(String str) {
        List<Field> list = this.f11048h.get(str);
        if (list != null) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        try {
            m13685b(Class.forName(str), arrayList);
            this.f11048h.put(str, arrayList);
            return arrayList;
        } catch (ClassNotFoundException unused) {
            throw new C3021b(C3021b.CLASS_NOT_FOUND + str);
        }
    }
}
