package com.umeng.commonsdk.proguard;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.umeng.commonsdk.proguard.am */
/* loaded from: classes.dex */
public class C2468am implements Serializable {

    /* renamed from: d */
    private static Map<Class<? extends InterfaceC2456aa>, Map<? extends InterfaceC2463ah, C2468am>> f9266d = new HashMap();

    /* renamed from: a */
    public final String f9267a;

    /* renamed from: b */
    public final byte f9268b;

    /* renamed from: c */
    public final C2469an f9269c;

    public C2468am(String str, byte b2, C2469an c2469an) {
        this.f9267a = str;
        this.f9268b = b2;
        this.f9269c = c2469an;
    }

    /* renamed from: a */
    public static Map<? extends InterfaceC2463ah, C2468am> m10773a(Class<? extends InterfaceC2456aa> cls) {
        if (!f9266d.containsKey(cls)) {
            try {
                cls.newInstance();
            } catch (IllegalAccessException e) {
                throw new RuntimeException("IllegalAccessException for TBase class: " + cls.getName() + ", message: " + e.getMessage());
            } catch (InstantiationException e2) {
                throw new RuntimeException("InstantiationException for TBase class: " + cls.getName() + ", message: " + e2.getMessage());
            }
        }
        return f9266d.get(cls);
    }

    /* renamed from: a */
    public static void m10774a(Class<? extends InterfaceC2456aa> cls, Map<? extends InterfaceC2463ah, C2468am> map) {
        f9266d.put(cls, map);
    }
}
