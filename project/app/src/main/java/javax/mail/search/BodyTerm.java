package javax.mail.search;

import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.Part;

/* loaded from: classes.dex */
public final class BodyTerm extends StringTerm {
    private static final long serialVersionUID = -4888862527916911385L;

    public BodyTerm(String str) {
        super(str);
    }

    private boolean matchPart(Part part) {
        if (part.isMimeType("text/*")) {
            String str = (String) part.getContent();
            if (str == null) {
                return false;
            }
            return super.match(str);
        }
        if (!part.isMimeType("multipart/*")) {
            if (part.isMimeType("message/rfc822")) {
                return matchPart((Part) part.getContent());
            }
            return false;
        }
        Multipart multipart = (Multipart) part.getContent();
        int count = multipart.getCount();
        for (int i = 0; i < count; i++) {
            if (matchPart(multipart.getBodyPart(i))) {
                return true;
            }
        }
        return false;
    }

    @Override // javax.mail.search.StringTerm
    public final boolean equals(Object obj) {
        if (obj instanceof BodyTerm) {
            return super.equals(obj);
        }
        return false;
    }

    @Override // javax.mail.search.SearchTerm
    public final boolean match(Message message) {
        return matchPart(message);
    }
}
