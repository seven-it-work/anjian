package p003b;

import com.cyjh.elfin.p073a.C1225b;
import com.umeng.commonsdk.proguard.C2518v;
import java.lang.ref.Reference;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.Socket;
import java.net.UnknownHostException;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import p003b.AbstractC0520r;
import p003b.C0496ae;
import p003b.C0514l;
import p003b.C0523u;
import p003b.InterfaceC0500ai;
import p003b.InterfaceC0507e;
import p003b.p004a.AbstractC0429a;
import p003b.p004a.C0439c;
import p003b.p004a.p005a.InterfaceC0435f;
import p003b.p004a.p007c.C0442c;
import p003b.p004a.p007c.C0443d;
import p003b.p004a.p007c.C0446g;
import p003b.p004a.p012h.C0481e;
import p003b.p004a.p014j.AbstractC0484b;
import p003b.p004a.p014j.C0486d;
import p003b.p004a.p015k.C0488a;

/* renamed from: b.z */
/* loaded from: classes.dex */
public class C0528z implements InterfaceC0500ai.a, InterfaceC0507e.a, Cloneable {

    /* renamed from: a */
    static final List<EnumC0492aa> f1013a = C0439c.m141a(EnumC0492aa.HTTP_2, EnumC0492aa.HTTP_1_1);

    /* renamed from: b */
    static final List<C0514l> f1014b = C0439c.m141a(C0514l.f902a, C0514l.f904c);

    /* renamed from: A */
    public final int f1015A;

    /* renamed from: B */
    public final int f1016B;

    /* renamed from: C */
    public final int f1017C;

    /* renamed from: c */
    final C0518p f1018c;

    /* renamed from: d */
    @Nullable
    public final Proxy f1019d;

    /* renamed from: e */
    public final List<EnumC0492aa> f1020e;

    /* renamed from: f */
    public final List<C0514l> f1021f;

    /* renamed from: g */
    final List<InterfaceC0525w> f1022g;

    /* renamed from: h */
    final List<InterfaceC0525w> f1023h;

    /* renamed from: i */
    final AbstractC0520r.a f1024i;

    /* renamed from: j */
    public final ProxySelector f1025j;

    /* renamed from: k */
    public final InterfaceC0516n f1026k;

    /* renamed from: l */
    @Nullable
    final C0505c f1027l;

    /* renamed from: m */
    @Nullable
    final InterfaceC0435f f1028m;

    /* renamed from: n */
    public final SocketFactory f1029n;

    /* renamed from: o */
    @Nullable
    public final SSLSocketFactory f1030o;

    /* renamed from: p */
    @Nullable
    final AbstractC0484b f1031p;

    /* renamed from: q */
    public final HostnameVerifier f1032q;

    /* renamed from: r */
    public final C0509g f1033r;

    /* renamed from: s */
    public final InterfaceC0503b f1034s;

    /* renamed from: t */
    public final InterfaceC0503b f1035t;

    /* renamed from: u */
    public final C0513k f1036u;

    /* renamed from: v */
    public final InterfaceC0519q f1037v;

    /* renamed from: w */
    public final boolean f1038w;

    /* renamed from: x */
    public final boolean f1039x;

    /* renamed from: y */
    public final boolean f1040y;

    /* renamed from: z */
    public final int f1041z;

    /* renamed from: b.z$a */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: A */
        int f1042A;

        /* renamed from: a */
        C0518p f1043a;

        /* renamed from: b */
        @Nullable
        Proxy f1044b;

        /* renamed from: c */
        public List<EnumC0492aa> f1045c;

        /* renamed from: d */
        List<C0514l> f1046d;

        /* renamed from: e */
        final List<InterfaceC0525w> f1047e;

        /* renamed from: f */
        final List<InterfaceC0525w> f1048f;

        /* renamed from: g */
        AbstractC0520r.a f1049g;

        /* renamed from: h */
        ProxySelector f1050h;

        /* renamed from: i */
        InterfaceC0516n f1051i;

        /* renamed from: j */
        @Nullable
        C0505c f1052j;

