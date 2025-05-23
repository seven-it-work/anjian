package javax.mail.internet;

import java.util.Enumeration;
import javax.mail.MessagingException;
import javax.mail.Part;

/* loaded from: classes.dex */
public interface MimePart extends Part {
    void addHeaderLine(String str) throws MessagingException;

    Enumeration getAllHeaderLines() throws MessagingException;

    String getContentID() throws MessagingException;

    String[] getContentLanguage() throws MessagingException;

    String getContentMD5() throws MessagingException;

    String getEncoding() throws MessagingException;

    String getHeader(String str, String str2) throws MessagingException;

    Enumeration getMatchingHeaderLines(String[] strArr) throws MessagingException;

    Enumeration getNonMatchingHeaderLines(String[] strArr) throws MessagingException;

    void setContentLanguage(String[] strArr) throws MessagingException;

    void setContentMD5(String str) throws MessagingException;

    void setText(String str) throws MessagingException;

    void setText(String str, String str2) throws MessagingException;

    void setText(String str, String str2, String str3) throws MessagingException;
}
