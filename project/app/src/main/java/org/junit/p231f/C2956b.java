package org.junit.p231f;

import java.util.concurrent.ConcurrentHashMap;

/* renamed from: org.junit.f.b */
/* loaded from: classes2.dex */
public final class C2956b {

    /* renamed from: a */
    private static final ConcurrentHashMap<InterfaceC2960f, AbstractC2955a> f10882a = new ConcurrentHashMap<>();

    /* renamed from: a */
    public static AbstractC2955a m13311a(InterfaceC2960f interfaceC2960f) {
        AbstractC2955a abstractC2955a = f10882a.get(interfaceC2960f);
        if (abstractC2955a != null) {
            return abstractC2955a;
        }
        Class<? extends AbstractC2955a> m13319a = interfaceC2960f.m13319a();
        if (m13319a == null) {
            throw new IllegalArgumentException("Can't create validator, value is null in annotation " + interfaceC2960f.getClass().getName());
        }
        try {
            f10882a.putIfAbsent(interfaceC2960f, m13319a.newInstance());
            return f10882a.get(interfaceC2960f);
        } catch (Exception e) {
            throw new RuntimeException("Exception received when creating AnnotationValidator class " + m13319a.getName(), e);
        }
    }
}
