package org.litepal.p246g;

import android.text.TextUtils;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import org.litepal.LitePalApplication;
import org.litepal.p239c.C3024e;
import org.litepal.p241e.C3029a;
import org.litepal.p246g.InterfaceC3057b;

/* renamed from: org.litepal.g.a */
/* loaded from: classes2.dex */
public final class C3054a {
    private C3054a() {
    }

    /* renamed from: a */
    public static String m13930a(String str) {
        if (str == null) {
            return null;
        }
        String str2 = C3029a.m13714a().f11060c;
        return InterfaceC3057b.a.f11202d.equals(str2) ? str : InterfaceC3057b.a.f11200b.equals(str2) ? str.toUpperCase(Locale.US) : str.toLowerCase(Locale.US);
    }

    /* renamed from: a */
    public static void m13931a(String... strArr) {
        int length;
        if (strArr == null || (length = strArr.length) <= 0) {
            return;
        }
        int i = 0;
        String str = strArr[0];
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty("?")) {
            while (true) {
                int indexOf = str.indexOf("?");
                if (indexOf == -1) {
                    break;
                }
                i++;
                str = str.substring(indexOf + "?".length());
            }
        }
        if (length != i + 1) {
            throw new C3024e(C3024e.UPDATE_CONDITIONS_EXCEPTION);
        }
    }

    /* renamed from: a */
    public static boolean m13932a() {
        try {
            String[] list = LitePalApplication.m13404a().getAssets().list("");
            if (list != null && list.length > 0) {
                for (String str : list) {
                    if (InterfaceC3057b.a.f11203e.equalsIgnoreCase(str)) {
                        return true;
                    }
                }
            }
        } catch (IOException unused) {
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m13933a(String str, String str2) {
        try {
            for (Method method : Class.forName(str).getMethods()) {
                if (str2.equals(method.getName())) {
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m13934a(Collection<String> collection, String str) {
        if (collection == null) {
            return false;
        }
        if (str == null) {
            return collection.contains(null);
        }
        Iterator<String> it = collection.iterator();
        while (it.hasNext()) {
            if (str.equalsIgnoreCase(it.next())) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    private static int m13935b(String str, String str2) {
        int i = 0;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            while (true) {
                int indexOf = str.indexOf(str2);
                if (indexOf == -1) {
                    break;
                }
                i++;
                str = str.substring(indexOf + str2.length());
            }
        }
        return i;
    }

    /* renamed from: b */
    public static String m13936b(String str) {
        if (TextUtils.isEmpty(str)) {
            if (str == null) {
                return null;
            }
            return "";
        }
        return str.substring(0, 1).toUpperCase(Locale.US) + str.substring(1);
    }

    /* renamed from: c */
    public static boolean m13937c(String str) {
        return "java.lang.String".equals(str) || "java.lang.Integer".equals(str) || "java.lang.Float".equals(str) || "java.lang.Double".equals(str) || "java.lang.Long".equals(str) || "java.lang.Short".equals(str) || "java.lang.Boolean".equals(str) || "java.lang.Character".equals(str);
    }

    /* renamed from: d */
    private static boolean m13938d(String str) {
        return "boolean".equals(str) || "java.lang.Boolean".equals(str) || "float".equals(str) || "java.lang.Float".equals(str) || "double".equals(str) || "java.lang.Double".equals(str) || "int".equals(str) || "java.lang.Integer".equals(str) || "long".equals(str) || "java.lang.Long".equals(str) || "short".equals(str) || "java.lang.Short".equals(str) || "char".equals(str) || "java.lang.Character".equals(str) || "[B".equals(str) || "[Ljava.lang.Byte;".equals(str) || "java.lang.String".equals(str) || "java.util.Date".equals(str);
    }
}
