package p003b.p004a.p009e;

import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.util.concurrent.TimeUnit;
import org.apache.commons.io.IOUtils;
import p003b.AbstractC0497af;
import p003b.C0494ac;
import p003b.C0496ae;
import p003b.C0523u;
import p003b.C0524v;
import p003b.C0528z;
import p003b.p004a.AbstractC0429a;
import p003b.p004a.C0439c;
import p003b.p004a.p007c.C0442c;
import p003b.p004a.p007c.C0446g;
import p003b.p004a.p008d.C0452e;
import p003b.p004a.p008d.C0455h;
import p003b.p004a.p008d.C0456i;
import p003b.p004a.p008d.C0458k;
import p003b.p004a.p008d.InterfaceC0450c;
import p017c.C0535c;
import p017c.C0542j;
import p017c.C0548p;
import p017c.C0558z;
import p017c.InterfaceC0536d;
import p017c.InterfaceC0537e;
import p017c.InterfaceC0556x;
import p017c.InterfaceC0557y;

/* renamed from: b.a.e.a */
/* loaded from: classes.dex */
public final class C0460a implements InterfaceC0450c {

    /* renamed from: g */
    private static final int f257g = 0;

    /* renamed from: h */
    private static final int f258h = 1;

    /* renamed from: i */
    private static final int f259i = 2;

    /* renamed from: j */
    private static final int f260j = 3;

    /* renamed from: k */
    private static final int f261k = 4;

    /* renamed from: l */
    private static final int f262l = 5;

    /* renamed from: m */
    private static final int f263m = 6;

    /* renamed from: b */
    final C0528z f264b;

    /* renamed from: c */
    final C0446g f265c;

    /* renamed from: d */
    final InterfaceC0537e f266d;

    /* renamed from: e */
    final InterfaceC0536d f267e;

    /* renamed from: f */
    int f268f = 0;

    /* renamed from: b.a.e.a$a */
    /* loaded from: classes.dex */
    private abstract class a implements InterfaceC0557y {

        /* renamed from: a */
        protected final C0542j f269a;

        /* renamed from: b */
        protected boolean f270b;

        private a() {
            this.f269a = new C0542j(C0460a.this.f266d.timeout());
        }

        /* synthetic */ a(C0460a c0460a, byte b2) {
            this();
        }

        /* renamed from: a */
        protected final void m279a(boolean z) throws IOException {
            if (C0460a.this.f268f == 6) {
                return;
            }
            if (C0460a.this.f268f != 5) {
                throw new IllegalStateException("state: " + C0460a.this.f268f);
            }
            C0460a.m270a(this.f269a);
            C0460a.this.f268f = 6;
            if (C0460a.this.f265c != null) {
                C0460a.this.f265c.m212a(!z, C0460a.this);
            }
        }

        @Override // p017c.InterfaceC0557y
        public C0558z timeout() {
            return this.f269a;
        }
    }

    /* renamed from: b.a.e.a$b */
    /* loaded from: classes.dex */
    private final class b implements InterfaceC0556x {

        /* renamed from: b */
        private final C0542j f273b;

        /* renamed from: c */
        private boolean f274c;

        b() {
            this.f273b = new C0542j(C0460a.this.f267e.timeout());
        }

        @Override // p017c.InterfaceC0556x
        /* renamed from: a */
        public final void mo114a(C0535c c0535c, long j) throws IOException {
            if (this.f274c) {
                throw new IllegalStateException("closed");
            }
            if (j == 0) {
                return;
            }
            C0460a.this.f267e.mo1160m(j);
            C0460a.this.f267e.mo1114b(IOUtils.LINE_SEPARATOR_WINDOWS);
            C0460a.this.f267e.mo114a(c0535c, j);
            C0460a.this.f267e.mo1114b(IOUtils.LINE_SEPARATOR_WINDOWS);
        }

        @Override // p017c.InterfaceC0556x, java.io.Closeable, java.lang.AutoCloseable
        public final synchronized void close() throws IOException {
            if (this.f274c) {
                return;
            }
            this.f274c = true;
            C0460a.this.f267e.mo1114b("0\r\n\r\n");
            C0460a.m270a(this.f273b);
            C0460a.this.f268f = 3;
        }

        @Override // p017c.InterfaceC0556x, java.io.Flushable
        public final synchronized void flush() throws IOException {
            if (this.f274c) {
                return;
            }
            C0460a.this.f267e.flush();
        }

        @Override // p017c.InterfaceC0556x
        public final C0558z timeout() {
            return this.f273b;
        }
    }

    /* renamed from: b.a.e.a$c */
    /* loaded from: classes.dex */
    private class c extends a {

        /* renamed from: e */
        private static final long f275e = -1;

        /* renamed from: f */
        private final C0524v f277f;

