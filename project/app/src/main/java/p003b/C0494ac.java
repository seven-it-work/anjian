package p003b;

import com.android.volley.toolbox.C0616g;
import com.github.kevinsawicki.http.HttpRequest;
import java.net.URL;
import java.util.List;
import javax.annotation.Nullable;
import p003b.C0523u;
import p003b.p004a.C0439c;
import p003b.p004a.p008d.C0453f;

/* renamed from: b.ac */
/* loaded from: classes.dex */
public final class C0494ac {

    /* renamed from: a */
    public final C0524v f643a;

    /* renamed from: b */
    public final String f644b;

    /* renamed from: c */
    public final C0523u f645c;

    /* renamed from: d */
    @Nullable
    public final AbstractC0495ad f646d;

    /* renamed from: e */
    final Object f647e;

    /* renamed from: f */
    private volatile C0506d f648f;

    /* renamed from: b.ac$a */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a */
        C0524v f649a;

        /* renamed from: b */
        String f650b;

        /* renamed from: c */
        C0523u.a f651c;

        /* renamed from: d */
        AbstractC0495ad f652d;

        /* renamed from: e */
        Object f653e;

        public a() {
            this.f650b = HttpRequest.METHOD_GET;
            this.f651c = new C0523u.a();
        }

        a(C0494ac c0494ac) {
            this.f649a = c0494ac.f643a;
            this.f650b = c0494ac.f644b;
            this.f652d = c0494ac.f646d;
            this.f653e = c0494ac.f647e;
            this.f651c = c0494ac.f645c.m853b();
        }

        /* renamed from: a */
        private a m589a(AbstractC0495ad abstractC0495ad) {
            return m600a("POST", abstractC0495ad);
        }

        /* renamed from: a */
        private a m590a(C0506d c0506d) {
            String c0506d2 = c0506d.toString();
            return c0506d2.isEmpty() ? m603b("Cache-Control") : m601a("Cache-Control", c0506d2);
        }

        /* renamed from: a */
        private a m591a(Object obj) {
            this.f653e = obj;
            return this;
        }

        /* renamed from: a */
        private a m592a(URL url) {
            if (url == null) {
                throw new NullPointerException("url == null");
            }
            C0524v m869a = C0524v.m869a(url);
            if (m869a != null) {
                return m598a(m869a);
            }
            throw new IllegalArgumentException("unexpected url: " + url);
        }

        /* renamed from: b */
        private a m593b(@Nullable AbstractC0495ad abstractC0495ad) {
            return m600a(HttpRequest.METHOD_DELETE, abstractC0495ad);
        }

        /* renamed from: c */
        private a m594c(AbstractC0495ad abstractC0495ad) {
            return m600a(HttpRequest.METHOD_PUT, abstractC0495ad);
        }

        /* renamed from: d */
        private a m595d(AbstractC0495ad abstractC0495ad) {
            return m600a(C0616g.a.f1349a, abstractC0495ad);
        }

        /* renamed from: a */
        public final a m596a() {
            return m600a(HttpRequest.METHOD_GET, (AbstractC0495ad) null);
        }

        /* renamed from: a */
        public final a m597a(C0523u c0523u) {
            this.f651c = c0523u.m853b();
            return this;
        }

