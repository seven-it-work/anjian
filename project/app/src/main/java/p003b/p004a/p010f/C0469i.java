package p003b.p004a.p010f;

import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;
import p017c.C0530a;
import p017c.C0535c;
import p017c.C0558z;
import p017c.InterfaceC0537e;
import p017c.InterfaceC0556x;
import p017c.InterfaceC0557y;

/* renamed from: b.a.f.i */
/* loaded from: classes.dex */
public final class C0469i {

    /* renamed from: l */
    static final /* synthetic */ boolean f436l = true;

    /* renamed from: b */
    long f438b;

    /* renamed from: c */
    final int f439c;

    /* renamed from: d */
    final C0467g f440d;

    /* renamed from: e */
    List<C0463c> f441e;

    /* renamed from: f */
    boolean f442f;

    /* renamed from: g */
    final b f443g;

    /* renamed from: h */
    final a f444h;

    /* renamed from: m */
    private final List<C0463c> f448m;

    /* renamed from: a */
    long f437a = 0;

    /* renamed from: i */
    final c f445i = new c();

    /* renamed from: j */
    final c f446j = new c();

    /* renamed from: k */
    EnumC0462b f447k = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b.a.f.i$a */
    /* loaded from: classes.dex */
    public final class a implements InterfaceC0556x {

        /* renamed from: c */
        static final /* synthetic */ boolean f449c = true;

        /* renamed from: e */
        private static final long f450e = 16384;

        /* renamed from: a */
        boolean f451a;

        /* renamed from: b */
        boolean f452b;

        /* renamed from: f */
        private final C0535c f454f = new C0535c();

        a() {
        }

        /* renamed from: a */
        private void m401a(boolean z) throws IOException {
            long min;
            synchronized (C0469i.this) {
                C0469i.this.f446j.m1050j_();
                while (C0469i.this.f438b <= 0 && !this.f452b && !this.f451a && C0469i.this.f447k == null) {
                    try {
                        C0469i.this.m400h();
                    } finally {
                    }
                }
                C0469i.this.f446j.m407b();
                C0469i.this.m399g();
                min = Math.min(C0469i.this.f438b, this.f454f.f1086c);
                C0469i.this.f438b -= min;
            }
            C0469i.this.f446j.m1050j_();
            try {
                C0469i.this.f440d.m338a(C0469i.this.f439c, z && min == this.f454f.f1086c, this.f454f, min);
            } finally {
            }
        }

        @Override // p017c.InterfaceC0556x
        /* renamed from: a */
        public final void mo114a(C0535c c0535c, long j) throws IOException {
            if (!f449c && Thread.holdsLock(C0469i.this)) {
                throw new AssertionError();
            }
            this.f454f.mo114a(c0535c, j);
            while (this.f454f.f1086c >= 16384) {
                m401a(false);
            }
        }

