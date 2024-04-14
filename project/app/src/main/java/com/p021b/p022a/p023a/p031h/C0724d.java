package com.p021b.p022a.p023a.p031h;

import com.p021b.p022a.p023a.C0650c;
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

/* renamed from: com.b.a.a.h.d */
/* loaded from: classes.dex */
public final class C0724d implements HostnameVerifier {

    /* renamed from: a */
    public static final C0724d f1775a = new C0724d();

    private C0724d() {
    }

    /* renamed from: a */
    public static List<String> m1812a(X509Certificate x509Certificate) {
        List<String> m1813a = m1813a(x509Certificate, 7);
        List<String> m1813a2 = m1813a(x509Certificate, 2);
        ArrayList arrayList = new ArrayList(m1813a.size() + m1813a2.size());
        arrayList.addAll(m1813a);
        arrayList.addAll(m1813a2);
        return arrayList;
    }

    /* renamed from: a */
    private static List<String> m1813a(X509Certificate x509Certificate, int i) {
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
    private static boolean m1814a(String str, String str2) {
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

    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        X509Certificate x509Certificate;
        String m1811a;
        try {
            x509Certificate = (X509Certificate) sSLSession.getPeerCertificates()[0];
        } catch (SSLException unused) {
        }
        if (C0650c.m1623c(str)) {
            List<String> m1813a = m1813a(x509Certificate, 7);
            int size = m1813a.size();
            for (int i = 0; i < size; i++) {
                if (str.equalsIgnoreCase(m1813a.get(i))) {
                    return true;
                }
            }
            return false;
        }
        String lowerCase = str.toLowerCase(Locale.US);
        List<String> m1813a2 = m1813a(x509Certificate, 2);
        int size2 = m1813a2.size();
        int i2 = 0;
        boolean z = false;
        while (i2 < size2) {
            if (m1814a(lowerCase, m1813a2.get(i2))) {
                return true;
            }
            i2++;
            z = true;
        }
        if (!z && (m1811a = new C0723c(x509Certificate.getSubjectX500Principal()).m1811a("cn")) != null) {
            return m1814a(lowerCase, m1811a);
        }
        return false;
    }
}
