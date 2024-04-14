package com.elfin.ad.p121e;

import com.elfin.ad.p118b.C1726a;
import java.util.List;
import org.litepal.C3033f;

/* renamed from: com.elfin.ad.e.d */
/* loaded from: classes.dex */
public final class C1736d {

    /* renamed from: a */
    public static final int f6845a = 1;

    /* renamed from: b */
    public static final int f6846b = 2;

    /* renamed from: c */
    private static C1736d f6847c;

    private C1736d() {
    }

    /* renamed from: a */
    public static synchronized C1736d m7950a() {
        C1736d c1736d;
        synchronized (C1736d.class) {
            if (f6847c == null) {
                f6847c = new C1736d();
            }
            c1736d = f6847c;
        }
        return c1736d;
    }

    /* renamed from: a */
    public static List<C1726a> m7951a(String str) {
        try {
            return C3033f.m13787b("adPid =" + str).m13442a(C1726a.class, false);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: b */
    public static int m7952b(String str) {
        try {
            return C3033f.m13751a((Class<?>) C1726a.class, "adPid =?", str);
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }
}
