package p003b;

import java.io.Closeable;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import p003b.C0523u;
import p003b.p004a.p008d.C0452e;
import p017c.C0535c;
import p017c.InterfaceC0537e;

/* renamed from: b.ae */
/* loaded from: classes.dex */
public final class C0496ae implements Closeable {

    /* renamed from: a */
    public final C0494ac f662a;

    /* renamed from: b */
    public final EnumC0492aa f663b;

    /* renamed from: c */
    public final int f664c;

    /* renamed from: d */
    public final String f665d;

    /* renamed from: e */
    @Nullable
    public final C0522t f666e;

    /* renamed from: f */
    public final C0523u f667f;

    /* renamed from: g */
    @Nullable
    public final AbstractC0497af f668g;

    /* renamed from: h */
    @Nullable
    public final C0496ae f669h;

    /* renamed from: i */
    @Nullable
    final C0496ae f670i;

    /* renamed from: j */
    @Nullable
    final C0496ae f671j;

    /* renamed from: k */
    public final long f672k;

    /* renamed from: l */
    public final long f673l;

    /* renamed from: m */
    private volatile C0506d f674m;

    /* renamed from: b.ae$a */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a */
        public C0494ac f675a;

        /* renamed from: b */
        public EnumC0492aa f676b;

        /* renamed from: c */
        public int f677c;

        /* renamed from: d */
        public String f678d;

        /* renamed from: e */
        @Nullable
        public C0522t f679e;

        /* renamed from: f */
        C0523u.a f680f;

        /* renamed from: g */
        public AbstractC0497af f681g;

        /* renamed from: h */
        C0496ae f682h;

        /* renamed from: i */
        C0496ae f683i;

        /* renamed from: j */
        public C0496ae f684j;

        /* renamed from: k */
        public long f685k;

        /* renamed from: l */
        public long f686l;

        public a() {
            this.f677c = -1;
            this.f680f = new C0523u.a();
        }

        a(C0496ae c0496ae) {
            this.f677c = -1;
            this.f675a = c0496ae.f662a;
            this.f676b = c0496ae.f663b;
            this.f677c = c0496ae.f664c;
            this.f678d = c0496ae.f665d;
            this.f679e = c0496ae.f666e;
            this.f680f = c0496ae.f667f.m853b();
            this.f681g = c0496ae.f668g;
            this.f682h = c0496ae.f669h;
            this.f683i = c0496ae.f670i;
            this.f684j = c0496ae.f671j;
            this.f685k = c0496ae.f672k;
            this.f686l = c0496ae.f673l;
        }

        /* renamed from: a */
        private a m628a(int i) {
            this.f677c = i;
            return this;
        }

        /* renamed from: a */
        private a m629a(long j) {
            this.f685k = j;
            return this;
        }

        /* renamed from: a */
        private a m630a(EnumC0492aa enumC0492aa) {
            this.f676b = enumC0492aa;
            return this;
        }

        /* renamed from: a */
        private a m631a(C0494ac c0494ac) {
            this.f675a = c0494ac;
            return this;
        }

        /* renamed from: a */
        private a m632a(@Nullable C0522t c0522t) {
            this.f679e = c0522t;
            return this;
        }

        /* renamed from: a */
        private a m633a(String str) {
            this.f678d = str;
            return this;
        }

        /* renamed from: a */
        private static void m634a(String str, C0496ae c0496ae) {
            if (c0496ae.f668g != null) {
                throw new IllegalArgumentException(str + ".body != null");
            }
            if (c0496ae.f669h != null) {
                throw new IllegalArgumentException(str + ".networkResponse != null");
            }
            if (c0496ae.f670i != null) {
                throw new IllegalArgumentException(str + ".cacheResponse != null");
            }
            if (c0496ae.f671j != null) {
                throw new IllegalArgumentException(str + ".priorResponse != null");
            }
        }

        /* renamed from: b */
        private a m635b(long j) {
            this.f686l = j;
            return this;
        }

        /* renamed from: b */
        private a m636b(String str) {
            this.f680f.m862b(str);
            return this;
        }

        /* renamed from: b */
        private a m637b(String str, String str2) {
            this.f680f.m864c(str, str2);
            return this;
        }

        /* renamed from: c */
        private a m638c(@Nullable C0496ae c0496ae) {
            if (c0496ae != null && c0496ae.f668g != null) {
                throw new IllegalArgumentException("priorResponse.body != null");
            }
            this.f684j = c0496ae;
            return this;
        }

        /* renamed from: d */
        private static void m639d(C0496ae c0496ae) {
            if (c0496ae.f668g != null) {
                throw new IllegalArgumentException("priorResponse.body != null");
            }
        }

        /* renamed from: a */
        public final a m640a(@Nullable C0496ae c0496ae) {
            if (c0496ae != null) {
                m634a("networkResponse", c0496ae);
            }
            this.f682h = c0496ae;
            return this;
        }

        /* renamed from: a */
        public final a m641a(@Nullable AbstractC0497af abstractC0497af) {
            this.f681g = abstractC0497af;
            return this;
        }

