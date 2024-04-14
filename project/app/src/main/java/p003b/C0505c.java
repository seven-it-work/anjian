package p003b;

import com.github.kevinsawicki.http.HttpRequest;
import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import javax.annotation.Nullable;
import p003b.C0494ac;
import p003b.C0496ae;
import p003b.C0523u;
import p003b.p004a.C0439c;
import p003b.p004a.p005a.C0432c;
import p003b.p004a.p005a.C0433d;
import p003b.p004a.p005a.InterfaceC0431b;
import p003b.p004a.p005a.InterfaceC0435f;
import p003b.p004a.p008d.C0452e;
import p003b.p004a.p008d.C0453f;
import p003b.p004a.p008d.C0458k;
import p003b.p004a.p011g.InterfaceC0476a;
import p003b.p004a.p012h.C0481e;
import p017c.AbstractC0540h;
import p017c.AbstractC0541i;
import p017c.C0535c;
import p017c.C0538f;
import p017c.C0548p;
import p017c.InterfaceC0536d;
import p017c.InterfaceC0537e;
import p017c.InterfaceC0556x;
import p017c.InterfaceC0557y;

/* renamed from: b.c */
/* loaded from: classes.dex */
public final class C0505c implements Closeable, Flushable {

    /* renamed from: e */
    private static final int f702e = 201105;

    /* renamed from: f */
    private static final int f703f = 0;

    /* renamed from: g */
    private static final int f704g = 1;

    /* renamed from: h */
    private static final int f705h = 2;

    /* renamed from: a */
    final InterfaceC0435f f706a;

    /* renamed from: b */
    final C0433d f707b;

    /* renamed from: c */
    int f708c;

    /* renamed from: d */
    int f709d;

    /* renamed from: i */
    private int f710i;

    /* renamed from: j */
    private int f711j;

    /* renamed from: k */
    private int f712k;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b.c$a */
    /* loaded from: classes.dex */
    public final class a implements InterfaceC0431b {

        /* renamed from: a */
        boolean f718a;

        /* renamed from: c */
        private final C0433d.a f720c;

        /* renamed from: d */
        private InterfaceC0556x f721d;

        /* renamed from: e */
        private InterfaceC0556x f722e;

        a(final C0433d.a aVar) {
            this.f720c = aVar;
            this.f721d = aVar.m101a(1);
            this.f722e = new AbstractC0540h(this.f721d) { // from class: b.c.a.1
                @Override // p017c.AbstractC0540h, p017c.InterfaceC0556x, java.io.Closeable, java.lang.AutoCloseable
                public final void close() throws IOException {
                    synchronized (C0505c.this) {
                        if (a.this.f718a) {
                            return;
                        }
                        a.this.f718a = true;
                        C0505c.this.f708c++;
                        super.close();
                        aVar.m103b();
                    }
                }
            };
        }

        @Override // p003b.p004a.p005a.InterfaceC0431b
        /* renamed from: a */
        public final void mo63a() {
            synchronized (C0505c.this) {
                if (this.f718a) {
                    return;
                }
                this.f718a = true;
                C0505c.this.f709d++;
                C0439c.m144a(this.f721d);
                try {
                    this.f720c.m104c();
                } catch (IOException unused) {
                }
            }
        }

