package p003b;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* renamed from: b.i */
/* loaded from: classes.dex */
public final class C0511i {

    /* renamed from: bj */
    final String f892bj;

    /* renamed from: a */
    static final Comparator<String> f804a = new Comparator<String>() { // from class: b.i.1
        /* renamed from: a */
        private static int m732a(String str, String str2) {
            int min = Math.min(str.length(), str2.length());
            for (int i = 4; i < min; i++) {
                char charAt = str.charAt(i);
                char charAt2 = str2.charAt(i);
                if (charAt != charAt2) {
                    return charAt < charAt2 ? -1 : 1;
                }
            }
            int length = str.length();
            int length2 = str2.length();
            if (length != length2) {
                return length < length2 ? -1 : 1;
            }
            return 0;
        }

        @Override // java.util.Comparator
        public final /* synthetic */ int compare(String str, String str2) {
            String str3 = str;
            String str4 = str2;
            int min = Math.min(str3.length(), str4.length());
            for (int i = 4; i < min; i++) {
                char charAt = str3.charAt(i);
                char charAt2 = str4.charAt(i);
                if (charAt != charAt2) {
                    return charAt < charAt2 ? -1 : 1;
                }
            }
            int length = str3.length();
            int length2 = str4.length();
            if (length != length2) {
                return length < length2 ? -1 : 1;
            }
            return 0;
        }
    };

    /* renamed from: bk */
    private static final Map<String, C0511i> f867bk = new TreeMap(f804a);

    /* renamed from: b */
    public static final C0511i f857b = m728a("SSL_RSA_WITH_NULL_MD5");

    /* renamed from: c */
    public static final C0511i f868c = m728a("SSL_RSA_WITH_NULL_SHA");

    /* renamed from: d */
    public static final C0511i f869d = m728a("SSL_RSA_EXPORT_WITH_RC4_40_MD5");

    /* renamed from: e */
    public static final C0511i f870e = m728a("SSL_RSA_WITH_RC4_128_MD5");

    /* renamed from: f */
    public static final C0511i f871f = m728a("SSL_RSA_WITH_RC4_128_SHA");

    /* renamed from: g */
    public static final C0511i f872g = m728a("SSL_RSA_EXPORT_WITH_DES40_CBC_SHA");

    /* renamed from: h */
    public static final C0511i f873h = m728a("SSL_RSA_WITH_DES_CBC_SHA");

    /* renamed from: i */
    public static final C0511i f874i = m728a("SSL_RSA_WITH_3DES_EDE_CBC_SHA");

    /* renamed from: j */
    public static final C0511i f875j = m728a("SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA");

    /* renamed from: k */
    public static final C0511i f876k = m728a("SSL_DHE_DSS_WITH_DES_CBC_SHA");

    /* renamed from: l */
    public static final C0511i f877l = m728a("SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA");

    /* renamed from: m */
    public static final C0511i f878m = m728a("SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA");

    /* renamed from: n */
    public static final C0511i f879n = m728a("SSL_DHE_RSA_WITH_DES_CBC_SHA");

    /* renamed from: o */
    public static final C0511i f880o = m728a("SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA");

    /* renamed from: p */
    public static final C0511i f881p = m728a("SSL_DH_anon_EXPORT_WITH_RC4_40_MD5");

    /* renamed from: q */
    public static final C0511i f882q = m728a("SSL_DH_anon_WITH_RC4_128_MD5");

    /* renamed from: r */
    public static final C0511i f883r = m728a("SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA");

    /* renamed from: s */
    public static final C0511i f884s = m728a("SSL_DH_anon_WITH_DES_CBC_SHA");

    /* renamed from: t */
    public static final C0511i f885t = m728a("SSL_DH_anon_WITH_3DES_EDE_CBC_SHA");

    /* renamed from: u */
    public static final C0511i f886u = m728a("TLS_KRB5_WITH_DES_CBC_SHA");

    /* renamed from: v */
    public static final C0511i f887v = m728a("TLS_KRB5_WITH_3DES_EDE_CBC_SHA");

    /* renamed from: w */
    public static final C0511i f888w = m728a("TLS_KRB5_WITH_RC4_128_SHA");

    /* renamed from: x */
    public static final C0511i f889x = m728a("TLS_KRB5_WITH_DES_CBC_MD5");

    /* renamed from: y */
    public static final C0511i f890y = m728a("TLS_KRB5_WITH_3DES_EDE_CBC_MD5");

    /* renamed from: z */
    public static final C0511i f891z = m728a("TLS_KRB5_WITH_RC4_128_MD5");

    /* renamed from: A */
    public static final C0511i f778A = m728a("TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA");

    /* renamed from: B */
    public static final C0511i f779B = m728a("TLS_KRB5_EXPORT_WITH_RC4_40_SHA");

    /* renamed from: C */
    public static final C0511i f780C = m728a("TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5");

    /* renamed from: D */
    public static final C0511i f781D = m728a("TLS_KRB5_EXPORT_WITH_RC4_40_MD5");

    /* renamed from: E */
    public static final C0511i f782E = m728a("TLS_RSA_WITH_AES_128_CBC_SHA");

