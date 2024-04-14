package org.apache.commons.mail.p205a;

import java.io.IOException;
import javax.activation.DataSource;
import org.apache.commons.mail.DataSourceResolver;

/* renamed from: org.apache.commons.mail.a.c */
/* loaded from: classes2.dex */
public final class C2759c extends AbstractC2757a {

    /* renamed from: b */
    private final DataSourceResolver[] f10442b;

    private C2759c(DataSourceResolver[] dataSourceResolverArr) {
        this.f10442b = new DataSourceResolver[dataSourceResolverArr.length];
        System.arraycopy(dataSourceResolverArr, 0, this.f10442b, 0, dataSourceResolverArr.length);
    }

    private C2759c(DataSourceResolver[] dataSourceResolverArr, boolean z) {
        super(z);
        this.f10442b = new DataSourceResolver[dataSourceResolverArr.length];
        System.arraycopy(dataSourceResolverArr, 0, this.f10442b, 0, dataSourceResolverArr.length);
    }

    /* renamed from: a */
    private DataSourceResolver[] m12437a() {
        DataSourceResolver[] dataSourceResolverArr = new DataSourceResolver[this.f10442b.length];
        System.arraycopy(this.f10442b, 0, dataSourceResolverArr, 0, this.f10442b.length);
        return dataSourceResolverArr;
    }

    @Override // org.apache.commons.mail.DataSourceResolver
    public final DataSource resolve(String str) throws IOException {
        DataSource resolve = resolve(str, true);
        if (this.f10440a || resolve != null) {
            return resolve;
        }
        throw new IOException("The following resource was not found : " + str);
    }

    @Override // org.apache.commons.mail.DataSourceResolver
    public final DataSource resolve(String str, boolean z) throws IOException {
        for (int i = 0; i < m12437a().length; i++) {
            DataSource resolve = m12437a()[i].resolve(str, z);
            if (resolve != null) {
                return resolve;
            }
        }
        if (z) {
            return null;
        }
        throw new IOException("The following resource was not found : " + str);
    }
}
