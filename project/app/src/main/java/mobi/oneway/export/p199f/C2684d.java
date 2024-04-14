package mobi.oneway.export.p199f;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import mobi.oneway.export.enums.AdType;
import mobi.oneway.export.p199f.C2683c;

/* renamed from: mobi.oneway.export.f.d */
/* loaded from: classes2.dex */
public class C2684d {

    /* renamed from: a */
    private static List<C2683c> f10318a;

    /* renamed from: b */
    private static List<C2687g> f10319b;

    /* renamed from: c */
    private static String f10320c;

    /* renamed from: a */
    public static String m12121a() {
        return f10320c;
    }

    /* renamed from: a */
    public static List<C2673a> m12122a(String str, AdType adType) {
        List<C2673a> list;
        if (f10318a != null) {
            for (C2683c c2683c : f10318a) {
                if (str.equals(c2683c.m12103a())) {
                    list = m12124a(c2683c.m12106b(), str, adType);
                    break;
                }
            }
        }
        list = null;
        return list == null ? m12130b(str) : list;
    }

    /* renamed from: a */
    public static List<String> m12123a(List<C2673a> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            Iterator<C2673a> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().m12092f());
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    private static List<C2673a> m12124a(List<C2683c.a> list, String str, AdType adType) {
        ArrayList arrayList = null;
        if (f10318a != null) {
            if (list == null) {
                return null;
            }
            for (C2683c.a aVar : list) {
                int m12107a = aVar.m12107a();
                C2687g m12126a = m12126a(m12107a);
                if (m12126a != null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    C2673a c2673a = new C2673a(m12126a, str, m12107a == 1 ? str : aVar.m12110b());
                    if (c2673a.m12090d(adType)) {
                        arrayList.add(c2673a);
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static C2673a m12125a(List<C2673a> list, String str) {
        if (list == null) {
            return null;
        }
        Iterator<C2673a> it = list.iterator();
        if (!it.hasNext()) {
            return null;
        }
        C2673a next = it.next();
        if (next.m12092f().equals(str)) {
            return next;
        }
        return null;
    }

    /* renamed from: a */
    private static C2687g m12126a(int i) {
        if (f10319b == null) {
            return null;
        }
        for (C2687g c2687g : f10319b) {
            if (c2687g.m12139a() == i) {
                return c2687g;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static void m12127a(String str) {
        f10320c = str;
    }

    /* renamed from: a */
    public static void m12128a(C2683c c2683c) {
        if (f10318a == null) {
            f10318a = new ArrayList();
        }
        f10318a.add(c2683c);
    }

    /* renamed from: a */
    public static void m12129a(C2687g c2687g) {
        if (f10319b == null) {
            f10319b = new ArrayList();
        }
        f10319b.add(c2687g);
    }

    /* renamed from: b */
    private static List<C2673a> m12130b(String str) {
        C2687g m12126a = m12126a(1);
        if (m12126a == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C2673a(m12126a, str, str));
        return arrayList;
    }
}
