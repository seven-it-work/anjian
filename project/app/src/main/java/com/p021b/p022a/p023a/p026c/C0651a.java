package com.p021b.p022a.p023a.p026c;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.github.kevinsawicki.http.HttpRequest;
import com.p021b.p022a.AbstractC0744aq;
import com.p021b.p022a.C0728aa;
import com.p021b.p022a.C0735ah;
import com.p021b.p022a.C0742ao;
import com.p021b.p022a.C0743ap;
import com.p021b.p022a.C0746as;
import com.p021b.p022a.C0747at;
import com.p021b.p022a.C0768r;
import com.p021b.p022a.InterfaceC0733af;
import com.p021b.p022a.InterfaceC0734ag;
import com.p021b.p022a.InterfaceC0769s;
import com.p021b.p022a.p023a.C0650c;
import com.p021b.p032b.C0789l;
import com.p021b.p032b.C0791n;
import java.util.List;

/* renamed from: com.b.a.a.c.a */
/* loaded from: classes.dex */
public final class C0651a implements InterfaceC0733af {

    /* renamed from: a */
    private final InterfaceC0769s f1515a;

    public C0651a(InterfaceC0769s interfaceC0769s) {
        this.f1515a = interfaceC0769s;
    }

    @Override // com.p021b.p022a.InterfaceC0733af
    /* renamed from: a */
    public final C0746as mo1542a(InterfaceC0734ag interfaceC0734ag) {
        boolean z;
        String str;
        C0742ao mo1642a = interfaceC0734ag.mo1642a();
        C0743ap m1899e = mo1642a.m1899e();
        AbstractC0744aq m1898d = mo1642a.m1898d();
        if (m1898d != null) {
            C0735ah mo1911a = m1898d.mo1911a();
            if (mo1911a != null) {
                m1899e.m1908a("Content-Type", mo1911a.toString());
            }
            long mo1913b = m1898d.mo1913b();
            if (mo1913b != -1) {
                m1899e.m1908a("Content-Length", Long.toString(mo1913b));
                str = "Transfer-Encoding";
            } else {
                m1899e.m1908a("Transfer-Encoding", "chunked");
                str = "Content-Length";
            }
            m1899e.m1909b(str);
        }
        if (mo1642a.m1895a(HttpHeaders.HOST) == null) {
            m1899e.m1908a(HttpHeaders.HOST, C0650c.m1604a(mo1642a.m1894a(), false));
        }
        if (mo1642a.m1895a("Connection") == null) {
            m1899e.m1908a("Connection", "Keep-Alive");
        }
        if (mo1642a.m1895a(HttpRequest.HEADER_ACCEPT_ENCODING) == null && mo1642a.m1895a(HttpHeaders.RANGE) == null) {
            m1899e.m1908a(HttpRequest.HEADER_ACCEPT_ENCODING, HttpRequest.ENCODING_GZIP);
            z = true;
        } else {
            z = false;
        }
        List<C0768r> mo1987b = this.f1515a.mo1987b();
        if (!mo1987b.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            int size = mo1987b.size();
            for (int i = 0; i < size; i++) {
                if (i > 0) {
                    sb.append("; ");
                }
                C0768r c0768r = mo1987b.get(i);
                sb.append(c0768r.m1984a());
                sb.append('=');
                sb.append(c0768r.m1985b());
            }
            m1899e.m1908a("Cookie", sb.toString());
        }
        if (mo1642a.m1895a("User-Agent") == null) {
            m1899e.m1908a("User-Agent", "okhttp/3.6.0");
        }
        C0746as mo1643a = interfaceC0734ag.mo1643a(m1899e.m1902a());
        C0656f.m1637a(this.f1515a, mo1642a.m1894a(), mo1643a.m1918d());
        C0747at m1930a = mo1643a.m1920f().m1930a(mo1642a);
        if (z && HttpRequest.ENCODING_GZIP.equalsIgnoreCase(mo1643a.m1915a("Content-Encoding")) && C0656f.m1639b(mo1643a)) {
            C0789l c0789l = new C0789l(mo1643a.m1919e().mo1649c());
            C0728aa m1823a = mo1643a.m1918d().m1820b().m1824a("Content-Encoding").m1824a("Content-Length").m1823a();
            m1930a.m1928a(m1823a);
            m1930a.m1932a(new C0659i(m1823a, C0791n.m2102a(c0789l)));
        }
        return m1930a.m1925a();
    }
}