    /* renamed from: F */
    public static final C0511i f783F = m728a("TLS_DHE_DSS_WITH_AES_128_CBC_SHA");

    /* renamed from: G */
    public static final C0511i f784G = m728a("TLS_DHE_RSA_WITH_AES_128_CBC_SHA");

    /* renamed from: H */
    public static final C0511i f785H = m728a("TLS_DH_anon_WITH_AES_128_CBC_SHA");

    /* renamed from: I */
    public static final C0511i f786I = m728a("TLS_RSA_WITH_AES_256_CBC_SHA");

    /* renamed from: J */
    public static final C0511i f787J = m728a("TLS_DHE_DSS_WITH_AES_256_CBC_SHA");

    /* renamed from: K */
    public static final C0511i f788K = m728a("TLS_DHE_RSA_WITH_AES_256_CBC_SHA");

    /* renamed from: L */
    public static final C0511i f789L = m728a("TLS_DH_anon_WITH_AES_256_CBC_SHA");

    /* renamed from: M */
    public static final C0511i f790M = m728a("TLS_RSA_WITH_NULL_SHA256");

    /* renamed from: N */
    public static final C0511i f791N = m728a("TLS_RSA_WITH_AES_128_CBC_SHA256");

    /* renamed from: O */
    public static final C0511i f792O = m728a("TLS_RSA_WITH_AES_256_CBC_SHA256");

    /* renamed from: P */
    public static final C0511i f793P = m728a("TLS_DHE_DSS_WITH_AES_128_CBC_SHA256");

    /* renamed from: Q */
    public static final C0511i f794Q = m728a("TLS_RSA_WITH_CAMELLIA_128_CBC_SHA");

    /* renamed from: R */
    public static final C0511i f795R = m728a("TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA");

    /* renamed from: S */
    public static final C0511i f796S = m728a("TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA");

    /* renamed from: T */
    public static final C0511i f797T = m728a("TLS_DHE_RSA_WITH_AES_128_CBC_SHA256");

    /* renamed from: U */
    public static final C0511i f798U = m728a("TLS_DHE_DSS_WITH_AES_256_CBC_SHA256");

    /* renamed from: V */
    public static final C0511i f799V = m728a("TLS_DHE_RSA_WITH_AES_256_CBC_SHA256");

    /* renamed from: W */
    public static final C0511i f800W = m728a("TLS_DH_anon_WITH_AES_128_CBC_SHA256");

    /* renamed from: X */
    public static final C0511i f801X = m728a("TLS_DH_anon_WITH_AES_256_CBC_SHA256");

    /* renamed from: Y */
    public static final C0511i f802Y = m728a("TLS_RSA_WITH_CAMELLIA_256_CBC_SHA");

    /* renamed from: Z */
    public static final C0511i f803Z = m728a("TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA");

    /* renamed from: aa */
    public static final C0511i f831aa = m728a("TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA");

    /* renamed from: ab */
    public static final C0511i f832ab = m728a("TLS_PSK_WITH_RC4_128_SHA");

    /* renamed from: ac */
    public static final C0511i f833ac = m728a("TLS_PSK_WITH_3DES_EDE_CBC_SHA");

    /* renamed from: ad */
    public static final C0511i f834ad = m728a("TLS_PSK_WITH_AES_128_CBC_SHA");

    /* renamed from: ae */
    public static final C0511i f835ae = m728a("TLS_PSK_WITH_AES_256_CBC_SHA");

    /* renamed from: af */
    public static final C0511i f836af = m728a("TLS_RSA_WITH_SEED_CBC_SHA");

    /* renamed from: ag */
    public static final C0511i f837ag = m728a("TLS_RSA_WITH_AES_128_GCM_SHA256");

    /* renamed from: ah */
    public static final C0511i f838ah = m728a("TLS_RSA_WITH_AES_256_GCM_SHA384");

    /* renamed from: ai */
    public static final C0511i f839ai = m728a("TLS_DHE_RSA_WITH_AES_128_GCM_SHA256");

    /* renamed from: aj */
    public static final C0511i f840aj = m728a("TLS_DHE_RSA_WITH_AES_256_GCM_SHA384");

    /* renamed from: ak */
    public static final C0511i f841ak = m728a("TLS_DHE_DSS_WITH_AES_128_GCM_SHA256");

    /* renamed from: al */
    public static final C0511i f842al = m728a("TLS_DHE_DSS_WITH_AES_256_GCM_SHA384");

    /* renamed from: am */
    public static final C0511i f843am = m728a("TLS_DH_anon_WITH_AES_128_GCM_SHA256");

    /* renamed from: an */
    public static final C0511i f844an = m728a("TLS_DH_anon_WITH_AES_256_GCM_SHA384");

    /* renamed from: ao */
    public static final C0511i f845ao = m728a("TLS_EMPTY_RENEGOTIATION_INFO_SCSV");

    /* renamed from: ap */
    public static final C0511i f846ap = m728a("TLS_FALLBACK_SCSV");