        /* renamed from: a */
        public final a m598a(C0524v c0524v) {
            if (c0524v == null) {
                throw new NullPointerException("url == null");
            }
            this.f649a = c0524v;
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x0047  */
        /* JADX WARN: Removed duplicated region for block: B:13:0x005b  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final p003b.C0494ac.a m599a(java.lang.String r8) {
            /*
                r7 = this;
                if (r8 != 0) goto La
                java.lang.NullPointerException r8 = new java.lang.NullPointerException
                java.lang.String r0 = "url == null"
                r8.<init>(r0)
                throw r8
            La:
                r2 = 1
                r3 = 0
                java.lang.String r4 = "ws:"
                r5 = 0
                r6 = 3
                r1 = r8
                boolean r0 = r1.regionMatches(r2, r3, r4, r5, r6)
                if (r0 == 0) goto L2b
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                java.lang.String r1 = "http:"
                r0.<init>(r1)
                r1 = 3
            L1f:
                java.lang.String r8 = r8.substring(r1)
                r0.append(r8)
                java.lang.String r8 = r0.toString()
                goto L41
            L2b:
                r1 = 1
                r2 = 0
                java.lang.String r3 = "wss:"
                r4 = 0
                r5 = 4
                r0 = r8
                boolean r0 = r0.regionMatches(r1, r2, r3, r4, r5)
                if (r0 == 0) goto L41
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                java.lang.String r1 = "https:"
                r0.<init>(r1)
                r1 = 4
                goto L1f
            L41:
                b.v r0 = p003b.C0524v.m883d(r8)
                if (r0 != 0) goto L5b
                java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                java.lang.String r2 = "unexpected url: "
                r1.<init>(r2)
                r1.append(r8)
                java.lang.String r8 = r1.toString()
                r0.<init>(r8)
                throw r0
            L5b:
                b.ac$a r8 = r7.m598a(r0)
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: p003b.C0494ac.a.m599a(java.lang.String):b.ac$a");
        }

        /* renamed from: a */
        public final a m600a(String str, @Nullable AbstractC0495ad abstractC0495ad) {
            if (str == null) {
                throw new NullPointerException("method == null");
            }
            if (str.length() == 0) {
                throw new IllegalArgumentException("method.length() == 0");
            }
            if (abstractC0495ad != null && !C0453f.m246c(str)) {
                throw new IllegalArgumentException("method " + str + " must not have a request body.");
            }
            if (abstractC0495ad != null || !C0453f.m245b(str)) {
                this.f650b = str;
                this.f652d = abstractC0495ad;
                return this;
            }
            throw new IllegalArgumentException("method " + str + " must have a request body.");
        }

        /* renamed from: a */
        public final a m601a(String str, String str2) {
            this.f651c.m864c(str, str2);
            return this;
        }

        /* renamed from: b */
        public final a m602b() {
            return m600a("HEAD", (AbstractC0495ad) null);
        }

        /* renamed from: b */
        public final a m603b(String str) {
            this.f651c.m862b(str);
            return this;
        }

        /* renamed from: b */
        public final a m604b(String str, String str2) {
            this.f651c.m860a(str, str2);
            return this;
        }

        /* renamed from: c */
        public final a m605c() {
            return m600a(HttpRequest.METHOD_DELETE, C0439c.f166d);
        }

        /* renamed from: d */
        public final C0494ac m606d() {
            if (this.f649a == null) {
                throw new IllegalStateException("url == null");
            }
            return new C0494ac(this);
        }
    }

    C0494ac(a aVar) {
        this.f643a = aVar.f649a;
        this.f644b = aVar.f650b;
        this.f645c = aVar.f651c.m861a();
        this.f646d = aVar.f652d;
        this.f647e = aVar.f653e != null ? aVar.f653e : this;
    }

    /* renamed from: b */
    private List<String> m579b(String str) {
        return this.f645c.m855b(str);
    }

    /* renamed from: e */
    private C0523u m580e() {
        return this.f645c;
    }

    @Nullable
    /* renamed from: f */
    private AbstractC0495ad m581f() {
        return this.f646d;
    }

    /* renamed from: g */
    private Object m582g() {
        return this.f647e;
    }

    /* renamed from: h */
    private boolean m583h() {
        return this.f643a.m904b();
    }

    /* renamed from: a */
    public final C0524v m584a() {
        return this.f643a;
    }

    /* renamed from: a */
    public final String m585a(String str) {
        return this.f645c.m852a(str);
    }

    /* renamed from: b */
    public final String m586b() {
        return this.f644b;
    }

    /* renamed from: c */
    public final a m587c() {
        return new a(this);
    }

    /* renamed from: d */
    public final C0506d m588d() {
        C0506d c0506d = this.f648f;
        if (c0506d != null) {
            return c0506d;
        }
        C0506d m692a = C0506d.m692a(this.f645c);
        this.f648f = m692a;
        return m692a;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Request{method=");
        sb.append(this.f644b);
        sb.append(", url=");
        sb.append(this.f643a);
        sb.append(", tag=");
        sb.append(this.f647e != this ? this.f647e : null);
        sb.append('}');
        return sb.toString();
    }
}