        @Override // p003b.p004a.p005a.InterfaceC0431b
        /* renamed from: b */
        public final InterfaceC0556x mo64b() {
            return this.f722e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b.c$b */
    /* loaded from: classes.dex */
    public static class b extends AbstractC0497af {

        /* renamed from: a */
        final C0433d.c f726a;

        /* renamed from: b */
        private final InterfaceC0537e f727b;

        /* renamed from: c */
        @Nullable
        private final String f728c;

        /* renamed from: d */
        @Nullable
        private final String f729d;

        b(final C0433d.c cVar, String str, String str2) {
            this.f726a = cVar;
            this.f728c = str;
            this.f729d = str2;
            this.f727b = C0548p.m1217a(new AbstractC0541i(cVar.f135c[1]) { // from class: b.c.b.1
                @Override // p017c.AbstractC0541i, p017c.InterfaceC0557y, java.io.Closeable, java.lang.AutoCloseable
                public final void close() throws IOException {
                    cVar.close();
                    super.close();
                }
            });
        }

        @Override // p003b.AbstractC0497af
        public final long contentLength() {
            try {
                if (this.f729d != null) {
                    return Long.parseLong(this.f729d);
                }
            } catch (NumberFormatException unused) {
            }
            return -1L;
        }

        @Override // p003b.AbstractC0497af
        public final C0526x contentType() {
            if (this.f728c != null) {
                return C0526x.m956a(this.f728c);
            }
            return null;
        }

        @Override // p003b.AbstractC0497af
        public final InterfaceC0537e source() {
            return this.f727b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b.c$c */
    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: k */
        private static final String f732k;

        /* renamed from: l */
        private static final String f733l;

        /* renamed from: a */
        final String f734a;

        /* renamed from: b */
        final C0523u f735b;

        /* renamed from: c */
        final String f736c;

        /* renamed from: d */
        final EnumC0492aa f737d;

        /* renamed from: e */
        final int f738e;

        /* renamed from: f */
        final String f739f;

        /* renamed from: g */
        final C0523u f740g;

        /* renamed from: h */
        @Nullable
        final C0522t f741h;

        /* renamed from: i */
        final long f742i;

        /* renamed from: j */
        final long f743j;

        static {
            StringBuilder sb = new StringBuilder();
            C0481e.m489b();
            sb.append(C0481e.m491c());
            sb.append("-Sent-Millis");
            f732k = sb.toString();
            StringBuilder sb2 = new StringBuilder();
            C0481e.m489b();
            sb2.append(C0481e.m491c());
            sb2.append("-Received-Millis");
            f733l = sb2.toString();
        }

        c(C0496ae c0496ae) {
            this.f734a = c0496ae.f662a.f643a.toString();
            this.f735b = C0452e.m240c(c0496ae);
            this.f736c = c0496ae.f662a.f644b;
            this.f737d = c0496ae.f663b;
            this.f738e = c0496ae.f664c;
            this.f739f = c0496ae.f665d;
            this.f740g = c0496ae.f667f;
            this.f741h = c0496ae.f666e;
            this.f742i = c0496ae.f672k;
            this.f743j = c0496ae.f673l;
        }

        c(InterfaceC0557y interfaceC0557y) throws IOException {
            try {
                InterfaceC0537e m1217a = C0548p.m1217a(interfaceC0557y);
                this.f734a = m1217a.mo1169s();
                this.f736c = m1217a.mo1169s();
                C0523u.a aVar = new C0523u.a();
                int m663a = C0505c.m663a(m1217a);
                for (int i = 0; i < m663a; i++) {
                    aVar.m859a(m1217a.mo1169s());
                }
                this.f735b = aVar.m861a();
                C0458k m268a = C0458k.m268a(m1217a.mo1169s());
                this.f737d = m268a.f254d;
                this.f738e = m268a.f255e;
                this.f739f = m268a.f256f;
                C0523u.a aVar2 = new C0523u.a();
                int m663a2 = C0505c.m663a(m1217a);
                for (int i2 = 0; i2 < m663a2; i2++) {
                    aVar2.m859a(m1217a.mo1169s());
                }
                String m865c = aVar2.m865c(f732k);
                String m865c2 = aVar2.m865c(f733l);
                aVar2.m862b(f732k);
                aVar2.m862b(f733l);
                this.f742i = m865c != null ? Long.parseLong(m865c) : 0L;
                this.f743j = m865c2 != null ? Long.parseLong(m865c2) : 0L;
                this.f740g = aVar2.m861a();
                if (m689a()) {
                    String mo1169s = m1217a.mo1169s();
                    if (mo1169s.length() > 0) {
                        throw new IOException("expected \"\" but was \"" + mo1169s + "\"");
                    }
                    C0511i m728a = C0511i.m728a(m1217a.mo1169s());
                    List<Certificate> m687a = m687a(m1217a);
                    List<Certificate> m687a2 = m687a(m1217a);
                    EnumC0499ah forJavaName = !m1217a.mo1131d() ? EnumC0499ah.forJavaName(m1217a.mo1169s()) : EnumC0499ah.SSL_3_0;
                    if (forJavaName == null) {
                        throw new NullPointerException("tlsVersion == null");
                    }
                    if (m728a == null) {
                        throw new NullPointerException("cipherSuite == null");
                    }
                    this.f741h = new C0522t(forJavaName, m728a, C0439c.m140a(m687a), C0439c.m140a(m687a2));
                } else {
                    this.f741h = null;
                }
            } finally {
                interfaceC0557y.close();
            }
        }

        /* renamed from: a */
        private C0496ae m686a(C0433d.c cVar) {
            String m852a = this.f740g.m852a("Content-Type");
            String m852a2 = this.f740g.m852a("Content-Length");
            C0494ac m606d = new C0494ac.a().m599a(this.f734a).m600a(this.f736c, (AbstractC0495ad) null).m597a(this.f735b).m606d();
            C0496ae.a aVar = new C0496ae.a();
            aVar.f675a = m606d;
            aVar.f676b = this.f737d;
            aVar.f677c = this.f738e;
            aVar.f678d = this.f739f;
            C0496ae.a m642a = aVar.m642a(this.f740g);
            m642a.f681g = new b(cVar, m852a, m852a2);
            m642a.f679e = this.f741h;
            m642a.f685k = this.f742i;
            m642a.f686l = this.f743j;
            return m642a.m644a();
        }

        /* renamed from: a */
        private static List<Certificate> m687a(InterfaceC0537e interfaceC0537e) throws IOException {
            int m663a = C0505c.m663a(interfaceC0537e);
            if (m663a == -1) {
                return Collections.emptyList();
            }
            try {
                CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                ArrayList arrayList = new ArrayList(m663a);
                for (int i = 0; i < m663a; i++) {
                    String mo1169s = interfaceC0537e.mo1169s();
                    C0535c c0535c = new C0535c();
                    c0535c.mo1134e(C0538f.decodeBase64(mo1169s));
                    arrayList.add(certificateFactory.generateCertificate(c0535c.mo1135e()));
                }
                return arrayList;
            } catch (CertificateException e) {
                throw new IOException(e.getMessage());
            }
        }

        /* renamed from: a */
        private static void m688a(InterfaceC0536d interfaceC0536d, List<Certificate> list) throws IOException {
            try {
                interfaceC0536d.mo1162n(list.size()).mo1157l(10);
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    interfaceC0536d.mo1114b(C0538f.m1177of(list.get(i).getEncoded()).base64()).mo1157l(10);
                }
            } catch (CertificateEncodingException e) {
                throw new IOException(e.getMessage());
            }
        }

        /* renamed from: a */
        private boolean m689a() {
            return this.f734a.startsWith("https://");
        }

        /* renamed from: a */
        private boolean m690a(C0494ac c0494ac, C0496ae c0496ae) {
            return this.f734a.equals(c0494ac.f643a.toString()) && this.f736c.equals(c0494ac.f644b) && C0452e.m236a(c0496ae, this.f735b, c0494ac);
        }

        /* renamed from: a */
        public final void m691a(C0433d.a aVar) throws IOException {
            InterfaceC0536d m1216a = C0548p.m1216a(aVar.m101a(0));
            m1216a.mo1114b(this.f734a).mo1157l(10);
            m1216a.mo1114b(this.f736c).mo1157l(10);
            m1216a.mo1162n(this.f735b.f956a.length / 2).mo1157l(10);
            int length = this.f735b.f956a.length / 2;
            for (int i = 0; i < length; i++) {
                m1216a.mo1114b(this.f735b.m851a(i)).mo1114b(": ").mo1114b(this.f735b.m854b(i)).mo1157l(10);
            }
            m1216a.mo1114b(new C0458k(this.f737d, this.f738e, this.f739f).toString()).mo1157l(10);
            m1216a.mo1162n((this.f740g.f956a.length / 2) + 2).mo1157l(10);
            int length2 = this.f740g.f956a.length / 2;
            for (int i2 = 0; i2 < length2; i2++) {
                m1216a.mo1114b(this.f740g.m851a(i2)).mo1114b(": ").mo1114b(this.f740g.m854b(i2)).mo1157l(10);
            }
            m1216a.mo1114b(f732k).mo1114b(": ").mo1162n(this.f742i).mo1157l(10);
            m1216a.mo1114b(f733l).mo1114b(": ").mo1162n(this.f743j).mo1157l(10);
            if (m689a()) {
                m1216a.mo1157l(10);
                m1216a.mo1114b(this.f741h.f953b.f892bj).mo1157l(10);
                m688a(m1216a, this.f741h.f954c);
                m688a(m1216a, this.f741h.f955d);
                m1216a.mo1114b(this.f741h.f952a.javaName()).mo1157l(10);
            }
            m1216a.close();
        }
    }

    private C0505c(File file, long j) {
        this(file, j, InterfaceC0476a.f491a);
    }

    private C0505c(File file, long j, InterfaceC0476a interfaceC0476a) {
        this.f706a = new InterfaceC0435f() { // from class: b.c.1
            @Override // p003b.p004a.p005a.InterfaceC0435f
            /* renamed from: a */
            public final InterfaceC0431b mo115a(C0496ae c0496ae) throws IOException {
                return C0505c.this.m680a(c0496ae);
            }

            @Override // p003b.p004a.p005a.InterfaceC0435f
            /* renamed from: a */
            public final C0496ae mo116a(C0494ac c0494ac) throws IOException {
                return C0505c.this.m681a(c0494ac);
            }

            @Override // p003b.p004a.p005a.InterfaceC0435f
            /* renamed from: a */
            public final void mo117a() {
                C0505c.this.m682a();
            }

            @Override // p003b.p004a.p005a.InterfaceC0435f
            /* renamed from: a */
            public final void mo118a(C0432c c0432c) {
                C0505c.this.m683a(c0432c);
            }

            @Override // p003b.p004a.p005a.InterfaceC0435f
            /* renamed from: a */
            public final void mo119a(C0496ae c0496ae, C0496ae c0496ae2) {
                C0433d.a aVar;
                c cVar = new c(c0496ae2);
                C0433d.c cVar2 = ((b) c0496ae.f668g).f726a;
                try {
                    aVar = C0433d.this.m82a(cVar2.f133a, cVar2.f134b);
                    if (aVar != null) {
                        try {
                            cVar.m691a(aVar);
                            aVar.m103b();
                        } catch (IOException unused) {
                            C0505c.m665a(aVar);
                        }
                    }
                } catch (IOException unused2) {
                    aVar = null;
                }
            }

            @Override // p003b.p004a.p005a.InterfaceC0435f
            /* renamed from: b */
            public final void mo120b(C0494ac c0494ac) throws IOException {
                C0505c.this.m684b(c0494ac);
            }
        };
        this.f707b = C0433d.m72a(interfaceC0476a, file, j);
    }

    /* renamed from: a */
    static int m663a(InterfaceC0537e interfaceC0537e) throws IOException {
        try {
            long mo1161n = interfaceC0537e.mo1161n();
            String mo1169s = interfaceC0537e.mo1169s();
            if (mo1161n >= 0 && mo1161n <= 2147483647L && mo1169s.isEmpty()) {
                return (int) mo1161n;
            }
            throw new IOException("expected an int but was \"" + mo1161n + mo1169s + "\"");
        } catch (NumberFormatException e) {
            throw new IOException(e.getMessage());
        }
    }

    /* renamed from: a */
    private static String m664a(C0524v c0524v) {
        return C0538f.encodeUtf8(c0524v.toString()).md5().hex();
    }

    /* renamed from: a */
    static void m665a(@Nullable C0433d.a aVar) {
        if (aVar != null) {
            try {
                aVar.m104c();
            } catch (IOException unused) {
            }
        }
    }

    /* renamed from: a */
    private static void m666a(C0496ae c0496ae, C0496ae c0496ae2) {
        C0433d.a aVar;
        c cVar = new c(c0496ae2);
        C0433d.c cVar2 = ((b) c0496ae.f668g).f726a;
        try {
            aVar = C0433d.this.m82a(cVar2.f133a, cVar2.f134b);
            if (aVar != null) {
                try {
                    cVar.m691a(aVar);
                    aVar.m103b();
                } catch (IOException unused) {
                    m665a(aVar);
                }
            }
        } catch (IOException unused2) {
            aVar = null;
        }
    }

    /* renamed from: b */
    private void m667b() throws IOException {
        this.f707b.m84a();
    }

    /* renamed from: c */
    private void m668c() throws IOException {
        this.f707b.m94h();
    }

    /* renamed from: d */
    private void m669d() throws IOException {
        this.f707b.m95i();
    }

    /* renamed from: e */
    private Iterator<String> m670e() throws IOException {
        return new Iterator<String>() { // from class: b.c.2

            /* renamed from: a */
            final Iterator<C0433d.c> f714a;

            /* renamed from: b */
            @Nullable
            String f715b;

            /* renamed from: c */
            boolean f716c;

            {
                this.f714a = C0505c.this.f707b.m96j();
            }

            /* renamed from: a */
            private String m685a() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                String str = this.f715b;
                this.f715b = null;
                this.f716c = true;
                return str;
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                if (this.f715b != null) {
                    return true;
                }
                this.f716c = false;
                while (this.f714a.hasNext()) {
                    C0433d.c next = this.f714a.next();
                    try {
                        this.f715b = C0548p.m1217a(next.f135c[0]).mo1169s();
                        return true;
                    } catch (IOException unused) {
                    } finally {
                        next.close();
                    }
                }
                return false;
            }

            @Override // java.util.Iterator
            public final /* synthetic */ String next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                String str = this.f715b;
                this.f715b = null;
                this.f716c = true;
                return str;
            }

            @Override // java.util.Iterator
            public final void remove() {
                if (!this.f716c) {
                    throw new IllegalStateException("remove() before next()");
                }
                this.f714a.remove();
            }
        };
    }

