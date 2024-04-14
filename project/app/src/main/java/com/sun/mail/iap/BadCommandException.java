package com.sun.mail.iap;

/* loaded from: classes.dex */
public class BadCommandException extends ProtocolException {
    private static final long serialVersionUID = 5769722539397237515L;

    public BadCommandException() {
    }

    public BadCommandException(Response response) {
        super(response);
    }

    public BadCommandException(String str) {
        super(str);
    }
}
