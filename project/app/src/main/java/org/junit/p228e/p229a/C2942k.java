package org.junit.p228e.p229a;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import org.junit.C2911c;
import org.junit.InterfaceC2954f;
import org.junit.InterfaceC2961g;
import org.junit.p218b.C2907h;

/* renamed from: org.junit.e.a.k */
/* loaded from: classes.dex */
public class C2942k implements InterfaceC2932a {

    /* renamed from: a */
    public static final b f10852a;

    /* renamed from: e */
    private static final a f10853e;

    /* renamed from: b */
    public final Class<?> f10854b;

    /* renamed from: c */
    public final Map<Class<? extends Annotation>, List<C2935d>> f10855c;

    /* renamed from: d */
    public final Map<Class<? extends Annotation>, List<C2933b>> f10856d;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.junit.e.a.k$a */
    /* loaded from: classes2.dex */
    public static class a implements Comparator<Field> {
        private a() {
        }

        /* synthetic */ a(byte b2) {
            this();
        }

        /* renamed from: a */
        private static int m13234a(Field field, Field field2) {
            return field.getName().compareTo(field2.getName());
        }

        @Override // java.util.Comparator
        public final /* synthetic */ int compare(Field field, Field field2) {
            return field.getName().compareTo(field2.getName());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.junit.e.a.k$b */
    /* loaded from: classes2.dex */
    public static class b implements Comparator<C2935d> {
        private b() {
        }

        /* synthetic */ b(byte b2) {
            this();
        }

        /* renamed from: a */
        private static int m13235a(C2935d c2935d, C2935d c2935d2) {
            return C2907h.f10803b.compare(c2935d.f10846a, c2935d2.f10846a);
        }

        @Override // java.util.Comparator
        public final /* bridge */ /* synthetic */ int compare(C2935d c2935d, C2935d c2935d2) {
            return C2907h.f10803b.compare(c2935d.f10846a, c2935d2.f10846a);
        }
    }

    static {
        byte b2 = 0;
        f10853e = new a(b2);
        f10852a = new b(b2);
    }

    public C2942k(Class<?> cls) {
        this.f10854b = cls;
        if (cls != null && cls.getConstructors().length > 1) {
            throw new IllegalArgumentException("Test class can only have one constructor");
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        m13217a(linkedHashMap, linkedHashMap2);
        this.f10855c = m13219b(linkedHashMap);
        this.f10856d = m13219b(linkedHashMap2);
    }

    /* renamed from: a */
    public static <T> List<T> m13215a(Map<?, List<T>> map) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<List<T>> it = map.values().iterator();
        while (it.hasNext()) {
            linkedHashSet.addAll(it.next());
        }
        return new ArrayList(linkedHashSet);
    }

    /* renamed from: a */
    private static <T> List<T> m13216a(Map<Class<? extends Annotation>, List<T>> map, Class<? extends Annotation> cls, boolean z) {
        if (!map.containsKey(cls) && z) {
            map.put(cls, new ArrayList());
        }
        List<T> list = map.get(cls);
        return list == null ? Collections.emptyList() : list;
    }

    /* renamed from: a */
    private void m13217a(Map<Class<? extends Annotation>, List<C2935d>> map, Map<Class<? extends Annotation>, List<C2933b>> map2) {
        ArrayList<Class> arrayList = new ArrayList();
        for (Class<?> cls = this.f10854b; cls != null; cls = cls.getSuperclass()) {
            arrayList.add(cls);
        }
        for (Class cls2 : arrayList) {
            for (Method method : C2907h.m12991a((Class<?>) cls2)) {
                m13218a(new C2935d(method), map);
            }
            Field[] declaredFields = cls2.getDeclaredFields();
            Arrays.sort(declaredFields, f10853e);
            for (Field field : declaredFields) {
                m13218a(new C2933b(field), map2);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private static <T extends AbstractC2934c<T>> void m13218a(T t, Map<Class<? extends Annotation>, List<T>> map) {
        boolean z;
        for (Annotation annotation : t.mo13184a()) {
            Class<? extends Annotation> annotationType = annotation.annotationType();
            boolean z2 = true;
            List m13216a = m13216a((Map) map, annotationType, true);
            Iterator it = m13216a.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (t.mo13187a((AbstractC2934c) it.next())) {
                        z = true;
                        break;
                    }
                } else {
                    z = false;
                    break;
                }
            }
            if (z) {
                return;
            }
            if (!annotationType.equals(InterfaceC2954f.class) && !annotationType.equals(InterfaceC2961g.class)) {
                z2 = false;
            }
            if (z2) {
                m13216a.add(0, t);
            } else {
                m13216a.add(t);
            }
        }
    }

    /* renamed from: b */
    private static <T extends AbstractC2934c<T>> Map<Class<? extends Annotation>, List<T>> m13219b(Map<Class<? extends Annotation>, List<T>> map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<Class<? extends Annotation>, List<T>> entry : map.entrySet()) {
            linkedHashMap.put(entry.getKey(), Collections.unmodifiableList(entry.getValue()));
        }
        return Collections.unmodifiableMap(linkedHashMap);
    }

    /* renamed from: d */
    private static Field[] m13220d(Class<?> cls) {
        Field[] declaredFields = cls.getDeclaredFields();
        Arrays.sort(declaredFields, f10853e);
        return declaredFields;
    }

    /* renamed from: e */
    private List<C2935d> m13221e() {
        List<C2935d> m13215a = m13215a(this.f10855c);
        Collections.sort(m13215a, f10852a);
        return m13215a;
    }

    /* renamed from: e */
    private static boolean m13222e(Class<? extends Annotation> cls) {
        return cls.equals(InterfaceC2954f.class) || cls.equals(InterfaceC2961g.class);
    }

    /* renamed from: f */
    private List<C2933b> m13223f() {
        return m13215a(this.f10856d);
    }

    /* renamed from: f */
    private static List<Class<?>> m13224f(Class<?> cls) {
        ArrayList arrayList = new ArrayList();
        while (cls != null) {
            arrayList.add(cls);
            cls = cls.getSuperclass();
        }
        return arrayList;
    }

    /* renamed from: g */
    private Class<?> m13225g() {
        return this.f10854b;
    }

    /* renamed from: h */
    private boolean m13226h() {
        return Modifier.isPublic(this.f10854b.getModifiers());
    }

    @Override // org.junit.p228e.p229a.InterfaceC2932a
    /* renamed from: a */
    public final <T extends Annotation> T mo13183a(Class<T> cls) {
        if (this.f10854b == null) {
            return null;
        }
        return (T) this.f10854b.getAnnotation(cls);
    }

    /* renamed from: a */
    public final <T> List<T> m13227a(Object obj, Class<? extends Annotation> cls, Class<T> cls2) {
        ArrayList arrayList = new ArrayList();
        Iterator<C2933b> it = m13232c(cls).iterator();
        while (it.hasNext()) {
            try {
                Object obj2 = it.next().f10845a.get(obj);
                if (cls2.isInstance(obj2)) {
                    arrayList.add(cls2.cast(obj2));
                }
            } catch (IllegalAccessException e) {
                throw new RuntimeException("How did getFields return a field we couldn't access?", e);
            }
        }
        return arrayList;
    }

    @Override // org.junit.p228e.p229a.InterfaceC2932a
    /* renamed from: a */
    public final Annotation[] mo13184a() {
        return this.f10854b == null ? new Annotation[0] : this.f10854b.getAnnotations();
    }

    /* renamed from: b */
    public final String m13228b() {
        return this.f10854b == null ? "null" : this.f10854b.getName();
    }

    /* renamed from: b */
    public final List<C2935d> m13229b(Class<? extends Annotation> cls) {
        return Collections.unmodifiableList(m13216a((Map) this.f10855c, cls, false));
    }

    /* renamed from: b */
    public final <T> List<T> m13230b(Object obj, Class<? extends Annotation> cls, Class<T> cls2) {
        ArrayList arrayList = new ArrayList();
        for (C2935d c2935d : m13229b(cls)) {
            try {
                if (cls2.isAssignableFrom(c2935d.f10846a.getReturnType())) {
                    arrayList.add(cls2.cast(c2935d.m13201a(obj, new Object[0])));
                }
            } catch (Throwable th) {
                throw new RuntimeException("Exception in " + c2935d.f10846a.getName(), th);
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    public final Constructor<?> m13231c() {
        Constructor<?>[] constructors = this.f10854b.getConstructors();
        long length = constructors.length;
        if (1 != length) {
            C2911c.m13032b((Object) 1L, (Object) Long.valueOf(length));
        }
        return constructors[0];
    }

    /* renamed from: c */
    public final List<C2933b> m13232c(Class<? extends Annotation> cls) {
        return Collections.unmodifiableList(m13216a((Map) this.f10856d, cls, false));
    }

    /* renamed from: d */
    public final boolean m13233d() {
        return this.f10854b.isMemberClass() && !Modifier.isStatic(this.f10854b.getModifiers());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.f10854b == ((C2942k) obj).f10854b;
    }

    public int hashCode() {
        if (this.f10854b == null) {
            return 0;
        }
        return this.f10854b.hashCode();
    }
}
