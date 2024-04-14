package javax.mail.internet;

import com.alibaba.sdk.android.oss.common.OSSConstants;
import com.lidroid.xutils.http.client.multipart.MIME;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.UnknownServiceException;
import javax.activation.DataSource;
import javax.mail.MessageAware;
import javax.mail.MessageContext;
import javax.mail.MessagingException;

/* loaded from: classes.dex */
public class MimePartDataSource implements DataSource, MessageAware {
    private static boolean ignoreMultipartEncoding = true;
    private MessageContext context;
    protected MimePart part;

    static {
        try {
            String property = System.getProperty("mail.mime.ignoremultipartencoding");
            ignoreMultipartEncoding = property == null || !property.equalsIgnoreCase("false");
        } catch (SecurityException unused) {
        }
    }

    public MimePartDataSource(MimePart mimePart) {
        this.part = mimePart;
    }

    private static String restrictEncoding(String str, MimePart mimePart) throws MessagingException {
        String contentType;
        if (!ignoreMultipartEncoding || str == null || str.equalsIgnoreCase("7bit") || str.equalsIgnoreCase(MIME.ENC_8BIT) || str.equalsIgnoreCase(MIME.ENC_BINARY) || (contentType = mimePart.getContentType()) == null) {
            return str;
        }
        try {
            ContentType contentType2 = new ContentType(contentType);
            if (!contentType2.match("multipart/*")) {
                if (!contentType2.match("message/*")) {
                    return str;
                }
            }
            return null;
        } catch (ParseException unused) {
            return str;
        }
    }

    @Override // javax.activation.DataSource
    public String getContentType() {
        try {
            return this.part.getContentType();
        } catch (MessagingException unused) {
            return OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE;
        }
    }

    @Override // javax.activation.DataSource
    public InputStream getInputStream() throws IOException {
        InputStream contentStream;
        try {
            if (this.part instanceof MimeBodyPart) {
                contentStream = ((MimeBodyPart) this.part).getContentStream();
            } else {
                if (!(this.part instanceof MimeMessage)) {
                    throw new MessagingException("Unknown part");
                }
                contentStream = ((MimeMessage) this.part).getContentStream();
            }
            String restrictEncoding = restrictEncoding(this.part.getEncoding(), this.part);
            return restrictEncoding != null ? MimeUtility.decode(contentStream, restrictEncoding) : contentStream;
        } catch (MessagingException e) {
            throw new IOException(e.getMessage());
        }
    }

    @Override // javax.mail.MessageAware
    public synchronized MessageContext getMessageContext() {
        if (this.context == null) {
            this.context = new MessageContext(this.part);
        }
        return this.context;
    }

    @Override // javax.activation.DataSource
    public String getName() {
        try {
            return this.part instanceof MimeBodyPart ? ((MimeBodyPart) this.part).getFileName() : "";
        } catch (MessagingException unused) {
            return "";
        }
    }

    @Override // javax.activation.DataSource
    public OutputStream getOutputStream() throws IOException {
        throw new UnknownServiceException();
    }
}
