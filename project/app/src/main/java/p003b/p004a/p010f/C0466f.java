package p003b.p004a.p010f;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import p003b.AbstractC0497af;
import p003b.C0494ac;
import p003b.C0496ae;
import p003b.C0523u;
import p003b.C0528z;
import p003b.EnumC0492aa;
import p003b.p004a.AbstractC0429a;
import p003b.p004a.C0439c;
import p003b.p004a.p007c.C0446g;
import p003b.p004a.p008d.C0455h;
import p003b.p004a.p008d.C0456i;
import p003b.p004a.p008d.C0458k;
import p003b.p004a.p008d.InterfaceC0450c;
import p017c.AbstractC0541i;
import p017c.C0538f;
import p017c.C0548p;
import p017c.InterfaceC0556x;
import p017c.InterfaceC0557y;

/* renamed from: b.a.f.f */
/* loaded from: classes.dex */
public final class C0466f implements InterfaceC0450c {

    /* renamed from: c */
    private static final C0538f f346c = C0538f.encodeUtf8("connection");

    /* renamed from: d */
    private static final C0538f f347d = C0538f.encodeUtf8("host");

    /* renamed from: e */
    private static final C0538f f348e = C0538f.encodeUtf8("keep-alive");

    /* renamed from: f */
    private static final C0538f f349f = C0538f.encodeUtf8("proxy-connection");

    /* renamed from: g */
    private static final C0538f f350g = C0538f.encodeUtf8("transfer-encoding");

    /* renamed from: h */
    private static final C0538f f351h = C0538f.encodeUtf8("te");

    /* renamed from: i */
    private static final C0538f f352i = C0538f.encodeUtf8("encoding");

    /* renamed from: j */
    private static final C0538f f353j = C0538f.encodeUtf8("upgrade");

    /* renamed from: k */
    private static final List<C0538f> f354k = C0439c.m141a(f346c, f347d, f348e, f349f, f351h, f350g, f352i, f353j, C0463c.f290c, C0463c.f291d, C0463c.f292e, C0463c.f293f);

    /* renamed from: l */
    private static final List<C0538f> f355l = C0439c.m141a(f346c, f347d, f348e, f349f, f351h, f350g, f352i, f353j);

    /* renamed from: b */
    final C0446g f356b;

    /* renamed from: m */
    private final C0528z f357m;

    /* renamed from: n */
    private final C0467g f358n;

    /* renamed from: o */
    private C0469i f359o;

    /* renamed from: b.a.f.f$a */
    /* loaded from: classes.dex */
    class a extends AbstractC0541i {
        a(InterfaceC0557y interfaceC0557y) {
            super(interfaceC0557y);
        }

