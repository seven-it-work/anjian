package javax.mail.search;

import javax.mail.Address;
import javax.mail.internet.InternetAddress;

/* loaded from: classes.dex */
public abstract class AddressStringTerm extends StringTerm {
    private static final long serialVersionUID = 3086821234204980368L;

    /* JADX INFO: Access modifiers changed from: protected */
    public AddressStringTerm(String str) {
        super(str, true);
    }

    @Override // javax.mail.search.StringTerm
    public boolean equals(Object obj) {
        if (obj instanceof AddressStringTerm) {
            return super.equals(obj);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean match(Address address) {
        return super.match(address instanceof InternetAddress ? ((InternetAddress) address).toUnicodeString() : address.toString());
    }
}
