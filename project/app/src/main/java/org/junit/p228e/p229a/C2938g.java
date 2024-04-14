package org.junit.p228e.p229a;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.List;

/* renamed from: org.junit.e.a.g */
/* loaded from: classes2.dex */
public final class C2938g {

    /* renamed from: a */
    public final Method f10850a;

    public C2938g(Method method) {
        this.f10850a = method;
    }

    /* renamed from: a */
    private void m13204a(GenericArrayType genericArrayType, List<Throwable> list) {
        m13208a(genericArrayType.getGenericComponentType(), list);
    }

    /* renamed from: a */
    private void m13205a(ParameterizedType parameterizedType, List<Throwable> list) {
        for (Type type : parameterizedType.getActualTypeArguments()) {
            m13208a(type, list);
        }
    }

    /* renamed from: a */
    private void m13206a(WildcardType wildcardType, List<Throwable> list) {
        for (Type type : wildcardType.getUpperBounds()) {
            m13208a(type, list);
        }
        for (Type type2 : wildcardType.getLowerBounds()) {
            m13208a(type2, list);
        }
    }

    /* renamed from: a */
    private void m13207a(List<Throwable> list) {
        for (Type type : this.f10850a.getGenericParameterTypes()) {
            m13208a(type, list);
        }
    }

    /* renamed from: a */
    public final void m13208a(Type type, List<Throwable> list) {
        while (!(type instanceof TypeVariable)) {
            if (type instanceof ParameterizedType) {
                m13205a((ParameterizedType) type, list);
                return;
            } else if (type instanceof WildcardType) {
                m13206a((WildcardType) type, list);
                return;
            } else if (!(type instanceof GenericArrayType)) {
                return;
            } else {
                type = ((GenericArrayType) type).getGenericComponentType();
            }
        }
        list.add(new Exception("Method " + this.f10850a.getName() + "() contains unresolved type variable " + type));
    }
}
