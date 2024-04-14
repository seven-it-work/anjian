package com.alibaba.sdk.android.oss.network;

import p003b.InterfaceC0507e;

/* loaded from: classes.dex */
public class CancellationHandler {
    private volatile InterfaceC0507e call;
    private volatile boolean isCancelled;

    public void cancel() {
        if (this.call != null) {
            this.call.mo570c();
        }
        this.isCancelled = true;
    }

    public boolean isCancelled() {
        return this.isCancelled;
    }

    public void setCall(InterfaceC0507e interfaceC0507e) {
        this.call = interfaceC0507e;
    }
}
