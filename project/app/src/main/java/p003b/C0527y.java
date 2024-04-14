package p003b;

import com.umeng.commonsdk.proguard.C2489bg;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import javax.annotation.Nullable;
import p003b.p004a.C0439c;
import p017c.C0535c;
import p017c.C0538f;
import p017c.InterfaceC0536d;

/* renamed from: b.y */
/* loaded from: classes.dex */
public final class C0527y extends AbstractC0495ad {

    /* renamed from: a */
    public static final C0526x f995a = C0526x.m956a("multipart/mixed");

    /* renamed from: b */
    public static final C0526x f996b = C0526x.m956a("multipart/alternative");

    /* renamed from: c */
    public static final C0526x f997c = C0526x.m956a("multipart/digest");

    /* renamed from: d */
    public static final C0526x f998d = C0526x.m956a("multipart/parallel");

    /* renamed from: e */
    public static final C0526x f999e = C0526x.m956a("multipart/form-data");

    /* renamed from: f */
    private static final byte[] f1000f = {58, 32};

    /* renamed from: g */
    private static final byte[] f1001g = {C2489bg.f9368k, 10};

    /* renamed from: h */
    private static final byte[] f1002h = {45, 45};

    /* renamed from: i */
    private final C0538f f1003i;

    /* renamed from: j */
    private final C0526x f1004j;

    /* renamed from: k */
    private final C0526x f1005k;

    /* renamed from: l */
    private final List<b> f1006l;

    /* renamed from: m */
    private long f1007m = -1;

    /* renamed from: b.y$a */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a */
        private final C0538f f1008a;

        /* renamed from: b */
        private C0526x f1009b;

        /* renamed from: c */
        private final List<b> f1010c;

        public a() {
            this(UUID.randomUUID().toString());
        }

        private a(String str) {
            this.f1009b = C0527y.f995a;
            this.f1010c = new ArrayList();
            this.f1008a = C0538f.encodeUtf8(str);
        }

        /* renamed from: a */
        private a m968a(AbstractC0495ad abstractC0495ad) {
            return m971a(b.m977a((C0523u) null, abstractC0495ad));
        }

        /* renamed from: a */
        private a m969a(@Nullable C0523u c0523u, AbstractC0495ad abstractC0495ad) {
            return m971a(b.m977a(c0523u, abstractC0495ad));
        }

        /* renamed from: a */
        private a m970a(C0526x c0526x) {
            if (c0526x == null) {
                throw new NullPointerException("type == null");
            }
            if (c0526x.f991a.equals("multipart")) {
                this.f1009b = c0526x;
                return this;
            }
            throw new IllegalArgumentException("multipart != " + c0526x);
        }

        /* renamed from: a */
        private a m971a(b bVar) {
            if (bVar == null) {
                throw new NullPointerException("part == null");
            }
            this.f1010c.add(bVar);
            return this;
        }

        /* renamed from: a */
        private a m972a(String str, String str2) {
            return m971a(b.m979a(str, null, AbstractC0495ad.create((C0526x) null, str2)));
        }

        /* renamed from: a */
        private a m973a(String str, @Nullable String str2, AbstractC0495ad abstractC0495ad) {
            return m971a(b.m979a(str, str2, abstractC0495ad));
        }

