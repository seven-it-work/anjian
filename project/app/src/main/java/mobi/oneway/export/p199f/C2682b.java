package mobi.oneway.export.p199f;

import java.util.HashMap;
import java.util.Map;

/* renamed from: mobi.oneway.export.f.b */
/* loaded from: classes2.dex */
public class C2682b {

    /* renamed from: a */
    private static Map<String, Long> f10308a = new HashMap();

    /* renamed from: a */
    public static long m12101a(int i, String str, String str2) {
        Long l = f10308a.get(i + "-" + str + str2);
        if (l == null) {
            return 0L;
        }
        return l.longValue();
    }

    /* renamed from: a */
    public static void m12102a(int i, String str, String str2, long j) {
        f10308a.put(i + "-" + str + str2, Long.valueOf(j));
    }
}
