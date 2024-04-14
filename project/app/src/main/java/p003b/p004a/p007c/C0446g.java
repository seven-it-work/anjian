package p003b.p004a.p007c;

import java.io.IOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Proxy;
import java.net.Socket;
import java.util.concurrent.TimeUnit;
import p003b.C0428a;
import p003b.C0498ag;
import p003b.C0513k;
import p003b.C0528z;
import p003b.p004a.AbstractC0429a;
import p003b.p004a.C0439c;
import p003b.p004a.p008d.InterfaceC0450c;
import p003b.p004a.p009e.C0460a;
import p003b.p004a.p010f.C0461a;
import p003b.p004a.p010f.C0466f;
import p003b.p004a.p010f.C0475o;
import p003b.p004a.p010f.EnumC0462b;

/* renamed from: b.a.c.g */
/* loaded from: classes.dex */
public final class C0446g {

    /* renamed from: h */
    public static final /* synthetic */ boolean f214h = true;

    /* renamed from: a */
    public final C0428a f215a;

    /* renamed from: b */
    public C0498ag f216b;

    /* renamed from: c */
    public final C0513k f217c;

    /* renamed from: d */
    public final C0445f f218d;

    /* renamed from: e */
    public C0442c f219e;

    /* renamed from: f */
    public boolean f220f;

    /* renamed from: g */
    public InterfaceC0450c f221g;

    /* renamed from: i */
    private final Object f222i;

    /* renamed from: j */
    private int f223j;

    /* renamed from: k */
    private boolean f224k;

    /* renamed from: b.a.c.g$a */
    /* loaded from: classes.dex */
    public static final class a extends WeakReference<C0446g> {

        /* renamed from: a */
        public final Object f225a;

        a(C0446g c0446g, Object obj) {
            super(c0446g);
            this.f225a = obj;
        }
    }

    public C0446g(C0513k c0513k, C0428a c0428a, Object obj) {
        this.f217c = c0513k;
        this.f215a = c0428a;
        this.f218d = new C0445f(c0428a, m204e());
        this.f222i = obj;
    }

    /* renamed from: a */
    private C0442c m200a(int i, int i2, int i3, boolean z) throws IOException {
        synchronized (this.f217c) {
            if (this.f224k) {
                throw new IllegalStateException("released");
            }
            if (this.f221g != null) {
                throw new IllegalStateException("codec != null");
            }
            if (this.f220f) {
                throw new IOException("Canceled");
            }
            C0442c c0442c = this.f219e;
            if (c0442c != null && !c0442c.f195h) {
                return c0442c;
            }
            Socket socket = null;
            AbstractC0429a.f60a.mo46a(this.f217c, this.f215a, this, null);
            if (this.f219e != null) {
                return this.f219e;
            }
            C0498ag c0498ag = this.f216b;
            if (c0498ag == null) {
                c0498ag = this.f218d.m196a();
            }
            synchronized (this.f217c) {
                if (this.f220f) {
                    throw new IOException("Canceled");
                }
                AbstractC0429a.f60a.mo46a(this.f217c, this.f215a, this, c0498ag);
                if (this.f219e != null) {
                    return this.f219e;
                }
                this.f216b = c0498ag;
                this.f223j = 0;
                C0442c c0442c2 = new C0442c(this.f217c, c0498ag);
                m210a(c0442c2);
                c0442c2.m175a(i, i2, i3, z);
                m204e().m186b(c0442c2.f188a);
                synchronized (this.f217c) {
                    AbstractC0429a.f60a.mo58b(this.f217c, c0442c2);
                    if (c0442c2.m184e()) {
                        socket = AbstractC0429a.f60a.mo51a(this.f217c, this.f215a, this);
                        c0442c2 = this.f219e;
                    }
                }
                C0439c.m146a(socket);
                return c0442c2;
            }
        }
    }

    /* renamed from: a */
    private C0442c m201a(int i, int i2, int i3, boolean z, boolean z2) throws IOException {
        while (true) {
            C0442c m200a = m200a(i, i2, i3, z);
            synchronized (this.f217c) {
                if (m200a.f196i == 0) {
                    return m200a;
                }
                if (m200a.m180a(z2)) {
                    return m200a;
                }
                m215d();
            }
        }
    }

    /* renamed from: b */
    private void m202b(C0442c c0442c) {
        int size = c0442c.f198k.size();
        for (int i = 0; i < size; i++) {
            if (c0442c.f198k.get(i).get() == this) {
                c0442c.f198k.remove(i);
                return;
            }
        }
        throw new IllegalStateException();
    }

    /* renamed from: c */
    private Socket m203c(C0442c c0442c) {
        if (!f214h && !Thread.holdsLock(this.f217c)) {
            throw new AssertionError();
        }
        if (this.f221g != null || this.f219e.f198k.size() != 1) {
            throw new IllegalStateException();
        }
        Reference<C0446g> reference = this.f219e.f198k.get(0);
        Socket m209a = m209a(true, false, false);
        this.f219e = c0442c;
        c0442c.f198k.add(reference);
        return m209a;
    }

    /* renamed from: e */
    private C0443d m204e() {
        return AbstractC0429a.f60a.mo47a(this.f217c);
    }

    /* renamed from: f */
    private void m205f() {
        InterfaceC0450c interfaceC0450c;
        C0442c c0442c;
        synchronized (this.f217c) {
            this.f220f = true;
            interfaceC0450c = this.f221g;
            c0442c = this.f219e;
        }
        if (interfaceC0450c != null) {
            interfaceC0450c.mo224c();
        } else if (c0442c != null) {
            C0439c.m146a(c0442c.f189b);
        }
    }

