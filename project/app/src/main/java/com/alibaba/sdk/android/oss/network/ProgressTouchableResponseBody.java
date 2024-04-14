package com.alibaba.sdk.android.oss.network;

import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;
import com.alibaba.sdk.android.oss.model.OSSRequest;
import java.io.IOException;
import p003b.AbstractC0497af;
import p003b.C0526x;
import p017c.AbstractC0541i;
import p017c.C0535c;
import p017c.C0548p;
import p017c.InterfaceC0537e;
import p017c.InterfaceC0557y;

/* loaded from: classes.dex */
public class ProgressTouchableResponseBody<T extends OSSRequest> extends AbstractC0497af {
    private InterfaceC0537e mBufferedSource;
    private OSSProgressCallback mProgressListener;
    private final AbstractC0497af mResponseBody;
    private T request;

    public ProgressTouchableResponseBody(AbstractC0497af abstractC0497af, ExecutionContext executionContext) {
        this.mResponseBody = abstractC0497af;
        this.mProgressListener = executionContext.getProgressCallback();
        this.request = (T) executionContext.getRequest();
    }

    private InterfaceC0557y source(InterfaceC0557y interfaceC0557y) {
        return new AbstractC0541i(interfaceC0557y) { // from class: com.alibaba.sdk.android.oss.network.ProgressTouchableResponseBody.1
            private long totalBytesRead = 0;

            @Override // p017c.AbstractC0541i, p017c.InterfaceC0557y
            public long read(C0535c c0535c, long j) throws IOException {
                long read = super.read(c0535c, j);
                this.totalBytesRead += read != -1 ? read : 0L;
                if (ProgressTouchableResponseBody.this.mProgressListener != null && this.totalBytesRead != -1 && this.totalBytesRead != 0) {
                    ProgressTouchableResponseBody.this.mProgressListener.onProgress(ProgressTouchableResponseBody.this.request, this.totalBytesRead, ProgressTouchableResponseBody.this.mResponseBody.contentLength());
                }
                return read;
            }
        };
    }

    @Override // p003b.AbstractC0497af
    public long contentLength() {
        return this.mResponseBody.contentLength();
    }

    @Override // p003b.AbstractC0497af
    public C0526x contentType() {
        return this.mResponseBody.contentType();
    }

    @Override // p003b.AbstractC0497af
    public InterfaceC0537e source() {
        if (this.mBufferedSource == null) {
            this.mBufferedSource = C0548p.m1217a(source(this.mResponseBody.source()));
        }
        return this.mBufferedSource;
    }
}
