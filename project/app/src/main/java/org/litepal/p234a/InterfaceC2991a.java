package org.litepal.p234a;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: org.litepal.a.a */
/* loaded from: classes.dex */
public @interface InterfaceC2991a {
    /* renamed from: a */
    boolean m13405a() default true;

    /* renamed from: b */
    boolean m13406b() default false;

    /* renamed from: c */
    String m13407c() default "";

    /* renamed from: d */
    boolean m13408d() default false;
}
