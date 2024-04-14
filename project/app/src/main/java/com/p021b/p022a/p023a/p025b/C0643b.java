package com.p021b.p022a.p023a.p025b;

import com.p021b.p022a.C0766p;
import com.p021b.p022a.p023a.AbstractC0631a;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.SSLSocket;

/* renamed from: com.b.a.a.b.b */
/* loaded from: classes.dex */
public final class C0643b {

    /* renamed from: a */
    private final List<C0766p> f1457a;

    /* renamed from: b */
    private int f1458b = 0;

    /* renamed from: c */
    private boolean f1459c;

    /* renamed from: d */
    private boolean f1460d;

    public C0643b(List<C0766p> list) {
        this.f1457a = list;
    }

    /* renamed from: b */
    private boolean m1559b(SSLSocket sSLSocket) {
        for (int i = this.f1458b; i < this.f1457a.size(); i++) {
            if (this.f1457a.get(i).m1974a(sSLSocket)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public final C0766p m1560a(SSLSocket sSLSocket) {
        C0766p c0766p;
        int i = this.f1458b;
        int size = this.f1457a.size();
        while (true) {
            if (i >= size) {
                c0766p = null;
                break;
            }
            c0766p = this.f1457a.get(i);
            if (c0766p.m1974a(sSLSocket)) {
                this.f1458b = i + 1;
                break;
            }
            i++;
        }
        if (c0766p != null) {
            this.f1459c = m1559b(sSLSocket);
            AbstractC0631a.f1411a.mo1536a(c0766p, sSLSocket, this.f1460d);
            return c0766p;
        }
        throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + this.f1460d + ", modes=" + this.f1457a + ", supported protocols=" + Arrays.toString(sSLSocket.getEnabledProtocols()));
    }

    /* renamed from: a */
    public final boolean m1561a(IOException iOException) {
        this.f1460d = true;
        if (!this.f1459c || (iOException instanceof ProtocolException) || (iOException instanceof InterruptedIOException)) {
            return false;
        }
        boolean z = iOException instanceof SSLHandshakeException;
        if ((z && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        }
        return z || (iOException instanceof SSLProtocolException);
    }
}
