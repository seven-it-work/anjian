package mobi.oneway.export.p192a;

import android.content.Context;
import mobi.oneway.export.p201g.C2701m;

/* renamed from: mobi.oneway.export.a.b */
/* loaded from: classes.dex */
public class C2642b {

    /* renamed from: a */
    private static Context f10173a;

    /* renamed from: b */
    private static String f10174b;

    /* renamed from: c */
    private static boolean f10175c;

    /* renamed from: d */
    private static String f10176d;

    /* renamed from: e */
    private static String f10177e;

    /* renamed from: a */
    public static Context m11898a() {
        if (f10173a == null) {
            C2701m.m12245d("OnewaySdk.init method must invoke first and paramter context must not be null");
        }
        return f10173a;
    }

    /* renamed from: a */
    public static void m11899a(Context context) {
        f10173a = context;
    }

    /* renamed from: a */
    public static void m11900a(String str) {
        f10174b = str;
    }

    /* renamed from: a */
    public static void m11901a(boolean z) {
        f10175c = z;
    }

    /* renamed from: b */
    public static String m11902b() {
        return f10174b;
    }

    /* renamed from: b */
    public static void m11903b(String str) {
        f10176d = str;
    }

    /* renamed from: c */
    public static void m11904c(String str) {
        f10177e = str;
    }

    /* renamed from: c */
    public static boolean m11905c() {
        return f10175c;
    }

    /* renamed from: d */
    public static String m11906d() {
        return f10176d;
    }

    /* renamed from: e */
    public static String m11907e() {
        return f10177e;
    }
}