    /* renamed from: g */
    private boolean m206g() {
        if (this.f216b != null) {
            return true;
        }
        C0445f c0445f = this.f218d;
        return c0445f.m198c() || c0445f.m197b() || c0445f.m199d();
    }

    /* renamed from: a */
    public final InterfaceC0450c m207a() {
        InterfaceC0450c interfaceC0450c;
        synchronized (this.f217c) {
            interfaceC0450c = this.f221g;
        }
        return interfaceC0450c;
    }

    /* renamed from: a */
    public final InterfaceC0450c m208a(C0528z c0528z, boolean z) {
        InterfaceC0450c c0460a;
        try {
            C0442c m201a = m201a(c0528z.f1041z, c0528z.f1015A, c0528z.f1016B, c0528z.f1040y, z);
            if (m201a.f192e != null) {
                c0460a = new C0466f(c0528z, this, m201a.f192e);
            } else {
                m201a.f190c.setSoTimeout(c0528z.f1015A);
                m201a.f193f.timeout().mo1185a(c0528z.f1015A, TimeUnit.MILLISECONDS);
                m201a.f194g.timeout().mo1185a(c0528z.f1016B, TimeUnit.MILLISECONDS);
                c0460a = new C0460a(c0528z, this, m201a.f193f, m201a.f194g);
            }
            synchronized (this.f217c) {
                this.f221g = c0460a;
            }
            return c0460a;
        } catch (IOException e) {
            throw new C0444e(e);
        }
    }

    /* renamed from: a */
    public final Socket m209a(boolean z, boolean z2, boolean z3) {
        Socket socket;
        if (!f214h && !Thread.holdsLock(this.f217c)) {
            throw new AssertionError();
        }
        if (z3) {
            this.f221g = null;
        }
        if (z2) {
            this.f224k = true;
        }
        if (this.f219e != null) {
            if (z) {
                this.f219e.f195h = true;
            }
            if (this.f221g == null && (this.f224k || this.f219e.f195h)) {
                m202b(this.f219e);
                if (this.f219e.f198k.isEmpty()) {
                    this.f219e.f199l = System.nanoTime();
                    if (AbstractC0429a.f60a.mo57a(this.f217c, this.f219e)) {
                        socket = this.f219e.f190c;
                        this.f219e = null;
                        return socket;
                    }
                }
                socket = null;
                this.f219e = null;
                return socket;
            }
        }
        return null;
    }

    /* renamed from: a */
    public final void m210a(C0442c c0442c) {
        if (!f214h && !Thread.holdsLock(this.f217c)) {
            throw new AssertionError();
        }
        if (this.f219e != null) {
            throw new IllegalStateException();
        }
        this.f219e = c0442c;
        c0442c.f198k.add(new a(this, this.f222i));
    }

    /* renamed from: a */
    public final void m211a(IOException iOException) {
        boolean z;
        Socket m209a;
        synchronized (this.f217c) {
            if (iOException instanceof C0475o) {
                C0475o c0475o = (C0475o) iOException;
                if (c0475o.errorCode == EnumC0462b.REFUSED_STREAM) {
                    this.f223j++;
                }
                if (c0475o.errorCode == EnumC0462b.REFUSED_STREAM) {
                    if (this.f223j > 1) {
                    }
                    z = false;
                    m209a = m209a(z, false, true);
                }
                this.f216b = null;
                z = true;
                m209a = m209a(z, false, true);
            } else {
                if (this.f219e != null && (!this.f219e.m184e() || (iOException instanceof C0461a))) {
                    if (this.f219e.f196i == 0) {
                        if (this.f216b != null && iOException != null) {
                            C0445f c0445f = this.f218d;
                            C0498ag c0498ag = this.f216b;
                            if (c0498ag.f695b.type() != Proxy.Type.DIRECT && c0445f.f205a.f55g != null) {
                                c0445f.f205a.f55g.connectFailed(c0445f.f205a.f49a.m903a(), c0498ag.f695b.address(), iOException);
                            }
                            c0445f.f206b.m185a(c0498ag);
                        }
                        this.f216b = null;
                    }
                    z = true;
                    m209a = m209a(z, false, true);
                }
                z = false;
                m209a = m209a(z, false, true);
            }
        }
        C0439c.m146a(m209a);
    }

    /* renamed from: a */
    public final void m212a(boolean z, InterfaceC0450c interfaceC0450c) {
        Socket m209a;
        synchronized (this.f217c) {
            if (interfaceC0450c != null) {
                if (interfaceC0450c == this.f221g) {
                    if (!z) {
                        this.f219e.f196i++;
                    }
                    m209a = m209a(z, false, true);
                }
            }
            throw new IllegalStateException("expected " + this.f221g + " but was " + interfaceC0450c);
        }
        C0439c.m146a(m209a);
    }

    /* renamed from: b */
    public final synchronized C0442c m213b() {
        return this.f219e;
    }

    /* renamed from: c */
    public final void m214c() {
        Socket m209a;
        synchronized (this.f217c) {
            m209a = m209a(false, true, false);
        }
        C0439c.m146a(m209a);
    }

    /* renamed from: d */
    public final void m215d() {
        Socket m209a;
        synchronized (this.f217c) {
            m209a = m209a(true, false, false);
        }
        C0439c.m146a(m209a);
    }

    public final String toString() {
        C0442c m213b = m213b();
        return m213b != null ? m213b.toString() : this.f215a.toString();
    }
}
