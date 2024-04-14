package p003b.p004a.p007c;

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
import p003b.C0514l;
import p003b.p004a.AbstractC0429a;

/* renamed from: b.a.c.b */
/* loaded from: classes.dex */
public final class C0441b {

    /* renamed from: a */
    final List<C0514l> f183a;

    /* renamed from: b */
    int f184b = 0;

    /* renamed from: c */
    boolean f185c;

    /* renamed from: d */
    boolean f186d;

    public C0441b(List<C0514l> list) {
        this.f183a = list;
    }

    /* renamed from: a */
    private boolean m161a(IOException iOException) {
        this.f186d = true;
        if (!this.f185c || (iOException instanceof ProtocolException) || (iOException instanceof InterruptedIOException)) {
            return false;
        }
        boolean z = iOException instanceof SSLHandshakeException;
        if ((z && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        }
        return z || (iOException instanceof SSLProtocolException);
    }

    /* renamed from: b */
    private C0514l m162b(SSLSocket sSLSocket) throws IOException {
        C0514l c0514l;
        int i = this.f184b;
        int size = this.f183a.size();
        while (true) {
            if (i >= size) {
                c0514l = null;
                break;
            }
            c0514l = this.f183a.get(i);
            if (c0514l.m748a(sSLSocket)) {
                this.f184b = i + 1;
                break;
            }
            i++;
        }
        if (c0514l != null) {
            this.f185c = m163a(sSLSocket);
            AbstractC0429a.f60a.mo52a(c0514l, sSLSocket, this.f186d);
            return c0514l;
        }
        throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + this.f186d + ", modes=" + this.f183a + ", supported protocols=" + Arrays.toString(sSLSocket.getEnabledProtocols()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m163a(SSLSocket sSLSocket) {
        for (int i = this.f184b; i < this.f183a.size(); i++) {
            if (this.f183a.get(i).m748a(sSLSocket)) {
                return true;
            }
        }
        return false;
    }
}
