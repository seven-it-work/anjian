package com.lidroid.xutils.view;

/* loaded from: classes.dex */
public enum ResType {
    Animation,
    Boolean,
    Color,
    ColorStateList,
    Dimension,
    DimensionPixelOffset,
    DimensionPixelSize,
    Drawable,
    Integer,
    IntArray,
    Movie,
    String,
    StringArray,
    Text,
    TextArray,
    Xml;

    /* renamed from: values, reason: to resolve conflict with enum method */
    public static ResType[] valuesCustom() {
        ResType[] valuesCustom = values();
        int length = valuesCustom.length;
        ResType[] resTypeArr = new ResType[length];
        System.arraycopy(valuesCustom, 0, resTypeArr, 0, length);
        return resTypeArr;
    }
}
