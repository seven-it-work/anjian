package org.apache.commons.mail.p205a;

import java.io.IOException;
import java.io.InputStream;
import javax.activation.DataSource;
import javax.activation.FileTypeMap;
import javax.mail.util.ByteArrayDataSource;

/* renamed from: org.apache.commons.mail.a.b */
/* loaded from: classes2.dex */
public class C2758b extends AbstractC2757a {

    /* renamed from: b */
    private final String f10441b;

    public C2758b() {
        this.f10441b = "/";
    }

    private C2758b(String str) {
        if (!str.endsWith("/")) {
            str = str + "/";
        }
        this.f10441b = str;
    }

    private C2758b(String str, boolean z) {
        super(z);
        if (!str.endsWith("/")) {
            str = str + "/";
        }
        this.f10441b = str;
    }

    /* renamed from: a */
    private String m12435a() {
        return this.f10441b;
    }

    /* renamed from: b */
    private String m12436b(String str) {
        return (this.f10441b + str).replaceAll("//", "/");
    }

    @Override // org.apache.commons.mail.DataSourceResolver
    public DataSource resolve(String str) throws IOException {
        return resolve(str, this.f10440a);
    }

    @Override // org.apache.commons.mail.DataSourceResolver
    public DataSource resolve(String str, boolean z) throws IOException {
        try {
            if (str.startsWith("cid:") || m12432a(str)) {
                return null;
            }
            String contentType = FileTypeMap.getDefaultFileTypeMap().getContentType(str);
            String replaceAll = (this.f10441b + str).replaceAll("//", "/");
            InputStream resourceAsStream = C2758b.class.getResourceAsStream(replaceAll);
            if (resourceAsStream != null) {
                ByteArrayDataSource byteArrayDataSource = new ByteArrayDataSource(resourceAsStream, contentType);
                byteArrayDataSource.setName(C2758b.class.getResource(replaceAll).toString());
                return byteArrayDataSource;
            }
            if (z) {
                return null;
            }
            throw new IOException("The following class path resource was not found : " + str);
        } catch (IOException e) {
            if (z) {
                return null;
            }
            throw e;
        }
    }
}
