package mobi.oneway.export.p201g;

import android.text.TextUtils;
import com.cyjh.common.util.C1176s;
import com.cyjh.http.p104e.C1579a;
import com.umeng.commonsdk.amap.UMAmapConfig;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* renamed from: mobi.oneway.export.g.s */
/* loaded from: classes2.dex */
public class C2707s {
    /* renamed from: a */
    public static String m12262a(int i) {
        String str;
        Object[] objArr;
        if (i > 1048576) {
            str = "%.1fM";
            objArr = new Object[]{Float.valueOf((float) ((i * 1.0d) / 1048576.0d))};
        } else {
            str = "%.1fK";
            objArr = new Object[]{Float.valueOf((float) ((i * 1.0d) / 1024.0d))};
        }
        return m12276b(str, objArr);
    }

    /* renamed from: a */
    public static String m12263a(long j) {
        if (j > UMAmapConfig.AMAP_CACHE_WRITE_TIME) {
            return m12276b("%.1f 万", Double.valueOf(j / 10000.0d));
        }
        return String.valueOf(j) + C1176s.a.f4108a;
    }

    /* renamed from: a */
    public static String m12264a(InputStream inputStream) {
        return m12265a(inputStream, (String) null);
    }

    /* renamed from: a */
    public static String m12265a(InputStream inputStream, String str) {
        if (inputStream == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        InputStreamReader m12283b = C2708t.m12283b(inputStream, str);
        char[] cArr = new char[4096];
        while (true) {
            int read = m12283b.read(cArr);
            if (read == -1) {
                return sb.toString();
            }
            sb.append(cArr, 0, read);
        }
    }

    /* renamed from: a */
    public static String m12266a(Object obj) {
        return obj == null ? "" : obj.toString();
    }

    /* renamed from: a */
    public static String m12267a(String str) {
        if (TextUtils.isEmpty(str) || !str.contains(".")) {
            return str;
        }
        return str.split("\\.")[r1.length - 1];
    }

    /* renamed from: a */
    public static String m12268a(String str, int i) {
        if (str == null) {
            return null;
        }
        String[] split = str.split("[\\r\\n]+");
        if (i >= split.length) {
            return null;
        }
        return split[i];
    }

    /* renamed from: a */
    public static String m12269a(String str, String str2, String str3, Object... objArr) {
        if (objArr == null || objArr.length <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        if (str != null) {
            sb.append(str);
        }
        for (int i = 0; i < objArr.length - 1; i++) {
            sb.append(objArr[i]);
            if (str3 != null) {
                sb.append(str3);
            }
        }
        sb.append(objArr[objArr.length - 1]);
        if (str2 != null) {
            sb.append(str2);
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static String m12270a(String str, List list) {
        if (list == null) {
            return null;
        }
        Object[] objArr = new Object[list.size()];
        list.toArray(objArr);
        return m12271a(str, objArr);
    }

    /* renamed from: a */
    public static String m12271a(String str, Object... objArr) {
        return m12269a(null, null, str, objArr);
    }

    /* renamed from: a */
    public static String m12272a(Date date) {
        return new SimpleDateFormat(C1579a.f5889b, Locale.getDefault()).format(date);
    }

    /* renamed from: a */
    public static String m12273a(Object... objArr) {
        return m12269a(null, null, null, objArr);
    }

    /* renamed from: a */
    public static boolean m12274a(String str, String str2) {
        return str != null && str.equals(str2);
    }

    /* renamed from: a */
    public static boolean m12275a(String str, String... strArr) {
        if (str == null) {
            return false;
        }
        for (String str2 : strArr) {
            if (!str.equals(str2)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public static String m12276b(String str, Object... objArr) {
        return String.format(Locale.getDefault(), str, objArr);
    }

    /* renamed from: b */
    public static String m12277b(Date date) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.getDefault()).format(date);
    }

    /* renamed from: b */
    public static boolean m12278b(String str, String... strArr) {
        if (str == null || strArr.length == 0) {
            return false;
        }
        for (String str2 : strArr) {
            if (str.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    public static boolean m12279c(String str, String... strArr) {
        if (str == null || strArr == null) {
            return false;
        }
        for (String str2 : strArr) {
            if (str.contains(str2)) {
                return true;
            }
        }
        return false;
    }
}
