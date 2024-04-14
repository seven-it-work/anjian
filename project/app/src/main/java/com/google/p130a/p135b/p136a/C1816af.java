package com.google.p130a.p135b.p136a;

import com.google.p130a.C2021r;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* renamed from: com.google.a.b.a.af */
/* loaded from: classes.dex */
public final class C1816af extends AbstractC1841u {

    /* renamed from: a */
    private static final Pattern f7136a = Pattern.compile("BEGIN:VCARD", 2);

    /* renamed from: b */
    private static final Pattern f7137b = Pattern.compile("\\d{4}-?\\d{2}-?\\d{2}");

    /* renamed from: c */
    private static final Pattern f7138c = Pattern.compile("\r\n[ \t]");

    /* renamed from: d */
    private static final Pattern f7139d = Pattern.compile("\\\\[nN]");

    /* renamed from: e */
    private static final Pattern f7140e = Pattern.compile("\\\\([,;\\\\])");

    /* renamed from: f */
    private static final Pattern f7141f = Pattern.compile("=");

    /* renamed from: g */
    private static final Pattern f7142g = Pattern.compile(";");

    /* renamed from: h */
    private static final Pattern f7143h = Pattern.compile("(?<!\\\\);+");

    /* renamed from: i */
    private static final Pattern f7144i = Pattern.compile(",");

    /* renamed from: j */
    private static final Pattern f7145j = Pattern.compile("[;,]");

    /* renamed from: a */
    private static String m8271a(CharSequence charSequence, String str) {
        char charAt;
        int length = charSequence.length();
        StringBuilder sb = new StringBuilder(length);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = 0;
        while (i < length) {
            char charAt2 = charSequence.charAt(i);
            if (charAt2 != '\n' && charAt2 != '\r') {
                if (charAt2 != '=') {
                    m8274a(byteArrayOutputStream, str, sb);
                    sb.append(charAt2);
                } else if (i < length - 2 && (charAt = charSequence.charAt(i + 1)) != '\r' && charAt != '\n') {
                    i += 2;
                    char charAt3 = charSequence.charAt(i);
                    int a2 = m8396a(charAt);
                    int a3 = m8396a(charAt3);
                    if (a2 >= 0 && a3 >= 0) {
                        byteArrayOutputStream.write((a2 << 4) + a3);
                    }
                }
            }
            i++;
        }
        m8274a(byteArrayOutputStream, str, sb);
        return sb.toString();
    }

