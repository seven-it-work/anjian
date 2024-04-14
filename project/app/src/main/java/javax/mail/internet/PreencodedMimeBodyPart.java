package javax.mail.internet;

import com.sun.mail.util.LineOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Enumeration;
import javax.mail.MessagingException;

/* loaded from: classes.dex */
public class PreencodedMimeBodyPart extends MimeBodyPart {
    private String encoding;

    public PreencodedMimeBodyPart(String str) {
        this.encoding = str;
    }

    @Override // javax.mail.internet.MimeBodyPart, javax.mail.internet.MimePart
    public String getEncoding() throws MessagingException {
        return this.encoding;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // javax.mail.internet.MimeBodyPart
    public void updateHeaders() throws MessagingException {
        super.updateHeaders();
        MimeBodyPart.setEncoding(this, this.encoding);
    }

    @Override // javax.mail.internet.MimeBodyPart, javax.mail.Part
    public void writeTo(OutputStream outputStream) throws IOException, MessagingException {
        LineOutputStream lineOutputStream = outputStream instanceof LineOutputStream ? (LineOutputStream) outputStream : new LineOutputStream(outputStream);
        Enumeration allHeaderLines = getAllHeaderLines();
        while (allHeaderLines.hasMoreElements()) {
            lineOutputStream.writeln((String) allHeaderLines.nextElement());
        }
        lineOutputStream.writeln();
        getDataHandler().writeTo(outputStream);
        outputStream.flush();
    }
}