        @Override // p017c.AbstractC0541i, p017c.InterfaceC0557y, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            C0466f.this.f356b.m212a(false, (InterfaceC0450c) C0466f.this);
            super.close();
        }
    }

    public C0466f(C0528z c0528z, C0446g c0446g, C0467g c0467g) {
        this.f357m = c0528z;
        this.f356b = c0446g;
        this.f358n = c0467g;
    }

    /* renamed from: a */
    private static C0496ae.a m313a(List<C0463c> list) throws IOException {
        C0523u.a aVar = new C0523u.a();
        int size = list.size();
        C0523u.a aVar2 = aVar;
        C0458k c0458k = null;
        for (int i = 0; i < size; i++) {
            C0463c c0463c = list.get(i);
            if (c0463c != null) {
                C0538f c0538f = c0463c.f294g;
                String utf8 = c0463c.f295h.utf8();
                if (c0538f.equals(C0463c.f289b)) {
                    c0458k = C0458k.m268a("HTTP/1.1 " + utf8);
                } else if (!f355l.contains(c0538f)) {
                    AbstractC0429a.f60a.mo54a(aVar2, c0538f.utf8(), utf8);
                }
            } else if (c0458k != null && c0458k.f255e == 100) {
                aVar2 = new C0523u.a();
                c0458k = null;
            }
        }
        if (c0458k == null) {
            throw new ProtocolException("Expected ':status' header not present");
        }
        C0496ae.a aVar3 = new C0496ae.a();
        aVar3.f676b = EnumC0492aa.HTTP_2;
        aVar3.f677c = c0458k.f255e;
        aVar3.f678d = c0458k.f256f;
        return aVar3.m642a(aVar2.m861a());
    }

    /* renamed from: b */
    private static List<C0463c> m314b(C0494ac c0494ac) {
        C0523u c0523u = c0494ac.f645c;
        ArrayList arrayList = new ArrayList((c0523u.f956a.length / 2) + 4);
        arrayList.add(new C0463c(C0463c.f290c, c0494ac.f644b));
        arrayList.add(new C0463c(C0463c.f291d, C0456i.m256a(c0494ac.f643a)));
        String m585a = c0494ac.m585a(HttpHeaders.HOST);
        if (m585a != null) {
            arrayList.add(new C0463c(C0463c.f293f, m585a));
        }
        arrayList.add(new C0463c(C0463c.f292e, c0494ac.f643a.f969k));
        int length = c0523u.f956a.length / 2;
        for (int i = 0; i < length; i++) {
            C0538f encodeUtf8 = C0538f.encodeUtf8(c0523u.m851a(i).toLowerCase(Locale.US));
            if (!f354k.contains(encodeUtf8)) {
                arrayList.add(new C0463c(encodeUtf8, c0523u.m854b(i)));
            }
        }
        return arrayList;
    }

    @Override // p003b.p004a.p008d.InterfaceC0450c
    /* renamed from: a */
    public final C0496ae.a mo218a(boolean z) throws IOException {
        List<C0463c> m394c = this.f359o.m394c();
        C0523u.a aVar = new C0523u.a();
        int size = m394c.size();
        C0523u.a aVar2 = aVar;
        C0458k c0458k = null;
        for (int i = 0; i < size; i++) {
            C0463c c0463c = m394c.get(i);
            if (c0463c != null) {
                C0538f c0538f = c0463c.f294g;
                String utf8 = c0463c.f295h.utf8();
                if (c0538f.equals(C0463c.f289b)) {
                    c0458k = C0458k.m268a("HTTP/1.1 " + utf8);
                } else if (!f355l.contains(c0538f)) {
                    AbstractC0429a.f60a.mo54a(aVar2, c0538f.utf8(), utf8);
                }
            } else if (c0458k != null && c0458k.f255e == 100) {
                aVar2 = new C0523u.a();
                c0458k = null;
            }
        }
        if (c0458k == null) {
            throw new ProtocolException("Expected ':status' header not present");
        }
        C0496ae.a aVar3 = new C0496ae.a();
        aVar3.f676b = EnumC0492aa.HTTP_2;
        aVar3.f677c = c0458k.f255e;
        aVar3.f678d = c0458k.f256f;
        C0496ae.a m642a = aVar3.m642a(aVar2.m861a());
        if (z && AbstractC0429a.f60a.mo45a(m642a) == 100) {
            return null;
        }
        return m642a;
    }

    @Override // p003b.p004a.p008d.InterfaceC0450c
    /* renamed from: a */
    public final AbstractC0497af mo219a(C0496ae c0496ae) throws IOException {
        return new C0455h(c0496ae.f667f, C0548p.m1217a(new a(this.f359o.f443g)));
    }

    @Override // p003b.p004a.p008d.InterfaceC0450c
    /* renamed from: a */
    public final InterfaceC0556x mo220a(C0494ac c0494ac, long j) {
        return this.f359o.m396d();
    }

    @Override // p003b.p004a.p008d.InterfaceC0450c
    /* renamed from: a */
    public final void mo221a() throws IOException {
        this.f358n.f379q.m424b();
    }

    @Override // p003b.p004a.p008d.InterfaceC0450c
    /* renamed from: a */
    public final void mo222a(C0494ac c0494ac) throws IOException {
        if (this.f359o != null) {
            return;
        }
        boolean z = c0494ac.f646d != null;
        C0523u c0523u = c0494ac.f645c;
        ArrayList arrayList = new ArrayList((c0523u.f956a.length / 2) + 4);
        arrayList.add(new C0463c(C0463c.f290c, c0494ac.f644b));
        arrayList.add(new C0463c(C0463c.f291d, C0456i.m256a(c0494ac.f643a)));
        String m585a = c0494ac.m585a(HttpHeaders.HOST);
        if (m585a != null) {
            arrayList.add(new C0463c(C0463c.f293f, m585a));
        }
        arrayList.add(new C0463c(C0463c.f292e, c0494ac.f643a.f969k));
        int length = c0523u.f956a.length / 2;
        for (int i = 0; i < length; i++) {
            C0538f encodeUtf8 = C0538f.encodeUtf8(c0523u.m851a(i).toLowerCase(Locale.US));
            if (!f354k.contains(encodeUtf8)) {
                arrayList.add(new C0463c(encodeUtf8, c0523u.m854b(i)));
            }
        }
        this.f359o = this.f358n.m335a(0, arrayList, z);
        this.f359o.f445i.mo1185a(this.f357m.f1015A, TimeUnit.MILLISECONDS);
        this.f359o.f446j.mo1185a(this.f357m.f1016B, TimeUnit.MILLISECONDS);
    }

    @Override // p003b.p004a.p008d.InterfaceC0450c
    /* renamed from: b */
    public final void mo223b() throws IOException {
        this.f359o.m396d().close();
    }

    @Override // p003b.p004a.p008d.InterfaceC0450c
    /* renamed from: c */
    public final void mo224c() {
        if (this.f359o != null) {
            this.f359o.m392b(EnumC0462b.CANCEL);
        }
    }
}
