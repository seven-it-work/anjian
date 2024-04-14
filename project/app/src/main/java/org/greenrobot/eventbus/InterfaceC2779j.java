package org.greenrobot.eventbus;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD})
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: org.greenrobot.eventbus.j */
/* loaded from: classes.dex */
public @interface InterfaceC2779j {
    /* renamed from: a */
    ThreadMode m12528a() default ThreadMode.POSTING;

    /* renamed from: b */
    boolean m12529b() default false;

    /* renamed from: c */
    int m12530c() default 0;
}
