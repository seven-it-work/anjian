package org.junit.p210a.p215e;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.FIELD, ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: org.junit.a.e.b */
/* loaded from: classes.dex */
public @interface InterfaceC2852b {
    /* renamed from: a */
    String[] m12806a() default {};

    /* renamed from: b */
    Class<? extends Throwable>[] m12807b() default {};
}
