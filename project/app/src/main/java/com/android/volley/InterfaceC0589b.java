package com.android.volley;

import java.util.Collections;
import java.util.Map;

/* renamed from: com.android.volley.b */
/* loaded from: classes.dex */
public interface InterfaceC0589b {

    /* renamed from: com.android.volley.b$a */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a */
        public byte[] f1210a;

        /* renamed from: b */
        public String f1211b;

        /* renamed from: c */
        public long f1212c;

        /* renamed from: d */
        public long f1213d;

        /* renamed from: e */
        public long f1214e;

        /* renamed from: f */
        public long f1215f;

        /* renamed from: g */
        public Map<String, String> f1216g = Collections.emptyMap();

        /* renamed from: a */
        private boolean m1335a() {
            return this.f1214e < System.currentTimeMillis();
        }

        /* renamed from: b */
        private boolean m1336b() {
            return this.f1215f < System.currentTimeMillis();
        }
    }

    /* renamed from: a */
    a mo1329a(String str);

    /* renamed from: a */
    void mo1330a();

    /* renamed from: a */
    void mo1331a(String str, a aVar);

    /* renamed from: a */
    void mo1332a(String str, boolean z);

    /* renamed from: b */
    void mo1333b();

    /* renamed from: b */
    void mo1334b(String str);
}
