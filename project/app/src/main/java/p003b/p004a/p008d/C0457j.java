package p003b.p004a.p008d;

import com.github.kevinsawicki.http.HttpRequest;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;
import p003b.AbstractC0495ad;
import p003b.C0428a;
import p003b.C0494ac;
import p003b.C0496ae;
import p003b.C0498ag;
import p003b.C0509g;
import p003b.C0524v;
import p003b.C0528z;
import p003b.InterfaceC0525w;
import p003b.p004a.C0439c;
import p003b.p004a.p007c.C0442c;
import p003b.p004a.p007c.C0446g;

/* renamed from: b.a.d.j */
/* loaded from: classes.dex */
public final class C0457j implements InterfaceC0525w {

    /* renamed from: d */
    private static final int f245d = 20;

    /* renamed from: a */
    public C0446g f246a;

    /* renamed from: b */
    public Object f247b;

    /* renamed from: c */
    public volatile boolean f248c;

    /* renamed from: e */
    private final C0528z f249e;

    /* renamed from: f */
    private final boolean f250f;

    public C0457j(C0528z c0528z, boolean z) {
        this.f249e = c0528z;
        this.f250f = z;
    }

    /* renamed from: a */
    private C0428a m258a(C0524v c0524v) {
        SSLSocketFactory sSLSocketFactory;
        HostnameVerifier hostnameVerifier;
        C0509g c0509g;
        if (c0524v.m904b()) {
            SSLSocketFactory sSLSocketFactory2 = this.f249e.f1030o;
            hostnameVerifier = this.f249e.f1032q;
            sSLSocketFactory = sSLSocketFactory2;
            c0509g = this.f249e.f1033r;
        } else {
            sSLSocketFactory = null;
            hostnameVerifier = null;
            c0509g = null;
        }
        return new C0428a(c0524v.f970l, c0524v.f971m, this.f249e.f1037v, this.f249e.f1029n, sSLSocketFactory, hostnameVerifier, c0509g, this.f249e.f1034s, this.f249e.f1019d, this.f249e.f1020e, this.f249e.f1021f, this.f249e.f1025j);
    }

    /* renamed from: a */
    private C0494ac m259a(C0496ae c0496ae) throws IOException {
        String m622a;
        if (c0496ae == null) {
            throw new IllegalStateException();
        }
        C0442c m213b = this.f246a.m213b();
        AbstractC0495ad abstractC0495ad = null;
        C0498ag mo174a = m213b != null ? m213b.mo174a() : null;
        int i = c0496ae.f664c;
        String str = c0496ae.f662a.f644b;
        switch (i) {
            case 300:
            case SET_ENABLED_VALUE:
            case SET_VISIBLE_VALUE:
            case SET_TITLE_TEXT_VALUE:
                break;
            case 307:
            case 308:
                if (!str.equals(HttpRequest.METHOD_GET) && !str.equals("HEAD")) {
                    return null;
                }
                break;
            case GET_ENABLED_VALUE:
                return this.f249e.f1035t.mo657a();
            case GET_TEXTCOLOR_VALUE:
                if ((mo174a != null ? mo174a.f695b : this.f249e.f1019d).type() != Proxy.Type.HTTP) {
                    throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                }
                return this.f249e.f1034s.mo657a();
            case GET_VALUE_VALUE:
                if (c0496ae.f662a.f646d instanceof InterfaceC0459l) {
                    return null;
                }
                return c0496ae.f662a;
            default:
                return null;
        }
        if (!this.f249e.f1039x || (m622a = c0496ae.m622a("Location")) == null) {
            return null;
        }
        C0524v.a m905c = c0496ae.f662a.f643a.m905c(m622a);
        C0524v m955b = m905c != null ? m905c.m955b() : null;
        if (m955b == null) {
            return null;
        }
        if (!m955b.f969k.equals(c0496ae.f662a.f643a.f969k) && !this.f249e.f1038w) {
            return null;
        }
        C0494ac.a m587c = c0496ae.f662a.m587c();
        if (C0453f.m246c(str)) {
            boolean equals = str.equals("PROPFIND");
            if ((!str.equals("PROPFIND")) == true) {
                str = HttpRequest.METHOD_GET;
            } else if (equals) {
                abstractC0495ad = c0496ae.f662a.f646d;
            }
            m587c.m600a(str, abstractC0495ad);
            if (!equals) {
                m587c.m603b("Transfer-Encoding");
                m587c.m603b("Content-Length");
                m587c.m603b("Content-Type");
            }
        }
        if (!m262a(c0496ae, m955b)) {
            m587c.m603b("Authorization");
        }
        return m587c.m598a(m955b).m606d();
    }

