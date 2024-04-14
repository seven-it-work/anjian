package org.apache.commons.mail.p205a;

import org.apache.commons.mail.DataSourceResolver;

/* renamed from: org.apache.commons.mail.a.a */
/* loaded from: classes2.dex */
public abstract class AbstractC2757a implements DataSourceResolver {

    /* renamed from: a */
    final boolean f10440a;

    public AbstractC2757a() {
        this.f10440a = false;
    }

    public AbstractC2757a(boolean z) {
        this.f10440a = z;
    }

    /* renamed from: a */
    private boolean m12431a() {
        return this.f10440a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static boolean m12432a(String str) {
        return str.startsWith("http://") || str.startsWith("https://");
    }

    /* renamed from: b */
    private static boolean m12433b(String str) {
        return str.startsWith("cid:");
    }

    /* renamed from: c */
    private static boolean m12434c(String str) {
        return str.startsWith("file:/");
    }
}