        /* renamed from: g */
        private long f278g;

        /* renamed from: h */
        private boolean f279h;

        c(C0524v c0524v) {
            super(C0460a.this, (byte) 0);
            this.f278g = -1L;
            this.f279h = true;
            this.f277f = c0524v;
        }

        /* renamed from: a */
        private void m280a() throws IOException {
            if (this.f278g != -1) {
                C0460a.this.f266d.mo1169s();
            }
            try {
                this.f278g = C0460a.this.f266d.mo1163o();
                String trim = C0460a.this.f266d.mo1169s().trim();
                if (this.f278g < 0 || !(trim.isEmpty() || trim.startsWith(";"))) {
                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f278g + trim + "\"");
                }
                if (this.f278g == 0) {
                    this.f279h = false;
                    C0452e.m235a(C0460a.this.f264b.f1026k, this.f277f, C0460a.this.m278d());
                    m279a(true);
                }
            } catch (NumberFormatException e) {
                throw new ProtocolException(e.getMessage());
            }
        }

        @Override // p017c.InterfaceC0557y, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            if (this.f270b) {
                return;
            }
            if (this.f279h && !C0439c.m148a((InterfaceC0557y) this, TimeUnit.MILLISECONDS)) {
                m279a(false);
            }
            this.f270b = true;
        }

        @Override // p017c.InterfaceC0557y
        public final long read(C0535c c0535c, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
            if (this.f270b) {
                throw new IllegalStateException("closed");
            }
            if (!this.f279h) {
                return -1L;
            }
            if (this.f278g == 0 || this.f278g == -1) {
                if (this.f278g != -1) {
                    C0460a.this.f266d.mo1169s();
                }
                try {
                    this.f278g = C0460a.this.f266d.mo1163o();
                    String trim = C0460a.this.f266d.mo1169s().trim();
                    if (this.f278g < 0 || !(trim.isEmpty() || trim.startsWith(";"))) {
                        throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f278g + trim + "\"");
                    }
                    if (this.f278g == 0) {
                        this.f279h = false;
                        C0452e.m235a(C0460a.this.f264b.f1026k, this.f277f, C0460a.this.m278d());
                        m279a(true);
                    }
                    if (!this.f279h) {
                        return -1L;
                    }
                } catch (NumberFormatException e) {
                    throw new ProtocolException(e.getMessage());
                }
            }
            long read = C0460a.this.f266d.read(c0535c, Math.min(j, this.f278g));
            if (read == -1) {
                m279a(false);
                throw new ProtocolException("unexpected end of stream");
            }
            this.f278g -= read;
            return read;
        }
    }

    /* renamed from: b.a.e.a$d */
    /* loaded from: classes.dex */
    private final class d implements InterfaceC0556x {

        /* renamed from: b */
        private final C0542j f281b;

        /* renamed from: c */
        private boolean f282c;

        /* renamed from: d */
        private long f283d;

        d(long j) {
            this.f281b = new C0542j(C0460a.this.f267e.timeout());
            this.f283d = j;
        }

        @Override // p017c.InterfaceC0556x
        /* renamed from: a */
        public final void mo114a(C0535c c0535c, long j) throws IOException {
            if (this.f282c) {
                throw new IllegalStateException("closed");
            }
            C0439c.m143a(c0535c.f1086c, 0L, j);
            if (j <= this.f283d) {
                C0460a.this.f267e.mo114a(c0535c, j);
                this.f283d -= j;
            } else {
                throw new ProtocolException("expected " + this.f283d + " bytes but received " + j);
            }
        }

        @Override // p017c.InterfaceC0556x, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            if (this.f282c) {
                return;
            }
            this.f282c = true;
            if (this.f283d > 0) {
                throw new ProtocolException("unexpected end of stream");
            }
            C0460a.m270a(this.f281b);
            C0460a.this.f268f = 3;
        }

        @Override // p017c.InterfaceC0556x, java.io.Flushable
        public final void flush() throws IOException {
            if (this.f282c) {
                return;
            }
            C0460a.this.f267e.flush();
        }

        @Override // p017c.InterfaceC0556x
        public final C0558z timeout() {
            return this.f281b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b.a.e.a$e */
    /* loaded from: classes.dex */
    public class e extends a {

        /* renamed from: e */
        private long f285e;

        e(long j) throws IOException {
            super(C0460a.this, (byte) 0);
            this.f285e = j;
            if (this.f285e == 0) {
                m279a(true);
            }
        }

        @Override // p017c.InterfaceC0557y, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            if (this.f270b) {
                return;
            }
            if (this.f285e != 0 && !C0439c.m148a((InterfaceC0557y) this, TimeUnit.MILLISECONDS)) {
                m279a(false);
            }
            this.f270b = true;
        }

        @Override // p017c.InterfaceC0557y
        public final long read(C0535c c0535c, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
            if (this.f270b) {
                throw new IllegalStateException("closed");
            }
            if (this.f285e == 0) {
                return -1L;
            }
            long read = C0460a.this.f266d.read(c0535c, Math.min(this.f285e, j));
            if (read == -1) {
                m279a(false);
                throw new ProtocolException("unexpected end of stream");
            }
            this.f285e -= read;
            if (this.f285e == 0) {
                m279a(true);
            }
            return read;
        }
    }

    /* renamed from: b.a.e.a$f */
    /* loaded from: classes.dex */
    private class f extends a {

        /* renamed from: e */
        private boolean f287e;

        f() {
            super(C0460a.this, (byte) 0);
        }

        @Override // p017c.InterfaceC0557y, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            if (this.f270b) {
                return;
            }
            if (!this.f287e) {
                m279a(false);
            }
            this.f270b = true;
        }

        @Override // p017c.InterfaceC0557y
        public final long read(C0535c c0535c, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
            if (this.f270b) {
                throw new IllegalStateException("closed");
            }
            if (this.f287e) {
                return -1L;
            }
            long read = C0460a.this.f266d.read(c0535c, j);
            if (read != -1) {
                return read;
            }
            this.f287e = true;
            m279a(true);
            return -1L;
        }
    }

    public C0460a(C0528z c0528z, C0446g c0446g, InterfaceC0537e interfaceC0537e, InterfaceC0536d interfaceC0536d) {
        this.f264b = c0528z;
        this.f265c = c0446g;
        this.f266d = interfaceC0537e;
        this.f267e = interfaceC0536d;
    }

    /* renamed from: a */
    private InterfaceC0557y m269a(C0524v c0524v) throws IOException {
        if (this.f268f == 4) {
            this.f268f = 5;
            return new c(c0524v);
        }
        throw new IllegalStateException("state: " + this.f268f);
    }

    /* renamed from: a */
    static void m270a(C0542j c0542j) {
        C0558z c0558z = c0542j.f1093a;
        C0558z c0558z2 = C0558z.f1157c;
        if (c0558z2 == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        c0542j.f1093a = c0558z2;
        c0558z.mo1191n_();
        c0558z.mo1187d();
    }

    /* renamed from: b */
    private InterfaceC0556x m271b(long j) {
        if (this.f268f == 1) {
            this.f268f = 2;
            return new d(j);
        }
        throw new IllegalStateException("state: " + this.f268f);
    }

    /* renamed from: b */
    private InterfaceC0557y m272b(C0496ae c0496ae) throws IOException {
        if (!C0452e.m242d(c0496ae)) {
            return m276a(0L);
        }
        if ("chunked".equalsIgnoreCase(c0496ae.m622a("Transfer-Encoding"))) {
            C0524v c0524v = c0496ae.f662a.f643a;
            if (this.f268f == 4) {
                this.f268f = 5;
                return new c(c0524v);
            }
            throw new IllegalStateException("state: " + this.f268f);
        }
        long m230a = C0452e.m230a(c0496ae);
        if (m230a != -1) {
            return m276a(m230a);
        }
        if (this.f268f != 4) {
            throw new IllegalStateException("state: " + this.f268f);
        }
        if (this.f265c == null) {
            throw new IllegalStateException("streamAllocation == null");
        }
        this.f268f = 5;
        this.f265c.m215d();
        return new f();
    }

    /* renamed from: e */
    private boolean m273e() {
        return this.f268f == 6;
    }

    /* renamed from: f */
    private InterfaceC0556x m274f() {
        if (this.f268f == 1) {
            this.f268f = 2;
            return new b();
        }
        throw new IllegalStateException("state: " + this.f268f);
    }

    /* renamed from: g */
    private InterfaceC0557y m275g() throws IOException {
        if (this.f268f != 4) {
            throw new IllegalStateException("state: " + this.f268f);
        }
        if (this.f265c == null) {
            throw new IllegalStateException("streamAllocation == null");
        }
        this.f268f = 5;
        this.f265c.m215d();
        return new f();
    }

    @Override // p003b.p004a.p008d.InterfaceC0450c
    /* renamed from: a */
    public final C0496ae.a mo218a(boolean z) throws IOException {
        if (this.f268f != 1 && this.f268f != 3) {
            throw new IllegalStateException("state: " + this.f268f);
        }
        try {
            C0458k m268a = C0458k.m268a(this.f266d.mo1169s());
            C0496ae.a aVar = new C0496ae.a();
            aVar.f676b = m268a.f254d;
            aVar.f677c = m268a.f255e;
            aVar.f678d = m268a.f256f;
            C0496ae.a m642a = aVar.m642a(m278d());
            if (z && m268a.f255e == 100) {
                return null;
            }
            this.f268f = 4;
            return m642a;
        } catch (EOFException e2) {
            IOException iOException = new IOException("unexpected end of stream on " + this.f265c);
            iOException.initCause(e2);
            throw iOException;
        }
    }

    @Override // p003b.p004a.p008d.InterfaceC0450c
    /* renamed from: a */
    public final AbstractC0497af mo219a(C0496ae c0496ae) throws IOException {
        InterfaceC0557y fVar;
        if (!C0452e.m242d(c0496ae)) {
            fVar = m276a(0L);
        } else if ("chunked".equalsIgnoreCase(c0496ae.m622a("Transfer-Encoding"))) {
            C0524v c0524v = c0496ae.f662a.f643a;
            if (this.f268f != 4) {
                throw new IllegalStateException("state: " + this.f268f);
            }
            this.f268f = 5;
            fVar = new c(c0524v);
        } else {
            long m230a = C0452e.m230a(c0496ae);
            if (m230a != -1) {
                fVar = m276a(m230a);
            } else {
                if (this.f268f != 4) {
                    throw new IllegalStateException("state: " + this.f268f);
                }
                if (this.f265c == null) {
                    throw new IllegalStateException("streamAllocation == null");
                }
                this.f268f = 5;
                this.f265c.m215d();
                fVar = new f();
            }
        }
        return new C0455h(c0496ae.f667f, C0548p.m1217a(fVar));
    }

    @Override // p003b.p004a.p008d.InterfaceC0450c
    /* renamed from: a */
    public final InterfaceC0556x mo220a(C0494ac c0494ac, long j) {
        if ("chunked".equalsIgnoreCase(c0494ac.m585a("Transfer-Encoding"))) {
            if (this.f268f == 1) {
                this.f268f = 2;
                return new b();
            }
            throw new IllegalStateException("state: " + this.f268f);
        }
        if (j == -1) {
            throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
        }
        if (this.f268f == 1) {
            this.f268f = 2;
            return new d(j);
        }
        throw new IllegalStateException("state: " + this.f268f);
    }

    /* renamed from: a */
    public final InterfaceC0557y m276a(long j) throws IOException {
        if (this.f268f == 4) {
            this.f268f = 5;
            return new e(j);
        }
        throw new IllegalStateException("state: " + this.f268f);
    }

    @Override // p003b.p004a.p008d.InterfaceC0450c
    /* renamed from: a */
    public final void mo221a() throws IOException {
        this.f267e.flush();
    }

    @Override // p003b.p004a.p008d.InterfaceC0450c
    /* renamed from: a */
    public final void mo222a(C0494ac c0494ac) throws IOException {
        Proxy.Type type = this.f265c.m213b().f188a.f695b.type();
        StringBuilder sb = new StringBuilder();
        sb.append(c0494ac.f644b);
        sb.append(' ');
        if (!c0494ac.f643a.m904b() && type == Proxy.Type.HTTP) {
            sb.append(c0494ac.f643a);
        } else {
            sb.append(C0456i.m256a(c0494ac.f643a));
        }
        sb.append(" HTTP/1.1");
        m277a(c0494ac.f645c, sb.toString());
    }

    /* renamed from: a */
    public final void m277a(C0523u c0523u, String str) throws IOException {
        if (this.f268f != 0) {
            throw new IllegalStateException("state: " + this.f268f);
        }
        this.f267e.mo1114b(str).mo1114b(IOUtils.LINE_SEPARATOR_WINDOWS);
        int length = c0523u.f956a.length / 2;
        for (int i = 0; i < length; i++) {
            this.f267e.mo1114b(c0523u.m851a(i)).mo1114b(": ").mo1114b(c0523u.m854b(i)).mo1114b(IOUtils.LINE_SEPARATOR_WINDOWS);
        }
        this.f267e.mo1114b(IOUtils.LINE_SEPARATOR_WINDOWS);
        this.f268f = 1;
    }

    @Override // p003b.p004a.p008d.InterfaceC0450c
    /* renamed from: b */
    public final void mo223b() throws IOException {
        this.f267e.flush();
    }

    @Override // p003b.p004a.p008d.InterfaceC0450c
    /* renamed from: c */
    public final void mo224c() {
        C0442c m213b = this.f265c.m213b();
        if (m213b != null) {
            C0439c.m146a(m213b.f189b);
        }
    }

    /* renamed from: d */
    public final C0523u m278d() throws IOException {
        C0523u.a aVar = new C0523u.a();
        while (true) {
            String mo1169s = this.f266d.mo1169s();
            if (mo1169s.length() == 0) {
                return aVar.m861a();
            }
            AbstractC0429a.f60a.mo53a(aVar, mo1169s);
        }
    }
}
