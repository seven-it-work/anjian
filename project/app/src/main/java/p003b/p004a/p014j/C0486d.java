package p003b.p004a.p014j;

import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import org.apache.commons.io.FilenameUtils;
import org.slf4j.Marker;

/* renamed from: b.a.j.d */
/* loaded from: classes.dex */
public final class C0486d implements HostnameVerifier {

    /* renamed from: a */
    public static final C0486d f540a = new C0486d();

    /* renamed from: b */
    private static final int f541b = 2;

    /* renamed from: c */
    private static final int f542c = 7;

    private C0486d() {
    }

    /* renamed from: a */
    public static List<String> m509a(X509Certificate x509Certificate) {
        List<String> m510a = m510a(x509Certificate, 7);
        List<String> m510a2 = m510a(x509Certificate, 2);
        ArrayList arrayList = new ArrayList(m510a.size() + m510a2.size());
        arrayList.addAll(m510a);
        arrayList.addAll(m510a2);
        return arrayList;
    }

    /* renamed from: a */
    private static List<String> m510a(X509Certificate x509Certificate, int i) {
        Integer num;
        String str;
        ArrayList arrayList = new ArrayList();
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return Collections.emptyList();
            }
            for (List<?> list : subjectAlternativeNames) {
                if (list != null && list.size() >= 2 && (num = (Integer) list.get(0)) != null && num.intValue() == i && (str = (String) list.get(1)) != null) {
                    arrayList.add(str);
                }
            }
            return arrayList;
        } catch (CertificateParsingException unused) {
            return Collections.emptyList();
        }
    }

    /* renamed from: a */
    private static boolean m511a(String str, String str2) {
        if (str == null || str.length() == 0 || str.startsWith(".") || str.endsWith("..") || str2 == null || str2.length() == 0 || str2.startsWith(".") || str2.endsWith("..")) {
            return false;
        }
        if (!str.endsWith(".")) {
            str = str + FilenameUtils.EXTENSION_SEPARATOR;
        }
        if (!str2.endsWith(".")) {
            str2 = str2 + FilenameUtils.EXTENSION_SEPARATOR;
        }
        String lowerCase = str2.toLowerCase(Locale.US);
        if (!lowerCase.contains(Marker.ANY_MARKER)) {
            return str.equals(lowerCase);
        }
        if (!lowerCase.startsWith("*.") || lowerCase.indexOf(42, 1) != -1 || str.length() < lowerCase.length() || "*.".equals(lowerCase)) {
            return false;
        }
        String substring = lowerCase.substring(1);
        if (!str.endsWith(substring)) {
            return false;
        }
        int length = str.length() - substring.length();
        return length <= 0 || str.lastIndexOf(46, length - 1) == -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x006b, code lost:
    
        if (r3 == null) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x006f, code lost:
    
        r5 = "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0075, code lost:
    
        if (r0.f535c != r0.f534b) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x007f, code lost:
    
        switch(r0.f539g[r0.f535c]) {
            case 34: goto L28;
            case 35: goto L27;
            case 43: goto L46;
            case 44: goto L46;
            case 59: goto L46;
            default: goto L26;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0082, code lost:
    
        r5 = r0.m507c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0088, code lost:
    
        r5 = r0.m506b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x008e, code lost:
    
        r0.f535c++;
        r0.f536d = r0.f535c;
        r5 = r0.f536d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0099, code lost:
    
        r0.f537e = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x009f, code lost:
    
        if (r0.f535c != r0.f534b) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00bf, code lost:
    
        if (r0.f539g[r0.f535c] != '\"') goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00ee, code lost:
    
        if (r0.f539g[r0.f535c] != '\\') goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00f0, code lost:
    
        r0.f539g[r0.f537e] = r0.m508d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0107, code lost:
    
        r0.f535c++;
        r5 = r0.f537e + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00fb, code lost:
    
        r0.f539g[r0.f537e] = r0.f539g[r0.f535c];
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00c1, code lost:
    
        r0.f535c++;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00ca, code lost:
    
        if (r0.f535c >= r0.f534b) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00d4, code lost:
    
        if (r0.f539g[r0.f535c] != ' ') goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00d7, code lost:
    
        r5 = new java.lang.String(r0.f539g, r0.f536d, r0.f537e - r0.f536d);
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00b6, code lost:
    
        throw new java.lang.IllegalStateException("Unexpected end of DN: " + r0.f533a);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0114, code lost:
    
        if ("cn".equalsIgnoreCase(r3) == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x011c, code lost:
    
        if (r0.f535c < r0.f534b) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x012d, code lost:
    
        if (r0.f539g[r0.f535c] == ',') goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0137, code lost:
    
        if (r0.f539g[r0.f535c] == ';') goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0141, code lost:
    
        if (r0.f539g[r0.f535c] == '+') goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0158, code lost:
    
        throw new java.lang.IllegalStateException("Malformed DN: " + r0.f533a);
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0159, code lost:
    
        r0.f535c++;
        r3 = r0.m505a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0162, code lost:
    
        if (r3 != null) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0179, code lost:
    
        throw new java.lang.IllegalStateException("Malformed DN: " + r0.f533a);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0116, code lost:
    
        r4 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x011e, code lost:
    
        if (r4 == null) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0124, code lost:
    
        return m511a(r10, r4);
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean m512a(java.lang.String r10, java.security.cert.X509Certificate r11) {
        /*
            Method dump skipped, instructions count: 402
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p003b.p004a.p014j.C0486d.m512a(java.lang.String, java.security.cert.X509Certificate):boolean");
    }

    /* renamed from: b */
    private static boolean m513b(String str, X509Certificate x509Certificate) {
        List<String> m510a = m510a(x509Certificate, 7);
        int size = m510a.size();
        for (int i = 0; i < size; i++) {
            if (str.equalsIgnoreCase(m510a.get(i))) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0048, code lost:
    
        if (r1 == null) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x004c, code lost:
    
        r5 = "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0052, code lost:
    
        if (r0.f535c != r0.f534b) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x005c, code lost:
    
        switch(r0.f539g[r0.f535c]) {
            case 34: goto L19;
            case 35: goto L18;
            case 43: goto L37;
            case 44: goto L37;
            case 59: goto L37;
            default: goto L17;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005f, code lost:
    
        r5 = r0.m507c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0065, code lost:
    
        r5 = r0.m506b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x006b, code lost:
    
        r0.f535c++;
        r0.f536d = r0.f535c;
        r5 = r0.f536d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0076, code lost:
    
        r0.f537e = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x007c, code lost:
    
        if (r0.f535c != r0.f534b) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x009c, code lost:
    
        if (r0.f539g[r0.f535c] != '\"') goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00cb, code lost:
    
        if (r0.f539g[r0.f535c] != '\\') goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00cd, code lost:
    
        r0.f539g[r0.f537e] = r0.m508d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00e4, code lost:
    
        r0.f535c++;
        r5 = r0.f537e + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00d8, code lost:
    
        r0.f539g[r0.f537e] = r0.f539g[r0.f535c];
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x009e, code lost:
    
        r0.f535c++;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00a7, code lost:
    
        if (r0.f535c >= r0.f534b) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00b1, code lost:
    
        if (r0.f539g[r0.f535c] != ' ') goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b4, code lost:
    
        r5 = new java.lang.String(r0.f539g, r0.f536d, r0.f537e - r0.f536d);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0093, code lost:
    
        throw new java.lang.IllegalStateException("Unexpected end of DN: " + r0.f533a);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00f1, code lost:
    
        if ("cn".equalsIgnoreCase(r1) == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00f9, code lost:
    
        if (r0.f535c < r0.f534b) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x010a, code lost:
    
        if (r0.f539g[r0.f535c] == ',') goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0114, code lost:
    
        if (r0.f539g[r0.f535c] == ';') goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x011e, code lost:
    
        if (r0.f539g[r0.f535c] == '+') goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0135, code lost:
    
        throw new java.lang.IllegalStateException("Malformed DN: " + r0.f533a);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0136, code lost:
    
        r0.f535c++;
        r1 = r0.m505a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x013f, code lost:
    
        if (r1 != null) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0156, code lost:
    
        throw new java.lang.IllegalStateException("Malformed DN: " + r0.f533a);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00f3, code lost:
    
        r4 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00fb, code lost:
    
        if (r4 == null) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0101, code lost:
    
        return m511a(r10, r4);
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static boolean m514c(java.lang.String r10, java.security.cert.X509Certificate r11) {
        /*
            Method dump skipped, instructions count: 366
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p003b.p004a.p014j.C0486d.m514c(java.lang.String, java.security.cert.X509Certificate):boolean");
    }

    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        try {
            return m512a(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
        } catch (SSLException unused) {
            return false;
        }
    }
}
