package p003b.p004a.p008d;

import com.android.volley.toolbox.C0616g;
import com.github.kevinsawicki.http.HttpRequest;

/* renamed from: b.a.d.f */
/* loaded from: classes.dex */
public final class C0453f {
    private C0453f() {
    }

    /* renamed from: a */
    public static boolean m244a(String str) {
        return str.equals("POST") || str.equals(C0616g.a.f1349a) || str.equals(HttpRequest.METHOD_PUT) || str.equals(HttpRequest.METHOD_DELETE) || str.equals("MOVE");
    }

    /* renamed from: b */
    public static boolean m245b(String str) {
        return str.equals("POST") || str.equals(HttpRequest.METHOD_PUT) || str.equals(C0616g.a.f1349a) || str.equals("PROPPATCH") || str.equals("REPORT");
    }

    /* renamed from: c */
    public static boolean m246c(String str) {
        return m245b(str) || str.equals(HttpRequest.METHOD_OPTIONS) || str.equals(HttpRequest.METHOD_DELETE) || str.equals("PROPFIND") || str.equals("MKCOL") || str.equals("LOCK");
    }

    /* renamed from: d */
    private static boolean m247d(String str) {
        return str.equals("PROPFIND");
    }

    /* renamed from: e */
    private static boolean m248e(String str) {
        return !str.equals("PROPFIND");
    }
}
