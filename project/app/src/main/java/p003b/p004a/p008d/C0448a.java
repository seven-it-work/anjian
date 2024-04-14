package p003b.p004a.p008d;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.github.kevinsawicki.http.HttpRequest;
import java.io.IOException;
import java.util.List;
import p003b.AbstractC0495ad;
import p003b.C0494ac;
import p003b.C0496ae;
import p003b.C0515m;
import p003b.C0523u;
import p003b.C0526x;
import p003b.InterfaceC0516n;
import p003b.InterfaceC0525w;
import p003b.p004a.C0439c;
import p017c.C0544l;
import p017c.C0548p;

/* renamed from: b.a.d.a */
/* loaded from: classes.dex */
public final class C0448a implements InterfaceC0525w {

    /* renamed from: a */
    private final InterfaceC0516n f226a;

    public C0448a(InterfaceC0516n interfaceC0516n) {
        this.f226a = interfaceC0516n;
    }

    /* renamed from: a */
    private static String m217a(List<C0515m> list) {
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                sb.append("; ");
            }
            C0515m c0515m = list.get(i);
            sb.append(c0515m.f918a);
            sb.append('=');
            sb.append(c0515m.f919b);
        }
        return sb.toString();
    }

    @Override // p003b.InterfaceC0525w
    public final C0496ae intercept(InterfaceC0525w.a aVar) throws IOException {
        boolean z;
        String str;
        C0494ac mo251a = aVar.mo251a();
        C0494ac.a m587c = mo251a.m587c();
        AbstractC0495ad abstractC0495ad = mo251a.f646d;
        if (abstractC0495ad != null) {
            C0526x contentType = abstractC0495ad.contentType();
            if (contentType != null) {
                m587c.m601a("Content-Type", contentType.toString());
            }
            long contentLength = abstractC0495ad.contentLength();
            if (contentLength != -1) {
                m587c.m601a("Content-Length", Long.toString(contentLength));
                str = "Transfer-Encoding";
            } else {
                m587c.m601a("Transfer-Encoding", "chunked");
                str = "Content-Length";
            }
            m587c.m603b(str);
        }
        if (mo251a.m585a(HttpHeaders.HOST) == null) {
            m587c.m601a(HttpHeaders.HOST, C0439c.m136a(mo251a.f643a, false));
        }
        if (mo251a.m585a("Connection") == null) {
            m587c.m601a("Connection", "Keep-Alive");
        }
        if (mo251a.m585a(HttpRequest.HEADER_ACCEPT_ENCODING) == null && mo251a.m585a(HttpHeaders.RANGE) == null) {
            m587c.m601a(HttpRequest.HEADER_ACCEPT_ENCODING, HttpRequest.ENCODING_GZIP);
            z = true;
        } else {
            z = false;
        }
        List<C0515m> mo788b = this.f226a.mo788b();
        if (!mo788b.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            int size = mo788b.size();
            for (int i = 0; i < size; i++) {
                if (i > 0) {
                    sb.append("; ");
                }
                C0515m c0515m = mo788b.get(i);
                sb.append(c0515m.f918a);
                sb.append('=');
                sb.append(c0515m.f919b);
            }
            m587c.m601a("Cookie", sb.toString());
        }
        if (mo251a.m585a("User-Agent") == null) {
            m587c.m601a("User-Agent", "okhttp/3.8.0");
        }
        C0496ae mo252a = aVar.mo252a(m587c.m606d());
        C0452e.m235a(this.f226a, mo251a.f643a, mo252a.f667f);
        C0496ae.a m626e = mo252a.m626e();
        m626e.f675a = mo251a;
        if (z && HttpRequest.ENCODING_GZIP.equalsIgnoreCase(mo252a.m622a("Content-Encoding")) && C0452e.m242d(mo252a)) {
            C0544l c0544l = new C0544l(mo252a.f668g.source());
            C0523u m861a = mo252a.f667f.m853b().m862b("Content-Encoding").m862b("Content-Length").m861a();
            m626e.m642a(m861a);
            m626e.f681g = new C0455h(m861a, C0548p.m1217a(c0544l));
        }
        return m626e.m644a();
    }
}
