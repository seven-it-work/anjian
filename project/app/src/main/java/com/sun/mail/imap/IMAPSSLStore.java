package com.sun.mail.imap;

import javax.mail.Session;
import javax.mail.URLName;

/* loaded from: classes.dex */
public class IMAPSSLStore extends IMAPStore {
    public IMAPSSLStore(Session session, URLName uRLName) {
        super(session, uRLName, "imaps", 993, true);
    }
}
