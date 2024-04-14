package org.apache.commons.mail;

/* loaded from: classes2.dex */
public class SimpleEmail extends Email {
    @Override // org.apache.commons.mail.Email
    public Email setMsg(String str) throws EmailException {
        if (EmailUtils.isEmpty(str)) {
            throw new EmailException("Invalid message supplied");
        }
        setContent(str, "text/plain");
        return this;
    }
}