        /* renamed from: k */
        @Nullable
        InterfaceC0435f f1053k;

        /* renamed from: l */
        SocketFactory f1054l;

        /* renamed from: m */
        @Nullable
        SSLSocketFactory f1055m;

        /* renamed from: n */
        @Nullable
        AbstractC0484b f1056n;

        /* renamed from: o */
        HostnameVerifier f1057o;

        /* renamed from: p */
        C0509g f1058p;

        /* renamed from: q */
        InterfaceC0503b f1059q;

        /* renamed from: r */
        InterfaceC0503b f1060r;

        /* renamed from: s */
        C0513k f1061s;

        /* renamed from: t */
        InterfaceC0519q f1062t;

        /* renamed from: u */
        boolean f1063u;

        /* renamed from: v */
        boolean f1064v;

        /* renamed from: w */
        boolean f1065w;

        /* renamed from: x */
        int f1066x;

        /* renamed from: y */
        int f1067y;

        /* renamed from: z */
        int f1068z;

        public a() {
            this.f1047e = new ArrayList();
            this.f1048f = new ArrayList();
            this.f1043a = new C0518p();
            this.f1045c = C0528z.f1013a;
            this.f1046d = C0528z.f1014b;
            this.f1049g = AbstractC0520r.m810a(AbstractC0520r.f945a);
            this.f1050h = ProxySelector.getDefault();
            this.f1051i = InterfaceC0516n.f936a;
            this.f1054l = SocketFactory.getDefault();
            this.f1057o = C0486d.f540a;
            this.f1058p = C0509g.f767a;
            this.f1059q = InterfaceC0503b.f697a;
            this.f1060r = InterfaceC0503b.f697a;
            this.f1061s = new C0513k();
            this.f1062t = InterfaceC0519q.f944a;
            this.f1063u = true;
            this.f1064v = true;
            this.f1065w = true;
            this.f1066x = C1225b.f4496ak;
            this.f1067y = C1225b.f4496ak;
            this.f1068z = C1225b.f4496ak;
            this.f1042A = 0;
        }

        a(C0528z c0528z) {
            this.f1047e = new ArrayList();
            this.f1048f = new ArrayList();
            this.f1043a = c0528z.f1018c;
            this.f1044b = c0528z.f1019d;
            this.f1045c = c0528z.f1020e;
            this.f1046d = c0528z.f1021f;
            this.f1047e.addAll(c0528z.f1022g);
            this.f1048f.addAll(c0528z.f1023h);
            this.f1049g = c0528z.f1024i;
            this.f1050h = c0528z.f1025j;
            this.f1051i = c0528z.f1026k;
            this.f1053k = c0528z.f1028m;
            this.f1052j = c0528z.f1027l;
            this.f1054l = c0528z.f1029n;
            this.f1055m = c0528z.f1030o;
            this.f1056n = c0528z.f1031p;
            this.f1057o = c0528z.f1032q;
            this.f1058p = c0528z.f1033r;
            this.f1059q = c0528z.f1034s;
            this.f1060r = c0528z.f1035t;
            this.f1061s = c0528z.f1036u;
            this.f1062t = c0528z.f1037v;
            this.f1063u = c0528z.f1038w;
            this.f1064v = c0528z.f1039x;
            this.f1065w = c0528z.f1040y;
            this.f1066x = c0528z.f1041z;
            this.f1067y = c0528z.f1015A;
            this.f1068z = c0528z.f1016B;
            this.f1042A = c0528z.f1017C;
        }

        /* renamed from: a */
        private static int m1010a(String str, long j, TimeUnit timeUnit) {
            if (j < 0) {
                throw new IllegalArgumentException(str + " < 0");
            }
            if (timeUnit == null) {
                throw new NullPointerException("unit == null");
            }
            long millis = timeUnit.toMillis(j);
            if (millis > 2147483647L) {
                throw new IllegalArgumentException(str + " too large.");
            }
            if (millis != 0 || j <= 0) {
                return (int) millis;
            }
            throw new IllegalArgumentException(str + " too small.");
        }

