package com.lidroid.xutils.task;

/* loaded from: classes.dex */
public enum Priority {
    UI_TOP,
    UI_NORMAL,
    UI_LOW,
    DEFAULT,
    BG_TOP,
    BG_NORMAL,
    BG_LOW;

    /* renamed from: values, reason: to resolve conflict with enum method */
    public static Priority[] valuesCustom() {
        Priority[] valuesCustom = values();
        int length = valuesCustom.length;
        Priority[] priorityArr = new Priority[length];
        System.arraycopy(valuesCustom, 0, priorityArr, 0, length);
        return priorityArr;
    }
}
