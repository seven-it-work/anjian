package p003b.p004a.p010f;

import android.support.v7.widget.ActivityChooserView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.github.kevinsawicki.http.HttpRequest;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import p003b.p004a.C0439c;
import p003b.p004a.p010f.C0471k;
import p017c.C0535c;
import p017c.C0538f;
import p017c.C0548p;
import p017c.InterfaceC0537e;
import p017c.InterfaceC0557y;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: b.a.f.d */
/* loaded from: classes.dex */
public final class C0464d {

    /* renamed from: a */
    static final C0463c[] f297a = {new C0463c(C0463c.f293f, ""), new C0463c(C0463c.f290c, HttpRequest.METHOD_GET), new C0463c(C0463c.f290c, "POST"), new C0463c(C0463c.f291d, "/"), new C0463c(C0463c.f291d, "/index.html"), new C0463c(C0463c.f292e, "http"), new C0463c(C0463c.f292e, "https"), new C0463c(C0463c.f289b, "200"), new C0463c(C0463c.f289b, "204"), new C0463c(C0463c.f289b, "206"), new C0463c(C0463c.f289b, "304"), new C0463c(C0463c.f289b, "400"), new C0463c(C0463c.f289b, "404"), new C0463c(C0463c.f289b, "500"), new C0463c("accept-charset", ""), new C0463c("accept-encoding", "gzip, deflate"), new C0463c("accept-language", ""), new C0463c("accept-ranges", ""), new C0463c("accept", ""), new C0463c("access-control-allow-origin", ""), new C0463c("age", ""), new C0463c("allow", ""), new C0463c("authorization", ""), new C0463c("cache-control", ""), new C0463c("content-disposition", ""), new C0463c("content-encoding", ""), new C0463c("content-language", ""), new C0463c("content-length", ""), new C0463c("content-location", ""), new C0463c("content-range", ""), new C0463c("content-type", ""), new C0463c("cookie", ""), new C0463c("date", ""), new C0463c("etag", ""), new C0463c("expect", ""), new C0463c("expires", ""), new C0463c("from", ""), new C0463c("host", ""), new C0463c("if-match", ""), new C0463c("if-modified-since", ""), new C0463c("if-none-match", ""), new C0463c("if-range", ""), new C0463c("if-unmodified-since", ""), new C0463c("last-modified", ""), new C0463c("link", ""), new C0463c(RequestParameters.SUBRESOURCE_LOCATION, ""), new C0463c("max-forwards", ""), new C0463c("proxy-authenticate", ""), new C0463c("proxy-authorization", ""), new C0463c("range", ""), new C0463c(RequestParameters.SUBRESOURCE_REFERER, ""), new C0463c("refresh", ""), new C0463c("retry-after", ""), new C0463c("server", ""), new C0463c("set-cookie", ""), new C0463c("strict-transport-security", ""), new C0463c("transfer-encoding", ""), new C0463c("user-agent", ""), new C0463c("vary", ""), new C0463c("via", ""), new C0463c("www-authenticate", "")};

    /* renamed from: b */
    static final Map<C0538f, Integer> f298b;

    /* renamed from: c */
    private static final int f299c = 15;

    /* renamed from: d */
    private static final int f300d = 31;

    /* renamed from: e */
    private static final int f301e = 63;

    /* renamed from: f */
    private static final int f302f = 127;

    /* renamed from: b.a.f.d$a */
    /* loaded from: classes.dex */
    static final class a {

        /* renamed from: a */
        final List<C0463c> f303a;

        /* renamed from: b */
        final InterfaceC0537e f304b;

        /* renamed from: c */
        final int f305c;

        /* renamed from: d */
        int f306d;

        /* renamed from: e */
        C0463c[] f307e;

        /* renamed from: f */
        int f308f;

        /* renamed from: g */
        int f309g;

        /* renamed from: h */
        int f310h;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(InterfaceC0557y interfaceC0557y) {
            this(interfaceC0557y, (byte) 0);
        }