    /* renamed from: a */
    private void m260a() {
        InterfaceC0450c interfaceC0450c;
        C0442c c0442c;
        this.f248c = true;
        C0446g c0446g = this.f246a;
        if (c0446g != null) {
            synchronized (c0446g.f217c) {
                c0446g.f220f = true;
                interfaceC0450c = c0446g.f221g;
                c0442c = c0446g.f219e;
            }
            if (interfaceC0450c != null) {
                interfaceC0450c.mo224c();
            } else if (c0442c != null) {
                C0439c.m146a(c0442c.f189b);
            }
        }
    }

    /* renamed from: a */
    private void m261a(Object obj) {
        this.f247b = obj;
    }

    /* renamed from: a */
    private static boolean m262a(C0496ae c0496ae, C0524v c0524v) {
        C0524v c0524v2 = c0496ae.f662a.f643a;
        return c0524v2.f970l.equals(c0524v.f970l) && c0524v2.f971m == c0524v.f971m && c0524v2.f969k.equals(c0524v.f969k);
    }

    /* renamed from: a */
    private static boolean m263a(IOException iOException, boolean z) {
        if (iOException instanceof ProtocolException) {
            return false;
        }
        return iOException instanceof InterruptedIOException ? (iOException instanceof SocketTimeoutException) && !z : (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0064 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0065 A[RETURN] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean m264a(java.io.IOException r3, boolean r4, p003b.C0494ac r5) {
        /*
            r2 = this;
            b.a.c.g r0 = r2.f246a
            r0.m211a(r3)
            b.z r0 = r2.f249e
            boolean r0 = r0.f1040y
            r1 = 0
            if (r0 != 0) goto Ld
            return r1
        Ld:
            if (r4 == 0) goto L16
            b.ad r5 = r5.f646d
            boolean r5 = r5 instanceof p003b.p004a.p008d.InterfaceC0459l
            if (r5 == 0) goto L16
            return r1
        L16:
            boolean r5 = r3 instanceof java.net.ProtocolException
            r0 = 1
            if (r5 == 0) goto L1d
        L1b:
            r3 = 0
            goto L3b
        L1d:
            boolean r5 = r3 instanceof java.io.InterruptedIOException
            if (r5 == 0) goto L28
            boolean r3 = r3 instanceof java.net.SocketTimeoutException
            if (r3 == 0) goto L1b
            if (r4 == 0) goto L3a
            goto L1b
        L28:
            boolean r4 = r3 instanceof javax.net.ssl.SSLHandshakeException
            if (r4 == 0) goto L35
            java.lang.Throwable r4 = r3.getCause()
            boolean r4 = r4 instanceof java.security.cert.CertificateException
            if (r4 == 0) goto L35
            goto L1b
        L35:
            boolean r3 = r3 instanceof javax.net.ssl.SSLPeerUnverifiedException
            if (r3 == 0) goto L3a
            goto L1b
        L3a:
            r3 = 1
        L3b:
            if (r3 != 0) goto L3e
            return r1
        L3e:
            b.a.c.g r3 = r2.f246a
            b.ag r4 = r3.f216b
            if (r4 != 0) goto L61
            b.a.c.f r3 = r3.f218d
            boolean r4 = r3.m198c()
            if (r4 != 0) goto L5b
            boolean r4 = r3.m197b()
            if (r4 != 0) goto L5b
            boolean r3 = r3.m199d()
            if (r3 == 0) goto L59
            goto L5b
        L59:
            r3 = 0
            goto L5c
        L5b:
            r3 = 1
        L5c:
            if (r3 == 0) goto L5f
            goto L61
        L5f:
            r3 = 0
            goto L62
        L61:
            r3 = 1
        L62:
            if (r3 != 0) goto L65
            return r1
        L65:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p003b.p004a.p008d.C0457j.m264a(java.io.IOException, boolean, b.ac):boolean");
    }

    /* renamed from: b */
    private boolean m265b() {
        return this.f248c;
    }

    /* renamed from: c */
    private C0446g m266c() {
        return this.f246a;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00be, code lost:
    
        if (r7.equals("HEAD") == false) goto L71;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:18:0x0077. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0148 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x00dd  */
    @Override // p003b.InterfaceC0525w
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final p003b.C0496ae intercept(p003b.InterfaceC0525w.a r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 544
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p003b.p004a.p008d.C0457j.intercept(b.w$a):b.ae");
    }
}
