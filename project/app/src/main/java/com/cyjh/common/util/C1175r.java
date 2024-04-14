package com.cyjh.common.util;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import java.util.List;

/* renamed from: com.cyjh.common.util.r */
/* loaded from: classes.dex */
public final class C1175r {

    /* renamed from: a */
    public static final String f4098a = "yyyy-MM-dd HH:mm:ss";

    /* renamed from: a */
    private static Gson m4521a() {
        return new GsonBuilder().serializeNulls().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
    }

    /* renamed from: a */
    public static Object m4522a(String str, Class cls) {
        try {
            return new Gson().fromJson(str, cls);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    public static String m4523a(Object obj) {
        try {
            return new Gson().toJson(obj);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    private static <T> List<T> m4524a(String str) {
        return (List) new GsonBuilder().serializeNulls().setDateFormat("yyyy-MM-dd HH:mm:ss").create().fromJson(str, new TypeToken<List<T>>() { // from class: com.cyjh.common.util.r.1
        }.getType());
    }

    /* renamed from: b */
    private static Object m4525b(Object obj) {
        try {
            return new Gson().toJson(obj);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: b */
    private static <T> Object m4526b(String str) {
        try {
            return new Gson().fromJson(str, new TypeToken<List<T>>() { // from class: com.cyjh.common.util.r.2
            }.getType());
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
