package com.p021b.p022a.p023a.p028e;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.github.kevinsawicki.http.HttpRequest;
import com.p021b.p032b.C0786i;
import java.io.IOException;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* renamed from: com.b.a.a.e.d */
/* loaded from: classes.dex */
final class C0688d {

    /* renamed from: a */
    static final C0687c[] f1627a = {new C0687c(C0687c.f1623f, ""), new C0687c(C0687c.f1620c, HttpRequest.METHOD_GET), new C0687c(C0687c.f1620c, "POST"), new C0687c(C0687c.f1621d, "/"), new C0687c(C0687c.f1621d, "/index.html"), new C0687c(C0687c.f1622e, "http"), new C0687c(C0687c.f1622e, "https"), new C0687c(C0687c.f1619b, "200"), new C0687c(C0687c.f1619b, "204"), new C0687c(C0687c.f1619b, "206"), new C0687c(C0687c.f1619b, "304"), new C0687c(C0687c.f1619b, "400"), new C0687c(C0687c.f1619b, "404"), new C0687c(C0687c.f1619b, "500"), new C0687c("accept-charset", ""), new C0687c("accept-encoding", "gzip, deflate"), new C0687c("accept-language", ""), new C0687c("accept-ranges", ""), new C0687c("accept", ""), new C0687c("access-control-allow-origin", ""), new C0687c("age", ""), new C0687c("allow", ""), new C0687c("authorization", ""), new C0687c("cache-control", ""), new C0687c("content-disposition", ""), new C0687c("content-encoding", ""), new C0687c("content-language", ""), new C0687c("content-length", ""), new C0687c("content-location", ""), new C0687c("content-range", ""), new C0687c("content-type", ""), new C0687c("cookie", ""), new C0687c("date", ""), new C0687c("etag", ""), new C0687c("expect", ""), new C0687c("expires", ""), new C0687c("from", ""), new C0687c("host", ""), new C0687c("if-match", ""), new C0687c("if-modified-since", ""), new C0687c("if-none-match", ""), new C0687c("if-range", ""), new C0687c("if-unmodified-since", ""), new C0687c("last-modified", ""), new C0687c("link", ""), new C0687c(RequestParameters.SUBRESOURCE_LOCATION, ""), new C0687c("max-forwards", ""), new C0687c("proxy-authenticate", ""), new C0687c("proxy-authorization", ""), new C0687c("range", ""), new C0687c(RequestParameters.SUBRESOURCE_REFERER, ""), new C0687c("refresh", ""), new C0687c("retry-after", ""), new C0687c("server", ""), new C0687c("set-cookie", ""), new C0687c("strict-transport-security", ""), new C0687c("transfer-encoding", ""), new C0687c("user-agent", ""), new C0687c("vary", ""), new C0687c("via", ""), new C0687c("www-authenticate", "")};

    /* renamed from: b */
    static final Map<C0786i, Integer> f1628b;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap(f1627a.length);
        for (int i = 0; i < f1627a.length; i++) {
            if (!linkedHashMap.containsKey(f1627a[i].f1624g)) {
                linkedHashMap.put(f1627a[i].f1624g, Integer.valueOf(i));
            }
        }
        f1628b = Collections.unmodifiableMap(linkedHashMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static C0786i m1728a(C0786i c0786i) {
        int mo2086g = c0786i.mo2086g();
        for (int i = 0; i < mo2086g; i++) {
            byte mo2075a = c0786i.mo2075a(i);
            if (mo2075a >= 65 && mo2075a <= 90) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + c0786i.mo2077a());
            }
        }
        return c0786i;
    }
}
