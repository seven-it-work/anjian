package com.alibaba.sdk.android.oss.network;

import android.support.v4.media.session.PlaybackStateCompat;
import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;
import com.alibaba.sdk.android.oss.model.OSSRequest;
import java.io.IOException;
import java.io.InputStream;
import p003b.AbstractC0495ad;
import p003b.C0526x;
import p017c.C0548p;
import p017c.InterfaceC0536d;
import p017c.InterfaceC0557y;

/* loaded from: classes.dex */
public class ProgressTouchableRequestBody<T extends OSSRequest> extends AbstractC0495ad {
    private static final int SEGMENT_SIZE = 2048;
    private OSSProgressCallback callback;
    private long contentLength;
    private String contentType;
    private InputStream inputStream;
    private T request;

    public ProgressTouchableRequestBody(InputStream inputStream, long j, String str, ExecutionContext executionContext) {
        this.inputStream = inputStream;
        this.contentType = str;
        this.contentLength = j;
        this.callback = executionContext.getProgressCallback();
        this.request = (T) executionContext.getRequest();
    }

    @Override // p003b.AbstractC0495ad
    public long contentLength() throws IOException {
        return this.contentLength;
    }

    @Override // p003b.AbstractC0495ad
    public C0526x contentType() {
        return C0526x.m956a(this.contentType);
    }

    @Override // p003b.AbstractC0495ad
    public void writeTo(InterfaceC0536d interfaceC0536d) throws IOException {
        InterfaceC0557y m1223a = C0548p.m1223a(this.inputStream);
        long j = 0;
        while (j < this.contentLength) {
            long read = m1223a.read(interfaceC0536d.mo1096a(), Math.min(this.contentLength - j, (long) PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH));
            if (read == -1) {
                break;
            }
            long j2 = j + read;
            interfaceC0536d.flush();
            if (this.callback != null && j2 != 0) {
                this.callback.onProgress(this.request, j2, this.contentLength);
            }
            j = j2;
        }
        if (m1223a != null) {
            m1223a.close();
        }
    }
}