        /* renamed from: a */
        private a m1011a(InterfaceC0503b interfaceC0503b) {
            if (interfaceC0503b == null) {
                throw new NullPointerException("authenticator == null");
            }
            this.f1060r = interfaceC0503b;
            return this;
        }

        /* renamed from: a */
        private a m1012a(C0509g c0509g) {
            if (c0509g == null) {
                throw new NullPointerException("certificatePinner == null");
            }
            this.f1058p = c0509g;
            return this;
        }

        /* renamed from: a */
        private a m1013a(C0513k c0513k) {
            if (c0513k == null) {
                throw new NullPointerException("connectionPool == null");
            }
            this.f1061s = c0513k;
            return this;
        }

        /* renamed from: a */
        private a m1014a(InterfaceC0516n interfaceC0516n) {
            if (interfaceC0516n == null) {
                throw new NullPointerException("cookieJar == null");
            }
            this.f1051i = interfaceC0516n;
            return this;
        }

        /* renamed from: a */
        private a m1015a(InterfaceC0519q interfaceC0519q) {
            if (interfaceC0519q == null) {
                throw new NullPointerException("dns == null");
            }
            this.f1062t = interfaceC0519q;
            return this;
        }

        /* renamed from: a */
        private a m1016a(AbstractC0520r.a aVar) {
            if (aVar == null) {
                throw new NullPointerException("eventListenerFactory == null");
            }
            this.f1049g = aVar;
            return this;
        }

        /* renamed from: a */
        private a m1017a(AbstractC0520r abstractC0520r) {
            if (abstractC0520r == null) {
                throw new NullPointerException("eventListener == null");
            }
            this.f1049g = AbstractC0520r.m810a(abstractC0520r);
            return this;
        }

        /* renamed from: a */
        private a m1018a(ProxySelector proxySelector) {
            this.f1050h = proxySelector;
            return this;
        }

        /* renamed from: a */
        private a m1019a(List<EnumC0492aa> list) {
            ArrayList arrayList = new ArrayList(list);
            if (!arrayList.contains(EnumC0492aa.HTTP_1_1)) {
                throw new IllegalArgumentException("protocols doesn't contain http/1.1: " + arrayList);
            }
            if (arrayList.contains(EnumC0492aa.HTTP_1_0)) {
                throw new IllegalArgumentException("protocols must not contain http/1.0: " + arrayList);
            }
            if (arrayList.contains(null)) {
                throw new IllegalArgumentException("protocols must not contain null");
            }
            arrayList.remove(EnumC0492aa.SPDY_3);
            this.f1045c = Collections.unmodifiableList(arrayList);
            return this;
        }

        /* renamed from: a */
        private a m1020a(SocketFactory socketFactory) {
            if (socketFactory == null) {
                throw new NullPointerException("socketFactory == null");
            }
            this.f1054l = socketFactory;
            return this;
        }

        /* renamed from: a */
        private a m1021a(SSLSocketFactory sSLSocketFactory) {
            if (sSLSocketFactory == null) {
                throw new NullPointerException("sslSocketFactory == null");
            }
            X509TrustManager mo466a = C0481e.m489b().mo466a(sSLSocketFactory);
            if (mo466a != null) {
                this.f1055m = sSLSocketFactory;
                this.f1056n = C0481e.m489b().mo463a(mo466a);
                return this;
            }
            throw new IllegalStateException("Unable to extract the trust manager on " + C0481e.m489b() + ", sslSocketFactory is " + sSLSocketFactory.getClass());
        }

        /* renamed from: a */
        private a m1022a(SSLSocketFactory sSLSocketFactory, X509TrustManager x509TrustManager) {
            if (sSLSocketFactory == null) {
                throw new NullPointerException("sslSocketFactory == null");
            }
            if (x509TrustManager == null) {
                throw new NullPointerException("trustManager == null");
            }
            this.f1055m = sSLSocketFactory;
            this.f1056n = C0481e.m489b().mo463a(x509TrustManager);
            return this;
        }