        /* renamed from: a */
        public final a m642a(C0523u c0523u) {
            this.f680f = c0523u.m853b();
            return this;
        }

        /* renamed from: a */
        public final a m643a(String str, String str2) {
            this.f680f.m860a(str, str2);
            return this;
        }

        /* renamed from: a */
        public final C0496ae m644a() {
            if (this.f675a == null) {
                throw new IllegalStateException("request == null");
            }
            if (this.f676b == null) {
                throw new IllegalStateException("protocol == null");
            }
            if (this.f677c < 0) {
                throw new IllegalStateException("code < 0: " + this.f677c);
            }
            if (this.f678d == null) {
                throw new IllegalStateException("message == null");
            }
            return new C0496ae(this);
        }

        /* renamed from: b */
        public final a m645b(@Nullable C0496ae c0496ae) {
            if (c0496ae != null) {
                m634a("cacheResponse", c0496ae);
            }
            this.f683i = c0496ae;
            return this;
        }
    }

    C0496ae(a aVar) {
        this.f662a = aVar.f675a;
        this.f663b = aVar.f676b;
        this.f664c = aVar.f677c;
        this.f665d = aVar.f678d;
        this.f666e = aVar.f679e;
        this.f667f = aVar.f680f.m861a();
        this.f668g = aVar.f681g;
        this.f669h = aVar.f682h;
        this.f670i = aVar.f683i;
        this.f671j = aVar.f684j;
        this.f672k = aVar.f685k;
        this.f673l = aVar.f686l;
    }

    /* renamed from: a */
    private AbstractC0497af m607a(long j) throws IOException {
        InterfaceC0537e source = this.f668g.source();
        source.mo1121b(j);
        C0535c clone = source.mo1096a().clone();
        if (clone.f1086c > j) {
            C0535c c0535c = new C0535c();
            c0535c.mo114a(clone, j);
            clone.m1173w();
            clone = c0535c;
        }
        return AbstractC0497af.create(this.f668g.contentType(), clone.f1086c, clone);
    }

    /* renamed from: b */
    private List<String> m608b(String str) {
        return this.f667f.m855b(str);
    }

    @Nullable
    /* renamed from: c */
    private String m609c(String str) {
        String m852a = this.f667f.m852a(str);
        if (m852a != null) {
            return m852a;
        }
        return null;
    }

    /* renamed from: g */
    private C0494ac m610g() {
        return this.f662a;
    }

    /* renamed from: h */
    private EnumC0492aa m611h() {
        return this.f663b;
    }

    /* renamed from: i */
    private boolean m612i() {
        return this.f664c >= 200 && this.f664c < 300;
    }

    /* renamed from: j */
    private C0522t m613j() {
        return this.f666e;
    }

    /* renamed from: k */
    private boolean m614k() {
        switch (this.f664c) {
            case 300:
            case SET_ENABLED_VALUE:
            case SET_VISIBLE_VALUE:
            case SET_TITLE_TEXT_VALUE:
            case 307:
            case 308:
                return true;
            case SET_TEXT_VALUE:
            case SET_BACKCOLOR_VALUE:
            case SET_TITLE_BACKCOLOR_VALUE:
            default:
                return false;
        }
    }

    @Nullable
    /* renamed from: l */
    private C0496ae m615l() {
        return this.f669h;
    }

    @Nullable
    /* renamed from: m */
    private C0496ae m616m() {
        return this.f670i;
    }

    @Nullable
    /* renamed from: n */
    private C0496ae m617n() {
        return this.f671j;
    }

    /* renamed from: o */
    private List<C0510h> m618o() {
        String str;
        if (this.f664c == 401) {
            str = "WWW-Authenticate";
        } else {
            if (this.f664c != 407) {
                return Collections.emptyList();
            }
            str = "Proxy-Authenticate";
        }
        return C0452e.m234a(this.f667f, str);
    }

    /* renamed from: p */
    private long m619p() {
        return this.f672k;
    }

    /* renamed from: q */
    private long m620q() {
        return this.f673l;
    }

    /* renamed from: a */
    public final int m621a() {
        return this.f664c;
    }

    @Nullable
    /* renamed from: a */
    public final String m622a(String str) {
        String m852a = this.f667f.m852a(str);
        if (m852a != null) {
            return m852a;
        }
        return null;
    }

    /* renamed from: b */
    public final String m623b() {
        return this.f665d;
    }

    /* renamed from: c */
    public final C0523u m624c() {
        return this.f667f;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f668g.close();
    }

    @Nullable
    /* renamed from: d */
    public final AbstractC0497af m625d() {
        return this.f668g;
    }

    /* renamed from: e */
    public final a m626e() {
        return new a(this);
    }

    /* renamed from: f */
    public final C0506d m627f() {
        C0506d c0506d = this.f674m;
        if (c0506d != null) {
            return c0506d;
        }
        C0506d m692a = C0506d.m692a(this.f667f);
        this.f674m = m692a;
        return m692a;
    }

    public final String toString() {
        return "Response{protocol=" + this.f663b + ", code=" + this.f664c + ", message=" + this.f665d + ", url=" + this.f662a.f643a + '}';
    }
}
