package p003b.p004a.p010f;

import android.support.v7.widget.ActivityChooserView;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import p003b.EnumC0492aa;
import p003b.p004a.AbstractRunnableC0436b;
import p003b.p004a.C0439c;
import p003b.p004a.p010f.C0468h;
import p003b.p004a.p012h.C0481e;
import p017c.C0535c;
import p017c.C0538f;
import p017c.C0548p;
import p017c.InterfaceC0536d;
import p017c.InterfaceC0537e;

/* renamed from: b.a.f.g */
/* loaded from: classes.dex */
public final class C0467g implements Closeable {

    /* renamed from: a */
    static final ExecutorService f361a = new ThreadPoolExecutor(0, (int) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 60, TimeUnit.SECONDS, new SynchronousQueue(), C0439c.m142a("OkHttp Http2Connection", true));

    /* renamed from: t */
    static final /* synthetic */ boolean f362t = true;

    /* renamed from: w */
    private static final int f363w = 16777216;

    /* renamed from: b */
    final boolean f364b;

    /* renamed from: c */
    final b f365c;

    /* renamed from: e */
    final String f367e;

    /* renamed from: f */
    int f368f;

    /* renamed from: g */
    int f369g;

    /* renamed from: h */
    boolean f370h;

    /* renamed from: i */
    final ExecutorService f371i;

    /* renamed from: j */
    final InterfaceC0473m f372j;

    /* renamed from: l */
    long f374l;

    /* renamed from: p */
    final Socket f378p;

    /* renamed from: q */
    public final C0470j f379q;

    /* renamed from: r */
    public final c f380r;

    /* renamed from: u */
    private Map<Integer, C0472l> f382u;

    /* renamed from: v */
    private int f383v;

    /* renamed from: d */
    final Map<Integer, C0469i> f366d = new LinkedHashMap();

    /* renamed from: k */
    long f373k = 0;

    /* renamed from: m */
    public C0474n f375m = new C0474n();

    /* renamed from: n */
    final C0474n f376n = new C0474n();

    /* renamed from: o */
    boolean f377o = false;

    /* renamed from: s */
    final Set<Integer> f381s = new LinkedHashSet();

    /* renamed from: b.a.f.g$3, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass3 extends AbstractRunnableC0436b {

        /* renamed from: c */
        final /* synthetic */ int f391c;

        /* renamed from: d */
        final /* synthetic */ int f392d;

        /* renamed from: a */
        final /* synthetic */ boolean f390a = true;

        /* renamed from: e */
        final /* synthetic */ C0472l f393e = null;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(String str, Object[] objArr, int i, int i2) {
            super(str, objArr);
            this.f391c = i;
            this.f392d = i2;
        }