    /* renamed from: aq */
    public static final C0511i f847aq = m728a("TLS_ECDH_ECDSA_WITH_NULL_SHA");

    /* renamed from: ar */
    public static final C0511i f848ar = m728a("TLS_ECDH_ECDSA_WITH_RC4_128_SHA");

    /* renamed from: as */
    public static final C0511i f849as = m728a("TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA");

    /* renamed from: at */
    public static final C0511i f850at = m728a("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA");

    /* renamed from: au */
    public static final C0511i f851au = m728a("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA");

    /* renamed from: av */
    public static final C0511i f852av = m728a("TLS_ECDHE_ECDSA_WITH_NULL_SHA");

    /* renamed from: aw */
    public static final C0511i f853aw = m728a("TLS_ECDHE_ECDSA_WITH_RC4_128_SHA");

    /* renamed from: ax */
    public static final C0511i f854ax = m728a("TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA");

    /* renamed from: ay */
    public static final C0511i f855ay = m728a("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA");

    /* renamed from: az */
    public static final C0511i f856az = m728a("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA");

    /* renamed from: aA */
    public static final C0511i f805aA = m728a("TLS_ECDH_RSA_WITH_NULL_SHA");

    /* renamed from: aB */
    public static final C0511i f806aB = m728a("TLS_ECDH_RSA_WITH_RC4_128_SHA");

    /* renamed from: aC */
    public static final C0511i f807aC = m728a("TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA");

    /* renamed from: aD */
    public static final C0511i f808aD = m728a("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA");

    /* renamed from: aE */
    public static final C0511i f809aE = m728a("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA");

    /* renamed from: aF */
    public static final C0511i f810aF = m728a("TLS_ECDHE_RSA_WITH_NULL_SHA");

    /* renamed from: aG */
    public static final C0511i f811aG = m728a("TLS_ECDHE_RSA_WITH_RC4_128_SHA");

    /* renamed from: aH */
    public static final C0511i f812aH = m728a("TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA");

    /* renamed from: aI */
    public static final C0511i f813aI = m728a("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA");

    /* renamed from: aJ */
    public static final C0511i f814aJ = m728a("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA");

    /* renamed from: aK */
    public static final C0511i f815aK = m728a("TLS_ECDH_anon_WITH_NULL_SHA");

    /* renamed from: aL */
    public static final C0511i f816aL = m728a("TLS_ECDH_anon_WITH_RC4_128_SHA");

    /* renamed from: aM */
    public static final C0511i f817aM = m728a("TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA");

    /* renamed from: aN */
    public static final C0511i f818aN = m728a("TLS_ECDH_anon_WITH_AES_128_CBC_SHA");

    /* renamed from: aO */
    public static final C0511i f819aO = m728a("TLS_ECDH_anon_WITH_AES_256_CBC_SHA");

    /* renamed from: aP */
    public static final C0511i f820aP = m728a("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256");

    /* renamed from: aQ */
    public static final C0511i f821aQ = m728a("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384");

    /* renamed from: aR */
    public static final C0511i f822aR = m728a("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256");

    /* renamed from: aS */
    public static final C0511i f823aS = m728a("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384");

    /* renamed from: aT */
    public static final C0511i f824aT = m728a("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256");

    /* renamed from: aU */
    public static final C0511i f825aU = m728a("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384");

    /* renamed from: aV */
    public static final C0511i f826aV = m728a("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256");

    /* renamed from: aW */
    public static final C0511i f827aW = m728a("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384");

    /* renamed from: aX */
    public static final C0511i f828aX = m728a("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256");

    /* renamed from: aY */
    public static final C0511i f829aY = m728a("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384");

    /* renamed from: aZ */
    public static final C0511i f830aZ = m728a("TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256");

    /* renamed from: ba */
    public static final C0511i f858ba = m728a("TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384");

    /* renamed from: bb */
    public static final C0511i f859bb = m728a("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256");

    /* renamed from: bc */
    public static final C0511i f860bc = m728a("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384");

    /* renamed from: bd */
    public static final C0511i f861bd = m728a("TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256");

    /* renamed from: be */
    public static final C0511i f862be = m728a("TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384");

    /* renamed from: bf */
    public static final C0511i f863bf = m728a("TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA");

    /* renamed from: bg */
    public static final C0511i f864bg = m728a("TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA");

    /* renamed from: bh */
    public static final C0511i f865bh = m728a("TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256");

    /* renamed from: bi */
    public static final C0511i f866bi = m728a("TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256");

    private C0511i(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.f892bj = str;
    }

    /* renamed from: a */
    public static synchronized C0511i m728a(String str) {
        C0511i c0511i;
        synchronized (C0511i.class) {
            c0511i = f867bk.get(str);
            if (c0511i == null) {
                c0511i = new C0511i(str);
                f867bk.put(str, c0511i);
            }
        }
        return c0511i;
    }

    /* renamed from: a */
    private String m729a() {
        return this.f892bj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static List<C0511i> m730a(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(m728a(str));
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: b */
    private static C0511i m731b(String str) {
        return m728a(str);
    }

    public final String toString() {
        return this.f892bj;
    }
}