        /* renamed from: a */
        private void m1023a(@Nullable InterfaceC0435f interfaceC0435f) {
            this.f1053k = interfaceC0435f;
            this.f1052j = null;
        }

        /* renamed from: b */
        private a m1024b(InterfaceC0503b interfaceC0503b) {
            if (interfaceC0503b == null) {
                throw new NullPointerException("proxyAuthenticator == null");
            }
            this.f1059q = interfaceC0503b;
            return this;
        }

        /* renamed from: b */
        private a m1025b(InterfaceC0525w interfaceC0525w) {
            this.f1047e.add(interfaceC0525w);
            return this;
        }

        /* renamed from: b */
        private a m1026b(List<C0514l> list) {
            this.f1046d = C0439c.m140a(list);
            return this;
        }

        /* renamed from: d */
        private a m1027d(long j, TimeUnit timeUnit) {
            this.f1042A = m1010a(C2518v.f9555av, j, timeUnit);
            return this;
        }

        /* renamed from: f */
        private List<InterfaceC0525w> m1028f() {
            return this.f1047e;
        }

        /* renamed from: g */
        private List<InterfaceC0525w> m1029g() {
            return this.f1048f;
        }

        /* renamed from: a */
        public final a m1030a() {
            this.f1052j = null;
            this.f1053k = null;
            return this;
        }

        /* renamed from: a */
        public final a m1031a(long j, TimeUnit timeUnit) {
            this.f1066x = m1010a("timeout", j, timeUnit);
            return this;
        }

        /* renamed from: a */
        public final a m1032a(C0518p c0518p) {
            this.f1043a = c0518p;
            return this;
        }

        /* renamed from: a */
        public final a m1033a(InterfaceC0525w interfaceC0525w) {
            this.f1048f.add(interfaceC0525w);
            return this;
        }

        /* renamed from: a */
        public final a m1034a(@Nullable Proxy proxy) {
            this.f1044b = proxy;
            return this;
        }

        /* renamed from: a */
        public final a m1035a(HostnameVerifier hostnameVerifier) {
            this.f1057o = hostnameVerifier;
            return this;
        }

        /* renamed from: b */
        public final a m1036b() {
            this.f1063u = false;
            return this;
        }

        /* renamed from: b */
        public final a m1037b(long j, TimeUnit timeUnit) {
            this.f1067y = m1010a("timeout", j, timeUnit);
            return this;
        }

        /* renamed from: c */
        public final a m1038c() {
            this.f1064v = false;
            return this;
        }

        /* renamed from: c */
        public final a m1039c(long j, TimeUnit timeUnit) {
            this.f1068z = m1010a("timeout", j, timeUnit);
            return this;
        }

        /* renamed from: d */
        public final a m1040d() {
            this.f1065w = false;
            return this;
        }

