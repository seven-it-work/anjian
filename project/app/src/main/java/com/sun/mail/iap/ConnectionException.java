package com.sun.mail.iap;

/* loaded from: classes.dex */
public class ConnectionException extends ProtocolException {
    private static final long serialVersionUID = 5749739604257464727L;

    /* renamed from: p */
    private transient Protocol f8842p;

    public ConnectionException() {
    }

    public ConnectionException(Protocol protocol, Response response) {
        super(response);
        this.f8842p = protocol;
    }

    public ConnectionException(String str) {
        super(str);
    }

    public Protocol getProtocol() {
        return this.f8842p;
    }
}
