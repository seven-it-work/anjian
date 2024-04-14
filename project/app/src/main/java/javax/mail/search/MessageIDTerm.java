package javax.mail.search;

import javax.mail.Message;

/* loaded from: classes.dex */
public final class MessageIDTerm extends StringTerm {
    private static final long serialVersionUID = -2121096296454691963L;

    public MessageIDTerm(String str) {
        super(str);
    }

    @Override // javax.mail.search.StringTerm
    public final boolean equals(Object obj) {
        if (obj instanceof MessageIDTerm) {
            return super.equals(obj);
        }
        return false;
    }

    @Override // javax.mail.search.SearchTerm
    public final boolean match(Message message) {
        try {
            String[] header = message.getHeader("Message-ID");
            if (header == null) {
                return false;
            }
            for (String str : header) {
                if (super.match(str)) {
                    return true;
                }
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }
}
