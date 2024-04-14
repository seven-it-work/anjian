package com.lidroid.xutils.p184db.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: com.lidroid.xutils.db.annotation.Id */
/* loaded from: classes.dex */
public @interface InterfaceC2368Id {
    String column() default "";
}
