package com.alibaba.sdk.android.oss.network;

import android.content.Context;
import com.alibaba.sdk.android.oss.callback.OSSCompletedCallback;
import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;
import com.alibaba.sdk.android.oss.callback.OSSRetryCallback;
import com.alibaba.sdk.android.oss.model.OSSRequest;
import p003b.C0528z;

/* loaded from: classes.dex */
public class ExecutionContext<T extends OSSRequest> {
    private Context applicationContext;
    private CancellationHandler cancellationHandler;
    private C0528z client;
    private OSSCompletedCallback completedCallback;
    private OSSProgressCallback progressCallback;
    private T request;
    private OSSRetryCallback retryCallback;

    public ExecutionContext(C0528z c0528z, T t) {
        this(c0528z, t, null);
    }

    public ExecutionContext(C0528z c0528z, T t, Context context) {
        this.cancellationHandler = new CancellationHandler();
        setClient(c0528z);
        setRequest(t);
        this.applicationContext = context;
    }

    public Context getApplicationContext() {
        return this.applicationContext;
    }

    public CancellationHandler getCancellationHandler() {
        return this.cancellationHandler;
    }

    public C0528z getClient() {
        return this.client;
    }

    public OSSCompletedCallback getCompletedCallback() {
        return this.completedCallback;
    }

    public OSSProgressCallback getProgressCallback() {
        return this.progressCallback;
    }

    public T getRequest() {
        return this.request;
    }

    public OSSRetryCallback getRetryCallback() {
        return this.retryCallback;
    }

    public void setClient(C0528z c0528z) {
        this.client = c0528z;
    }

    public void setCompletedCallback(OSSCompletedCallback oSSCompletedCallback) {
        this.completedCallback = oSSCompletedCallback;
    }

    public void setProgressCallback(OSSProgressCallback oSSProgressCallback) {
        this.progressCallback = oSSProgressCallback;
    }

    public void setRequest(T t) {
        this.request = t;
    }

    public void setRetryCallback(OSSRetryCallback oSSRetryCallback) {
        this.retryCallback = oSSRetryCallback;
    }
}