    /* renamed from: f */
    private synchronized int m671f() {
        return this.f709d;
    }

    /* renamed from: g */
    private synchronized int m672g() {
        return this.f708c;
    }

    /* renamed from: h */
    private long m673h() throws IOException {
        return this.f707b.m90d();
    }

    /* renamed from: i */
    private long m674i() {
        return this.f707b.m89c();
    }

    /* renamed from: j */
    private File m675j() {
        return this.f707b.f100i;
    }

    /* renamed from: k */
    private boolean m676k() {
        return this.f707b.m92f();
    }

    /* renamed from: l */
    private synchronized int m677l() {
        return this.f710i;
    }

    /* renamed from: m */
    private synchronized int m678m() {
        return this.f711j;
    }

    /* renamed from: n */
    private synchronized int m679n() {
        return this.f712k;
    }

    @Nullable
    /* renamed from: a */
    final InterfaceC0431b m680a(C0496ae c0496ae) {
        C0433d.a aVar;
        String str = c0496ae.f662a.f644b;
        if (C0453f.m244a(c0496ae.f662a.f644b)) {
            try {
                m684b(c0496ae.f662a);
            } catch (IOException unused) {
            }
            return null;
        }
        if (!str.equals(HttpRequest.METHOD_GET) || C0452e.m238b(c0496ae)) {
            return null;
        }
        c cVar = new c(c0496ae);
        try {
            aVar = this.f707b.m82a(m664a(c0496ae.f662a.f643a), -1L);
            if (aVar == null) {
                return null;
            }
            try {
                cVar.m691a(aVar);
                return new a(aVar);
            } catch (IOException unused2) {
                m665a(aVar);
                return null;
            }
        } catch (IOException unused3) {
            aVar = null;
        }
    }

