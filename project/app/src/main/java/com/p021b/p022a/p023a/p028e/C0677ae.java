package com.p021b.p022a.p023a.p028e;

import com.p021b.p032b.C0777a;
import java.io.IOException;
import java.net.SocketTimeoutException;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.b.a.a.e.ae */
/* loaded from: classes.dex */
public final class C0677ae extends C0777a {

    /* renamed from: a */
    final /* synthetic */ C0674ab f1588a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0677ae(C0674ab c0674ab) {
        this.f1588a = c0674ab;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.p021b.p032b.C0777a
    /* renamed from: a */
    public final IOException mo1691a(IOException iOException) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.p021b.p032b.C0777a
    /* renamed from: a */
    public final void mo1692a() {
        this.f1588a.m1678b(EnumC0686b.CANCEL);
    }

    /* renamed from: b */
    public final void m1693b() {
        if (m2010a_()) {
            throw mo1691a((IOException) null);
        }
    }
}
