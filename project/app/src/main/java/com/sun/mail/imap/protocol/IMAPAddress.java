package com.sun.mail.imap.protocol;

import com.sun.mail.iap.ParsingException;
import com.sun.mail.iap.Response;
import java.util.Vector;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;

/* loaded from: classes.dex */
class IMAPAddress extends InternetAddress {
    private static final long serialVersionUID = -3835822029483122232L;
    private boolean group;
    private InternetAddress[] grouplist;
    private String groupname;

    /* JADX INFO: Access modifiers changed from: package-private */
    public IMAPAddress(Response response) throws ParsingException {
        this.group = false;
        response.skipSpaces();
        if (response.readByte() != 40) {
            throw new ParsingException("ADDRESS parse error");
        }
        this.encodedPersonal = response.readString();
        response.readString();
        String readString = response.readString();
        String readString2 = response.readString();
        if (response.readByte() != 41) {
            throw new ParsingException("ADDRESS parse error");
        }
        if (readString2 != null) {
            if (readString == null || readString.length() == 0) {
                this.address = readString2;
                return;
            }
            if (readString2.length() == 0) {
                this.address = readString;
                return;
            }
            this.address = String.valueOf(readString) + "@" + readString2;
            return;
        }
        this.group = true;
        this.groupname = readString;
        if (this.groupname == null) {
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.groupname);
        stringBuffer.append(':');
        Vector vector = new Vector();
        while (response.peekByte() != 41) {
            IMAPAddress iMAPAddress = new IMAPAddress(response);
            if (iMAPAddress.isEndOfGroup()) {
                break;
            }
            if (vector.size() != 0) {
                stringBuffer.append(',');
            }
            stringBuffer.append(iMAPAddress.toString());
            vector.addElement(iMAPAddress);
        }
        stringBuffer.append(';');
        this.address = stringBuffer.toString();
        this.grouplist = new IMAPAddress[vector.size()];
        vector.copyInto(this.grouplist);
    }

    @Override // javax.mail.internet.InternetAddress
    public InternetAddress[] getGroup(boolean z) throws AddressException {
        if (this.grouplist == null) {
            return null;
        }
        return (InternetAddress[]) this.grouplist.clone();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isEndOfGroup() {
        return this.group && this.groupname == null;
    }

    @Override // javax.mail.internet.InternetAddress
    public boolean isGroup() {
        return this.group;
    }
}
