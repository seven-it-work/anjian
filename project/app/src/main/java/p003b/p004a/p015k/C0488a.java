package p003b.p004a.p015k;

import com.cyjh.common.util.C1176s;
import com.github.kevinsawicki.http.HttpRequest;
import java.io.Closeable;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p003b.AbstractC0501aj;
import p003b.C0494ac;
import p003b.C0496ae;
import p003b.C0528z;
import p003b.EnumC0492aa;
import p003b.InterfaceC0500ai;
import p003b.InterfaceC0507e;
import p003b.InterfaceC0508f;
import p003b.p004a.AbstractC0429a;
import p003b.p004a.C0439c;
import p003b.p004a.p007c.C0442c;
import p003b.p004a.p007c.C0446g;
import p003b.p004a.p015k.C0490c;
import p017c.C0535c;
import p017c.C0538f;
import p017c.C0548p;
import p017c.InterfaceC0536d;
import p017c.InterfaceC0537e;

/* renamed from: b.a.k.a */
/* loaded from: classes.dex */
public final class C0488a implements C0490c.a, InterfaceC0500ai {

    /* renamed from: a */
    public static final List<EnumC0492aa> f546a = Collections.singletonList(EnumC0492aa.HTTP_1_1);

    /* renamed from: o */
    static final /* synthetic */ boolean f547o = true;

    /* renamed from: p */
    private static final long f548p = 16777216;

    /* renamed from: q */
    private static final long f549q = 60000;

    /* renamed from: b */
    public final C0494ac f550b;

    /* renamed from: c */
    final AbstractC0501aj f551c;

    /* renamed from: d */
    final Random f552d;

    /* renamed from: e */
    public final String f553e;

    /* renamed from: f */
    public InterfaceC0507e f554f;

    /* renamed from: g */
    C0490c f555g;

    /* renamed from: h */
    C0491d f556h;

    /* renamed from: i */
    ScheduledExecutorService f557i;

    /* renamed from: j */
    e f558j;

    /* renamed from: l */
    boolean f560l;

    /* renamed from: m */
    int f561m;

    /* renamed from: n */
    int f562n;

    /* renamed from: r */
    private final Runnable f563r;

    /* renamed from: t */
    private long f565t;

    /* renamed from: u */
    private boolean f566u;

    /* renamed from: v */
    private ScheduledFuture<?> f567v;

    /* renamed from: x */
    private String f569x;

    /* renamed from: s */
    private final ArrayDeque<C0538f> f564s = new ArrayDeque<>();

    /* renamed from: k */
    final ArrayDeque<Object> f559k = new ArrayDeque<>();

    /* renamed from: w */
    private int f568w = -1;

    /* renamed from: b.a.k.a$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 implements InterfaceC0508f {

        /* renamed from: a */
        final /* synthetic */ C0494ac f571a;

        /* renamed from: b */
        final /* synthetic */ int f572b;

        public AnonymousClass2(C0494ac c0494ac, int i) {
            this.f571a = c0494ac;
            this.f572b = i;
        }

        @Override // p003b.InterfaceC0508f
        /* renamed from: a */
        public final void mo545a(InterfaceC0507e interfaceC0507e, C0496ae c0496ae) {
            try {
                C0488a c0488a = C0488a.this;
                if (c0496ae.f664c != 101) {
                    throw new ProtocolException("Expected HTTP 101 response but was '" + c0496ae.f664c + C1176s.a.f4108a + c0496ae.f665d + "'");
                }
                String m622a = c0496ae.m622a("Connection");
                if (!"Upgrade".equalsIgnoreCase(m622a)) {
                    throw new ProtocolException("Expected 'Connection' header value 'Upgrade' but was '" + m622a + "'");
                }
                String m622a2 = c0496ae.m622a("Upgrade");
                if (!"websocket".equalsIgnoreCase(m622a2)) {
                    throw new ProtocolException("Expected 'Upgrade' header value 'websocket' but was '" + m622a2 + "'");
                }
                String m622a3 = c0496ae.m622a("Sec-WebSocket-Accept");
                String base64 = C0538f.encodeUtf8(c0488a.f553e + "258EAFA5-E914-47DA-95CA-C5AB0DC85B11").sha1().base64();
                if (!base64.equals(m622a3)) {
                    throw new ProtocolException("Expected 'Sec-WebSocket-Accept' header value '" + base64 + "' but was '" + m622a3 + "'");
                }
                C0446g mo48a = AbstractC0429a.f60a.mo48a(interfaceC0507e);
                mo48a.m215d();
                C0442c m213b = mo48a.m213b();
                C0442c.AnonymousClass1 anonymousClass1 = new C0442c.AnonymousClass1(m213b.f193f, m213b.f194g, mo48a);
                try {
                    AbstractC0501aj abstractC0501aj = C0488a.this.f551c;
                    String str = "OkHttp WebSocket " + this.f571a.f643a.m911h();
                    C0488a c0488a2 = C0488a.this;
                    long j = this.f572b;
                    synchronized (c0488a2) {
                        c0488a2.f558j = anonymousClass1;
                        c0488a2.f556h = new C0491d(anonymousClass1.f581c, anonymousClass1.f583e, c0488a2.f552d);
                        c0488a2.f557i = new ScheduledThreadPoolExecutor(1, C0439c.m142a(str, false));
                        if (j != 0) {
                            c0488a2.f557i.scheduleAtFixedRate(new d(), j, j, TimeUnit.MILLISECONDS);
                        }
                        if (!c0488a2.f559k.isEmpty()) {
                            c0488a2.m542i();
                        }
                    }
                    c0488a2.f555g = new C0490c(anonymousClass1.f581c, anonymousClass1.f582d, c0488a2);
                    mo48a.m213b().f190c.setSoTimeout(0);
                    C0488a.this.m538e();
                } catch (Exception unused) {
                    C0488a.this.m544k();
                }
            } catch (ProtocolException unused2) {
                C0488a.this.m544k();
                C0439c.m144a(c0496ae);
            }
        }

