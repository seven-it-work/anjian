package com.sun.mail.smtp;

import javax.mail.Address;
import javax.mail.SendFailedException;
import javax.mail.internet.InternetAddress;

/* loaded from: classes.dex */
public class SMTPSendFailedException extends SendFailedException {
    private static final long serialVersionUID = 8049122628728932894L;
    protected InternetAddress addr;
    protected String cmd;

    /* renamed from: rc */
    protected int f8856rc;

    public SMTPSendFailedException(String str, int i, String str2, Exception exc, Address[] addressArr, Address[] addressArr2, Address[] addressArr3) {
        super(str2, exc, addressArr, addressArr2, addressArr3);
        this.cmd = str;
        this.f8856rc = i;
    }

    public String getCommand() {
        return this.cmd;
    }

    public int getReturnCode() {
        return this.f8856rc;
    }
}
