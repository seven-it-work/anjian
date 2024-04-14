package org.junit.p210a.p215e;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.FIELD, ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: org.junit.a.e.a */
/* loaded from: classes.dex */
public @interface InterfaceC2845a {
    /* renamed from: a */
    String[] m12773a() default {};

    /* renamed from: b */
    Class<? extends Throwable>[] m12774b() default {};
}
