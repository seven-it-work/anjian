package p003b.p016b;

import java.io.EOFException;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import java.util.concurrent.TimeUnit;
import p003b.AbstractC0495ad;
import p003b.AbstractC0497af;
import p003b.C0494ac;
import p003b.C0496ae;
import p003b.C0523u;
import p003b.C0526x;
import p003b.EnumC0492aa;
import p003b.InterfaceC0512j;
import p003b.InterfaceC0525w;
import p003b.p004a.p008d.C0452e;
import p003b.p004a.p012h.C0481e;
import p017c.C0535c;
import p017c.InterfaceC0537e;

/* renamed from: b.b.a */
/* loaded from: classes.dex */
public final class C0504a implements InterfaceC0525w {

    /* renamed from: a */
    private static final Charset f698a = Charset.forName("UTF-8");

    /* renamed from: b */
    private final b f699b;

    /* renamed from: c */
    private volatile int f700c;

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* renamed from: b.b.a$a */
    /* loaded from: classes.dex */
    public static final class a {
        public static final int NONE$2dc28571 = 1;
        public static final int BASIC$2dc28571 = 2;
        public static final int HEADERS$2dc28571 = 3;
        public static final int BODY$2dc28571 = 4;
        private static final /* synthetic */ int[] $VALUES$fd1e174 = {NONE$2dc28571, BASIC$2dc28571, HEADERS$2dc28571, BODY$2dc28571};

        private a(String str, int i) {
        }

        public static int[] values$1f221b6b() {
            return (int[]) $VALUES$fd1e174.clone();
        }
    }

    /* renamed from: b.b.a$b */
    /* loaded from: classes.dex */
    public interface b {

        /* renamed from: a */
        public static final b f701a = new b() { // from class: b.b.a.b.1
            @Override // p003b.p016b.C0504a.b
            /* renamed from: a */
            public final void mo662a(String str) {
                C0481e.m489b().mo467a(4, str, (Throwable) null);
            }
        };

        /* renamed from: a */
        void mo662a(String str);
    }

    public C0504a() {
        this(b.f701a);
    }

    private C0504a(b bVar) {
        this.f700c = a.NONE$2dc28571;
        this.f699b = bVar;
    }

    /* renamed from: a */
    private int m658a() {
        return this.f700c;
    }

    /* renamed from: a */
    private C0504a m659a(int i) {
        if (i == 0) {
            throw new NullPointerException("level == null. Use Level.NONE instead.");
        }
        this.f700c = i;
        return this;
    }

    /* renamed from: a */
    private static boolean m660a(C0523u c0523u) {
        String m852a = c0523u.m852a("Content-Encoding");
        return (m852a == null || m852a.equalsIgnoreCase("identity")) ? false : true;
    }

