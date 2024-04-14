package org.apache.commons.mail.p205a;

import java.io.File;
import java.io.IOException;
import javax.activation.DataSource;
import javax.activation.FileDataSource;

/* renamed from: org.apache.commons.mail.a.d */
/* loaded from: classes2.dex */
public final class C2760d extends AbstractC2757a {

    /* renamed from: b */
    private final File f10443b;

    public C2760d() {
        this.f10443b = new File(".");
    }

    private C2760d(File file) {
        this.f10443b = file;
    }

    private C2760d(File file, boolean z) {
        super(z);
        this.f10443b = file;
    }

    /* renamed from: a */
    private File m12438a() {
        return this.f10443b;
    }

    @Override // org.apache.commons.mail.DataSourceResolver
    public final DataSource resolve(String str) throws IOException {
        return resolve(str, this.f10440a);
    }

    @Override // org.apache.commons.mail.DataSourceResolver
    public final DataSource resolve(String str, boolean z) throws IOException {
        if (str.startsWith("cid:")) {
            return null;
        }
        File file = new File(str);
        if (!file.isAbsolute()) {
            file = this.f10443b != null ? new File(this.f10443b, str) : new File(str);
        }
        if (file.exists()) {
            return new FileDataSource(file);
        }
        if (z) {
            return null;
        }
        throw new IOException("Cant resolve the following file resource :" + file.getAbsolutePath());
    }
}
