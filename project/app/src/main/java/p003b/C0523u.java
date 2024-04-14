package p003b;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import javax.annotation.Nullable;
import p003b.p004a.C0439c;
import p003b.p004a.p008d.C0451d;

/* renamed from: b.u */
/* loaded from: classes.dex */
public final class C0523u {

    /* renamed from: a */
    public final String[] f956a;

    /* renamed from: b.u$a */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a */
        final List<String> f957a = new ArrayList(20);

        /* renamed from: d */
        private a m857d(String str) {
            int indexOf = str.indexOf(":");
            if (indexOf != -1) {
                return m860a(str.substring(0, indexOf).trim(), str.substring(indexOf + 1));
            }
            throw new IllegalArgumentException("Unexpected header: " + str);
        }

        /* renamed from: d */
        private static void m858d(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (str.isEmpty()) {
                throw new IllegalArgumentException("name is empty");
            }
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                if (charAt <= ' ' || charAt >= 127) {
                    throw new IllegalArgumentException(C0439c.m138a("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i), str));
                }
            }
            if (str2 == null) {
                throw new NullPointerException("value for name " + str + " == null");
            }
            int length2 = str2.length();
            for (int i2 = 0; i2 < length2; i2++) {
                char charAt2 = str2.charAt(i2);
                if ((charAt2 <= 31 && charAt2 != '\t') || charAt2 >= 127) {
                    throw new IllegalArgumentException(C0439c.m138a("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(charAt2), Integer.valueOf(i2), str, str2));
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final a m859a(String str) {
            int indexOf = str.indexOf(":", 1);
            return indexOf != -1 ? m863b(str.substring(0, indexOf), str.substring(indexOf + 1)) : str.startsWith(":") ? m863b("", str.substring(1)) : m863b("", str);
        }

        /* renamed from: a */
        public final a m860a(String str, String str2) {
            m858d(str, str2);
            return m863b(str, str2);
        }

        /* renamed from: a */
        public final C0523u m861a() {
            return new C0523u(this);
        }

        /* renamed from: b */
        public final a m862b(String str) {
            int i = 0;
            while (i < this.f957a.size()) {
                if (str.equalsIgnoreCase(this.f957a.get(i))) {
                    this.f957a.remove(i);
                    this.f957a.remove(i);
                    i -= 2;
                }
                i += 2;
            }
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: b */
        public final a m863b(String str, String str2) {
            this.f957a.add(str);
            this.f957a.add(str2.trim());
            return this;
        }

        /* renamed from: c */
        public final a m864c(String str, String str2) {
            m858d(str, str2);
            m862b(str);
            m863b(str, str2);
            return this;
        }

        /* renamed from: c */
        public final String m865c(String str) {
            for (int size = this.f957a.size() - 2; size >= 0; size -= 2) {
                if (str.equalsIgnoreCase(this.f957a.get(size))) {
                    return this.f957a.get(size + 1);
                }
            }
            return null;
        }
    }

    C0523u(a aVar) {
        this.f956a = (String[]) aVar.f957a.toArray(new String[aVar.f957a.size()]);
    }

    private C0523u(String[] strArr) {
        this.f956a = strArr;
    }

    /* renamed from: a */
    private static C0523u m845a(Map<String, String> map) {
        if (map == null) {
            throw new NullPointerException("headers == null");
        }
        String[] strArr = new String[map.size() * 2];
        int i = 0;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (entry.getKey() == null || entry.getValue() == null) {
                throw new IllegalArgumentException("Headers cannot be null");
            }
            String trim = entry.getKey().trim();
            String trim2 = entry.getValue().trim();
            if (trim.length() == 0 || trim.indexOf(0) != -1 || trim2.indexOf(0) != -1) {
                throw new IllegalArgumentException("Unexpected header: " + trim + ": " + trim2);
            }
            strArr[i] = trim;
            strArr[i + 1] = trim2;
            i += 2;
        }
        return new C0523u(strArr);
    }

    /* renamed from: a */
    public static C0523u m846a(String... strArr) {
        String[] strArr2 = (String[]) strArr.clone();
        for (int i = 0; i < strArr2.length; i++) {
            if (strArr2[i] == null) {
                throw new IllegalArgumentException("Headers cannot be null");
            }
            strArr2[i] = strArr2[i].trim();
        }
        for (int i2 = 0; i2 < strArr2.length; i2 += 2) {
            String str = strArr2[i2];
            String str2 = strArr2[i2 + 1];
            if (str.length() == 0 || str.indexOf(0) != -1 || str2.indexOf(0) != -1) {
                throw new IllegalArgumentException("Unexpected header: " + str + ": " + str2);
            }
        }
        return new C0523u(strArr2);
    }

    /* renamed from: a */
    private static String m847a(String[] strArr, String str) {
        for (int length = strArr.length - 2; length >= 0; length -= 2) {
            if (str.equalsIgnoreCase(strArr[length])) {
                return strArr[length + 1];
            }
        }
        return null;
    }

    @Nullable
    /* renamed from: c */
    private Date m848c(String str) {
        String m852a = m852a(str);
        if (m852a != null) {
            return C0451d.m226a(m852a);
        }
        return null;
    }

    /* renamed from: d */
    private Set<String> m849d() {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        int length = this.f956a.length / 2;
        for (int i = 0; i < length; i++) {
            treeSet.add(m851a(i));
        }
        return Collections.unmodifiableSet(treeSet);
    }

    /* renamed from: a */
    public final int m850a() {
        return this.f956a.length / 2;
    }

    /* renamed from: a */
    public final String m851a(int i) {
        return this.f956a[i * 2];
    }

    @Nullable
    /* renamed from: a */
    public final String m852a(String str) {
        String[] strArr = this.f956a;
        for (int length = strArr.length - 2; length >= 0; length -= 2) {
            if (str.equalsIgnoreCase(strArr[length])) {
                return strArr[length + 1];
            }
        }
        return null;
    }

    /* renamed from: b */
    public final a m853b() {
        a aVar = new a();
        Collections.addAll(aVar.f957a, this.f956a);
        return aVar;
    }

    /* renamed from: b */
    public final String m854b(int i) {
        return this.f956a[(i * 2) + 1];
    }

    /* renamed from: b */
    public final List<String> m855b(String str) {
        int length = this.f956a.length / 2;
        ArrayList arrayList = null;
        for (int i = 0; i < length; i++) {
            if (str.equalsIgnoreCase(m851a(i))) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(m854b(i));
            }
        }
        return arrayList != null ? Collections.unmodifiableList(arrayList) : Collections.emptyList();
    }

    /* renamed from: c */
    public final Map<String, List<String>> m856c() {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        int length = this.f956a.length / 2;
        for (int i = 0; i < length; i++) {
            String lowerCase = m851a(i).toLowerCase(Locale.US);
            List list = (List) treeMap.get(lowerCase);
            if (list == null) {
                list = new ArrayList(2);
                treeMap.put(lowerCase, list);
            }
            list.add(m854b(i));
        }
        return treeMap;
    }

    public final boolean equals(@Nullable Object obj) {
        return (obj instanceof C0523u) && Arrays.equals(((C0523u) obj).f956a, this.f956a);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f956a);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int length = this.f956a.length / 2;
        for (int i = 0; i < length; i++) {
            sb.append(m851a(i));
            sb.append(": ");
            sb.append(m854b(i));
            sb.append("\n");
        }
        return sb.toString();
    }
}