    /* renamed from: a */
    private static boolean m661a(C0535c c0535c) {
        try {
            C0535c c0535c2 = new C0535c();
            c0535c.m1098a(c0535c2, 0L, c0535c.f1086c < 64 ? c0535c.f1086c : 64L);
            for (int i = 0; i < 16; i++) {
                if (c0535c2.mo1131d()) {
                    return true;
                }
                int mo1171u = c0535c2.mo1171u();
                if (Character.isISOControl(mo1171u) && !Character.isWhitespace(mo1171u)) {
                    return false;
                }
            }
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    @Override // p003b.InterfaceC0525w
    public final C0496ae intercept(InterfaceC0525w.a aVar) throws IOException {
        b bVar;
        String str;
        b bVar2;
        StringBuilder sb;
        String str2;
        int i = this.f700c;
        C0494ac mo251a = aVar.mo251a();
        if (i == a.NONE$2dc28571) {
            return aVar.mo252a(mo251a);
        }
        boolean z = i == a.BODY$2dc28571;
        boolean z2 = z || i == a.HEADERS$2dc28571;
        AbstractC0495ad abstractC0495ad = mo251a.f646d;
        boolean z3 = abstractC0495ad != null;
        InterfaceC0512j mo254b = aVar.mo254b();
        String str3 = "--> " + mo251a.f644b + ' ' + mo251a.f643a + ' ' + (mo254b != null ? mo254b.mo183d() : EnumC0492aa.HTTP_1_1);
        if (!z2 && z3) {
            str3 = str3 + " (" + abstractC0495ad.contentLength() + "-byte body)";
        }
        this.f699b.mo662a(str3);
        if (z2) {
            if (z3) {
                if (abstractC0495ad.contentType() != null) {
                    this.f699b.mo662a("Content-Type: " + abstractC0495ad.contentType());
                }
                if (abstractC0495ad.contentLength() != -1) {
                    this.f699b.mo662a("Content-Length: " + abstractC0495ad.contentLength());
                }
            }
            C0523u c0523u = mo251a.f645c;
            int length = c0523u.f956a.length / 2;
            for (int i2 = 0; i2 < length; i2++) {
                String m851a = c0523u.m851a(i2);
                if (!"Content-Type".equalsIgnoreCase(m851a) && !"Content-Length".equalsIgnoreCase(m851a)) {
                    this.f699b.mo662a(m851a + ": " + c0523u.m854b(i2));
                }
            }
            if (!z || !z3) {
                bVar2 = this.f699b;
                sb = new StringBuilder("--> END ");
                str2 = mo251a.f644b;
            } else if (m660a(mo251a.f645c)) {
                bVar2 = this.f699b;
                sb = new StringBuilder("--> END ");
                sb.append(mo251a.f644b);
                str2 = " (encoded body omitted)";
            } else {
                C0535c c0535c = new C0535c();
                abstractC0495ad.writeTo(c0535c);
                Charset charset = f698a;
                C0526x contentType = abstractC0495ad.contentType();
                if (contentType != null) {
                    charset = contentType.m960a(f698a);
                }
                this.f699b.mo662a("");
                if (m661a(c0535c)) {
                    this.f699b.mo662a(c0535c.mo1106a(charset));
                    bVar2 = this.f699b;
                    sb = new StringBuilder("--> END ");
                    sb.append(mo251a.f644b);
                    sb.append(" (");
                    sb.append(abstractC0495ad.contentLength());
                    str2 = "-byte body)";
                } else {
                    bVar2 = this.f699b;
                    sb = new StringBuilder("--> END ");
                    sb.append(mo251a.f644b);
                    sb.append(" (binary ");
                    sb.append(abstractC0495ad.contentLength());
                    str2 = "-byte body omitted)";
                }
            }
            sb.append(str2);
            bVar2.mo662a(sb.toString());
        }
        long nanoTime = System.nanoTime();
        try {
            C0496ae mo252a = aVar.mo252a(mo251a);
            long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - nanoTime);
            AbstractC0497af abstractC0497af = mo252a.f668g;
            long contentLength = abstractC0497af.contentLength();
            String str4 = contentLength != -1 ? contentLength + "-byte" : "unknown-length";
            b bVar3 = this.f699b;
            StringBuilder sb2 = new StringBuilder("<-- ");
            sb2.append(mo252a.f664c);
            sb2.append(' ');
            sb2.append(mo252a.f665d);
            sb2.append(' ');
            sb2.append(mo252a.f662a.f643a);
            sb2.append(" (");
            sb2.append(millis);
            sb2.append("ms");
            sb2.append(z2 ? "" : ", " + str4 + " body");
            sb2.append(')');
            bVar3.mo662a(sb2.toString());
            if (z2) {
                C0523u c0523u2 = mo252a.f667f;
                int length2 = c0523u2.f956a.length / 2;
                for (int i3 = 0; i3 < length2; i3++) {
                    this.f699b.mo662a(c0523u2.m851a(i3) + ": " + c0523u2.m854b(i3));
                }
                if (z && C0452e.m242d(mo252a)) {
                    if (!m660a(mo252a.f667f)) {
                        InterfaceC0537e source = abstractC0497af.source();
                        source.mo1121b(Long.MAX_VALUE);
                        C0535c mo1096a = source.mo1096a();
                        Charset charset2 = f698a;
                        C0526x contentType2 = abstractC0497af.contentType();
                        if (contentType2 != null) {
                            try {
                                charset2 = contentType2.m960a(f698a);
                            } catch (UnsupportedCharsetException unused) {
                                this.f699b.mo662a("");
                                this.f699b.mo662a("Couldn't decode the response body; charset is likely malformed.");
                                this.f699b.mo662a("<-- END HTTP");
                                return mo252a;
                            }
                        }
                        if (!m661a(mo1096a)) {
                            this.f699b.mo662a("");
                            this.f699b.mo662a("<-- END HTTP (binary " + mo1096a.f1086c + "-byte body omitted)");
                            return mo252a;
                        }
                        if (contentLength != 0) {
                            this.f699b.mo662a("");
                            this.f699b.mo662a(mo1096a.clone().mo1106a(charset2));
                        }
                        this.f699b.mo662a("<-- END HTTP (" + mo1096a.f1086c + "-byte body)");
                        return mo252a;
                    }
                    bVar = this.f699b;
                    str = "<-- END HTTP (encoded body omitted)";
                } else {
                    bVar = this.f699b;
                    str = "<-- END HTTP";
                }
                bVar.mo662a(str);
            }
            return mo252a;
        } catch (Exception e) {
            this.f699b.mo662a("<-- HTTP FAILED: " + e);
            throw e;
        }
    }
}