        /* renamed from: e */
        public final C0528z m1041e() {
            return new C0528z(this);
        }
    }

    static {
        AbstractC0429a.f60a = new AbstractC0429a() { // from class: b.z.1
            @Override // p003b.p004a.AbstractC0429a
            /* renamed from: a */
            public final int mo45a(C0496ae.a aVar) {
                return aVar.f677c;
            }

            @Override // p003b.p004a.AbstractC0429a
            /* renamed from: a */
            public final C0442c mo46a(C0513k c0513k, C0428a c0428a, C0446g c0446g, C0498ag c0498ag) {
                if (!C0513k.f894g && !Thread.holdsLock(c0513k)) {
                    throw new AssertionError();
                }
                for (C0442c c0442c : c0513k.f897d) {
                    if (c0442c.m178a(c0428a, c0498ag)) {
                        c0446g.m210a(c0442c);
                        return c0442c;
                    }
                }
                return null;
            }

            @Override // p003b.p004a.AbstractC0429a
            /* renamed from: a */
            public final C0443d mo47a(C0513k c0513k) {
                return c0513k.f898e;
            }

            @Override // p003b.p004a.AbstractC0429a
            /* renamed from: a */
            public final C0446g mo48a(InterfaceC0507e interfaceC0507e) {
                return ((C0493ab) interfaceC0507e).f636b.f246a;
            }

            @Override // p003b.p004a.AbstractC0429a
            /* renamed from: a */
            public final InterfaceC0507e mo49a(C0528z c0528z, C0494ac c0494ac) {
                return new C0493ab(c0528z, c0494ac, true);
            }

            @Override // p003b.p004a.AbstractC0429a
            /* renamed from: a */
            public final C0524v mo50a(String str) throws MalformedURLException, UnknownHostException {
                return C0524v.m884e(str);
            }

            @Override // p003b.p004a.AbstractC0429a
            /* renamed from: a */
            public final Socket mo51a(C0513k c0513k, C0428a c0428a, C0446g c0446g) {
                if (!C0513k.f894g && !Thread.holdsLock(c0513k)) {
                    throw new AssertionError();
                }
                for (C0442c c0442c : c0513k.f897d) {
                    if (c0442c.m178a(c0428a, (C0498ag) null) && c0442c.m184e() && c0442c != c0446g.m213b()) {
                        if (!C0446g.f214h && !Thread.holdsLock(c0446g.f217c)) {
                            throw new AssertionError();
                        }
                        if (c0446g.f221g != null || c0446g.f219e.f198k.size() != 1) {
                            throw new IllegalStateException();
                        }
                        Reference<C0446g> reference = c0446g.f219e.f198k.get(0);
                        Socket m209a = c0446g.m209a(true, false, false);
                        c0446g.f219e = c0442c;
                        c0442c.f198k.add(reference);
                        return m209a;
                    }
                }
                return null;
            }

            @Override // p003b.p004a.AbstractC0429a
            /* renamed from: a */
            public final void mo52a(C0514l c0514l, SSLSocket sSLSocket, boolean z) {
                String[] m151a = c0514l.f908f != null ? C0439c.m151a(C0511i.f804a, sSLSocket.getEnabledCipherSuites(), c0514l.f908f) : sSLSocket.getEnabledCipherSuites();
                String[] m151a2 = c0514l.f909g != null ? C0439c.m151a(C0439c.f169g, sSLSocket.getEnabledProtocols(), c0514l.f909g) : sSLSocket.getEnabledProtocols();
                String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
                int m135a = C0439c.m135a(C0511i.f804a, supportedCipherSuites, "TLS_FALLBACK_SCSV");
                if (z && m135a != -1) {
                    m151a = C0439c.m152a(m151a, supportedCipherSuites[m135a]);
                }
                C0514l m756b = new C0514l.a(c0514l).m754a(m151a).m755b(m151a2).m756b();
                if (m756b.f909g != null) {
                    sSLSocket.setEnabledProtocols(m756b.f909g);
                }
                if (m756b.f908f != null) {
                    sSLSocket.setEnabledCipherSuites(m756b.f908f);
                }
            }

            @Override // p003b.p004a.AbstractC0429a
            /* renamed from: a */
            public final void mo53a(C0523u.a aVar, String str) {
                aVar.m859a(str);
            }

            @Override // p003b.p004a.AbstractC0429a
            /* renamed from: a */
            public final void mo54a(C0523u.a aVar, String str, String str2) {
                aVar.m863b(str, str2);
            }

            @Override // p003b.p004a.AbstractC0429a
            /* renamed from: a */
            public final void mo55a(a aVar, InterfaceC0435f interfaceC0435f) {
                aVar.f1053k = interfaceC0435f;
                aVar.f1052j = null;
            }

            @Override // p003b.p004a.AbstractC0429a
            /* renamed from: a */
            public final boolean mo56a(C0428a c0428a, C0428a c0428a2) {
                return c0428a.m43a(c0428a2);
            }

            @Override // p003b.p004a.AbstractC0429a
            /* renamed from: a */
            public final boolean mo57a(C0513k c0513k, C0442c c0442c) {
                if (!C0513k.f894g && !Thread.holdsLock(c0513k)) {
                    throw new AssertionError();
                }
                if (c0442c.f195h || c0513k.f895b == 0) {
                    c0513k.f897d.remove(c0442c);
                    return true;
                }
                c0513k.notifyAll();
                return false;
            }

            @Override // p003b.p004a.AbstractC0429a
            /* renamed from: b */
            public final void mo58b(C0513k c0513k, C0442c c0442c) {
                if (!C0513k.f894g && !Thread.holdsLock(c0513k)) {
                    throw new AssertionError();
                }
                if (!c0513k.f899f) {
                    c0513k.f899f = true;
                    C0513k.f893a.execute(c0513k.f896c);
                }
                c0513k.f897d.add(c0442c);
            }
        };
    }

    public C0528z() {
        this(new a());
    }

    C0528z(a aVar) {
        boolean z;
        AbstractC0484b abstractC0484b;
        this.f1018c = aVar.f1043a;
        this.f1019d = aVar.f1044b;
        this.f1020e = aVar.f1045c;
        this.f1021f = aVar.f1046d;
        this.f1022g = C0439c.m140a(aVar.f1047e);
        this.f1023h = C0439c.m140a(aVar.f1048f);
        this.f1024i = aVar.f1049g;
        this.f1025j = aVar.f1050h;
        this.f1026k = aVar.f1051i;
        this.f1027l = aVar.f1052j;
        this.f1028m = aVar.f1053k;
        this.f1029n = aVar.f1054l;
        Iterator<C0514l> it = this.f1021f.iterator();
        loop0: while (true) {
            while (it.hasNext()) {
                z = z || it.next().f906d;
            }
        }
        if (aVar.f1055m == null && z) {
            X509TrustManager m984b = m984b();
            this.f1030o = m983a(m984b);
            abstractC0484b = C0481e.m489b().mo463a(m984b);
        } else {
            this.f1030o = aVar.f1055m;
            abstractC0484b = aVar.f1056n;
        }
        this.f1031p = abstractC0484b;
        this.f1032q = aVar.f1057o;
        C0509g c0509g = aVar.f1058p;
        AbstractC0484b abstractC0484b2 = this.f1031p;
        this.f1033r = C0439c.m150a(c0509g.f769c, abstractC0484b2) ? c0509g : new C0509g(c0509g.f768b, abstractC0484b2);
        this.f1034s = aVar.f1059q;
        this.f1035t = aVar.f1060r;
        this.f1036u = aVar.f1061s;
        this.f1037v = aVar.f1062t;
        this.f1038w = aVar.f1063u;
        this.f1039x = aVar.f1064v;
        this.f1040y = aVar.f1065w;
        this.f1041z = aVar.f1066x;
        this.f1015A = aVar.f1067y;
        this.f1016B = aVar.f1068z;
        this.f1017C = aVar.f1042A;
    }

    /* renamed from: A */
    private List<InterfaceC0525w> m981A() {
        return this.f1023h;
    }

    /* renamed from: B */
    private AbstractC0520r.a m982B() {
        return this.f1024i;
    }

    /* renamed from: a */
    private static SSLSocketFactory m983a(X509TrustManager x509TrustManager) {
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, new TrustManager[]{x509TrustManager}, null);
            return sSLContext.getSocketFactory();
        } catch (GeneralSecurityException unused) {
            throw new AssertionError();
        }
    }

    /* renamed from: b */
    private static X509TrustManager m984b() {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init((KeyStore) null);
            TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
            if (trustManagers.length == 1 && (trustManagers[0] instanceof X509TrustManager)) {
                return (X509TrustManager) trustManagers[0];
            }
            throw new IllegalStateException("Unexpected default trust managers:" + Arrays.toString(trustManagers));
        } catch (GeneralSecurityException unused) {
            throw new AssertionError();
        }
    }

    /* renamed from: c */
    private int m985c() {
        return this.f1041z;
    }

    /* renamed from: d */
    private int m986d() {
        return this.f1015A;
    }

    /* renamed from: e */
    private int m987e() {
        return this.f1016B;
    }

    /* renamed from: f */
    private int m988f() {
        return this.f1017C;
    }

    /* renamed from: g */
    private Proxy m989g() {
        return this.f1019d;
    }

    /* renamed from: h */
    private ProxySelector m990h() {
        return this.f1025j;
    }

    /* renamed from: i */
    private InterfaceC0516n m991i() {
        return this.f1026k;
    }

    /* renamed from: j */
    private C0505c m992j() {
        return this.f1027l;
    }

    /* renamed from: k */
    private InterfaceC0435f m993k() {
        return this.f1027l != null ? this.f1027l.f706a : this.f1028m;
    }

    /* renamed from: l */
    private InterfaceC0519q m994l() {
        return this.f1037v;
    }

    /* renamed from: m */
    private SocketFactory m995m() {
        return this.f1029n;
    }

    /* renamed from: n */
    private SSLSocketFactory m996n() {
        return this.f1030o;
    }

    /* renamed from: o */
    private HostnameVerifier m997o() {
        return this.f1032q;
    }

    /* renamed from: p */
    private C0509g m998p() {
        return this.f1033r;
    }

    /* renamed from: q */
    private InterfaceC0503b m999q() {
        return this.f1035t;
    }

    /* renamed from: r */
    private InterfaceC0503b m1000r() {
        return this.f1034s;
    }

    /* renamed from: s */
    private C0513k m1001s() {
        return this.f1036u;
    }

    /* renamed from: t */
    private boolean m1002t() {
        return this.f1038w;
    }

    /* renamed from: u */
    private boolean m1003u() {
        return this.f1039x;
    }

    /* renamed from: v */
    private boolean m1004v() {
        return this.f1040y;
    }

    /* renamed from: w */
    private C0518p m1005w() {
        return this.f1018c;
    }

    /* renamed from: x */
    private List<EnumC0492aa> m1006x() {
        return this.f1020e;
    }

    /* renamed from: y */
    private List<C0514l> m1007y() {
        return this.f1021f;
    }

    /* renamed from: z */
    private List<InterfaceC0525w> m1008z() {
        return this.f1022g;
    }

    @Override // p003b.InterfaceC0500ai.a
    /* renamed from: a */
    public final InterfaceC0500ai mo650a(C0494ac c0494ac, AbstractC0501aj abstractC0501aj) {
        C0488a c0488a = new C0488a(c0494ac, abstractC0501aj, new Random());
        a m1009a = m1009a();
        ArrayList arrayList = new ArrayList(C0488a.f546a);
        if (!arrayList.contains(EnumC0492aa.HTTP_1_1)) {
            throw new IllegalArgumentException("protocols doesn't contain http/1.1: " + arrayList);
        }
        if (arrayList.contains(EnumC0492aa.HTTP_1_0)) {
            throw new IllegalArgumentException("protocols must not contain http/1.0: " + arrayList);
        }
        if (arrayList.contains(null)) {
            throw new IllegalArgumentException("protocols must not contain null");
        }
        arrayList.remove(EnumC0492aa.SPDY_3);
        m1009a.f1045c = Collections.unmodifiableList(arrayList);
        C0528z m1041e = m1009a.m1041e();
        int i = m1041e.f1017C;
        C0494ac m606d = c0488a.f550b.m587c().m601a("Upgrade", "websocket").m601a("Connection", "Upgrade").m601a("Sec-WebSocket-Key", c0488a.f553e).m601a("Sec-WebSocket-Version", "13").m606d();
        c0488a.f554f = AbstractC0429a.f60a.mo49a(m1041e, m606d);
        c0488a.f554f.mo568a(new C0488a.AnonymousClass2(m606d, i));
        return c0488a;
    }

    @Override // p003b.InterfaceC0507e.a
    /* renamed from: a */
    public final InterfaceC0507e mo715a(C0494ac c0494ac) {
        return new C0493ab(this, c0494ac, false);
    }

    /* renamed from: a */
    public final a m1009a() {
        return new a(this);
    }
}
