package com.google.p130a.p135b.p136a;

import com.google.p130a.C2021r;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

/* renamed from: com.google.a.b.a.u */
/* loaded from: classes.dex */
public abstract class AbstractC1841u {

    /* renamed from: a */
    private static final AbstractC1841u[] f7228a = {new C1826f(), new C1823c(), new C1830j(), new C1822b(), new C1816af(), new C1825e(), new C1817ag(), new C1829i(), new C1845y(), new C1811aa(), new C1842v(), new C1844x(), new C1834n(), new C1821ak(), new C1815ae(), new C1814ad(), new C1836p(), new C1840t(), new C1832l(), new C1819ai()};

    /* renamed from: b */
    private static final Pattern f7229b = Pattern.compile("\\d+");

    /* renamed from: c */
    private static final Pattern f7230c = Pattern.compile("&");

    /* renamed from: d */
    private static final Pattern f7231d = Pattern.compile("=");

    /* renamed from: e */
    private static final String f7232e = "\ufeff";

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static int m8396a(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        char c3 = 'a';
        if (c2 < 'a' || c2 > 'f') {
            c3 = 'A';
            if (c2 < 'A' || c2 > 'F') {
                return -1;
            }
        }
        return (c2 - c3) + 10;
    }

    /* renamed from: a */
    private static String m8397a(String str) {
        int indexOf = str.indexOf(92);
        if (indexOf < 0) {
            return str;
        }
        int length = str.length();
        StringBuilder sb = new StringBuilder(length - 1);
        sb.append(str.toCharArray(), 0, indexOf);
        boolean z = false;
        while (indexOf < length) {
            char charAt = str.charAt(indexOf);
            if (z || charAt != '\\') {
                sb.append(charAt);
                z = false;
            } else {
                z = true;
            }
            indexOf++;
        }
        return sb.toString();
    }

    /* renamed from: a */
    private static void m8398a(CharSequence charSequence, Map<String, String> map) {
        String[] split = f7231d.split(charSequence, 2);
        if (split.length == 2) {
            try {
                map.put(split[0], m8410d(split[1]));
            } catch (IllegalArgumentException unused) {
            }
        }
    }

    /* renamed from: a */
    private static void m8399a(String str, StringBuilder sb) {
        if (str != null) {
            sb.append('\n');
            sb.append(str);
        }
    }

    /* renamed from: a */
    private static void m8400a(String[] strArr, StringBuilder sb) {
        if (strArr != null) {
            for (String str : strArr) {
                sb.append('\n');
                sb.append(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static boolean m8401a(CharSequence charSequence, int i) {
        return charSequence != null && i > 0 && i == charSequence.length() && f7229b.matcher(charSequence).matches();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static boolean m8402a(CharSequence charSequence, int i, int i2) {
        int i3;
        return charSequence != null && i2 > 0 && charSequence.length() >= (i3 = i2 + i) && f7229b.matcher(charSequence.subSequence(i, i3)).matches();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static String[] m8403a(String str, String str2, char c2, boolean z) {
        int length = str2.length();
        ArrayList arrayList = null;
        int i = 0;
        while (i < length) {
            int indexOf = str2.indexOf(str, i);
            if (indexOf < 0) {
                break;
            }
            int length2 = indexOf + str.length();
            boolean z2 = true;
            ArrayList arrayList2 = arrayList;
            int i2 = length2;
            while (z2) {
                int indexOf2 = str2.indexOf(c2, i2);
                if (indexOf2 < 0) {
                    i2 = str2.length();
                } else {
                    int i3 = 0;
                    for (int i4 = indexOf2 - 1; i4 >= 0 && str2.charAt(i4) == '\\'; i4--) {
                        i3++;
                    }
                    if (i3 % 2 != 0) {
                        i2 = indexOf2 + 1;
                    } else {
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList(3);
                        }
                        String m8397a = m8397a(str2.substring(length2, indexOf2));
                        if (z) {
                            m8397a = m8397a.trim();
                        }
                        if (!m8397a.isEmpty()) {
                            arrayList2.add(m8397a);
                        }
                        i2 = indexOf2 + 1;
                    }
                }
                z2 = false;
            }
            i = i2;
            arrayList = arrayList2;
        }
        if (arrayList == null || arrayList.isEmpty()) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    /* renamed from: b */
    private static int m8404b(CharSequence charSequence, int i) {
        int i2 = 0;
        for (int i3 = i - 1; i3 >= 0 && charSequence.charAt(i3) == '\\'; i3--) {
            i2++;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public static String m8405b(C2021r c2021r) {
        String str = c2021r.f7894a;
        return str.startsWith(f7232e) ? str.substring(1) : str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static String m8406b(String str, String str2, char c2, boolean z) {
        String[] m8403a = m8403a(str, str2, c2, z);
        if (m8403a == null) {
            return null;
        }
        return m8403a[0];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public static String[] m8407b(String str) {
        if (str == null) {
            return null;
        }
        return new String[]{str};
    }

    /* renamed from: c */
    private static AbstractC1837q m8408c(C2021r c2021r) {
        for (AbstractC1841u abstractC1841u : f7228a) {
            AbstractC1837q mo8259a = abstractC1841u.mo8259a(c2021r);
            if (mo8259a != null) {
                return mo8259a;
            }
        }
        return new C1812ab(c2021r.f7894a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static Map<String, String> m8409c(String str) {
        int indexOf = str.indexOf(63);
        if (indexOf < 0) {
            return null;
        }
        HashMap hashMap = new HashMap(3);
        for (String str2 : f7230c.split(str.substring(indexOf + 1))) {
            String[] split = f7231d.split(str2, 2);
            if (split.length == 2) {
                try {
                    hashMap.put(split[0], m8410d(split[1]));
                } catch (IllegalArgumentException unused) {
                }
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static String m8410d(String str) {
        try {
            return URLDecoder.decode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: a */
    public abstract AbstractC1837q mo8259a(C2021r c2021r);
}
