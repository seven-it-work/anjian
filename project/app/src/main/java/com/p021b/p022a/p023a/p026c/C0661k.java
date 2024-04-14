package com.p021b.p022a.p023a.p026c;

import com.p021b.p022a.C0630a;
import com.p021b.p022a.C0730ac;
import com.p021b.p022a.C0736ai;
import com.p021b.p022a.C0742ao;
import com.p021b.p022a.C0746as;
import com.p021b.p022a.C0759i;
import com.p021b.p022a.InterfaceC0733af;
import com.p021b.p022a.p023a.p025b.C0648g;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;

/* renamed from: com.b.a.a.c.k */
/* loaded from: classes.dex */
public final class C0661k implements InterfaceC0733af {

    /* renamed from: a */
    private final C0736ai f1530a;

    /* renamed from: b */
    private final boolean f1531b;

    /* renamed from: c */
    private C0648g f1532c;

    /* renamed from: d */
    private Object f1533d;

    /* renamed from: e */
    private volatile boolean f1534e;

    public C0661k(C0736ai c0736ai, boolean z) {
        this.f1530a = c0736ai;
        this.f1531b = z;
    }

    /* renamed from: a */
    private C0630a m1651a(C0730ac c0730ac) {
        SSLSocketFactory sSLSocketFactory;
        HostnameVerifier hostnameVerifier;
        C0759i c0759i;
        if (c0730ac.m1843c()) {
            SSLSocketFactory m1876i = this.f1530a.m1876i();
            hostnameVerifier = this.f1530a.m1877j();
            sSLSocketFactory = m1876i;
            c0759i = this.f1530a.m1878k();
        } else {
            sSLSocketFactory = null;
            hostnameVerifier = null;
            c0759i = null;
        }
        return new C0630a(c0730ac.m1847f(), c0730ac.m1848g(), this.f1530a.m1874g(), this.f1530a.m1875h(), sSLSocketFactory, hostnameVerifier, c0759i, this.f1530a.m1880m(), this.f1530a.m1871d(), this.f1530a.m1885r(), this.f1530a.m1886s(), this.f1530a.m1872e());
    }

    /* renamed from: a */
    private static boolean m1652a(C0746as c0746as, C0730ac c0730ac) {
        C0730ac m1894a = c0746as.m1914a().m1894a();
        return m1894a.m1847f().equals(c0730ac.m1847f()) && m1894a.m1848g() == c0730ac.m1848g() && m1894a.m1841b().equals(c0730ac.m1841b());
    }

    /* renamed from: a */
    private boolean m1653a(IOException iOException, boolean z, C0742ao c0742ao) {
        this.f1532c.m1593a(iOException);
        if (!this.f1530a.m1884q()) {
            return false;
        }
        if (z && (c0742ao.m1898d() instanceof InterfaceC0663m)) {
            return false;
        }
        return (!(iOException instanceof ProtocolException) && (!(iOException instanceof InterruptedIOException) ? (!(iOException instanceof SSLHandshakeException) || !(iOException.getCause() instanceof CertificateException)) && !(iOException instanceof SSLPeerUnverifiedException) : (iOException instanceof SocketTimeoutException) && !z)) && this.f1532c.m1599e();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00ce, code lost:
    
        if (r7.equals("HEAD") == false) goto L64;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x0079. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0166 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0155  */
    @Override // com.p021b.p022a.InterfaceC0733af
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.p021b.p022a.C0746as mo1542a(com.p021b.p022a.InterfaceC0734ag r11) {
        /*
            Method dump skipped, instructions count: 586
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p021b.p022a.p023a.p026c.C0661k.mo1542a(com.b.a.ag):com.b.a.as");
    }

    /* renamed from: a */
    public final void m1654a(Object obj) {
        this.f1533d = obj;
    }

    /* renamed from: a */
    public final boolean m1655a() {
        return this.f1534e;
    }
}