    @Nullable
    /* renamed from: a */
    final C0496ae m681a(C0494ac c0494ac) {
        try {
            C0433d.c m83a = this.f707b.m83a(m664a(c0494ac.f643a));
            if (m83a == null) {
                return null;
            }
            try {
                boolean z = false;
                c cVar = new c(m83a.f135c[0]);
                String m852a = cVar.f740g.m852a("Content-Type");
                String m852a2 = cVar.f740g.m852a("Content-Length");
                C0494ac m606d = new C0494ac.a().m599a(cVar.f734a).m600a(cVar.f736c, (AbstractC0495ad) null).m597a(cVar.f735b).m606d();
                C0496ae.a aVar = new C0496ae.a();
                aVar.f675a = m606d;
                aVar.f676b = cVar.f737d;
                aVar.f677c = cVar.f738e;
                aVar.f678d = cVar.f739f;
                C0496ae.a m642a = aVar.m642a(cVar.f740g);
                m642a.f681g = new b(m83a, m852a, m852a2);
                m642a.f679e = cVar.f741h;
                m642a.f685k = cVar.f742i;
                m642a.f686l = cVar.f743j;
                C0496ae m644a = m642a.m644a();
                if (cVar.f734a.equals(c0494ac.f643a.toString()) && cVar.f736c.equals(c0494ac.f644b) && C0452e.m236a(m644a, cVar.f735b, c0494ac)) {
                    z = true;
                }
                if (z) {
                    return m644a;
                }
                C0439c.m144a(m644a.f668g);
                return null;
            } catch (IOException unused) {
                C0439c.m144a(m83a);
                return null;
            }
        } catch (IOException unused2) {
        }
    }

    /* renamed from: a */
    final synchronized void m682a() {
        this.f711j++;
    }

    /* renamed from: a */
    final synchronized void m683a(C0432c c0432c) {
        this.f712k++;
        if (c0432c.f67a != null) {
            this.f710i++;
        } else {
            if (c0432c.f68b != null) {
                this.f711j++;
            }
        }
    }

    /* renamed from: b */
    final void m684b(C0494ac c0494ac) throws IOException {
        this.f707b.m88b(m664a(c0494ac.f643a));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f707b.close();
    }

    @Override // java.io.Flushable
    public final void flush() throws IOException {
        this.f707b.flush();
    }
}
