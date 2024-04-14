package com.lidroid.xutils.http.client.multipart;

/* loaded from: classes.dex */
public enum HttpMultipartMode {
    STRICT,
    BROWSER_COMPATIBLE;

    /* renamed from: values, reason: to resolve conflict with enum method */
    public static HttpMultipartMode[] valuesCustom() {
        HttpMultipartMode[] valuesCustom = values();
        int length = valuesCustom.length;
        HttpMultipartMode[] httpMultipartModeArr = new HttpMultipartMode[length];
        System.arraycopy(valuesCustom, 0, httpMultipartModeArr, 0, length);
        return httpMultipartModeArr;
    }
}
