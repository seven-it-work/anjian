package com.lidroid.xutils.view.annotation.event;

import android.widget.AdapterView;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD})
@EventBase(listenerSetter = "setOnItemSelectedListener", listenerType = AdapterView.OnItemSelectedListener.class, methodName = "onNothingSelected")
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface OnNothingSelected {
    int[] parentId() default {0};

    int[] value();
}
