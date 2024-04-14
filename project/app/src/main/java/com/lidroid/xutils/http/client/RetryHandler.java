package com.lidroid.xutils.http.client;

import java.io.InterruptedIOException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.HashSet;
import javax.net.ssl.SSLHandshakeException;
import org.apache.http.NoHttpResponseException;
import org.apache.http.client.HttpRequestRetryHandler;

/* loaded from: classes.dex */
public class RetryHandler implements HttpRequestRetryHandler {
    private static final int RETRY_SLEEP_INTERVAL = 500;
    private final int maxRetries;
    private static HashSet<Class<?>> exceptionWhiteList = new HashSet<>();
    private static HashSet<Class<?>> exceptionBlackList = new HashSet<>();

    static {
        exceptionWhiteList.add(NoHttpResponseException.class);
        exceptionWhiteList.add(UnknownHostException.class);
        exceptionWhiteList.add(SocketException.class);
        exceptionBlackList.add(InterruptedIOException.class);
        exceptionBlackList.add(SSLHandshakeException.class);
    }

    public RetryHandler(int i) {
        this.maxRetries = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x006d  */
    @Override // org.apache.http.client.HttpRequestRetryHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean retryRequest(java.io.IOException r5, int r6, org.apache.http.protocol.HttpContext r7) {
        /*
            r4 = this;
            r0 = 0
            if (r5 == 0) goto L73
            if (r7 != 0) goto L6
            return r0
        L6:
            java.lang.String r1 = "http.request_sent"
            java.lang.Object r1 = r7.getAttribute(r1)
            if (r1 != 0) goto L10
            r1 = 0
            goto L16
        L10:
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
        L16:
            int r2 = r4.maxRetries
            r3 = 1
            if (r6 <= r2) goto L1d
        L1b:
            r3 = 0
            goto L34
        L1d:
            java.util.HashSet<java.lang.Class<?>> r6 = com.lidroid.xutils.http.client.RetryHandler.exceptionBlackList
            java.lang.Class r2 = r5.getClass()
            boolean r6 = r6.contains(r2)
            if (r6 == 0) goto L2a
            goto L1b
        L2a:
            java.util.HashSet<java.lang.Class<?>> r6 = com.lidroid.xutils.http.client.RetryHandler.exceptionWhiteList
            java.lang.Class r5 = r5.getClass()
            boolean r5 = r6.contains(r5)
        L34:
            if (r3 == 0) goto L6a
            java.lang.String r5 = "http.request"
            java.lang.Object r5 = r7.getAttribute(r5)     // Catch: java.lang.Throwable -> L62
            if (r5 == 0) goto L5c
            boolean r6 = r5 instanceof org.apache.http.client.methods.HttpRequestBase     // Catch: java.lang.Throwable -> L62
            if (r6 == 0) goto L4f
            org.apache.http.client.methods.HttpRequestBase r5 = (org.apache.http.client.methods.HttpRequestBase) r5     // Catch: java.lang.Throwable -> L62
            java.lang.String r6 = "GET"
            java.lang.String r5 = r5.getMethod()     // Catch: java.lang.Throwable -> L62
        L4a:
            boolean r5 = r6.equals(r5)     // Catch: java.lang.Throwable -> L62
            goto L6b
        L4f:
            boolean r6 = r5 instanceof org.apache.http.impl.client.RequestWrapper     // Catch: java.lang.Throwable -> L62
            if (r6 == 0) goto L6a
            org.apache.http.impl.client.RequestWrapper r5 = (org.apache.http.impl.client.RequestWrapper) r5     // Catch: java.lang.Throwable -> L62
            java.lang.String r6 = "GET"
            java.lang.String r5 = r5.getMethod()     // Catch: java.lang.Throwable -> L62
            goto L4a
        L5c:
            java.lang.String r5 = "retry error, curr request is null"
            com.lidroid.xutils.util.LogUtils.m10368e(r5)     // Catch: java.lang.Throwable -> L62
            goto L68
        L62:
            r5 = move-exception
            java.lang.String r6 = "retry error"
            com.lidroid.xutils.util.LogUtils.m10369e(r6, r5)
        L68:
            r5 = 0
            goto L6b
        L6a:
            r5 = r3
        L6b:
            if (r5 == 0) goto L72
            r6 = 500(0x1f4, double:2.47E-321)
            android.os.SystemClock.sleep(r6)
        L72:
            return r5
        L73:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lidroid.xutils.http.client.RetryHandler.retryRequest(java.io.IOException, int, org.apache.http.protocol.HttpContext):boolean");
    }
}
