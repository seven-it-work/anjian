package org.junit.p228e.p229a;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;

/* renamed from: org.junit.e.a.b */
/* loaded from: classes.dex */
public final class C2933b extends AbstractC2934c<C2933b> {

    /* renamed from: a */
    public final Field f10845a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2933b(Field field) {
        if (field == null) {
            throw new NullPointerException("FrameworkField cannot be created without an underlying field.");
        }
        this.f10845a = field;
    }

    /* renamed from: a */
    private Object m13185a(Object obj) throws IllegalArgumentException, IllegalAccessException {
        return this.f10845a.get(obj);
    }

    /* renamed from: a, reason: avoid collision after fix types in other method */
    private boolean a2(C2933b c2933b) {
        return c2933b.f10845a.getName().equals(this.f10845a.getName());
    }

    /* renamed from: h */
    private Field m13186h() {
        return this.f10845a;
    }

    @Override // org.junit.p228e.p229a.InterfaceC2932a
    /* renamed from: a */
    public final <T extends Annotation> T mo13183a(Class<T> cls) {
        return (T) this.f10845a.getAnnotation(cls);
    }

    @Override // org.junit.p228e.p229a.AbstractC2934c
    /* renamed from: a */
    public final /* synthetic */ boolean mo13187a(C2933b c2933b) {
        return c2933b.f10845a.getName().equals(this.f10845a.getName());
    }

    @Override // org.junit.p228e.p229a.InterfaceC2932a
    /* renamed from: a */
    public final Annotation[] mo13184a() {
        return this.f10845a.getAnnotations();
    }

    @Override // org.junit.p228e.p229a.AbstractC2934c
    /* renamed from: b */
    public final String mo13188b() {
        return this.f10845a.getName();
    }

    @Override // org.junit.p228e.p229a.AbstractC2934c
    /* renamed from: c */
    protected final int mo13189c() {
        return this.f10845a.getModifiers();
    }

    @Override // org.junit.p228e.p229a.AbstractC2934c
    /* renamed from: d */
    public final Class<?> mo13190d() {
        return this.f10845a.getType();
    }

    @Override // org.junit.p228e.p229a.AbstractC2934c
    /* renamed from: e */
    public final Class<?> mo13191e() {
        return this.f10845a.getDeclaringClass();
    }

    public final String toString() {
        return this.f10845a.toString();
    }
}
