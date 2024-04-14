package com.lidroid.xutils.bitmap.callback;

/* loaded from: classes.dex */
public enum BitmapLoadFrom {
    MEMORY_CACHE,
    DISK_CACHE,
    URI;

    /* renamed from: values, reason: to resolve conflict with enum method */
    public static BitmapLoadFrom[] valuesCustom() {
        BitmapLoadFrom[] valuesCustom = values();
        int length = valuesCustom.length;
        BitmapLoadFrom[] bitmapLoadFromArr = new BitmapLoadFrom[length];
        System.arraycopy(valuesCustom, 0, bitmapLoadFromArr, 0, length);
        return bitmapLoadFromArr;
    }
}
