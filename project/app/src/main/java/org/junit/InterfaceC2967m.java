package org.junit;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: org.junit.m */
/* loaded from: classes.dex */
public @interface InterfaceC2967m {

    /* renamed from: org.junit.m$a */
    /* loaded from: classes.dex */
    public static class a extends Throwable {
        private static final long serialVersionUID = 1;

        private a() {
        }
    }

    /* renamed from: a */
    Class<? extends Throwable> m13335a() default a.class;

    /* renamed from: b */
    long m13336b() default 0;
}
