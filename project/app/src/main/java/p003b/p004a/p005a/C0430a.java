package p003b.p004a.p005a;

import com.github.kevinsawicki.http.HttpRequest;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import p003b.C0496ae;
import p003b.C0523u;
import p003b.InterfaceC0525w;
import p003b.p004a.AbstractC0429a;
import p003b.p004a.C0439c;
import p003b.p004a.p008d.C0455h;
import p017c.C0535c;
import p017c.C0548p;
import p017c.C0558z;
import p017c.InterfaceC0536d;
import p017c.InterfaceC0537e;
import p017c.InterfaceC0556x;
import p017c.InterfaceC0557y;

/* renamed from: b.a.a.a */
/* loaded from: classes.dex */
public final class C0430a implements InterfaceC0525w {

    /* renamed from: a */
    final InterfaceC0435f f61a;

    /* renamed from: b.a.a.a$1, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 implements InterfaceC0557y {

        /* renamed from: a */
        boolean f62a;

        /* renamed from: b */
        final /* synthetic */ InterfaceC0537e f63b;

        /* renamed from: c */
        final /* synthetic */ InterfaceC0431b f64c;

        /* renamed from: d */
        final /* synthetic */ InterfaceC0536d f65d;

        AnonymousClass1(InterfaceC0537e interfaceC0537e, InterfaceC0431b interfaceC0431b, InterfaceC0536d interfaceC0536d) {
            this.f63b = interfaceC0537e;
            this.f64c = interfaceC0431b;
            this.f65d = interfaceC0536d;
        }

        @Override // p017c.InterfaceC0557y, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            if (!this.f62a && !C0439c.m148a((InterfaceC0557y) this, TimeUnit.MILLISECONDS)) {
                this.f62a = true;
                this.f64c.mo63a();
            }
            this.f63b.close();
        }

        @Override // p017c.InterfaceC0557y
        public final long read(C0535c c0535c, long j) throws IOException {
            try {
                long read = this.f63b.read(c0535c, j);
                if (read != -1) {
                    c0535c.m1098a(this.f65d.mo1096a(), c0535c.f1086c - read, read);
                    this.f65d.mo1175y();
                    return read;
                }
                if (!this.f62a) {
                    this.f62a = true;
                    this.f65d.close();
                }
                return -1L;
            } catch (IOException e) {
                if (!this.f62a) {
                    this.f62a = true;
                    this.f64c.mo63a();
                }
                throw e;
            }
        }

        @Override // p017c.InterfaceC0557y
        public final C0558z timeout() {
            return this.f63b.timeout();
        }
    }

    public C0430a(InterfaceC0435f interfaceC0435f) {
        this.f61a = interfaceC0435f;
    }

    /* renamed from: a */
    private C0496ae m59a(InterfaceC0431b interfaceC0431b, C0496ae c0496ae) throws IOException {
        InterfaceC0556x mo64b;
        if (interfaceC0431b == null || (mo64b = interfaceC0431b.mo64b()) == null) {
            return c0496ae;
        }
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(c0496ae.f668g.source(), interfaceC0431b, C0548p.m1216a(mo64b));
        C0496ae.a m626e = c0496ae.m626e();
        m626e.f681g = new C0455h(c0496ae.f667f, C0548p.m1217a(anonymousClass1));
        return m626e.m644a();
    }

    /* renamed from: a */
    private static C0496ae m60a(C0496ae c0496ae) {
        if (c0496ae == null || c0496ae.f668g == null) {
            return c0496ae;
        }
        C0496ae.a m626e = c0496ae.m626e();
        m626e.f681g = null;
        return m626e.m644a();
    }

    /* renamed from: a */
    private static C0523u m61a(C0523u c0523u, C0523u c0523u2) {
        C0523u.a aVar = new C0523u.a();
        int length = c0523u.f956a.length / 2;
        for (int i = 0; i < length; i++) {
            String m851a = c0523u.m851a(i);
            String m854b = c0523u.m854b(i);
            if ((!"Warning".equalsIgnoreCase(m851a) || !m854b.startsWith("1")) && (!m62a(m851a) || c0523u2.m852a(m851a) == null)) {
                AbstractC0429a.f60a.mo54a(aVar, m851a, m854b);
            }
        }
        int length2 = c0523u2.f956a.length / 2;
        for (int i2 = 0; i2 < length2; i2++) {
            String m851a2 = c0523u2.m851a(i2);
            if (!"Content-Length".equalsIgnoreCase(m851a2) && m62a(m851a2)) {
                AbstractC0429a.f60a.mo54a(aVar, m851a2, c0523u2.m854b(i2));
            }
        }
        return aVar.m861a();
    }

    /* renamed from: a */
    private static boolean m62a(String str) {
        return ("Connection".equalsIgnoreCase(str) || "Keep-Alive".equalsIgnoreCase(str) || "Proxy-Authenticate".equalsIgnoreCase(str) || HttpRequest.HEADER_PROXY_AUTHORIZATION.equalsIgnoreCase(str) || "TE".equalsIgnoreCase(str) || "Trailers".equalsIgnoreCase(str) || "Transfer-Encoding".equalsIgnoreCase(str) || "Upgrade".equalsIgnoreCase(str)) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0223 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x022c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x025a  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x026b  */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v31 */
    /* JADX WARN: Type inference failed for: r5v36 */
    /* JADX WARN: Type inference failed for: r5v40 */
    /* JADX WARN: Type inference failed for: r5v50, types: [b.ac, b.ae] */
    /* JADX WARN: Type inference failed for: r5v56 */
    @Override // p003b.InterfaceC0525w
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final p003b.C0496ae intercept(p003b.InterfaceC0525w.a r25) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 823
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p003b.p004a.p005a.C0430a.intercept(b.w$a):b.ae");
    }
}
