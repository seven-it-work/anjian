package com.p021b.p022a.p023a.p026c;

import com.android.volley.toolbox.C0616g;
import com.github.kevinsawicki.http.HttpRequest;

/* renamed from: com.b.a.a.c.g */
/* loaded from: classes.dex */
public final class C0657g {
    /* renamed from: a */
    public static boolean m1640a(String str) {
        return str.equals("POST") || str.equals(HttpRequest.METHOD_PUT) || str.equals(C0616g.a.f1349a) || str.equals("PROPPATCH") || str.equals("REPORT");
    }

    /* renamed from: b */
    public static boolean m1641b(String str) {
        return m1640a(str) || str.equals(HttpRequest.METHOD_OPTIONS) || str.equals(HttpRequest.METHOD_DELETE) || str.equals("PROPFIND") || str.equals("MKCOL") || str.equals("LOCK");
    }
}
