package com.p021b.p022a;

import com.p021b.p022a.p023a.AbstractC0631a;
import com.p021b.p022a.p023a.C0650c;
import com.p021b.p022a.p023a.p025b.C0644c;
import com.p021b.p022a.p023a.p025b.C0645d;
import com.p021b.p022a.p023a.p025b.C0648g;
import java.net.Socket;
import javax.net.ssl.SSLSocket;

/* renamed from: com.b.a.aj */
/* loaded from: classes.dex */
final class C0737aj extends AbstractC0631a {
    @Override // com.p021b.p022a.p023a.AbstractC0631a
    /* renamed from: a */
    public final int mo1531a(C0747at c0747at) {
        return c0747at.f1908c;
    }

    @Override // com.p021b.p022a.p023a.AbstractC0631a
    /* renamed from: a */
    public final C0644c mo1532a(C0764n c0764n, C0630a c0630a, C0648g c0648g) {
        return c0764n.m1967a(c0630a, c0648g);
    }

    @Override // com.p021b.p022a.p023a.AbstractC0631a
    /* renamed from: a */
    public final C0645d mo1533a(C0764n c0764n) {
        return c0764n.f2079a;
    }

    @Override // com.p021b.p022a.p023a.AbstractC0631a
    /* renamed from: a */
    public final void mo1534a(C0729ab c0729ab, String str) {
        int indexOf = str.indexOf(":", 1);
        if (indexOf != -1) {
            c0729ab.m1826b(str.substring(0, indexOf), str.substring(indexOf + 1));
        } else if (str.startsWith(":")) {
            c0729ab.m1826b("", str.substring(1));
        } else {
            c0729ab.m1826b("", str);
        }
    }

    @Override // com.p021b.p022a.p023a.AbstractC0631a
    /* renamed from: a */
    public final void mo1535a(C0729ab c0729ab, String str, String str2) {
        c0729ab.m1826b(str, str2);
    }

    @Override // com.p021b.p022a.p023a.AbstractC0631a
    /* renamed from: a */
    public final void mo1536a(C0766p c0766p, SSLSocket sSLSocket, boolean z) {
        String[] enabledCipherSuites = c0766p.f2092f != null ? (String[]) C0650c.m1618a(String.class, c0766p.f2092f, sSLSocket.getEnabledCipherSuites()) : sSLSocket.getEnabledCipherSuites();
        String[] enabledProtocols = c0766p.f2093g != null ? (String[]) C0650c.m1618a(String.class, c0766p.f2093g, sSLSocket.getEnabledProtocols()) : sSLSocket.getEnabledProtocols();
        if (z && C0650c.m1603a(sSLSocket.getSupportedCipherSuites(), "TLS_FALLBACK_SCSV") != -1) {
            enabledCipherSuites = C0650c.m1619a(enabledCipherSuites, "TLS_FALLBACK_SCSV");
        }
        C0766p m1978b = new C0767q(c0766p).m1977a(enabledCipherSuites).m1979b(enabledProtocols).m1978b();
        if (m1978b.f2093g != null) {
            sSLSocket.setEnabledProtocols(m1978b.f2093g);
        }
        if (m1978b.f2092f != null) {
            sSLSocket.setEnabledCipherSuites(m1978b.f2092f);
        }
    }

    @Override // com.p021b.p022a.p023a.AbstractC0631a
    /* renamed from: a */
    public final boolean mo1537a(C0764n c0764n, C0644c c0644c) {
        return c0764n.m1970b(c0644c);
    }

    @Override // com.p021b.p022a.p023a.AbstractC0631a
    /* renamed from: b */
    public final Socket mo1538b(C0764n c0764n, C0630a c0630a, C0648g c0648g) {
        return c0764n.m1969b(c0630a, c0648g);
    }

    @Override // com.p021b.p022a.p023a.AbstractC0631a
    /* renamed from: b */
    public final void mo1539b(C0764n c0764n, C0644c c0644c) {
        c0764n.m1968a(c0644c);
    }
}
