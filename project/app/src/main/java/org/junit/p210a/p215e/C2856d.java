package org.junit.p210a.p215e;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* renamed from: org.junit.a.e.d */
/* loaded from: classes.dex */
public final class C2856d {

    /* renamed from: b */
    private static final Map<Class<?>, Class<?>> f10708b;

    /* renamed from: a */
    public final Class<?> f10709a;

    /* renamed from: c */
    private final Annotation[] f10710c;

    static {
        HashMap hashMap = new HashMap();
        m12815a(hashMap, Boolean.TYPE, Boolean.class);
        m12815a(hashMap, Byte.TYPE, Byte.class);
        m12815a(hashMap, Short.TYPE, Short.class);
        m12815a(hashMap, Character.TYPE, Character.class);
        m12815a(hashMap, Integer.TYPE, Integer.class);
        m12815a(hashMap, Long.TYPE, Long.class);
        m12815a(hashMap, Float.TYPE, Float.class);
        m12815a(hashMap, Double.TYPE, Double.class);
        f10708b = Collections.unmodifiableMap(hashMap);
    }

    private C2856d(Class<?> cls, Annotation[] annotationArr) {
        this.f10709a = cls;
        this.f10710c = annotationArr;
    }

    /* renamed from: a */
    private <T extends Annotation> T m12810a(Annotation[] annotationArr, Class<T> cls, int i) {
        if (i == 0) {
            return null;
        }
        int length = annotationArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            Annotation annotation = annotationArr[i2];
            if (cls.isInstance(annotation) || (annotation = m12810a(annotation.annotationType().getAnnotations(), cls, i - 1)) != null) {
                return cls.cast(annotation);
            }
        }
        return null;
    }

    /* renamed from: a */
    public static ArrayList<C2856d> m12811a(Method method) {
        return m12812a(method.getParameterTypes(), method.getParameterAnnotations());
    }

    /* renamed from: a */
    private static ArrayList<C2856d> m12812a(Class<?>[] clsArr, Annotation[][] annotationArr) {
        ArrayList<C2856d> arrayList = new ArrayList<>();
        for (int i = 0; i < clsArr.length; i++) {
            arrayList.add(new C2856d(clsArr[i], annotationArr[i]));
        }
        return arrayList;
    }

    /* renamed from: a */
    public static List<C2856d> m12813a(Constructor<?> constructor) {
        return m12812a(constructor.getParameterTypes(), constructor.getParameterAnnotations());
    }

    /* renamed from: a */
    private static Map<Class<?>, Class<?>> m12814a() {
        HashMap hashMap = new HashMap();
        m12815a(hashMap, Boolean.TYPE, Boolean.class);
        m12815a(hashMap, Byte.TYPE, Byte.class);
        m12815a(hashMap, Short.TYPE, Short.class);
        m12815a(hashMap, Character.TYPE, Character.class);
        m12815a(hashMap, Integer.TYPE, Integer.class);
        m12815a(hashMap, Long.TYPE, Long.class);
        m12815a(hashMap, Float.TYPE, Float.class);
        m12815a(hashMap, Double.TYPE, Double.class);
        return Collections.unmodifiableMap(hashMap);
    }

    /* renamed from: a */
    private static <T> void m12815a(Map<T, T> map, T t, T t2) {
        map.put(t, t2);
        map.put(t2, t);
    }

    /* renamed from: a */
    public static boolean m12816a(Class<?> cls, Class<?> cls2) {
        if (f10708b.containsKey(cls2)) {
            return cls.isAssignableFrom(f10708b.get(cls2));
        }
        return false;
    }

    /* renamed from: b */
    private Class<?> m12817b() {
        return this.f10709a;
    }

    /* renamed from: c */
    private List<Annotation> m12818c() {
        return Arrays.asList(this.f10710c);
    }

    /* renamed from: d */
    private boolean m12819d(Class<?> cls) {
        return cls.isAssignableFrom(this.f10709a) || m12816a(cls, this.f10709a) || m12821a(cls);
    }

    /* renamed from: e */
    private boolean m12820e(Class<? extends Annotation> cls) {
        return m12824c(cls) != null;
    }

    /* renamed from: a */
    public final boolean m12821a(Class<?> cls) {
        return this.f10709a.isAssignableFrom(cls) || m12816a(this.f10709a, cls);
    }

    /* renamed from: a */
    public final boolean m12822a(Object obj) {
        return obj == null ? !this.f10709a.isPrimitive() : m12821a(obj.getClass());
    }

    /* renamed from: b */
    public final <T extends Annotation> T m12823b(Class<T> cls) {
        return (T) m12810a(this.f10710c, cls, 3);
    }

    /* renamed from: c */
    public final <T extends Annotation> T m12824c(Class<T> cls) {
        for (Annotation annotation : Arrays.asList(this.f10710c)) {
            if (cls.isInstance(annotation)) {
                return cls.cast(annotation);
            }
        }
        return null;
    }
}
