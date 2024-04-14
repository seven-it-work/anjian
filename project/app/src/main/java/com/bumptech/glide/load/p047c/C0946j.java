package com.bumptech.glide.load.p047c;

import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* renamed from: com.bumptech.glide.load.c.j */
/* loaded from: classes.dex */
public final class C0946j implements InterfaceC0944h {

    /* renamed from: c */
    private final Map<String, List<InterfaceC0945i>> f2921c;

    /* renamed from: d */
    private volatile Map<String, String> f2922d;

    /* renamed from: com.bumptech.glide.load.c.j$a */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: c */
        private static final String f2923c = "User-Agent";

        /* renamed from: d */
        private static final String f2924d;

        /* renamed from: e */
        private static final Map<String, List<InterfaceC0945i>> f2925e;

        /* renamed from: a */
        boolean f2926a = true;

        /* renamed from: b */
        Map<String, List<InterfaceC0945i>> f2927b = f2925e;

        /* renamed from: f */
        private boolean f2928f = true;

        static {
            String property = System.getProperty("http.agent");
            if (!TextUtils.isEmpty(property)) {
                int length = property.length();
                StringBuilder sb = new StringBuilder(property.length());
                for (int i = 0; i < length; i++) {
                    char charAt = property.charAt(i);
                    if ((charAt <= 31 && charAt != '\t') || charAt >= 127) {
                        charAt = '?';
                    }
                    sb.append(charAt);
                }
                property = sb.toString();
            }
            f2924d = property;
            HashMap hashMap = new HashMap(2);
            if (!TextUtils.isEmpty(f2924d)) {
                hashMap.put("User-Agent", Collections.singletonList(new b(f2924d)));
            }
            f2925e = Collections.unmodifiableMap(hashMap);
        }

        /* renamed from: a */
        private a m2793a(String str, InterfaceC0945i interfaceC0945i) {
            if (this.f2928f && "User-Agent".equalsIgnoreCase(str)) {
                return m2797b(str, interfaceC0945i);
            }
            m2796a();
            m2795a(str).add(interfaceC0945i);
            return this;
        }

        /* renamed from: a */
        private a m2794a(String str, String str2) {
            b bVar = new b(str2);
            if (this.f2928f && "User-Agent".equalsIgnoreCase(str)) {
                return m2797b(str, bVar);
            }
            m2796a();
            m2795a(str).add(bVar);
            return this;
        }

        /* renamed from: a */
        private List<InterfaceC0945i> m2795a(String str) {
            List<InterfaceC0945i> list = this.f2927b.get(str);
            if (list != null) {
                return list;
            }
            ArrayList arrayList = new ArrayList();
            this.f2927b.put(str, arrayList);
            return arrayList;
        }

        /* renamed from: a */
        private void m2796a() {
            if (this.f2926a) {
                this.f2926a = false;
                HashMap hashMap = new HashMap(this.f2927b.size());
                for (Map.Entry<String, List<InterfaceC0945i>> entry : this.f2927b.entrySet()) {
                    hashMap.put(entry.getKey(), new ArrayList(entry.getValue()));
                }
                this.f2927b = hashMap;
            }
        }

        /* renamed from: b */
        private a m2797b(String str, InterfaceC0945i interfaceC0945i) {
            m2796a();
            if (interfaceC0945i == null) {
                this.f2927b.remove(str);
            } else {
                List<InterfaceC0945i> m2795a = m2795a(str);
                m2795a.clear();
                m2795a.add(interfaceC0945i);
            }
            if (this.f2928f && "User-Agent".equalsIgnoreCase(str)) {
                this.f2928f = false;
            }
            return this;
        }

        /* renamed from: b */
        private a m2798b(String str, String str2) {
            return m2797b(str, str2 == null ? null : new b(str2));
        }

        /* renamed from: b */
        private C0946j m2799b() {
            this.f2926a = true;
            return new C0946j(this.f2927b);
        }

        /* renamed from: c */
        private Map<String, List<InterfaceC0945i>> m2800c() {
            HashMap hashMap = new HashMap(this.f2927b.size());
            for (Map.Entry<String, List<InterfaceC0945i>> entry : this.f2927b.entrySet()) {
                hashMap.put(entry.getKey(), new ArrayList(entry.getValue()));
            }
            return hashMap;
        }

        @VisibleForTesting
        /* renamed from: d */
        private static String m2801d() {
            String property = System.getProperty("http.agent");
            if (TextUtils.isEmpty(property)) {
                return property;
            }
            int length = property.length();
            StringBuilder sb = new StringBuilder(property.length());
            for (int i = 0; i < length; i++) {
                char charAt = property.charAt(i);
                if ((charAt <= 31 && charAt != '\t') || charAt >= 127) {
                    charAt = '?';
                }
                sb.append(charAt);
            }
            return sb.toString();
        }
    }

    /* renamed from: com.bumptech.glide.load.c.j$b */
    /* loaded from: classes.dex */
    static final class b implements InterfaceC0945i {

        /* renamed from: a */
        private final String f2929a;

        b(String str) {
            this.f2929a = str;
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0945i
        /* renamed from: a */
        public final String mo2790a() {
            return this.f2929a;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof b) {
                return this.f2929a.equals(((b) obj).f2929a);
            }
            return false;
        }

        public final int hashCode() {
            return this.f2929a.hashCode();
        }

        public final String toString() {
            return "StringHeaderFactory{value='" + this.f2929a + "'}";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0946j(Map<String, List<InterfaceC0945i>> map) {
        this.f2921c = Collections.unmodifiableMap(map);
    }

    @NonNull
    /* renamed from: a */
    private static String m2791a(@NonNull List<InterfaceC0945i> list) {
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            String mo2790a = list.get(i).mo2790a();
            if (!TextUtils.isEmpty(mo2790a)) {
                sb.append(mo2790a);
                if (i != list.size() - 1) {
                    sb.append(',');
                }
            }
        }
        return sb.toString();
    }

    /* renamed from: b */
    private Map<String, String> m2792b() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, List<InterfaceC0945i>> entry : this.f2921c.entrySet()) {
            String m2791a = m2791a(entry.getValue());
            if (!TextUtils.isEmpty(m2791a)) {
                hashMap.put(entry.getKey(), m2791a);
            }
        }
        return hashMap;
    }

    @Override // com.bumptech.glide.load.p047c.InterfaceC0944h
    /* renamed from: a */
    public final Map<String, String> mo2789a() {
        if (this.f2922d == null) {
            synchronized (this) {
                if (this.f2922d == null) {
                    HashMap hashMap = new HashMap();
                    for (Map.Entry<String, List<InterfaceC0945i>> entry : this.f2921c.entrySet()) {
                        String m2791a = m2791a(entry.getValue());
                        if (!TextUtils.isEmpty(m2791a)) {
                            hashMap.put(entry.getKey(), m2791a);
                        }
                    }
                    this.f2922d = Collections.unmodifiableMap(hashMap);
                }
            }
        }
        return this.f2922d;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C0946j) {
            return this.f2921c.equals(((C0946j) obj).f2921c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f2921c.hashCode();
    }

    public final String toString() {
        return "LazyHeaders{headers=" + this.f2921c + '}';
    }
}
