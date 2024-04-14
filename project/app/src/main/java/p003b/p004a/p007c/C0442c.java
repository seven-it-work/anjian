package p003b.p004a.p007c;

import android.support.v7.widget.ActivityChooserView;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownServiceException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import p003b.C0428a;
import p003b.C0494ac;
import p003b.C0496ae;
import p003b.C0498ag;
import p003b.C0509g;
import p003b.C0513k;
import p003b.C0514l;
import p003b.C0522t;
import p003b.C0524v;
import p003b.C0528z;
import p003b.EnumC0492aa;
import p003b.InterfaceC0512j;
import p003b.p004a.AbstractC0429a;
import p003b.p004a.C0439c;
import p003b.p004a.p008d.C0452e;
import p003b.p004a.p008d.InterfaceC0450c;
import p003b.p004a.p009e.C0460a;
import p003b.p004a.p010f.C0466f;
import p003b.p004a.p010f.C0467g;
import p003b.p004a.p010f.C0469i;
import p003b.p004a.p010f.EnumC0462b;
import p003b.p004a.p012h.C0481e;
import p003b.p004a.p014j.C0486d;
import p003b.p004a.p015k.C0488a;
import p017c.C0548p;
import p017c.InterfaceC0536d;
import p017c.InterfaceC0537e;
import p017c.InterfaceC0557y;

/* renamed from: b.a.c.c */
/* loaded from: classes.dex */
public final class C0442c extends C0467g.b implements InterfaceC0512j {

    /* renamed from: n */
    private static final String f187n = "throw with null exception";

    /* renamed from: a */
    public final C0498ag f188a;

    /* renamed from: b */
    public Socket f189b;

    /* renamed from: c */
    public Socket f190c;

    /* renamed from: d */
    public C0522t f191d;

    /* renamed from: e */
    C0467g f192e;

    /* renamed from: f */
    public InterfaceC0537e f193f;

    /* renamed from: g */
    public InterfaceC0536d f194g;

    /* renamed from: h */
    public boolean f195h;

    /* renamed from: i */
    public int f196i;

    /* renamed from: j */
    public int f197j = 1;

    /* renamed from: k */
    public final List<Reference<C0446g>> f198k = new ArrayList();

    /* renamed from: l */
    public long f199l = Long.MAX_VALUE;

    /* renamed from: o */
    private final C0513k f200o;

    /* renamed from: p */
    private EnumC0492aa f201p;