        private a(InterfaceC0557y interfaceC0557y, byte b2) {
            this.f303a = new ArrayList();
            this.f307e = new C0463c[8];
            this.f308f = this.f307e.length - 1;
            this.f309g = 0;
            this.f310h = 0;
            this.f305c = 4096;
            this.f306d = 4096;
            this.f304b = C0548p.m1217a(interfaceC0557y);
        }

        /* renamed from: c */
        private int m283c() {
            return this.f306d;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: c */
        public static boolean m284c(int i) {
            return i >= 0 && i <= C0464d.f297a.length - 1;
        }

        /* renamed from: d */
        private int m285d(int i) {
            int i2 = 0;
            if (i > 0) {
                int length = this.f307e.length;
                while (true) {
                    length--;
                    if (length < this.f308f || i <= 0) {
                        break;
                    }
                    i -= this.f307e[length].f296i;
                    this.f310h -= this.f307e[length].f296i;
                    this.f309g--;
                    i2++;
                }
                System.arraycopy(this.f307e, this.f308f + 1, this.f307e, this.f308f + 1 + i2, this.f309g);
                this.f308f += i2;
            }
            return i2;
        }

        /* renamed from: d */
        private void m286d() {
            Arrays.fill(this.f307e, (Object) null);
            this.f308f = this.f307e.length - 1;
            this.f309g = 0;
            this.f310h = 0;
        }

        /* renamed from: e */
        private void m287e() throws IOException {
            C0463c c0463c;
            List<C0463c> list;
            C0463c c0463c2;
            while (!this.f304b.mo1131d()) {
                int mo1140g = this.f304b.mo1140g() & 255;
                if (mo1140g == 128) {
                    throw new IOException("index == 0");
                }
                if ((mo1140g & 128) == 128) {
                    int m296a = m296a(mo1140g, C0464d.f302f) - 1;
                    if (m284c(m296a)) {
                        this.f303a.add(C0464d.f297a[m296a]);
                    } else {
                        int m295a = m295a(m296a - C0464d.f297a.length);
                        if (m295a < 0 || m295a > this.f307e.length - 1) {
                            throw new IOException("Header index too large " + (m296a + 1));
                        }
                        this.f303a.add(this.f307e[m295a]);
                    }
                } else {
                    if (mo1140g == 64) {
                        c0463c = new C0463c(C0464d.m281a(m299b()), m299b());
                    } else if ((mo1140g & 64) == 64) {
                        c0463c = new C0463c(m300b(m296a(mo1140g, 63) - 1), m299b());
                    } else if ((mo1140g & 32) == 32) {
                        this.f306d = m296a(mo1140g, 31);
                        if (this.f306d < 0 || this.f306d > this.f305c) {
                            throw new IOException("Invalid dynamic table size update " + this.f306d);
                        }
                        m297a();
                    } else {
                        if (mo1140g == 16 || mo1140g == 0) {
                            C0538f m281a = C0464d.m281a(m299b());
                            C0538f m299b = m299b();
                            list = this.f303a;
                            c0463c2 = new C0463c(m281a, m299b);
                        } else {
                            C0538f m300b = m300b(m296a(mo1140g, 15) - 1);
                            C0538f m299b2 = m299b();
                            list = this.f303a;
                            c0463c2 = new C0463c(m300b, m299b2);
                        }
                        list.add(c0463c2);
                    }
                    m298a(c0463c);
                }
            }
        }

        /* renamed from: e */
        private void m288e(int i) throws IOException {
            if (m284c(i)) {
                this.f303a.add(C0464d.f297a[i]);
                return;
            }
            int m295a = m295a(i - C0464d.f297a.length);
            if (m295a >= 0 && m295a <= this.f307e.length - 1) {
                this.f303a.add(this.f307e[m295a]);
            } else {
                throw new IOException("Header index too large " + (i + 1));
            }
        }

        /* renamed from: f */
        private List<C0463c> m289f() {
            ArrayList arrayList = new ArrayList(this.f303a);
            this.f303a.clear();
            return arrayList;
        }

        /* renamed from: f */
        private void m290f(int i) throws IOException {
            this.f303a.add(new C0463c(m300b(i), m299b()));
        }

        /* renamed from: g */
        private void m291g() throws IOException {
            this.f303a.add(new C0463c(C0464d.m281a(m299b()), m299b()));
        }

        /* renamed from: g */
        private void m292g(int i) throws IOException {
            m298a(new C0463c(m300b(i), m299b()));
        }

        /* renamed from: h */
        private void m293h() throws IOException {
            m298a(new C0463c(C0464d.m281a(m299b()), m299b()));
        }

        /* renamed from: i */
        private int m294i() throws IOException {
            return this.f304b.mo1140g() & 255;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final int m295a(int i) {
            return this.f308f + 1 + i;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final int m296a(int i, int i2) throws IOException {
            int i3 = i & i2;
            if (i3 < i2) {
                return i3;
            }
            int i4 = 0;
            while (true) {
                int m294i = m294i();
                if ((m294i & 128) == 0) {
                    return i2 + (m294i << i4);
                }
                i2 += (m294i & C0464d.f302f) << i4;
                i4 += 7;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final void m297a() {
            if (this.f306d < this.f310h) {
                if (this.f306d == 0) {
                    m286d();
                } else {
                    m285d(this.f310h - this.f306d);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final void m298a(C0463c c0463c) {
            this.f303a.add(c0463c);
            int i = c0463c.f296i;
            if (i > this.f306d) {
                m286d();
                return;
            }
            m285d((this.f310h + i) - this.f306d);
            if (this.f309g + 1 > this.f307e.length) {
                C0463c[] c0463cArr = new C0463c[this.f307e.length * 2];
                System.arraycopy(this.f307e, 0, c0463cArr, this.f307e.length, this.f307e.length);
                this.f308f = this.f307e.length - 1;
                this.f307e = c0463cArr;
            }
            int i2 = this.f308f;
            this.f308f = i2 - 1;
            this.f307e[i2] = c0463c;
            this.f309g++;
            this.f310h += i;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: b */
        public final C0538f m299b() throws IOException {
            int m294i = m294i();
            boolean z = (m294i & 128) == 128;
            int m296a = m296a(m294i, C0464d.f302f);
            if (!z) {
                return this.f304b.mo1130d(m296a);
            }
            C0471k m428a = C0471k.m428a();
            byte[] mo1142g = this.f304b.mo1142g(m296a);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            C0471k.a aVar = m428a.f473a;
            int i = 0;
            int i2 = 0;
            for (byte b2 : mo1142g) {
                i = (i << 8) | (b2 & 255);
                i2 += 8;
                while (i2 >= 8) {
                    aVar = aVar.f474a[(i >>> (i2 - 8)) & 255];
                    if (aVar.f474a == null) {
                        byteArrayOutputStream.write(aVar.f475b);
                        i2 -= aVar.f476c;
                        aVar = m428a.f473a;
                    } else {
                        i2 -= 8;
                    }
                }
            }
            while (i2 > 0) {
                C0471k.a aVar2 = aVar.f474a[(i << (8 - i2)) & 255];
                if (aVar2.f474a != null || aVar2.f476c > i2) {
                    break;
                }
                byteArrayOutputStream.write(aVar2.f475b);
                i2 -= aVar2.f476c;
                aVar = m428a.f473a;
            }
            return C0538f.m1177of(byteArrayOutputStream.toByteArray());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: b */
        public final C0538f m300b(int i) {
            return (m284c(i) ? C0464d.f297a[i] : this.f307e[m295a(i - C0464d.f297a.length)]).f294g;
        }
    }

    /* renamed from: b.a.f.d$b */
    /* loaded from: classes.dex */
    static final class b {

        /* renamed from: g */
        private static final int f311g = 4096;

        /* renamed from: h */
        private static final int f312h = 16384;

        /* renamed from: a */
        int f313a;

        /* renamed from: b */
        int f314b;

        /* renamed from: c */
        C0463c[] f315c;

        /* renamed from: d */
        int f316d;

        /* renamed from: e */
        int f317e;

        /* renamed from: f */
        int f318f;

        /* renamed from: i */
        private final C0535c f319i;

        /* renamed from: j */
        private final boolean f320j;

        /* renamed from: k */
        private int f321k;

        /* renamed from: l */
        private boolean f322l;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(C0535c c0535c) {
            this(c0535c, (byte) 0);
        }

        private b(C0535c c0535c, byte b2) {
            this.f321k = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            this.f315c = new C0463c[8];
            this.f316d = this.f315c.length - 1;
            this.f317e = 0;
            this.f318f = 0;
            this.f313a = 4096;
            this.f314b = 4096;
            this.f320j = true;
            this.f319i = c0535c;
        }

        /* renamed from: a */
        private void m301a() {
            Arrays.fill(this.f315c, (Object) null);
            this.f316d = this.f315c.length - 1;
            this.f317e = 0;
            this.f318f = 0;
        }

        /* renamed from: a */
        private void m302a(int i, int i2, int i3) {
            int i4;
            C0535c c0535c;
            if (i < i2) {
                c0535c = this.f319i;
                i4 = i | i3;
            } else {
                this.f319i.mo1157l(i3 | i2);
                i4 = i - i2;
                while (i4 >= 128) {
                    this.f319i.mo1157l(128 | (i4 & C0464d.f302f));
                    i4 >>>= 7;
                }
                c0535c = this.f319i;
            }
            c0535c.mo1157l(i4);
        }

        /* renamed from: a */
        private void m303a(C0463c c0463c) {
            int i = c0463c.f296i;
            if (i > this.f314b) {
                m301a();
                return;
            }
            m305b((this.f318f + i) - this.f314b);
            if (this.f317e + 1 > this.f315c.length) {
                C0463c[] c0463cArr = new C0463c[this.f315c.length * 2];
                System.arraycopy(this.f315c, 0, c0463cArr, this.f315c.length, this.f315c.length);
                this.f316d = this.f315c.length - 1;
                this.f315c = c0463cArr;
            }
            int i2 = this.f316d;
            this.f316d = i2 - 1;
            this.f315c[i2] = c0463c;
            this.f317e++;
            this.f318f += i;
        }

        /* renamed from: a */
        private void m304a(C0538f c0538f) throws IOException {
            int size;
            int i;
            if (this.f320j) {
                C0471k.m428a();
                if (C0471k.m427a(c0538f) < c0538f.size()) {
                    C0535c c0535c = new C0535c();
                    C0471k.m428a();
                    C0471k.m430a(c0538f, c0535c);
                    c0538f = c0535c.mo1166p();
                    size = c0538f.size();
                    i = 128;
                    m302a(size, C0464d.f302f, i);
                    this.f319i.mo1134e(c0538f);
                }
            }
            size = c0538f.size();
            i = 0;
            m302a(size, C0464d.f302f, i);
            this.f319i.mo1134e(c0538f);
        }

        /* renamed from: b */
        private int m305b(int i) {
            int i2 = 0;
            if (i > 0) {
                int length = this.f315c.length;
                while (true) {
                    length--;
                    if (length < this.f316d || i <= 0) {
                        break;
                    }
                    i -= this.f315c[length].f296i;
                    this.f318f -= this.f315c[length].f296i;
                    this.f317e--;
                    i2++;
                }
                System.arraycopy(this.f315c, this.f316d + 1, this.f315c, this.f316d + 1 + i2, this.f317e);
                Arrays.fill(this.f315c, this.f316d + 1, this.f316d + 1 + i2, (Object) null);
                this.f316d += i2;
            }
            return i2;
        }

        /* renamed from: b */
        private void m306b() {
            if (this.f314b < this.f318f) {
                if (this.f314b == 0) {
                    m301a();
                } else {
                    m305b(this.f318f - this.f314b);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final void m307a(int i) {
            this.f313a = i;
            int min = Math.min(i, 16384);
            if (this.f314b == min) {
                return;
            }
            if (min < this.f314b) {
                this.f321k = Math.min(this.f321k, min);
            }
            this.f322l = true;
            this.f314b = min;
            if (this.f314b < this.f318f) {
                if (this.f314b == 0) {
                    m301a();
                } else {
                    m305b(this.f318f - this.f314b);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final void m308a(List<C0463c> list) throws IOException {
            int i;
            int i2;
            if (this.f322l) {
                if (this.f321k < this.f314b) {
                    m302a(this.f321k, 31, 32);
                }
                this.f322l = false;
                this.f321k = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                m302a(this.f314b, 31, 32);
            }
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                C0463c c0463c = list.get(i3);
                C0538f asciiLowercase = c0463c.f294g.toAsciiLowercase();
                C0538f c0538f = c0463c.f295h;
                Integer num = C0464d.f298b.get(asciiLowercase);
                if (num != null) {
                    i = num.intValue() + 1;
                    if (i > 1 && i < 8) {
                        if (C0439c.m150a(C0464d.f297a[i - 1].f295h, c0538f)) {
                            i2 = i;
                        } else if (C0439c.m150a(C0464d.f297a[i].f295h, c0538f)) {
                            i2 = i;
                            i++;
                        }
                    }
                    i2 = i;
                    i = -1;
                } else {
                    i = -1;
                    i2 = -1;
                }
                if (i == -1) {
                    int i4 = this.f316d + 1;
                    int length = this.f315c.length;
                    while (true) {
                        if (i4 >= length) {
                            break;
                        }
                        if (C0439c.m150a(this.f315c[i4].f294g, asciiLowercase)) {
                            if (C0439c.m150a(this.f315c[i4].f295h, c0538f)) {
                                i = C0464d.f297a.length + (i4 - this.f316d);
                                break;
                            } else if (i2 == -1) {
                                i2 = (i4 - this.f316d) + C0464d.f297a.length;
                            }
                        }
                        i4++;
                    }
                }
                if (i != -1) {
                    m302a(i, C0464d.f302f, 128);
                } else {
                    if (i2 == -1) {
                        this.f319i.mo1157l(64);
                        m304a(asciiLowercase);
                    } else if (!asciiLowercase.startsWith(C0463c.f288a) || C0463c.f293f.equals(asciiLowercase)) {
                        m302a(i2, 63, 64);
                    } else {
                        m302a(i2, 15, 0);
                        m304a(c0538f);
                    }
                    m304a(c0538f);
                    m303a(c0463c);
                }
            }
        }
    }

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap(f297a.length);
        for (int i = 0; i < f297a.length; i++) {
            if (!linkedHashMap.containsKey(f297a[i].f294g)) {
                linkedHashMap.put(f297a[i].f294g, Integer.valueOf(i));
            }
        }
        f298b = Collections.unmodifiableMap(linkedHashMap);
    }

    private C0464d() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static C0538f m281a(C0538f c0538f) throws IOException {
        int size = c0538f.size();
        for (int i = 0; i < size; i++) {
            byte b2 = c0538f.getByte(i);
            if (b2 >= 65 && b2 <= 90) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + c0538f.utf8());
            }
        }
        return c0538f;
    }

    /* renamed from: a */
    private static Map<C0538f, Integer> m282a() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(f297a.length);
        for (int i = 0; i < f297a.length; i++) {
            if (!linkedHashMap.containsKey(f297a[i].f294g)) {
                linkedHashMap.put(f297a[i].f294g, Integer.valueOf(i));
            }
        }
        return Collections.unmodifiableMap(linkedHashMap);
    }
}