        @Override // p017c.InterfaceC0556x, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            if (!f449c && Thread.holdsLock(C0469i.this)) {
                throw new AssertionError();
            }
            synchronized (C0469i.this) {
                if (this.f451a) {
                    return;
                }
                if (!C0469i.this.f444h.f452b) {
                    if (this.f454f.f1086c > 0) {
                        while (this.f454f.f1086c > 0) {
                            m401a(true);
                        }
                    } else {
                        C0469i.this.f440d.m338a(C0469i.this.f439c, true, (C0535c) null, 0L);
                    }
                }
                synchronized (C0469i.this) {
                    this.f451a = true;
                }
                C0469i.this.f440d.f379q.m424b();
                C0469i.this.m398f();
            }
        }

        @Override // p017c.InterfaceC0556x, java.io.Flushable
        public final void flush() throws IOException {
            if (!f449c && Thread.holdsLock(C0469i.this)) {
                throw new AssertionError();
            }
            synchronized (C0469i.this) {
                C0469i.this.m399g();
            }
            while (this.f454f.f1086c > 0) {
                m401a(false);
                C0469i.this.f440d.f379q.m424b();
            }
        }

        @Override // p017c.InterfaceC0556x
        public final C0558z timeout() {
            return C0469i.this.f446j;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b.a.f.i$b */
    /* loaded from: classes.dex */
    public final class b implements InterfaceC0557y {

        /* renamed from: c */
        static final /* synthetic */ boolean f455c = true;

        /* renamed from: a */
        boolean f456a;

        /* renamed from: b */
        boolean f457b;

        /* renamed from: e */
        private final C0535c f459e = new C0535c();

        /* renamed from: f */
        private final C0535c f460f = new C0535c();

        /* renamed from: g */
        private final long f461g;

        b(long j) {
            this.f461g = j;
        }

        /* renamed from: a */
        private void m402a() throws IOException {
            C0469i.this.f445i.m1050j_();
            while (this.f460f.f1086c == 0 && !this.f457b && !this.f456a && C0469i.this.f447k == null) {
                try {
                    C0469i.this.m400h();
                } finally {
                    C0469i.this.f445i.m407b();
                }
            }
        }

        /* renamed from: b */
        private void m403b() throws IOException {
            if (this.f456a) {
                throw new IOException("stream closed");
            }
            if (C0469i.this.f447k != null) {
                throw new C0475o(C0469i.this.f447k);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final void m404a(InterfaceC0537e interfaceC0537e, long j) throws IOException {
            boolean z;
            boolean z2;
            if (!f455c && Thread.holdsLock(C0469i.this)) {
                throw new AssertionError();
            }
            while (j > 0) {
                synchronized (C0469i.this) {
                    z = this.f457b;
                    z2 = j + this.f460f.f1086c > this.f461g;
                }
                if (z2) {
                    interfaceC0537e.mo1145h(j);
                    C0469i.this.m392b(EnumC0462b.FLOW_CONTROL_ERROR);
                    return;
                }
                if (z) {
                    interfaceC0537e.mo1145h(j);
                    return;
                }
                long read = interfaceC0537e.read(this.f459e, j);
                if (read == -1) {
                    throw new EOFException();
                }
                long j2 = j - read;
                synchronized (C0469i.this) {
                    boolean z3 = this.f460f.f1086c == 0;
                    this.f460f.mo1095a((InterfaceC0557y) this.f459e);
                    if (z3) {
                        C0469i.this.notifyAll();
                    }
                }
                j = j2;
            }
        }

        @Override // p017c.InterfaceC0557y, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            synchronized (C0469i.this) {
                this.f456a = true;
                this.f460f.m1173w();
                C0469i.this.notifyAll();
            }
            C0469i.this.m398f();
        }

        @Override // p017c.InterfaceC0557y
        public final long read(C0535c c0535c, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
            synchronized (C0469i.this) {
                m402a();
                if (this.f456a) {
                    throw new IOException("stream closed");
                }
                if (C0469i.this.f447k != null) {
                    throw new C0475o(C0469i.this.f447k);
                }
                if (this.f460f.f1086c == 0) {
                    return -1L;
                }
                long read = this.f460f.read(c0535c, Math.min(j, this.f460f.f1086c));
                C0469i.this.f437a += read;
                if (C0469i.this.f437a >= C0469i.this.f440d.f375m.m453b() / 2) {
                    C0469i.this.f440d.m336a(C0469i.this.f439c, C0469i.this.f437a);
                    C0469i.this.f437a = 0L;
                }
                synchronized (C0469i.this.f440d) {
                    C0469i.this.f440d.f373k += read;
                    if (C0469i.this.f440d.f373k >= C0469i.this.f440d.f375m.m453b() / 2) {
                        C0469i.this.f440d.m336a(0, C0469i.this.f440d.f373k);
                        C0469i.this.f440d.f373k = 0L;
                    }
                }
                return read;
            }
        }

        @Override // p017c.InterfaceC0557y
        public final C0558z timeout() {
            return C0469i.this.f445i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b.a.f.i$c */
    /* loaded from: classes.dex */
    public class c extends C0530a {
        c() {
        }

        @Override // p017c.C0530a
        /* renamed from: a */
        protected final IOException mo405a(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // p017c.C0530a
        /* renamed from: a */
        protected final void mo406a() {
            C0469i.this.m392b(EnumC0462b.CANCEL);
        }

        /* renamed from: b */
        public final void m407b() throws IOException {
            if (m1051k_()) {
                throw mo405a((IOException) null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0469i(int i, C0467g c0467g, boolean z, boolean z2, List<C0463c> list) {
        if (c0467g == null) {
            throw new NullPointerException("connection == null");
        }
        if (list == null) {
            throw new NullPointerException("requestHeaders == null");
        }
        this.f439c = i;
        this.f440d = c0467g;
        this.f438b = c0467g.f376n.m453b();
        this.f443g = new b(c0467g.f375m.m453b());
        this.f444h = new a();
        this.f443g.f457b = z2;
        this.f444h.f452b = z;
        this.f448m = list;
    }

    /* renamed from: a */
    private void m378a(InterfaceC0537e interfaceC0537e, int i) throws IOException {
        if (!f436l && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        this.f443g.m404a(interfaceC0537e, i);
    }

    /* renamed from: a */
    private void m379a(List<C0463c> list) {
        boolean z;
        if (!f436l && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            z = true;
            this.f442f = true;
            if (this.f441e == null) {
                this.f441e = list;
                z = m391a();
                notifyAll();
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(this.f441e);
                arrayList.add(null);
                arrayList.addAll(list);
                this.f441e = arrayList;
            }
        }
        if (z) {
            return;
        }
        this.f440d.m341b(this.f439c);
    }

    /* renamed from: a */
    private void m380a(List<C0463c> list, boolean z) throws IOException {
        if (!f436l && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        if (list == null) {
            throw new NullPointerException("responseHeaders == null");
        }
        boolean z2 = false;
        synchronized (this) {
            this.f442f = true;
            if (!z) {
                this.f444h.f452b = true;
                z2 = true;
            }
        }
        C0467g c0467g = this.f440d;
        c0467g.f379q.m426b(z2, this.f439c, list);
        if (z2) {
            this.f440d.f379q.m424b();
        }
    }

    /* renamed from: d */
    private boolean m381d(EnumC0462b enumC0462b) {
        if (!f436l && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            if (this.f447k != null) {
                return false;
            }
            if (this.f443g.f457b && this.f444h.f452b) {
                return false;
            }
            this.f447k = enumC0462b;
            notifyAll();
            this.f440d.m341b(this.f439c);
            return true;
        }
    }

    /* renamed from: i */
    private int m382i() {
        return this.f439c;
    }

    /* renamed from: j */
    private C0467g m383j() {
        return this.f440d;
    }

    /* renamed from: k */
    private List<C0463c> m384k() {
        return this.f448m;
    }

    /* renamed from: l */
    private synchronized EnumC0462b m385l() {
        return this.f447k;
    }

    /* renamed from: m */
    private C0558z m386m() {
        return this.f445i;
    }

    /* renamed from: n */
    private C0558z m387n() {
        return this.f446j;
    }

    /* renamed from: o */
    private InterfaceC0557y m388o() {
        return this.f443g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m389a(long j) {
        this.f438b += j;
        if (j > 0) {
            notifyAll();
        }
    }

    /* renamed from: a */
    public final void m390a(EnumC0462b enumC0462b) throws IOException {
        if (m381d(enumC0462b)) {
            this.f440d.m342b(this.f439c, enumC0462b);
        }
    }

    /* renamed from: a */
    public final synchronized boolean m391a() {
        if (this.f447k != null) {
            return false;
        }
        if ((this.f443g.f457b || this.f443g.f456a) && (this.f444h.f452b || this.f444h.f451a)) {
            if (this.f442f) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public final void m392b(EnumC0462b enumC0462b) {
        if (m381d(enumC0462b)) {
            this.f440d.m337a(this.f439c, enumC0462b);
        }
    }

    /* renamed from: b */
    public final boolean m393b() {
        return this.f440d.f364b == ((this.f439c & 1) == 1);
    }

    /* renamed from: c */
    public final synchronized List<C0463c> m394c() throws IOException {
        List<C0463c> list;
        if (!m393b()) {
            throw new IllegalStateException("servers cannot read response headers");
        }
        this.f445i.m1050j_();
        while (this.f441e == null && this.f447k == null) {
            try {
                m400h();
            } catch (Throwable th) {
                this.f445i.m407b();
                throw th;
            }
        }
        this.f445i.m407b();
        list = this.f441e;
        if (list == null) {
            throw new C0475o(this.f447k);
        }
        this.f441e = null;
        return list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final synchronized void m395c(EnumC0462b enumC0462b) {
        if (this.f447k == null) {
            this.f447k = enumC0462b;
            notifyAll();
        }
    }

    /* renamed from: d */
    public final InterfaceC0556x m396d() {
        synchronized (this) {
            if (!this.f442f && !m393b()) {
                throw new IllegalStateException("reply before requesting the sink");
            }
        }
        return this.f444h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final void m397e() {
        boolean m391a;
        if (!f436l && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            this.f443g.f457b = true;
            m391a = m391a();
            notifyAll();
        }
        if (m391a) {
            return;
        }
        this.f440d.m341b(this.f439c);
    }

    /* renamed from: f */
    final void m398f() throws IOException {
        boolean z;
        boolean m391a;
        if (!f436l && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            z = !this.f443g.f457b && this.f443g.f456a && (this.f444h.f452b || this.f444h.f451a);
            m391a = m391a();
        }
        if (z) {
            m390a(EnumC0462b.CANCEL);
        } else {
            if (m391a) {
                return;
            }
            this.f440d.m341b(this.f439c);
        }
    }

    /* renamed from: g */
    final void m399g() throws IOException {
        if (this.f444h.f451a) {
            throw new IOException("stream closed");
        }
        if (this.f444h.f452b) {
            throw new IOException("stream finished");
        }
        if (this.f447k != null) {
            throw new C0475o(this.f447k);
        }
    }

    /* renamed from: h */
    final void m400h() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException unused) {
            throw new InterruptedIOException();
        }
    }
}