        @Override // p003b.InterfaceC0508f
        /* renamed from: a */
        public final void mo546a(IOException iOException) {
            C0488a.this.m544k();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b.a.k.a$a */
    /* loaded from: classes.dex */
    public final class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            C0488a.this.f554f.mo570c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b.a.k.a$b */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a */
        final int f575a = 1001;

        /* renamed from: b */
        final C0538f f576b = null;

        /* renamed from: c */
        final long f577c = C0488a.f549q;

        b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b.a.k.a$c */
    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a */
        final int f578a;

        /* renamed from: b */
        final C0538f f579b;

        c(int i, C0538f c0538f) {
            this.f578a = i;
            this.f579b = c0538f;
        }
    }

    /* renamed from: b.a.k.a$d */
    /* loaded from: classes.dex */
    private final class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            C0488a c0488a = C0488a.this;
            synchronized (c0488a) {
                if (c0488a.f560l) {
                    return;
                }
                C0491d c0491d = c0488a.f556h;
                try {
                    C0538f c0538f = C0538f.EMPTY;
                    synchronized (c0491d) {
                        c0491d.m562a(9, c0538f);
                    }
                } catch (IOException unused) {
                    c0488a.m544k();
                }
            }
        }
    }

    /* renamed from: b.a.k.a$e */
    /* loaded from: classes.dex */
    public static abstract class e implements Closeable {

        /* renamed from: c */
        public final boolean f581c = true;

        /* renamed from: d */
        public final InterfaceC0537e f582d;

        /* renamed from: e */
        public final InterfaceC0536d f583e;

        public e(InterfaceC0537e interfaceC0537e, InterfaceC0536d interfaceC0536d) {
            this.f582d = interfaceC0537e;
            this.f583e = interfaceC0536d;
        }
    }

    public C0488a(C0494ac c0494ac, AbstractC0501aj abstractC0501aj, Random random) {
        if (!HttpRequest.METHOD_GET.equals(c0494ac.f644b)) {
            throw new IllegalArgumentException("Request must be GET: " + c0494ac.f644b);
        }
        this.f550b = c0494ac;
        this.f551c = abstractC0501aj;
        this.f552d = random;
        byte[] bArr = new byte[16];
        random.nextBytes(bArr);
        this.f553e = C0538f.m1177of(bArr).base64();
        this.f563r = new Runnable() { // from class: b.a.k.a.1
            @Override // java.lang.Runnable
            public final void run() {
                do {
                    try {
                    } catch (IOException unused) {
                        C0488a.this.m544k();
                        return;
                    }
                } while (C0488a.this.m543j());
            }
        };
    }

    /* renamed from: a */
    private void m518a(int i, TimeUnit timeUnit) throws InterruptedException {
        this.f557i.awaitTermination(i, timeUnit);
    }

    /* renamed from: a */
    private void m519a(C0496ae c0496ae) throws ProtocolException {
        if (c0496ae.f664c != 101) {
            throw new ProtocolException("Expected HTTP 101 response but was '" + c0496ae.f664c + C1176s.a.f4108a + c0496ae.f665d + "'");
        }
        String m622a = c0496ae.m622a("Connection");
        if (!"Upgrade".equalsIgnoreCase(m622a)) {
            throw new ProtocolException("Expected 'Connection' header value 'Upgrade' but was '" + m622a + "'");
        }
        String m622a2 = c0496ae.m622a("Upgrade");
        if (!"websocket".equalsIgnoreCase(m622a2)) {
            throw new ProtocolException("Expected 'Upgrade' header value 'websocket' but was '" + m622a2 + "'");
        }
        String m622a3 = c0496ae.m622a("Sec-WebSocket-Accept");
        String base64 = C0538f.encodeUtf8(this.f553e + "258EAFA5-E914-47DA-95CA-C5AB0DC85B11").sha1().base64();
        if (base64.equals(m622a3)) {
            return;
        }
        throw new ProtocolException("Expected 'Sec-WebSocket-Accept' header value '" + base64 + "' but was '" + m622a3 + "'");
    }

    /* renamed from: a */
    private void m520a(C0528z c0528z) {
        C0528z.a m1009a = c0528z.m1009a();
        ArrayList arrayList = new ArrayList(f546a);
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
        C0494ac m606d = this.f550b.m587c().m601a("Upgrade", "websocket").m601a("Connection", "Upgrade").m601a("Sec-WebSocket-Key", this.f553e).m601a("Sec-WebSocket-Version", "13").m606d();
        this.f554f = AbstractC0429a.f60a.mo49a(m1041e, m606d);
        this.f554f.mo568a(new AnonymousClass2(m606d, i));
    }

    /* renamed from: a */
    private void m521a(String str, long j, e eVar) throws IOException {
        synchronized (this) {
            this.f558j = eVar;
            this.f556h = new C0491d(eVar.f581c, eVar.f583e, this.f552d);
            this.f557i = new ScheduledThreadPoolExecutor(1, C0439c.m142a(str, false));
            if (j != 0) {
                this.f557i.scheduleAtFixedRate(new d(), j, j, TimeUnit.MILLISECONDS);
            }
            if (!this.f559k.isEmpty()) {
                m542i();
            }
        }
        this.f555g = new C0490c(eVar.f581c, eVar.f582d, this);
    }

    /* renamed from: a */
    private synchronized boolean m522a(C0538f c0538f, int i) {
        if (!this.f560l && !this.f566u) {
            if (this.f565t + c0538f.size() > f548p) {
                m528p();
                return false;
            }
            this.f565t += c0538f.size();
            this.f559k.add(new c(i, c0538f));
            m542i();
            return true;
        }
        return false;
    }

    /* renamed from: c */
    private synchronized boolean m523c(C0538f c0538f) {
        boolean z;
        if (!this.f560l && (!this.f566u || !this.f559k.isEmpty())) {
            this.f564s.add(c0538f);
            m542i();
            z = true;
        }
        z = false;
        return z;
    }

    /* renamed from: l */
    private boolean m524l() throws IOException {
        try {
            this.f555g.m556a();
            return this.f568w == -1;
        } catch (Exception unused) {
            m544k();
            return false;
        }
    }

    /* renamed from: m */
    private void m525m() throws InterruptedException {
        if (this.f567v != null) {
            this.f567v.cancel(false);
        }
        this.f557i.shutdown();
        this.f557i.awaitTermination(10L, TimeUnit.SECONDS);
    }

    /* renamed from: n */
    private synchronized int m526n() {
        return this.f561m;
    }

    /* renamed from: o */
    private synchronized int m527o() {
        return this.f562n;
    }

    /* renamed from: p */
    private synchronized boolean m528p() {
        C0489b.m550b(1001);
        if (!this.f560l && !this.f566u) {
            this.f566u = true;
            this.f559k.add(new b());
            m542i();
            return true;
        }
        return false;
    }

    /* renamed from: q */
    private void m529q() {
        synchronized (this) {
            if (this.f560l) {
                return;
            }
            C0491d c0491d = this.f556h;
            try {
                C0538f c0538f = C0538f.EMPTY;
                synchronized (c0491d) {
                    c0491d.m562a(9, c0538f);
                }
            } catch (IOException unused) {
                m544k();
            }
        }
    }

    @Override // p003b.InterfaceC0500ai
    /* renamed from: a */
    public final C0494ac mo530a() {
        return this.f550b;
    }

    @Override // p003b.p004a.p015k.C0490c.a
    /* renamed from: a */
    public final void mo531a(int i, String str) {
        e eVar;
        if (i == -1) {
            throw new IllegalArgumentException();
        }
        synchronized (this) {
            if (this.f568w != -1) {
                throw new IllegalStateException("already closed");
            }
            this.f568w = i;
            this.f569x = str;
            if (this.f566u && this.f559k.isEmpty()) {
                eVar = this.f558j;
                this.f558j = null;
                if (this.f567v != null) {
                    this.f567v.cancel(false);
                }
                this.f557i.shutdown();
            } else {
                eVar = null;
            }
        }
        C0439c.m144a(eVar);
    }

    @Override // p003b.InterfaceC0500ai
    /* renamed from: a */
    public final boolean mo532a(C0538f c0538f) {
        if (c0538f == null) {
            throw new NullPointerException("bytes == null");
        }
        return m522a(c0538f, 2);
    }

    @Override // p003b.InterfaceC0500ai
    /* renamed from: a */
    public final boolean mo533a(String str) {
        if (str == null) {
            throw new NullPointerException("text == null");
        }
        return m522a(C0538f.encodeUtf8(str), 1);
    }

    @Override // p003b.InterfaceC0500ai
    /* renamed from: b */
    public final synchronized long mo534b() {
        return this.f565t;
    }

    @Override // p003b.p004a.p015k.C0490c.a
    /* renamed from: b */
    public final synchronized void mo535b(C0538f c0538f) {
        if (!this.f560l && (!this.f566u || !this.f559k.isEmpty())) {
            this.f564s.add(c0538f);
            m542i();
            this.f561m++;
        }
    }

    @Override // p003b.InterfaceC0500ai
    /* renamed from: c */
    public final boolean mo536c() {
        return m528p();
    }

    @Override // p003b.InterfaceC0500ai
    /* renamed from: d */
    public final void mo537d() {
        this.f554f.mo570c();
    }

    /* renamed from: e */
    public final void m538e() throws IOException {
        while (this.f568w == -1) {
            this.f555g.m556a();
        }
    }

    @Override // p003b.p004a.p015k.C0490c.a
    /* renamed from: f */
    public final void mo539f() throws IOException {
    }

    @Override // p003b.p004a.p015k.C0490c.a
    /* renamed from: g */
    public final void mo540g() throws IOException {
    }

    @Override // p003b.p004a.p015k.C0490c.a
    /* renamed from: h */
    public final synchronized void mo541h() {
        this.f562n++;
    }

    /* renamed from: i */
    final void m542i() {
        if (!f547o && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        if (this.f557i != null) {
            this.f557i.execute(this.f563r);
        }
    }

    /* renamed from: j */
    final boolean m543j() throws IOException {
        Object obj;
        synchronized (this) {
            if (this.f560l) {
                return false;
            }
            C0491d c0491d = this.f556h;
            C0538f poll = this.f564s.poll();
            e eVar = null;
            if (poll == null) {
                obj = this.f559k.poll();
                if (obj instanceof b) {
                    if (this.f568w != -1) {
                        e eVar2 = this.f558j;
                        this.f558j = null;
                        this.f557i.shutdown();
                        eVar = eVar2;
                    } else {
                        this.f567v = this.f557i.schedule(new a(), ((b) obj).f577c, TimeUnit.MILLISECONDS);
                    }
                } else if (obj == null) {
                    return false;
                }
            } else {
                obj = null;
            }
            try {
                if (poll != null) {
                    synchronized (c0491d) {
                        c0491d.m562a(10, poll);
                    }
                    return true;
                }
                if (obj instanceof c) {
                    C0538f c0538f = ((c) obj).f579b;
                    int i = ((c) obj).f578a;
                    long size = c0538f.size();
                    if (c0491d.f627g) {
                        throw new IllegalStateException("Another message writer is active. Did you call close()?");
                    }
                    c0491d.f627g = true;
                    c0491d.f626f.f630a = i;
                    c0491d.f626f.f631b = size;
                    c0491d.f626f.f632c = true;
                    c0491d.f626f.f633d = false;
                    InterfaceC0536d m1216a = C0548p.m1216a(c0491d.f626f);
                    m1216a.mo1134e(c0538f);
                    m1216a.close();
                    synchronized (this) {
                        this.f565t -= c0538f.size();
                    }
                    return true;
                }
                if (!(obj instanceof b)) {
                    throw new AssertionError();
                }
                b bVar = (b) obj;
                int i2 = bVar.f575a;
                C0538f c0538f2 = bVar.f576b;
                C0538f c0538f3 = C0538f.EMPTY;
                if (i2 != 0 || c0538f2 != null) {
                    if (i2 != 0) {
                        C0489b.m550b(i2);
                    }
                    C0535c c0535c = new C0535c();
                    c0535c.mo1153k(i2);
                    if (c0538f2 != null) {
                        c0535c.mo1134e(c0538f2);
                    }
                    c0538f3 = c0535c.mo1166p();
                }
                synchronized (c0491d) {
                    try {
                        c0491d.m562a(8, c0538f3);
                    } finally {
                        c0491d.f624d = true;
                    }
                }
                return true;
            } finally {
                C0439c.m144a(eVar);
            }
        }
    }

    /* renamed from: k */
    public final void m544k() {
        synchronized (this) {
            if (this.f560l) {
                return;
            }
            this.f560l = true;
            e eVar = this.f558j;
            this.f558j = null;
            if (this.f567v != null) {
                this.f567v.cancel(false);
            }
            if (this.f557i != null) {
                this.f557i.shutdown();
            }
            C0439c.m144a(eVar);
        }
    }
}
