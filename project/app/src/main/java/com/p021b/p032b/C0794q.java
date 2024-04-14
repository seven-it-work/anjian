package com.p021b.p032b;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* renamed from: com.b.b.q */
/* loaded from: classes.dex */
final class C0794q extends C0777a {

    /* renamed from: a */
    final /* synthetic */ Socket f2166a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0794q(Socket socket) {
        this.f2166a = socket;
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
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.p021b.p032b.C0777a
    /* renamed from: a */
    public final void mo1692a() {
        Level level;
        StringBuilder sb;
        Logger logger;
        Exception exc;
        try {
            this.f2166a.close();
        } catch (AssertionError e) {
            if (!C0791n.m2104a(e)) {
                throw e;
            }
            Logger logger2 = C0791n.f2161a;
            level = Level.WARNING;
            sb = new StringBuilder("Failed to close timed out socket ");
            exc = e;
            logger = logger2;
            sb.append(this.f2166a);
            logger.log(level, sb.toString(), (Throwable) exc);
        } catch (Exception e2) {
            Logger logger3 = C0791n.f2161a;
            level = Level.WARNING;
            sb = new StringBuilder("Failed to close timed out socket ");
            exc = e2;
            logger = logger3;
            sb.append(this.f2166a);
            logger.log(level, sb.toString(), (Throwable) exc);
        }
    }
}
