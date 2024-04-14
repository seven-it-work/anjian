package com.cyjh.mobileanjian.ipc.utils;

import java.util.HashMap;

/* renamed from: com.cyjh.mobileanjian.ipc.utils.h */
/* loaded from: classes.dex */
public class C1654h {

    /* renamed from: c */
    private static final long f6400c = 2749416527681438711L;

    /* renamed from: d */
    private HashMap<String, Class> f6403d = new HashMap<>();

    /* renamed from: a */
    HashMap<String, Integer> f6401a = new HashMap<>();

    /* renamed from: b */
    HashMap<Class, Integer> f6402b = new HashMap<>();

    /* renamed from: a */
    private int m7487a(Class cls) {
        return this.f6402b.get(cls).intValue();
    }

    /* renamed from: b */
    private int m7488b(String str) {
        return this.f6401a.get(str).intValue();
    }

    /* renamed from: a */
    public final Class m7489a(String str) {
        return this.f6403d.get(str);
    }

    /* renamed from: a */
    public final void m7490a(String str, Class cls, Integer num) {
        this.f6403d.put(str, cls);
        this.f6401a.put(str, num);
        this.f6402b.put(cls, num);
    }
}
