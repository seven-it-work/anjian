package com.iflytek.voiceads.videolib;

/* renamed from: com.iflytek.voiceads.videolib.o */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2337o {

    /* renamed from: a */
    public static JZPlayer f8770a;

    /* renamed from: b */
    public static JZPlayer f8771b;

    /* renamed from: a */
    public static JZPlayer m10261a() {
        return f8770a;
    }

    /* renamed from: a */
    public static void m10262a(JZPlayer jZPlayer) {
        f8770a = jZPlayer;
    }

    /* renamed from: b */
    public static JZPlayer m10263b() {
        return f8771b;
    }

    /* renamed from: b */
    public static void m10264b(JZPlayer jZPlayer) {
        f8771b = jZPlayer;
    }

    /* renamed from: c */
    public static JZPlayer m10265c() {
        return m10263b() != null ? m10263b() : m10261a();
    }

    /* renamed from: d */
    public static void m10266d() {
        if (f8771b != null) {
            f8771b.mo10212u();
            f8771b = null;
        }
        if (f8770a != null) {
            f8770a.mo10212u();
            f8770a = null;
        }
    }
}
