package com.alibaba.sdk.android.oss.network;

import com.alibaba.sdk.android.oss.internal.OSSRetryHandler;
import com.alibaba.sdk.android.oss.internal.RequestMessage;
import com.alibaba.sdk.android.oss.internal.ResponseParser;
import com.alibaba.sdk.android.oss.model.OSSResult;
import java.util.concurrent.Callable;
import p003b.C0528z;

/* loaded from: classes.dex */
public class OSSRequestTask<T extends OSSResult> implements Callable<T> {
    private C0528z client;
    private ExecutionContext context;
    private int currentRetryCount = 0;
    private RequestMessage message;
    private ResponseParser<T> responseParser;
    private OSSRetryHandler retryHandler;

    public OSSRequestTask(RequestMessage requestMessage, ResponseParser responseParser, ExecutionContext executionContext, int i) {
        this.responseParser = responseParser;
        this.message = requestMessage;
        this.context = executionContext;
        this.client = executionContext.getClient();
        this.retryHandler = new OSSRetryHandler(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0241  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0305  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0280 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v21, types: [b.e] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v31 */
    /* JADX WARN: Type inference failed for: r2v4, types: [b.e] */
    /* JADX WARN: Type inference failed for: r4v26, types: [com.alibaba.sdk.android.oss.network.CancellationHandler] */
    @Override // java.util.concurrent.Callable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public T call() throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 896
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.sdk.android.oss.network.OSSRequestTask.call():com.alibaba.sdk.android.oss.model.OSSResult");
    }
}
