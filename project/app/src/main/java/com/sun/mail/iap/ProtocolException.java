package com.sun.mail.iap;

/* loaded from: classes.dex */
public class ProtocolException extends Exception {
    private static final long serialVersionUID = -4360500807971797439L;
    protected transient Response response;

    public ProtocolException() {
        this.response = null;
    }

    public ProtocolException(Response response) {
        super(response.toString());
        this.response = null;
        this.response = response;
    }

    public ProtocolException(String str) {
        super(str);
        this.response = null;
    }

    public Response getResponse() {
        return this.response;
    }
}