    /* renamed from: b.a.c.c$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends C0488a.e {

        /* renamed from: a */
        final /* synthetic */ C0446g f202a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(InterfaceC0537e interfaceC0537e, InterfaceC0536d interfaceC0536d, C0446g c0446g) {
            super(interfaceC0537e, interfaceC0536d);
            this.f202a = c0446g;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            this.f202a.m212a(true, this.f202a.m207a());
        }
    }

    public C0442c(C0513k c0513k, C0498ag c0498ag) {
        this.f200o = c0513k;
        this.f188a = c0498ag;
    }

    /* renamed from: a */
    private static C0442c m164a(C0513k c0513k, C0498ag c0498ag, Socket socket, long j) {
        C0442c c0442c = new C0442c(c0513k, c0498ag);
        c0442c.f190c = socket;
        c0442c.f199l = j;
        return c0442c;
    }

    /* renamed from: a */
    private InterfaceC0450c m165a(C0528z c0528z, C0446g c0446g) throws SocketException {
        if (this.f192e != null) {
            return new C0466f(c0528z, c0446g, this.f192e);
        }
        this.f190c.setSoTimeout(c0528z.f1015A);
        this.f193f.timeout().mo1185a(c0528z.f1015A, TimeUnit.MILLISECONDS);
        this.f194g.timeout().mo1185a(c0528z.f1016B, TimeUnit.MILLISECONDS);
        return new C0460a(c0528z, c0446g, this.f193f, this.f194g);
    }

    /* renamed from: a */
    private C0488a.e m166a(C0446g c0446g) {
        return new AnonymousClass1(this.f193f, this.f194g, c0446g);
    }

    /* renamed from: a */
    private C0494ac m167a(int i, int i2, C0494ac c0494ac, C0524v c0524v) throws IOException {
        String str = "CONNECT " + C0439c.m136a(c0524v, true) + " HTTP/1.1";
        C0460a c0460a = new C0460a(null, null, this.f193f, this.f194g);
        this.f193f.timeout().mo1185a(i, TimeUnit.MILLISECONDS);
        this.f194g.timeout().mo1185a(i2, TimeUnit.MILLISECONDS);
        c0460a.m277a(c0494ac.f645c, str);
        c0460a.mo223b();
        C0496ae.a mo218a = c0460a.mo218a(false);
        mo218a.f675a = c0494ac;
        C0496ae m644a = mo218a.m644a();
        long m230a = C0452e.m230a(m644a);
        if (m230a == -1) {
            m230a = 0;
        }
        InterfaceC0557y m276a = c0460a.m276a(m230a);
        C0439c.m147a(m276a, (int) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, TimeUnit.MILLISECONDS);
        m276a.close();
        int i3 = m644a.f664c;
        if (i3 == 200) {
            if (this.f193f.mo1096a().mo1131d() && this.f194g.mo1096a().mo1131d()) {
                return null;
            }
            throw new IOException("TLS tunnel buffered too many bytes!");
        }
        if (i3 == 407) {
            this.f188a.f694a.f52d.mo657a();
            throw new IOException("Failed to authenticate with proxy");
        }
        throw new IOException("Unexpected response code for CONNECT: " + m644a.f664c);
    }

    /* renamed from: a */
    private void m168a(int i, int i2) throws IOException {
        Proxy proxy = this.f188a.f695b;
        this.f189b = (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.HTTP) ? this.f188a.f694a.f51c.createSocket() : new Socket(proxy);
        this.f189b.setSoTimeout(i2);
        try {
            C0481e.m489b().mo469a(this.f189b, this.f188a.f696c, i);
            try {
                this.f193f = C0548p.m1217a(C0548p.m1229b(this.f189b));
                this.f194g = C0548p.m1216a(C0548p.m1221a(this.f189b));
            } catch (NullPointerException e) {
                if (f187n.equals(e.getMessage())) {
                    throw new IOException(e);
                }
            }
        } catch (ConnectException e2) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.f188a.f696c);
            connectException.initCause(e2);
            throw connectException;
        }
    }

    /* renamed from: a */
    private void m169a(int i, int i2, int i3) throws IOException {
        C0494ac m606d = new C0494ac.a().m598a(this.f188a.f694a.f49a).m601a(HttpHeaders.HOST, C0439c.m136a(this.f188a.f694a.f49a, true)).m601a("Proxy-Connection", "Keep-Alive").m601a("User-Agent", "okhttp/3.8.0").m606d();
        C0524v c0524v = m606d.f643a;
        m168a(i, i2);
        String str = "CONNECT " + C0439c.m136a(c0524v, true) + " HTTP/1.1";
        C0460a c0460a = new C0460a(null, null, this.f193f, this.f194g);
        this.f193f.timeout().mo1185a(i2, TimeUnit.MILLISECONDS);
        this.f194g.timeout().mo1185a(i3, TimeUnit.MILLISECONDS);
        c0460a.m277a(m606d.f645c, str);
        c0460a.mo223b();
        C0496ae.a mo218a = c0460a.mo218a(false);
        mo218a.f675a = m606d;
        C0496ae m644a = mo218a.m644a();
        long m230a = C0452e.m230a(m644a);
        if (m230a == -1) {
            m230a = 0;
        }
        InterfaceC0557y m276a = c0460a.m276a(m230a);
        C0439c.m147a(m276a, (int) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, TimeUnit.MILLISECONDS);
        m276a.close();
        int i4 = m644a.f664c;
        if (i4 == 200) {
            if (!this.f193f.mo1096a().mo1131d() || !this.f194g.mo1096a().mo1131d()) {
                throw new IOException("TLS tunnel buffered too many bytes!");
            }
        } else {
            if (i4 == 407) {
                this.f188a.f694a.f52d.mo657a();
                throw new IOException("Failed to authenticate with proxy");
            }
            throw new IOException("Unexpected response code for CONNECT: " + m644a.f664c);
        }
    }

    /* renamed from: a */
    private void m170a(C0441b c0441b) throws IOException {
        SSLSocket sSLSocket;
        C0514l c0514l;
        if (this.f188a.f694a.f57i == null) {
            this.f201p = EnumC0492aa.HTTP_1_1;
            this.f190c = this.f189b;
            return;
        }
        C0428a c0428a = this.f188a.f694a;
        try {
            try {
                sSLSocket = (SSLSocket) c0428a.f57i.createSocket(this.f189b, c0428a.f49a.f970l, c0428a.f49a.f971m, true);
                try {
                    int i = c0441b.f184b;
                    int size = c0441b.f183a.size();
                    while (true) {
                        if (i >= size) {
                            c0514l = null;
                            break;
                        }
                        c0514l = c0441b.f183a.get(i);
                        if (c0514l.m748a(sSLSocket)) {
                            c0441b.f184b = i + 1;
                            break;
                        }
                        i++;
                    }
                    if (c0514l == null) {
                        throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + c0441b.f186d + ", modes=" + c0441b.f183a + ", supported protocols=" + Arrays.toString(sSLSocket.getEnabledProtocols()));
                    }
                    c0441b.f185c = c0441b.m163a(sSLSocket);
                    AbstractC0429a.f60a.mo52a(c0514l, sSLSocket, c0441b.f186d);
                    if (c0514l.f907e) {
                        C0481e.m489b().mo470a(sSLSocket, c0428a.f49a.f970l, c0428a.f53e);
                    }
                    sSLSocket.startHandshake();
                    C0522t m839a = C0522t.m839a(sSLSocket.getSession());
                    if (!c0428a.f58j.verify(c0428a.f49a.f970l, sSLSocket.getSession())) {
                        X509Certificate x509Certificate = (X509Certificate) m839a.f954c.get(0);
                        throw new SSLPeerUnverifiedException("Hostname " + c0428a.f49a.f970l + " not verified:\n    certificate: " + C0509g.m718a((Certificate) x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + C0486d.m509a(x509Certificate));
                    }
                    c0428a.f59k.m722a(c0428a.f49a.f970l, m839a.f954c);
                    String mo465a = c0514l.f907e ? C0481e.m489b().mo465a(sSLSocket) : null;
                    this.f190c = sSLSocket;
                    this.f193f = C0548p.m1217a(C0548p.m1229b(this.f190c));
                    this.f194g = C0548p.m1216a(C0548p.m1221a(this.f190c));
                    this.f191d = m839a;
                    this.f201p = mo465a != null ? EnumC0492aa.get(mo465a) : EnumC0492aa.HTTP_1_1;
                    if (sSLSocket != null) {
                        C0481e.m489b().mo478b(sSLSocket);
                    }
                    if (this.f201p == EnumC0492aa.HTTP_2) {
                        this.f190c.setSoTimeout(0);
                        C0467g.a m349a = new C0467g.a().m349a(this.f190c, this.f188a.f694a.f49a.f970l, this.f193f, this.f194g);
                        m349a.f414e = this;
                        this.f192e = new C0467g(m349a);
                        C0467g c0467g = this.f192e;
                        c0467g.f379q.m415a();
                        c0467g.f379q.m425b(c0467g.f375m);
                        if (c0467g.f375m.m453b() != 65535) {
                            c0467g.f379q.m417a(0, r0 - 65535);
                        }
                        new Thread(c0467g.f380r).start();
                    }
                } catch (AssertionError e) {
                    e = e;
                    if (!C0439c.m149a(e)) {
                        throw e;
                    }
                    throw new IOException(e);
                } catch (Throwable th) {
                    th = th;
                    if (sSLSocket != null) {
                        C0481e.m489b().mo478b(sSLSocket);
                    }
                    C0439c.m146a((Socket) sSLSocket);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                sSLSocket = null;
            }
        } catch (AssertionError e2) {
            e = e2;
        }
    }

    /* renamed from: b */
    private void m171b(C0441b c0441b) throws IOException {
        SSLSocket sSLSocket;
        C0514l c0514l;
        C0428a c0428a = this.f188a.f694a;
        try {
            try {
                sSLSocket = (SSLSocket) c0428a.f57i.createSocket(this.f189b, c0428a.f49a.f970l, c0428a.f49a.f971m, true);
                try {
                    int i = c0441b.f184b;
                    int size = c0441b.f183a.size();
                    while (true) {
                        if (i >= size) {
                            c0514l = null;
                            break;
                        }
                        c0514l = c0441b.f183a.get(i);
                        if (c0514l.m748a(sSLSocket)) {
                            c0441b.f184b = i + 1;
                            break;
                        }
                        i++;
                    }
                    if (c0514l == null) {
                        throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + c0441b.f186d + ", modes=" + c0441b.f183a + ", supported protocols=" + Arrays.toString(sSLSocket.getEnabledProtocols()));
                    }
                    c0441b.f185c = c0441b.m163a(sSLSocket);
                    AbstractC0429a.f60a.mo52a(c0514l, sSLSocket, c0441b.f186d);
                    if (c0514l.f907e) {
                        C0481e.m489b().mo470a(sSLSocket, c0428a.f49a.f970l, c0428a.f53e);
                    }
                    sSLSocket.startHandshake();
                    C0522t m839a = C0522t.m839a(sSLSocket.getSession());
                    if (!c0428a.f58j.verify(c0428a.f49a.f970l, sSLSocket.getSession())) {
                        X509Certificate x509Certificate = (X509Certificate) m839a.f954c.get(0);
                        throw new SSLPeerUnverifiedException("Hostname " + c0428a.f49a.f970l + " not verified:\n    certificate: " + C0509g.m718a((Certificate) x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + C0486d.m509a(x509Certificate));
                    }
                    c0428a.f59k.m722a(c0428a.f49a.f970l, m839a.f954c);
                    String mo465a = c0514l.f907e ? C0481e.m489b().mo465a(sSLSocket) : null;
                    this.f190c = sSLSocket;
                    this.f193f = C0548p.m1217a(C0548p.m1229b(this.f190c));
                    this.f194g = C0548p.m1216a(C0548p.m1221a(this.f190c));
                    this.f191d = m839a;
                    this.f201p = mo465a != null ? EnumC0492aa.get(mo465a) : EnumC0492aa.HTTP_1_1;
                    if (sSLSocket != null) {
                        C0481e.m489b().mo478b(sSLSocket);
                    }
                } catch (AssertionError e) {
                    e = e;
                    if (!C0439c.m149a(e)) {
                        throw e;
                    }
                    throw new IOException(e);
                } catch (Throwable th) {
                    th = th;
                    if (sSLSocket != null) {
                        C0481e.m489b().mo478b(sSLSocket);
                    }
                    C0439c.m146a((Socket) sSLSocket);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                sSLSocket = null;
            }
        } catch (AssertionError e2) {
            e = e2;
        }
    }

    /* renamed from: f */
    private C0494ac m172f() {
        return new C0494ac.a().m598a(this.f188a.f694a.f49a).m601a(HttpHeaders.HOST, C0439c.m136a(this.f188a.f694a.f49a, true)).m601a("Proxy-Connection", "Keep-Alive").m601a("User-Agent", "okhttp/3.8.0").m606d();
    }

    /* renamed from: g */
    private void m173g() {
        C0439c.m146a(this.f189b);
    }

    @Override // p003b.InterfaceC0512j
    /* renamed from: a */
    public final C0498ag mo174a() {
        return this.f188a;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0256 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x021e  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x022b  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void m175a(int r18, int r19, int r20, boolean r21) {
        /*
            Method dump skipped, instructions count: 599
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p003b.p004a.p007c.C0442c.m175a(int, int, int, boolean):void");
    }

    @Override // p003b.p004a.p010f.C0467g.b
    /* renamed from: a */
    public final void mo176a(C0467g c0467g) {
        synchronized (this.f200o) {
            this.f197j = c0467g.m333a();
        }
    }

    @Override // p003b.p004a.p010f.C0467g.b
    /* renamed from: a */
    public final void mo177a(C0469i c0469i) throws IOException {
        c0469i.m390a(EnumC0462b.REFUSED_STREAM);
    }

    /* renamed from: a */
    public final boolean m178a(C0428a c0428a, @Nullable C0498ag c0498ag) {
        if (this.f198k.size() >= this.f197j || this.f195h || !AbstractC0429a.f60a.mo56a(this.f188a.f694a, c0428a)) {
            return false;
        }
        if (c0428a.f49a.f970l.equals(this.f188a.f694a.f49a.f970l)) {
            return true;
        }
        if (this.f192e == null || c0498ag == null || c0498ag.f695b.type() != Proxy.Type.DIRECT || this.f188a.f695b.type() != Proxy.Type.DIRECT || !this.f188a.f696c.equals(c0498ag.f696c) || c0498ag.f694a.f58j != C0486d.f540a || !m179a(c0428a.f49a)) {
            return false;
        }
        try {
            c0428a.f59k.m722a(c0428a.f49a.f970l, this.f191d.f954c);
            return true;
        } catch (SSLPeerUnverifiedException unused) {
            return false;
        }
    }

    /* renamed from: a */
    public final boolean m179a(C0524v c0524v) {
        if (c0524v.f971m != this.f188a.f694a.f49a.f971m) {
            return false;
        }
        if (c0524v.f970l.equals(this.f188a.f694a.f49a.f970l)) {
            return true;
        }
        if (this.f191d != null) {
            C0486d c0486d = C0486d.f540a;
            if (C0486d.m512a(c0524v.f970l, (X509Certificate) this.f191d.f954c.get(0))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public final boolean m180a(boolean z) {
        if (this.f190c.isClosed() || this.f190c.isInputShutdown() || this.f190c.isOutputShutdown()) {
            return false;
        }
        if (this.f192e != null) {
            return !this.f192e.m343b();
        }
        if (z) {
            try {
                int soTimeout = this.f190c.getSoTimeout();
                try {
                    this.f190c.setSoTimeout(1);
                    return !this.f193f.mo1131d();
                } finally {
                    this.f190c.setSoTimeout(soTimeout);
                }
            } catch (SocketTimeoutException unused) {
            } catch (IOException unused2) {
                return false;
            }
        }
        return true;
    }

    @Override // p003b.InterfaceC0512j
    /* renamed from: b */
    public final Socket mo181b() {
        return this.f190c;
    }

    @Override // p003b.InterfaceC0512j
    /* renamed from: c */
    public final C0522t mo182c() {
        return this.f191d;
    }

    @Override // p003b.InterfaceC0512j
    /* renamed from: d */
    public final EnumC0492aa mo183d() {
        return this.f201p;
    }

    /* renamed from: e */
    public final boolean m184e() {
        return this.f192e != null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Connection{");
        sb.append(this.f188a.f694a.f49a.f970l);
        sb.append(":");
        sb.append(this.f188a.f694a.f49a.f971m);
        sb.append(", proxy=");
        sb.append(this.f188a.f695b);
        sb.append(" hostAddress=");
        sb.append(this.f188a.f696c);
        sb.append(" cipherSuite=");
        sb.append(this.f191d != null ? this.f191d.f953b : "none");
        sb.append(" protocol=");
        sb.append(this.f201p);
        sb.append('}');
        return sb.toString();
    }
}
