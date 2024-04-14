package p003b;

import android.support.v4.app.NotificationCompat;
import java.io.IOException;
import java.util.ArrayList;
import p003b.AbstractC0520r;
import p003b.p004a.AbstractRunnableC0436b;
import p003b.p004a.C0439c;
import p003b.p004a.p005a.C0430a;
import p003b.p004a.p007c.C0440a;
import p003b.p004a.p007c.C0442c;
import p003b.p004a.p007c.C0446g;
import p003b.p004a.p008d.C0448a;
import p003b.p004a.p008d.C0449b;
import p003b.p004a.p008d.C0454g;
import p003b.p004a.p008d.C0457j;
import p003b.p004a.p008d.InterfaceC0450c;
import p003b.p004a.p012h.C0481e;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: b.ab */
/* loaded from: classes.dex */
public final class C0493ab implements InterfaceC0507e {

    /* renamed from: a */
    final C0528z f635a;

    /* renamed from: b */
    final C0457j f636b;

    /* renamed from: c */
    final AbstractC0520r f637c;

    /* renamed from: d */
    final C0494ac f638d;

    /* renamed from: e */
    final boolean f639e;

    /* renamed from: f */
    private boolean f640f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b.ab$a */
    /* loaded from: classes.dex */
    public final class a extends AbstractRunnableC0436b {

        /* renamed from: c */
        private final InterfaceC0508f f642c;

        a(InterfaceC0508f interfaceC0508f) {
            super("OkHttp %s", C0493ab.this.m574g());
            this.f642c = interfaceC0508f;
        }

        /* renamed from: c */
        private C0494ac m576c() {
            return C0493ab.this.f638d;
        }

        /* renamed from: d */
        private C0493ab m577d() {
            return C0493ab.this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final String m578a() {
            return C0493ab.this.f638d.f643a.f970l;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // p003b.p004a.AbstractRunnableC0436b
        /* renamed from: b */
        public final void mo121b() {
            IOException e;
            boolean z = true;
            try {
                try {
                    C0496ae m575h = C0493ab.this.m575h();
                    try {
                        if (C0493ab.this.f636b.f248c) {
                            this.f642c.mo546a(new IOException("Canceled"));
                        } else {
                            this.f642c.mo545a(C0493ab.this, m575h);
                        }
                    } catch (IOException e2) {
                        e = e2;
                        if (z) {
                            C0481e m489b = C0481e.m489b();
                            StringBuilder sb = new StringBuilder("Callback failure for ");
                            C0493ab c0493ab = C0493ab.this;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(c0493ab.f636b.f248c ? "canceled " : "");
                            sb2.append(c0493ab.f639e ? "web socket" : NotificationCompat.CATEGORY_CALL);
                            sb2.append(" to ");
                            sb2.append(c0493ab.m574g());
                            sb.append(sb2.toString());
                            m489b.mo467a(4, sb.toString(), e);
                        } else {
                            this.f642c.mo546a(e);
                        }
                    }
                } catch (IOException e3) {
                    e = e3;
                    z = false;
                }
            } finally {
                C0493ab.this.f635a.f1018c.m807b(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0493ab(C0528z c0528z, C0494ac c0494ac, boolean z) {
        AbstractC0520r.a aVar = c0528z.f1024i;
        this.f635a = c0528z;
        this.f638d = c0494ac;
        this.f639e = z;
        this.f636b = new C0457j(c0528z, z);
        this.f637c = aVar.mo827a();
    }

    /* renamed from: i */
    private void m563i() {
        this.f636b.f247b = C0481e.m489b().mo464a("response.body().close()");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // p003b.InterfaceC0507e
    /* renamed from: j, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public C0493ab mo573f() {
        return new C0493ab(this.f635a, this.f638d, this.f639e);
    }

    /* renamed from: k */
    private C0446g m565k() {
        return this.f636b.f246a;
    }

    /* renamed from: l */
    private String m566l() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f636b.f248c ? "canceled " : "");
        sb.append(this.f639e ? "web socket" : NotificationCompat.CATEGORY_CALL);
        sb.append(" to ");
        sb.append(m574g());
        return sb.toString();
    }

    @Override // p003b.InterfaceC0507e
    /* renamed from: a */
    public final C0494ac mo567a() {
        return this.f638d;
    }

    @Override // p003b.InterfaceC0507e
    /* renamed from: a */
    public final void mo568a(InterfaceC0508f interfaceC0508f) {
        synchronized (this) {
            if (this.f640f) {
                throw new IllegalStateException("Already Executed");
            }
            this.f640f = true;
        }
        m563i();
        this.f635a.f1018c.m805a(new a(interfaceC0508f));
    }

    @Override // p003b.InterfaceC0507e
    /* renamed from: b */
    public final C0496ae mo569b() throws IOException {
        synchronized (this) {
            if (this.f640f) {
                throw new IllegalStateException("Already Executed");
            }
            this.f640f = true;
        }
        m563i();
        try {
            this.f635a.f1018c.m806a(this);
            C0496ae m575h = m575h();
            if (m575h == null) {
                throw new IOException("Canceled");
            }
            return m575h;
        } finally {
            this.f635a.f1018c.m808b(this);
        }
    }

    @Override // p003b.InterfaceC0507e
    /* renamed from: c */
    public final void mo570c() {
        InterfaceC0450c interfaceC0450c;
        C0442c c0442c;
        C0457j c0457j = this.f636b;
        c0457j.f248c = true;
        C0446g c0446g = c0457j.f246a;
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

    @Override // p003b.InterfaceC0507e
    /* renamed from: d */
    public final synchronized boolean mo571d() {
        return this.f640f;
    }

    @Override // p003b.InterfaceC0507e
    /* renamed from: e */
    public final boolean mo572e() {
        return this.f636b.f248c;
    }

    /* renamed from: g */
    final String m574g() {
        return this.f638d.f643a.m911h();
    }

    /* renamed from: h */
    final C0496ae m575h() throws IOException {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f635a.f1022g);
        arrayList.add(this.f636b);
        arrayList.add(new C0448a(this.f635a.f1026k));
        C0528z c0528z = this.f635a;
        arrayList.add(new C0430a(c0528z.f1027l != null ? c0528z.f1027l.f706a : c0528z.f1028m));
        arrayList.add(new C0440a(this.f635a));
        if (!this.f639e) {
            arrayList.addAll(this.f635a.f1023h);
        }
        arrayList.add(new C0449b(this.f639e));
        return new C0454g(arrayList, null, null, null, 0, this.f638d).mo252a(this.f638d);
    }
}
