package org.apache.commons.mail.p205a;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import javax.activation.DataSource;
import javax.activation.URLDataSource;

/* renamed from: org.apache.commons.mail.a.e */
/* loaded from: classes2.dex */
public final class C2761e extends AbstractC2757a {

    /* renamed from: b */
    private final URL f10444b;

    private C2761e(URL url) {
        this.f10444b = url;
    }

    private C2761e(URL url, boolean z) {
        super(z);
        this.f10444b = url;
    }

    /* renamed from: a */
    private URL m12439a() {
        return this.f10444b;
    }

    /* renamed from: b */
    private URL m12440b(String str) throws MalformedURLException {
        if (this.f10444b == null) {
            return new URL(str);
        }
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("No resource defined");
        }
        return (str.startsWith("file:/") || m12432a(str)) ? new URL(str) : new URL(this.f10444b, str.replaceAll("&amp;", "&"));
    }

    @Override // org.apache.commons.mail.DataSourceResolver
    public final DataSource resolve(String str) throws IOException {
        return resolve(str, this.f10440a);
    }

    @Override // org.apache.commons.mail.DataSourceResolver
    public final DataSource resolve(String str, boolean z) throws IOException {
        URL url;
        try {
            if (str.startsWith("cid:")) {
                return null;
            }
            if (this.f10444b != null) {
                if (str != null && str.length() != 0) {
                    if (!str.startsWith("file:/") && !m12432a(str)) {
                        url = new URL(this.f10444b, str.replaceAll("&amp;", "&"));
                    }
                    url = new URL(str);
                }
                throw new IllegalArgumentException("No resource defined");
            }
            url = new URL(str);
            URLDataSource uRLDataSource = new URLDataSource(url);
            uRLDataSource.getInputStream();
            return uRLDataSource;
        } catch (IOException e) {
            if (z) {
                return null;
            }
            throw e;
        }
    }
}