        /* renamed from: a */
        private C0527y m974a() {
            if (this.f1010c.isEmpty()) {
                throw new IllegalStateException("Multipart body must have at least one part.");
            }
            return new C0527y(this.f1008a, this.f1009b, this.f1010c);
        }
    }

    /* renamed from: b.y$b */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a */
        @Nullable
        final C0523u f1011a;

        /* renamed from: b */
        final AbstractC0495ad f1012b;

        private b(@Nullable C0523u c0523u, AbstractC0495ad abstractC0495ad) {
            this.f1011a = c0523u;
            this.f1012b = abstractC0495ad;
        }

        @Nullable
        /* renamed from: a */
        private C0523u m975a() {
            return this.f1011a;
        }

        /* renamed from: a */
        private static b m976a(AbstractC0495ad abstractC0495ad) {
            return m977a((C0523u) null, abstractC0495ad);
        }

        /* renamed from: a */
        public static b m977a(@Nullable C0523u c0523u, AbstractC0495ad abstractC0495ad) {
            if (abstractC0495ad == null) {
                throw new NullPointerException("body == null");
            }
            if (c0523u != null && c0523u.m852a("Content-Type") != null) {
                throw new IllegalArgumentException("Unexpected header: Content-Type");
            }
            if (c0523u == null || c0523u.m852a("Content-Length") == null) {
                return new b(c0523u, abstractC0495ad);
            }
            throw new IllegalArgumentException("Unexpected header: Content-Length");
        }

        /* renamed from: a */
        private static b m978a(String str, String str2) {
            return m979a(str, null, AbstractC0495ad.create((C0526x) null, str2));
        }

        /* renamed from: a */
        public static b m979a(String str, @Nullable String str2, AbstractC0495ad abstractC0495ad) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            StringBuilder sb = new StringBuilder("form-data; name=");
            C0527y.m964a(sb, str);
            if (str2 != null) {
                sb.append("; filename=");
                C0527y.m964a(sb, str2);
            }
            return m977a(C0523u.m846a("Content-Disposition", sb.toString()), abstractC0495ad);
        }

        /* renamed from: b */
        private AbstractC0495ad m980b() {
            return this.f1012b;
        }
    }

    C0527y(C0538f c0538f, C0526x c0526x, List<b> list) {
        this.f1003i = c0538f;
        this.f1004j = c0526x;
        this.f1005k = C0526x.m956a(c0526x + "; boundary=" + c0538f.utf8());
        this.f1006l = C0439c.m140a(list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private long m961a(@Nullable InterfaceC0536d interfaceC0536d, boolean z) throws IOException {
        C0535c c0535c;
        if (z) {
            interfaceC0536d = new C0535c();
            c0535c = interfaceC0536d;
        } else {
            c0535c = 0;
        }
        int size = this.f1006l.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            b bVar = this.f1006l.get(i);
            C0523u c0523u = bVar.f1011a;
            AbstractC0495ad abstractC0495ad = bVar.f1012b;
            interfaceC0536d.mo1129d(f1002h);
            interfaceC0536d.mo1134e(this.f1003i);
            interfaceC0536d.mo1129d(f1001g);
            if (c0523u != null) {
                int length = c0523u.f956a.length / 2;
                for (int i2 = 0; i2 < length; i2++) {
                    interfaceC0536d.mo1114b(c0523u.m851a(i2)).mo1129d(f1000f).mo1114b(c0523u.m854b(i2)).mo1129d(f1001g);
                }
            }
            C0526x contentType = abstractC0495ad.contentType();
            if (contentType != null) {
                interfaceC0536d.mo1114b("Content-Type: ").mo1114b(contentType.toString()).mo1129d(f1001g);
            }
            long contentLength = abstractC0495ad.contentLength();
            if (contentLength != -1) {
                interfaceC0536d.mo1114b("Content-Length: ").mo1162n(contentLength).mo1129d(f1001g);
            } else if (z) {
                c0535c.m1173w();
                return -1L;
            }
            interfaceC0536d.mo1129d(f1001g);
            if (z) {
                j += contentLength;
            } else {
                abstractC0495ad.writeTo(interfaceC0536d);
            }
            interfaceC0536d.mo1129d(f1001g);
        }
        interfaceC0536d.mo1129d(f1002h);
        interfaceC0536d.mo1134e(this.f1003i);
        interfaceC0536d.mo1129d(f1002h);
        interfaceC0536d.mo1129d(f1001g);
        if (!z) {
            return j;
        }
        long j2 = j + c0535c.f1086c;
        c0535c.m1173w();
        return j2;
    }

    /* renamed from: a */
    private C0526x m962a() {
        return this.f1004j;
    }

    /* renamed from: a */
    private b m963a(int i) {
        return this.f1006l.get(i);
    }

    /* renamed from: a */
    static StringBuilder m964a(StringBuilder sb, String str) {
        String str2;
        sb.append('\"');
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt == '\n') {
                str2 = "%0A";
            } else if (charAt == '\r') {
                str2 = "%0D";
            } else if (charAt != '\"') {
                sb.append(charAt);
            } else {
                str2 = "%22";
            }
            sb.append(str2);
        }
        sb.append('\"');
        return sb;
    }

    /* renamed from: b */
    private String m965b() {
        return this.f1003i.utf8();
    }

    /* renamed from: c */
    private int m966c() {
        return this.f1006l.size();
    }

    /* renamed from: d */
    private List<b> m967d() {
        return this.f1006l;
    }

    @Override // p003b.AbstractC0495ad
    public final long contentLength() throws IOException {
        long j = this.f1007m;
        if (j != -1) {
            return j;
        }
        long m961a = m961a((InterfaceC0536d) null, true);
        this.f1007m = m961a;
        return m961a;
    }

    @Override // p003b.AbstractC0495ad
    public final C0526x contentType() {
        return this.f1005k;
    }

    @Override // p003b.AbstractC0495ad
    public final void writeTo(InterfaceC0536d interfaceC0536d) throws IOException {
        m961a(interfaceC0536d, false);
    }
}