    /* renamed from: a */
    private static String m8272a(List<String> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0170  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.List<java.util.List<java.lang.String>> m8273a(java.lang.CharSequence r17, java.lang.String r18, boolean r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 383
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p135b.p136a.C1816af.m8273a(java.lang.CharSequence, java.lang.String, boolean, boolean):java.util.List");
    }

    /* renamed from: a */
    private static void m8274a(ByteArrayOutputStream byteArrayOutputStream, String str, StringBuilder sb) {
        String str2;
        if (byteArrayOutputStream.size() > 0) {
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (str == null) {
                str2 = new String(byteArray, StandardCharsets.UTF_8);
            } else {
                try {
                    str2 = new String(byteArray, str);
                } catch (UnsupportedEncodingException unused) {
                    str2 = new String(byteArray, StandardCharsets.UTF_8);
                }
            }
            byteArrayOutputStream.reset();
            sb.append(str2);
        }
    }

    /* renamed from: a */
    private static void m8275a(Iterable<List<String>> iterable) {
        int indexOf;
        if (iterable != null) {
            for (List<String> list : iterable) {
                String str = list.get(0);
                String[] strArr = new String[5];
                int i = 0;
                int i2 = 0;
                while (i < 4 && (indexOf = str.indexOf(59, i2)) >= 0) {
                    strArr[i] = str.substring(i2, indexOf);
                    i++;
                    i2 = indexOf + 1;
                }
                strArr[i] = str.substring(i2);
                StringBuilder sb = new StringBuilder(100);
                m8276a(strArr, 3, sb);
                m8276a(strArr, 1, sb);
                m8276a(strArr, 2, sb);
                m8276a(strArr, 0, sb);
                m8276a(strArr, 4, sb);
                list.set(0, sb.toString().trim());
            }
        }
    }

    /* renamed from: a */
    private static void m8276a(String[] strArr, int i, StringBuilder sb) {
        if (strArr[i] == null || strArr[i].isEmpty()) {
            return;
        }
        if (sb.length() > 0) {
            sb.append(' ');
        }
        sb.append(strArr[i]);
    }

    /* renamed from: a */
    private static boolean m8277a(CharSequence charSequence) {
        return charSequence == null || f7137b.matcher(charSequence).matches();
    }

    /* renamed from: a */
    private static String[] m8278a(Collection<List<String>> collection) {
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<List<String>> it = collection.iterator();
        while (it.hasNext()) {
            String str = it.next().get(0);
            if (str != null && !str.isEmpty()) {
                arrayList.add(str);
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static List<String> m8279b(CharSequence charSequence, String str, boolean z, boolean z2) {
        List<List<String>> m8273a = m8273a(charSequence, str, z, z2);
        if (m8273a == null || m8273a.isEmpty()) {
            return null;
        }
        return m8273a.get(0);
    }

    /* renamed from: b */
    private static String[] m8280b(Collection<List<String>> collection) {
        String str;
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(collection.size());
        for (List<String> list : collection) {
            String str2 = list.get(0);
            if (str2 != null && !str2.isEmpty()) {
                int i = 1;
                while (true) {
                    if (i >= list.size()) {
                        str = null;
                        break;
                    }
                    String str3 = list.get(i);
                    int indexOf = str3.indexOf(61);
                    if (indexOf < 0) {
                        str = str3;
                        break;
                    }
                    if ("TYPE".equalsIgnoreCase(str3.substring(0, indexOf))) {
                        str = str3.substring(indexOf + 1);
                        break;
                    }
                    i++;
                }
                arrayList.add(str);
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    /* renamed from: c */
    private static C1824d m8281c(C2021r c2021r) {
        int indexOf;
        String b2 = m8405b(c2021r);
        Matcher matcher = f7136a.matcher(b2);
        if (!matcher.find() || matcher.start() != 0) {
            return null;
        }
        List<List<String>> m8273a = m8273a((CharSequence) "FN", b2, true, false);
        if (m8273a == null && (m8273a = m8273a((CharSequence) "N", b2, true, false)) != null) {
            Iterator<T> it = m8273a.iterator();
            while (it.hasNext()) {
                List list = (List) it.next();
                String str = (String) list.get(0);
                String[] strArr = new String[5];
                int i = 0;
                int i2 = 0;
                while (i < 4 && (indexOf = str.indexOf(59, i2)) >= 0) {
                    strArr[i] = str.substring(i2, indexOf);
                    i++;
                    i2 = indexOf + 1;
                }
                strArr[i] = str.substring(i2);
                StringBuilder sb = new StringBuilder(100);
                m8276a(strArr, 3, sb);
                m8276a(strArr, 1, sb);
                m8276a(strArr, 2, sb);
                m8276a(strArr, 0, sb);
                m8276a(strArr, 4, sb);
                list.set(0, sb.toString().trim());
            }
        }
        List<String> m8279b = m8279b((CharSequence) "NICKNAME", b2, true, false);
        String[] split = m8279b == null ? null : f7144i.split(m8279b.get(0));
        List<List<String>> m8273a2 = m8273a((CharSequence) "TEL", b2, true, false);
        List<List<String>> m8273a3 = m8273a((CharSequence) "EMAIL", b2, true, false);
        List<String> m8279b2 = m8279b((CharSequence) "NOTE", b2, false, false);
        List<List<String>> m8273a4 = m8273a((CharSequence) "ADR", b2, true, true);
        List<String> m8279b3 = m8279b((CharSequence) "ORG", b2, true, true);
        List<String> m8279b4 = m8279b((CharSequence) "BDAY", b2, true, false);
        if (m8279b4 != null) {
            String str2 = m8279b4.get(0);
            if (!(str2 == null || f7137b.matcher(str2).matches())) {
                m8279b4 = null;
            }
        }
        List<String> m8279b5 = m8279b((CharSequence) "TITLE", b2, true, false);
        List<List<String>> m8273a5 = m8273a((CharSequence) "URL", b2, true, false);
        List<String> m8279b6 = m8279b((CharSequence) "IMPP", b2, true, false);
        List<String> m8279b7 = m8279b((CharSequence) "GEO", b2, true, false);
        String[] split2 = m8279b7 == null ? null : f7145j.split(m8279b7.get(0));
        return new C1824d(m8278a((Collection<List<String>>) m8273a), split, null, m8278a((Collection<List<String>>) m8273a2), m8280b(m8273a2), m8278a((Collection<List<String>>) m8273a3), m8280b(m8273a3), m8272a(m8279b6), m8272a(m8279b2), m8278a((Collection<List<String>>) m8273a4), m8280b(m8273a4), m8272a(m8279b3), m8272a(m8279b4), m8272a(m8279b5), m8278a((Collection<List<String>>) m8273a5), (split2 == null || split2.length == 2) ? split2 : null);
    }

    @Override // com.google.p130a.p135b.p136a.AbstractC1841u
    /* renamed from: a */
    public final /* synthetic */ AbstractC1837q mo8259a(C2021r c2021r) {
        int indexOf;
        String b2 = m8405b(c2021r);
        Matcher matcher = f7136a.matcher(b2);
        if (!matcher.find() || matcher.start() != 0) {
            return null;
        }
        List<List<String>> m8273a = m8273a((CharSequence) "FN", b2, true, false);
        if (m8273a == null && (m8273a = m8273a((CharSequence) "N", b2, true, false)) != null) {
            Iterator<T> it = m8273a.iterator();
            while (it.hasNext()) {
                List list = (List) it.next();
                String str = (String) list.get(0);
                String[] strArr = new String[5];
                int i = 0;
                int i2 = 0;
                while (i < 4 && (indexOf = str.indexOf(59, i2)) >= 0) {
                    strArr[i] = str.substring(i2, indexOf);
                    i++;
                    i2 = indexOf + 1;
                }
                strArr[i] = str.substring(i2);
                StringBuilder sb = new StringBuilder(100);
                m8276a(strArr, 3, sb);
                m8276a(strArr, 1, sb);
                m8276a(strArr, 2, sb);
                m8276a(strArr, 0, sb);
                m8276a(strArr, 4, sb);
                list.set(0, sb.toString().trim());
            }
        }
        List<String> m8279b = m8279b((CharSequence) "NICKNAME", b2, true, false);
        String[] split = m8279b == null ? null : f7144i.split(m8279b.get(0));
        List<List<String>> m8273a2 = m8273a((CharSequence) "TEL", b2, true, false);
        List<List<String>> m8273a3 = m8273a((CharSequence) "EMAIL", b2, true, false);
        List<String> m8279b2 = m8279b((CharSequence) "NOTE", b2, false, false);
        List<List<String>> m8273a4 = m8273a((CharSequence) "ADR", b2, true, true);
        List<String> m8279b3 = m8279b((CharSequence) "ORG", b2, true, true);
        List<String> m8279b4 = m8279b((CharSequence) "BDAY", b2, true, false);
        if (m8279b4 != null) {
            String str2 = m8279b4.get(0);
            if (!(str2 == null || f7137b.matcher(str2).matches())) {
                m8279b4 = null;
            }
        }
        List<String> m8279b5 = m8279b((CharSequence) "TITLE", b2, true, false);
        List<List<String>> m8273a5 = m8273a((CharSequence) "URL", b2, true, false);
        List<String> m8279b6 = m8279b((CharSequence) "IMPP", b2, true, false);
        List<String> m8279b7 = m8279b((CharSequence) "GEO", b2, true, false);
        String[] split2 = m8279b7 == null ? null : f7145j.split(m8279b7.get(0));
        return new C1824d(m8278a((Collection<List<String>>) m8273a), split, null, m8278a((Collection<List<String>>) m8273a2), m8280b(m8273a2), m8278a((Collection<List<String>>) m8273a3), m8280b(m8273a3), m8272a(m8279b6), m8272a(m8279b2), m8278a((Collection<List<String>>) m8273a4), m8280b(m8273a4), m8272a(m8279b3), m8272a(m8279b4), m8272a(m8279b5), m8278a((Collection<List<String>>) m8273a5), (split2 == null || split2.length == 2) ? split2 : null);
    }
}
