package com.alibaba.sdk.android.oss.network;

import java.io.IOException;
import java.io.InputStream;
import p003b.C0496ae;
import p003b.C0528z;
import p003b.InterfaceC0525w;

/* loaded from: classes.dex */
public class NetworkProgressHelper {
    public static ProgressTouchableRequestBody addProgressRequestBody(InputStream inputStream, long j, String str, ExecutionContext executionContext) {
        return new ProgressTouchableRequestBody(inputStream, j, str, executionContext);
    }

    public static C0528z addProgressResponseListener(C0528z c0528z, final ExecutionContext executionContext) {
        return c0528z.m1009a().m1033a(new InterfaceC0525w() { // from class: com.alibaba.sdk.android.oss.network.NetworkProgressHelper.1
            @Override // p003b.InterfaceC0525w
            public final C0496ae intercept(InterfaceC0525w.a aVar) throws IOException {
                C0496ae mo252a = aVar.mo252a(aVar.mo251a());
                return mo252a.m626e().m641a(new ProgressTouchableResponseBody(mo252a.m625d(), ExecutionContext.this)).m644a();
            }
        }).m1041e();
    }
}