        @Override // p003b.p004a.AbstractRunnableC0436b
        /* renamed from: b */
        public final void mo121b() {
            try {
                C0467g.this.m340a(this.f390a, this.f391c, this.f392d, this.f393e);
            } catch (IOException unused) {
            }
        }
    }

    /* renamed from: b.a.f.g$4, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass4 extends AbstractRunnableC0436b {

        /* renamed from: a */
        final /* synthetic */ int f395a;

        /* renamed from: c */
        final /* synthetic */ List f396c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass4(String str, Object[] objArr, int i, List list) {
            super(str, objArr);
            this.f395a = i;
            this.f396c = list;
        }

        @Override // p003b.p004a.AbstractRunnableC0436b
        /* renamed from: b */
        public final void mo121b() {
            C0467g.this.f372j.mo438a();
            try {
                C0467g.this.f379q.m418a(this.f395a, EnumC0462b.CANCEL);
                synchronized (C0467g.this) {
                    C0467g.this.f381s.remove(Integer.valueOf(this.f395a));
                }
            } catch (IOException unused) {
            }
        }
    }

    /* renamed from: b.a.f.g$5, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass5 extends AbstractRunnableC0436b {

        /* renamed from: a */
        final /* synthetic */ int f398a;

        /* renamed from: c */
        final /* synthetic */ List f399c;

        /* renamed from: d */
        final /* synthetic */ boolean f400d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass5(String str, Object[] objArr, int i, List list, boolean z) {
            super(str, objArr);
            this.f398a = i;
            this.f399c = list;
            this.f400d = z;
        }

        @Override // p003b.p004a.AbstractRunnableC0436b
        /* renamed from: b */
        public final void mo121b() {
            C0467g.this.f372j.mo440b();
            try {
                C0467g.this.f379q.m418a(this.f398a, EnumC0462b.CANCEL);
                synchronized (C0467g.this) {
                    C0467g.this.f381s.remove(Integer.valueOf(this.f398a));
                }
            } catch (IOException unused) {
            }
        }
    }

    /* renamed from: b.a.f.g$6, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass6 extends AbstractRunnableC0436b {

        /* renamed from: a */
        final /* synthetic */ int f402a;

        /* renamed from: c */
        final /* synthetic */ C0535c f403c;

        /* renamed from: d */
        final /* synthetic */ int f404d;

        /* renamed from: e */
        final /* synthetic */ boolean f405e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass6(String str, Object[] objArr, int i, C0535c c0535c, int i2, boolean z) {
            super(str, objArr);
            this.f402a = i;
            this.f403c = c0535c;
            this.f404d = i2;
            this.f405e = z;
        }

        @Override // p003b.p004a.AbstractRunnableC0436b
        /* renamed from: b */
        public final void mo121b() {
            try {
                C0467g.this.f372j.mo439a(this.f403c, this.f404d);
                C0467g.this.f379q.m418a(this.f402a, EnumC0462b.CANCEL);
                synchronized (C0467g.this) {
                    C0467g.this.f381s.remove(Integer.valueOf(this.f402a));
                }
            } catch (IOException unused) {
            }
        }
    }

    /* renamed from: b.a.f.g$7, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass7 extends AbstractRunnableC0436b {

        /* renamed from: a */
        final /* synthetic */ int f407a;

        /* renamed from: c */
        final /* synthetic */ EnumC0462b f408c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass7(String str, Object[] objArr, int i, EnumC0462b enumC0462b) {
            super(str, objArr);
            this.f407a = i;
            this.f408c = enumC0462b;
        }

        @Override // p003b.p004a.AbstractRunnableC0436b
        /* renamed from: b */
        public final void mo121b() {
            C0467g.this.f372j.mo441c();
            synchronized (C0467g.this) {
                C0467g.this.f381s.remove(Integer.valueOf(this.f407a));
            }
        }
    }

    /* renamed from: b.a.f.g$a */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a */
        Socket f410a;

        /* renamed from: b */
        String f411b;

        /* renamed from: c */
        InterfaceC0537e f412c;

        /* renamed from: d */
        InterfaceC0536d f413d;

        /* renamed from: e */
        public b f414e = b.f417m;

        /* renamed from: f */
        InterfaceC0473m f415f = InterfaceC0473m.f480a;

        /* renamed from: g */
        boolean f416g = true;

        /* renamed from: a */
        private a m345a(b bVar) {
            this.f414e = bVar;
            return this;
        }

        /* renamed from: a */
        private a m346a(InterfaceC0473m interfaceC0473m) {
            this.f415f = interfaceC0473m;
            return this;
        }

        /* renamed from: a */
        private a m347a(Socket socket) throws IOException {
            return m349a(socket, ((InetSocketAddress) socket.getRemoteSocketAddress()).getHostName(), C0548p.m1217a(C0548p.m1229b(socket)), C0548p.m1216a(C0548p.m1221a(socket)));
        }

        /* renamed from: a */
        private C0467g m348a() throws IOException {
            return new C0467g(this);
        }

        /* renamed from: a */
        public final a m349a(Socket socket, String str, InterfaceC0537e interfaceC0537e, InterfaceC0536d interfaceC0536d) {
            this.f410a = socket;
            this.f411b = str;
            this.f412c = interfaceC0537e;
            this.f413d = interfaceC0536d;
            return this;
        }
    }

    /* renamed from: b.a.f.g$b */
    /* loaded from: classes.dex */
    public static abstract class b {

        /* renamed from: m */
        public static final b f417m = new b() { // from class: b.a.f.g.b.1
            @Override // p003b.p004a.p010f.C0467g.b
            /* renamed from: a */
            public final void mo177a(C0469i c0469i) throws IOException {
                c0469i.m390a(EnumC0462b.REFUSED_STREAM);
            }
        };

        /* renamed from: a */
        public void mo176a(C0467g c0467g) {
        }

        /* renamed from: a */
        public abstract void mo177a(C0469i c0469i) throws IOException;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b.a.f.g$c */
    /* loaded from: classes.dex */
    public class c extends AbstractRunnableC0436b implements C0468h.b {

        /* renamed from: a */
        final C0468h f418a;

        /* renamed from: b.a.f.g$c$3, reason: invalid class name */
        /* loaded from: classes.dex */
        final class AnonymousClass3 extends AbstractRunnableC0436b {

            /* renamed from: a */
            final /* synthetic */ C0474n f423a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass3(String str, Object[] objArr, C0474n c0474n) {
                super(str, objArr);
                this.f423a = c0474n;
            }

            @Override // p003b.p004a.AbstractRunnableC0436b
            /* renamed from: b */
            public final void mo121b() {
                try {
                    C0467g.this.f379q.m420a(this.f423a);
                } catch (IOException unused) {
                }
            }
        }

        c(C0468h c0468h) {
            super("OkHttp %s", C0467g.this.f367e);
            this.f418a = c0468h;
        }

        /* renamed from: b */
        private void m350b(C0474n c0474n) {
            C0467g.f361a.execute(new AnonymousClass3("OkHttp %s ACK Settings", new Object[]{C0467g.this.f367e}, c0474n));
        }

        @Override // p003b.p004a.p010f.C0468h.b
        /* renamed from: a */
        public final void mo351a() {
        }

        @Override // p003b.p004a.p010f.C0468h.b
        /* renamed from: a */
        public final void mo352a(int i, long j) {
            if (i == 0) {
                synchronized (C0467g.this) {
                    C0467g.this.f374l += j;
                    C0467g.this.notifyAll();
                }
                return;
            }
            C0469i m334a = C0467g.this.m334a(i);
            if (m334a != null) {
                synchronized (m334a) {
                    m334a.m389a(j);
                }
            }
        }

        @Override // p003b.p004a.p010f.C0468h.b
        /* renamed from: a */
        public final void mo353a(int i, EnumC0462b enumC0462b) {
            if (C0467g.m328d(i)) {
                C0467g c0467g = C0467g.this;
                c0467g.f371i.execute(new AnonymousClass7("OkHttp %s Push Reset[%s]", new Object[]{c0467g.f367e, Integer.valueOf(i)}, i, enumC0462b));
            } else {
                C0469i m341b = C0467g.this.m341b(i);
                if (m341b != null) {
                    m341b.m395c(enumC0462b);
                }
            }
        }

        @Override // p003b.p004a.p010f.C0468h.b
        /* renamed from: a */
        public final void mo354a(int i, C0538f c0538f) {
            C0469i[] c0469iArr;
            c0538f.size();
            synchronized (C0467g.this) {
                c0469iArr = (C0469i[]) C0467g.this.f366d.values().toArray(new C0469i[C0467g.this.f366d.size()]);
                C0467g.this.f370h = true;
            }
            for (C0469i c0469i : c0469iArr) {
                if (c0469i.f439c > i && c0469i.m393b()) {
                    c0469i.m395c(EnumC0462b.REFUSED_STREAM);
                    C0467g.this.m341b(c0469i.f439c);
                }
            }
        }

        @Override // p003b.p004a.p010f.C0468h.b
        /* renamed from: a */
        public final void mo355a(int i, List<C0463c> list) {
            C0467g c0467g = C0467g.this;
            synchronized (c0467g) {
                if (c0467g.f381s.contains(Integer.valueOf(i))) {
                    c0467g.m337a(i, EnumC0462b.PROTOCOL_ERROR);
                } else {
                    c0467g.f381s.add(Integer.valueOf(i));
                    c0467g.f371i.execute(new AnonymousClass4("OkHttp %s Push Request[%s]", new Object[]{c0467g.f367e, Integer.valueOf(i)}, i, list));
                }
            }
        }

        @Override // p003b.p004a.p010f.C0468h.b
        /* renamed from: a */
        public final void mo356a(C0474n c0474n) {
            int i;
            C0469i[] c0469iArr;
            long j;
            synchronized (C0467g.this) {
                int m453b = C0467g.this.f376n.m453b();
                C0467g.this.f376n.m451a(c0474n);
                C0467g.f361a.execute(new AnonymousClass3("OkHttp %s ACK Settings", new Object[]{C0467g.this.f367e}, c0474n));
                int m453b2 = C0467g.this.f376n.m453b();
                c0469iArr = null;
                if (m453b2 == -1 || m453b2 == m453b) {
                    j = 0;
                } else {
                    j = m453b2 - m453b;
                    if (!C0467g.this.f377o) {
                        C0467g c0467g = C0467g.this;
                        c0467g.f374l += j;
                        if (j > 0) {
                            c0467g.notifyAll();
                        }
                        C0467g.this.f377o = true;
                    }
                    if (!C0467g.this.f366d.isEmpty()) {
                        c0469iArr = (C0469i[]) C0467g.this.f366d.values().toArray(new C0469i[C0467g.this.f366d.size()]);
                    }
                }
                C0467g.f361a.execute(new AbstractRunnableC0436b("OkHttp %s settings", C0467g.this.f367e) { // from class: b.a.f.g.c.2
                    @Override // p003b.p004a.AbstractRunnableC0436b
                    /* renamed from: b */
                    public final void mo121b() {
                        C0467g.this.f365c.mo176a(C0467g.this);
                    }
                });
            }
            if (c0469iArr == null || j == 0) {
                return;
            }
            for (C0469i c0469i : c0469iArr) {
                synchronized (c0469i) {
                    c0469i.m389a(j);
                }
            }
        }

        @Override // p003b.p004a.p010f.C0468h.b
        /* renamed from: a */
        public final void mo357a(boolean z, int i, int i2) {
            if (!z) {
                C0467g c0467g = C0467g.this;
                C0467g.f361a.execute(new AnonymousClass3("OkHttp %s ping %08x%08x", new Object[]{c0467g.f367e, Integer.valueOf(i), Integer.valueOf(i2)}, i, i2));
                return;
            }
            C0472l m344c = C0467g.this.m344c(i);
            if (m344c != null) {
                if (m344c.f479c != -1 || m344c.f478b == -1) {
                    throw new IllegalStateException();
                }
                m344c.f479c = System.nanoTime();
                m344c.f477a.countDown();
            }
        }

        @Override // p003b.p004a.p010f.C0468h.b
        /* renamed from: a */
        public final void mo358a(boolean z, int i, InterfaceC0537e interfaceC0537e, int i2) throws IOException {
            if (C0467g.m328d(i)) {
                C0467g c0467g = C0467g.this;
                C0535c c0535c = new C0535c();
                long j = i2;
                interfaceC0537e.mo1107a(j);
                interfaceC0537e.read(c0535c, j);
                if (c0535c.f1086c == j) {
                    c0467g.f371i.execute(new AnonymousClass6("OkHttp %s Push Data[%s]", new Object[]{c0467g.f367e, Integer.valueOf(i)}, i, c0535c, i2, z));
                    return;
                }
                throw new IOException(c0535c.f1086c + " != " + i2);
            }
            C0469i m334a = C0467g.this.m334a(i);
            if (m334a == null) {
                C0467g.this.m337a(i, EnumC0462b.PROTOCOL_ERROR);
                interfaceC0537e.mo1145h(i2);
            } else {
                if (!C0469i.f436l && Thread.holdsLock(m334a)) {
                    throw new AssertionError();
                }
                m334a.f443g.m404a(interfaceC0537e, i2);
                if (z) {
                    m334a.m397e();
                }
            }
        }

        @Override // p003b.p004a.p010f.C0468h.b
        /* renamed from: a */
        public final void mo359a(boolean z, int i, List<C0463c> list) {
            boolean z2 = true;
            if (C0467g.m328d(i)) {
                C0467g c0467g = C0467g.this;
                c0467g.f371i.execute(new AnonymousClass5("OkHttp %s Push Headers[%s]", new Object[]{c0467g.f367e, Integer.valueOf(i)}, i, list, z));
                return;
            }
            synchronized (C0467g.this) {
                if (C0467g.this.f370h) {
                    return;
                }
                C0469i m334a = C0467g.this.m334a(i);
                if (m334a == null) {
                    if (i <= C0467g.this.f368f) {
                        return;
                    }
                    if (i % 2 == C0467g.this.f369g % 2) {
                        return;
                    }
                    final C0469i c0469i = new C0469i(i, C0467g.this, false, z, list);
                    C0467g.this.f368f = i;
                    C0467g.this.f366d.put(Integer.valueOf(i), c0469i);
                    C0467g.f361a.execute(new AbstractRunnableC0436b("OkHttp %s stream %d", new Object[]{C0467g.this.f367e, Integer.valueOf(i)}) { // from class: b.a.f.g.c.1
                        @Override // p003b.p004a.AbstractRunnableC0436b
                        /* renamed from: b */
                        public final void mo121b() {
                            try {
                                C0467g.this.f365c.mo177a(c0469i);
                            } catch (IOException e) {
                                C0481e.m489b().mo467a(4, "Http2Connection.Listener failure for " + C0467g.this.f367e, e);
                                try {
                                    c0469i.m390a(EnumC0462b.PROTOCOL_ERROR);
                                } catch (IOException unused) {
                                }
                            }
                        }
                    });
                    return;
                }
                if (!C0469i.f436l && Thread.holdsLock(m334a)) {
                    throw new AssertionError();
                }
                synchronized (m334a) {
                    m334a.f442f = true;
                    if (m334a.f441e == null) {
                        m334a.f441e = list;
                        z2 = m334a.m391a();
                        m334a.notifyAll();
                    } else {
                        ArrayList arrayList = new ArrayList();
                        arrayList.addAll(m334a.f441e);
                        arrayList.add(null);
                        arrayList.addAll(list);
                        m334a.f441e = arrayList;
                    }
                }
                if (!z2) {
                    m334a.f440d.m341b(m334a.f439c);
                }
                if (z) {
                    m334a.m397e();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // p003b.p004a.AbstractRunnableC0436b
        /* renamed from: b */
        public final void mo121b() {
            EnumC0462b enumC0462b;
            EnumC0462b enumC0462b2;
            C0467g c0467g;
            EnumC0462b enumC0462b3 = EnumC0462b.INTERNAL_ERROR;
            EnumC0462b enumC0462b4 = EnumC0462b.INTERNAL_ERROR;
            try {
                try {
                    try {
                        C0468h c0468h = this.f418a;
                        if (!c0468h.f427c) {
                            C0538f mo1130d = c0468h.f426b.mo1130d(C0465e.f323a.size());
                            if (C0468h.f425a.isLoggable(Level.FINE)) {
                                C0468h.f425a.fine(C0439c.m138a("<< CONNECTION %s", mo1130d.hex()));
                            }
                            if (!C0465e.f323a.equals(mo1130d)) {
                                throw C0465e.m312b("Expected a connection header but was %s", mo1130d.utf8());
                            }
                        } else if (!c0468h.m376a(true, (C0468h.b) this)) {
                            throw C0465e.m312b("Required SETTINGS preface not received", new Object[0]);
                        }
                        do {
                        } while (this.f418a.m376a(false, (C0468h.b) this));
                        enumC0462b = EnumC0462b.NO_ERROR;
                    } catch (IOException unused) {
                    }
                    try {
                        try {
                            enumC0462b2 = EnumC0462b.CANCEL;
                            c0467g = C0467g.this;
                        } catch (Throwable th) {
                            EnumC0462b enumC0462b5 = enumC0462b;
                            th = th;
                            enumC0462b3 = enumC0462b5;
                            try {
                                C0467g.this.m339a(enumC0462b3, enumC0462b4);
                            } catch (IOException unused2) {
                            }
                            C0439c.m144a(this.f418a);
                            throw th;
                        }
                    } catch (IOException unused3) {
                        enumC0462b = EnumC0462b.PROTOCOL_ERROR;
                        enumC0462b2 = EnumC0462b.PROTOCOL_ERROR;
                        c0467g = C0467g.this;
                        c0467g.m339a(enumC0462b, enumC0462b2);
                        C0439c.m144a(this.f418a);
                    }
                } catch (IOException unused4) {
                }
                c0467g.m339a(enumC0462b, enumC0462b2);
                C0439c.m144a(this.f418a);
            } catch (Throwable th2) {
                th = th2;
            }
        }

        @Override // p003b.p004a.p010f.C0468h.b
        /* renamed from: c */
        public final void mo360c() {
        }

        @Override // p003b.p004a.p010f.C0468h.b
        /* renamed from: d */
        public final void mo361d() {
        }
    }

    public C0467g(a aVar) {
        this.f372j = aVar.f415f;
        this.f364b = aVar.f416g;
        this.f365c = aVar.f414e;
        this.f369g = aVar.f416g ? 1 : 2;
        if (aVar.f416g) {
            this.f369g += 2;
        }
        this.f383v = aVar.f416g ? 1 : 2;
        if (aVar.f416g) {
            this.f375m.m450a(7, 16777216);
        }
        this.f367e = aVar.f411b;
        this.f371i = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), C0439c.m142a(C0439c.m138a("OkHttp %s Push Observer", this.f367e), true));
        this.f376n.m450a(7, 65535);
        this.f376n.m450a(5, 16384);
        this.f374l = this.f376n.m453b();
        this.f378p = aVar.f410a;
        this.f379q = new C0470j(aVar.f413d, this.f364b);
        this.f380r = new c(new C0468h(aVar.f412c, this.f364b));
    }

    /* renamed from: a */
    private C0469i m315a(List<C0463c> list, boolean z) throws IOException {
        return m335a(0, list, z);
    }

    /* renamed from: a */
    private void m316a(int i, int i2) {
        f361a.execute(new AnonymousClass3("OkHttp %s ping %08x%08x", new Object[]{this.f367e, Integer.valueOf(i), Integer.valueOf(i2)}, i, i2));
    }

    /* renamed from: a */
    private void m317a(int i, InterfaceC0537e interfaceC0537e, int i2, boolean z) throws IOException {
        C0535c c0535c = new C0535c();
        long j = i2;
        interfaceC0537e.mo1107a(j);
        interfaceC0537e.read(c0535c, j);
        if (c0535c.f1086c == j) {
            this.f371i.execute(new AnonymousClass6("OkHttp %s Push Data[%s]", new Object[]{this.f367e, Integer.valueOf(i)}, i, c0535c, i2, z));
            return;
        }
        throw new IOException(c0535c.f1086c + " != " + i2);
    }

    /* renamed from: a */
    private void m318a(int i, List<C0463c> list) {
        synchronized (this) {
            if (this.f381s.contains(Integer.valueOf(i))) {
                m337a(i, EnumC0462b.PROTOCOL_ERROR);
            } else {
                this.f381s.add(Integer.valueOf(i));
                this.f371i.execute(new AnonymousClass4("OkHttp %s Push Request[%s]", new Object[]{this.f367e, Integer.valueOf(i)}, i, list));
            }
        }
    }

    /* renamed from: a */
    private void m319a(int i, boolean z, List<C0463c> list) throws IOException {
        this.f379q.m426b(z, i, list);
    }

    /* renamed from: a */
    private void m320a(long j) {
        this.f374l += j;
        if (j > 0) {
            notifyAll();
        }
    }

    /* renamed from: a */
    private void m321a(EnumC0462b enumC0462b) throws IOException {
        synchronized (this.f379q) {
            synchronized (this) {
                if (this.f370h) {
                    return;
                }
                this.f370h = true;
                this.f379q.m419a(this.f368f, enumC0462b, C0439c.f163a);
            }
        }
    }

    /* renamed from: a */
    private void m322a(C0474n c0474n) throws IOException {
        synchronized (this.f379q) {
            synchronized (this) {
                if (this.f370h) {
                    throw new C0461a();
                }
                this.f375m.m451a(c0474n);
                this.f379q.m425b(c0474n);
            }
        }
    }

    /* renamed from: b */
    private C0469i m323b(int i, List<C0463c> list, boolean z) throws IOException {
        if (this.f364b) {
            throw new IllegalStateException("Client cannot push requests.");
        }
        return m335a(i, list, z);
    }

    /* renamed from: c */
    private static EnumC0492aa m324c() {
        return EnumC0492aa.HTTP_2;
    }

    /* renamed from: c */
    private void m325c(int i, EnumC0462b enumC0462b) {
        this.f371i.execute(new AnonymousClass7("OkHttp %s Push Reset[%s]", new Object[]{this.f367e, Integer.valueOf(i)}, i, enumC0462b));
    }

    /* renamed from: c */
    private void m326c(int i, List<C0463c> list, boolean z) {
        this.f371i.execute(new AnonymousClass5("OkHttp %s Push Headers[%s]", new Object[]{this.f367e, Integer.valueOf(i)}, i, list, z));
    }

    /* renamed from: d */
    private synchronized int m327d() {
        return this.f366d.size();
    }

    /* renamed from: d */
    static boolean m328d(int i) {
        return i != 0 && (i & 1) == 0;
    }

    /* renamed from: e */
    private C0472l m329e() throws IOException {
        int i;
        C0472l c0472l = new C0472l();
        synchronized (this) {
            if (this.f370h) {
                throw new C0461a();
            }
            i = this.f383v;
            this.f383v += 2;
            if (this.f382u == null) {
                this.f382u = new LinkedHashMap();
            }
            this.f382u.put(Integer.valueOf(i), c0472l);
        }
        m340a(false, i, 1330343787, c0472l);
        return c0472l;
    }

    /* renamed from: f */
    private void m330f() throws IOException {
        this.f379q.m424b();
    }

    /* renamed from: g */
    private void m331g() throws IOException {
        this.f379q.m415a();
        this.f379q.m425b(this.f375m);
        if (this.f375m.m453b() != 65535) {
            this.f379q.m417a(0, r0 - 65535);
        }
        new Thread(this.f380r).start();
    }

    /* renamed from: h */
    private void m332h() throws IOException {
        this.f379q.m415a();
        this.f379q.m425b(this.f375m);
        if (this.f375m.m453b() != 65535) {
            this.f379q.m417a(0, r0 - 65535);
        }
        new Thread(this.f380r).start();
    }

    /* renamed from: a */
    public final synchronized int m333a() {
        C0474n c0474n = this.f376n;
        if ((c0474n.f489i & 16) == 0) {
            return ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        }
        return c0474n.f490j[4];
    }

    /* renamed from: a */
    final synchronized C0469i m334a(int i) {
        return this.f366d.get(Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003d A[Catch: all -> 0x0069, TryCatch #0 {, blocks: (B:6:0x0006, B:8:0x000a, B:9:0x000f, B:11:0x0010, B:13:0x0025, B:15:0x002d, B:19:0x0037, B:21:0x003d, B:22:0x0046), top: B:5:0x0006, outer: #1 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final p003b.p004a.p010f.C0469i m335a(int r11, java.util.List<p003b.p004a.p010f.C0463c> r12, boolean r13) throws java.io.IOException {
        /*
            r10 = this;
            r6 = r13 ^ 1
            b.a.f.j r7 = r10.f379q
            monitor-enter(r7)
            monitor-enter(r10)     // Catch: java.lang.Throwable -> L6c
            boolean r0 = r10.f370h     // Catch: java.lang.Throwable -> L69
            if (r0 == 0) goto L10
            b.a.f.a r11 = new b.a.f.a     // Catch: java.lang.Throwable -> L69
            r11.<init>()     // Catch: java.lang.Throwable -> L69
            throw r11     // Catch: java.lang.Throwable -> L69
        L10:
            int r8 = r10.f369g     // Catch: java.lang.Throwable -> L69
            int r0 = r10.f369g     // Catch: java.lang.Throwable -> L69
            int r0 = r0 + 2
            r10.f369g = r0     // Catch: java.lang.Throwable -> L69
            b.a.f.i r9 = new b.a.f.i     // Catch: java.lang.Throwable -> L69
            r4 = 0
            r0 = r9
            r1 = r8
            r2 = r10
            r3 = r6
            r5 = r12
            r0.<init>(r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> L69
            if (r13 == 0) goto L36
            long r0 = r10.f374l     // Catch: java.lang.Throwable -> L69
            r2 = 0
            int r13 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r13 == 0) goto L36
            long r0 = r9.f438b     // Catch: java.lang.Throwable -> L69
            int r13 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r13 != 0) goto L34
            goto L36
        L34:
            r13 = 0
            goto L37
        L36:
            r13 = 1
        L37:
            boolean r0 = r9.m391a()     // Catch: java.lang.Throwable -> L69
            if (r0 == 0) goto L46
            java.util.Map<java.lang.Integer, b.a.f.i> r0 = r10.f366d     // Catch: java.lang.Throwable -> L69
            java.lang.Integer r1 = java.lang.Integer.valueOf(r8)     // Catch: java.lang.Throwable -> L69
            r0.put(r1, r9)     // Catch: java.lang.Throwable -> L69
        L46:
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L69
            if (r11 != 0) goto L4f
            b.a.f.j r11 = r10.f379q     // Catch: java.lang.Throwable -> L6c
            r11.m423a(r6, r8, r12)     // Catch: java.lang.Throwable -> L6c
            goto L60
        L4f:
            boolean r0 = r10.f364b     // Catch: java.lang.Throwable -> L6c
            if (r0 == 0) goto L5b
            java.lang.IllegalArgumentException r11 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> L6c
            java.lang.String r12 = "client streams shouldn't have associated stream IDs"
            r11.<init>(r12)     // Catch: java.lang.Throwable -> L6c
            throw r11     // Catch: java.lang.Throwable -> L6c
        L5b:
            b.a.f.j r0 = r10.f379q     // Catch: java.lang.Throwable -> L6c
            r0.m416a(r11, r8, r12)     // Catch: java.lang.Throwable -> L6c
        L60:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L6c
            if (r13 == 0) goto L68
            b.a.f.j r11 = r10.f379q
            r11.m424b()
        L68:
            return r9
        L69:
            r11 = move-exception
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L69
            throw r11     // Catch: java.lang.Throwable -> L6c
        L6c:
            r11 = move-exception
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L6c
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: p003b.p004a.p010f.C0467g.m335a(int, java.util.List, boolean):b.a.f.i");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m336a(final int i, final long j) {
        f361a.execute(new AbstractRunnableC0436b("OkHttp Window Update %s stream %d", new Object[]{this.f367e, Integer.valueOf(i)}) { // from class: b.a.f.g.2
            @Override // p003b.p004a.AbstractRunnableC0436b
            /* renamed from: b */
            public final void mo121b() {
                try {
                    C0467g.this.f379q.m417a(i, j);
                } catch (IOException unused) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m337a(final int i, final EnumC0462b enumC0462b) {
        f361a.execute(new AbstractRunnableC0436b("OkHttp %s stream %d", new Object[]{this.f367e, Integer.valueOf(i)}) { // from class: b.a.f.g.1
            @Override // p003b.p004a.AbstractRunnableC0436b
            /* renamed from: b */
            public final void mo121b() {
                try {
                    C0467g.this.m342b(i, enumC0462b);
                } catch (IOException unused) {
                }
            }
        });
    }

    /* renamed from: a */
    public final void m338a(int i, boolean z, C0535c c0535c, long j) throws IOException {
        int min;
        long j2;
        if (j == 0) {
            this.f379q.m422a(z, i, c0535c, 0);
            return;
        }
        while (j > 0) {
            synchronized (this) {
                while (this.f374l <= 0) {
                    try {
                        if (!this.f366d.containsKey(Integer.valueOf(i))) {
                            throw new IOException("stream closed");
                        }
                        wait();
                    } catch (InterruptedException unused) {
                        throw new InterruptedIOException();
                    }
                }
                min = Math.min((int) Math.min(j, this.f374l), this.f379q.f464a);
                j2 = min;
                this.f374l -= j2;
            }
            long j3 = j - j2;
            this.f379q.m422a(z && j3 == 0, i, c0535c, min);
            j = j3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00c9 A[RETURN] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void m339a(p003b.p004a.p010f.EnumC0462b r10, p003b.p004a.p010f.EnumC0462b r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 205
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p003b.p004a.p010f.C0467g.m339a(b.a.f.b, b.a.f.b):void");
    }

    /* renamed from: a */
    final void m340a(boolean z, int i, int i2, C0472l c0472l) throws IOException {
        synchronized (this.f379q) {
            if (c0472l != null) {
                try {
                    if (c0472l.f478b != -1) {
                        throw new IllegalStateException();
                    }
                    c0472l.f478b = System.nanoTime();
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.f379q.m421a(z, i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final synchronized C0469i m341b(int i) {
        C0469i remove;
        remove = this.f366d.remove(Integer.valueOf(i));
        notifyAll();
        return remove;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m342b(int i, EnumC0462b enumC0462b) throws IOException {
        this.f379q.m418a(i, enumC0462b);
    }

    /* renamed from: b */
    public final synchronized boolean m343b() {
        return this.f370h;
    }

    /* renamed from: c */
    final synchronized C0472l m344c(int i) {
        if (this.f382u == null) {
            return null;
        }
        return this.f382u.remove(Integer.valueOf(i));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        m339a(EnumC0462b.NO_ERROR, EnumC0462b.CANCEL);
    }
}
