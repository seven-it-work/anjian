package javax.mail.internet;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.lidroid.xutils.http.client.multipart.MIME;
import com.sun.mail.util.ASCIIUtility;
import com.sun.mail.util.FolderClosedIOException;
import com.sun.mail.util.LineOutputStream;
import com.sun.mail.util.MessageRemovedIOException;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Enumeration;
import java.util.Vector;
import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;
import javax.mail.FolderClosedException;
import javax.mail.Message;
import javax.mail.MessageRemovedException;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.internet.HeaderTokenizer;
import org.litepal.p246g.InterfaceC3057b;

/* loaded from: classes.dex */
public class MimeBodyPart extends BodyPart implements MimePart {
    static boolean cacheMultipart = true;
    private static boolean decodeFileName = false;
    private static boolean encodeFileName = false;
    private static boolean setContentTypeFileName = true;
    private static boolean setDefaultTextCharset = true;
    private Object cachedContent;
    protected byte[] content;
    protected InputStream contentStream;

    /* renamed from: dh */
    protected DataHandler f10038dh;
    protected InternetHeaders headers;

    static {
        try {
            String property = System.getProperty("mail.mime.setdefaulttextcharset");
            boolean z = true;
            setDefaultTextCharset = property == null || !property.equalsIgnoreCase("false");
            String property2 = System.getProperty("mail.mime.setcontenttypefilename");
            setContentTypeFileName = property2 == null || !property2.equalsIgnoreCase("false");
            String property3 = System.getProperty("mail.mime.encodefilename");
            encodeFileName = (property3 == null || property3.equalsIgnoreCase("false")) ? false : true;
            String property4 = System.getProperty("mail.mime.decodefilename");
            decodeFileName = (property4 == null || property4.equalsIgnoreCase("false")) ? false : true;
            String property5 = System.getProperty("mail.mime.cachemultipart");
            if (property5 != null && property5.equalsIgnoreCase("false")) {
                z = false;
            }
            cacheMultipart = z;
        } catch (SecurityException unused) {
        }
    }

    public MimeBodyPart() {
        this.headers = new InternetHeaders();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MimeBodyPart(InputStream inputStream) throws MessagingException {
        boolean z = inputStream instanceof ByteArrayInputStream;
        InputStream inputStream2 = inputStream;
        if (!z) {
            boolean z2 = inputStream instanceof BufferedInputStream;
            inputStream2 = inputStream;
            if (!z2) {
                boolean z3 = inputStream instanceof SharedInputStream;
                inputStream2 = inputStream;
                if (!z3) {
                    inputStream2 = new BufferedInputStream(inputStream);
                }
            }
        }
        this.headers = new InternetHeaders(inputStream2);
        if (inputStream2 instanceof SharedInputStream) {
            SharedInputStream sharedInputStream = (SharedInputStream) inputStream2;
            this.contentStream = sharedInputStream.newStream(sharedInputStream.getPosition(), -1L);
        } else {
            try {
                this.content = ASCIIUtility.getBytes(inputStream2);
            } catch (IOException e) {
                throw new MessagingException("Error reading input stream", e);
            }
        }
    }

    public MimeBodyPart(InternetHeaders internetHeaders, byte[] bArr) throws MessagingException {
        this.headers = internetHeaders;
        this.content = bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String[] getContentLanguage(MimePart mimePart) throws MessagingException {
        String header = mimePart.getHeader("Content-Language", null);
        if (header == null) {
            return null;
        }
        HeaderTokenizer headerTokenizer = new HeaderTokenizer(header, HeaderTokenizer.MIME);
        Vector vector = new Vector();
        while (true) {
            HeaderTokenizer.Token next = headerTokenizer.next();
            int type = next.getType();
            if (type == -4) {
                break;
            }
            if (type == -1) {
                vector.addElement(next.getValue());
            }
        }
        if (vector.size() == 0) {
            return null;
        }
        String[] strArr = new String[vector.size()];
        vector.copyInto(strArr);
        return strArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getDescription(MimePart mimePart) throws MessagingException {
        String header = mimePart.getHeader("Content-Description", null);
        if (header == null) {
            return null;
        }
        try {
            return MimeUtility.decodeText(MimeUtility.unfold(header));
        } catch (UnsupportedEncodingException unused) {
            return header;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getDisposition(MimePart mimePart) throws MessagingException {
        String header = mimePart.getHeader("Content-Disposition", null);
        if (header == null) {
            return null;
        }
        return new ContentDisposition(header).getDisposition();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getEncoding(MimePart mimePart) throws MessagingException {
        HeaderTokenizer.Token next;
        int type;
        String header = mimePart.getHeader(MIME.CONTENT_TRANSFER_ENC, null);
        if (header == null) {
            return null;
        }
        String trim = header.trim();
        if (trim.equalsIgnoreCase("7bit") || trim.equalsIgnoreCase(MIME.ENC_8BIT) || trim.equalsIgnoreCase("quoted-printable") || trim.equalsIgnoreCase(MIME.ENC_BINARY) || trim.equalsIgnoreCase("base64")) {
            return trim;
        }
        HeaderTokenizer headerTokenizer = new HeaderTokenizer(trim, HeaderTokenizer.MIME);
        do {
            next = headerTokenizer.next();
            type = next.getType();
            if (type == -4) {
                return trim;
            }
        } while (type != -1);
        return next.getValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getFileName(MimePart mimePart) throws MessagingException {
        String str;
        String header;
        String header2 = mimePart.getHeader("Content-Disposition", null);
        String parameter = header2 != null ? new ContentDisposition(header2).getParameter("filename") : null;
        if (parameter == null && (header = mimePart.getHeader("Content-Type", null)) != null) {
            try {
                str = new ContentType(header).getParameter(InterfaceC3057b.c.f11208b);
            } catch (ParseException unused) {
            }
            if (decodeFileName || str == null) {
                return str;
            }
            try {
                return MimeUtility.decodeText(str);
            } catch (UnsupportedEncodingException e) {
                throw new MessagingException("Can't decode filename", e);
            }
        }
        str = parameter;
        if (decodeFileName) {
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void invalidateContentHeaders(MimePart mimePart) throws MessagingException {
        mimePart.removeHeader("Content-Type");
        mimePart.removeHeader(MIME.CONTENT_TRANSFER_ENC);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isMimeType(MimePart mimePart, String str) throws MessagingException {
        try {
            return new ContentType(mimePart.getContentType()).match(str);
        } catch (ParseException unused) {
            return mimePart.getContentType().equalsIgnoreCase(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setContentLanguage(MimePart mimePart, String[] strArr) throws MessagingException {
        StringBuffer stringBuffer = new StringBuffer(strArr[0]);
        for (int i = 1; i < strArr.length; i++) {
            stringBuffer.append(',');
            stringBuffer.append(strArr[i]);
        }
        mimePart.setHeader("Content-Language", stringBuffer.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setDescription(MimePart mimePart, String str, String str2) throws MessagingException {
        if (str == null) {
            mimePart.removeHeader("Content-Description");
            return;
        }
        try {
            mimePart.setHeader("Content-Description", MimeUtility.fold(21, MimeUtility.encodeText(str, str2, null)));
        } catch (UnsupportedEncodingException e) {
            throw new MessagingException("Encoding error", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setDisposition(MimePart mimePart, String str) throws MessagingException {
        if (str == null) {
            mimePart.removeHeader("Content-Disposition");
            return;
        }
        String header = mimePart.getHeader("Content-Disposition", null);
        if (header != null) {
            ContentDisposition contentDisposition = new ContentDisposition(header);
            contentDisposition.setDisposition(str);
            str = contentDisposition.toString();
        }
        mimePart.setHeader("Content-Disposition", str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setEncoding(MimePart mimePart, String str) throws MessagingException {
        mimePart.setHeader(MIME.CONTENT_TRANSFER_ENC, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setFileName(MimePart mimePart, String str) throws MessagingException {
        String header;
        if (encodeFileName && str != null) {
            try {
                str = MimeUtility.encodeText(str);
            } catch (UnsupportedEncodingException e) {
                throw new MessagingException("Can't encode filename", e);
            }
        }
        String header2 = mimePart.getHeader("Content-Disposition", null);
        if (header2 == null) {
            header2 = "attachment";
        }
        ContentDisposition contentDisposition = new ContentDisposition(header2);
        contentDisposition.setParameter("filename", str);
        mimePart.setHeader("Content-Disposition", contentDisposition.toString());
        if (!setContentTypeFileName || (header = mimePart.getHeader("Content-Type", null)) == null) {
            return;
        }
        try {
            ContentType contentType = new ContentType(header);
            contentType.setParameter(InterfaceC3057b.c.f11208b, str);
            mimePart.setHeader("Content-Type", contentType.toString());
        } catch (ParseException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setText(MimePart mimePart, String str, String str2, String str3) throws MessagingException {
        if (str2 == null) {
            str2 = MimeUtility.checkAscii(str) != 1 ? MimeUtility.getDefaultMIMECharset() : "us-ascii";
        }
        mimePart.setContent(str, "text/" + str3 + "; charset=" + MimeUtility.quote(str2, HeaderTokenizer.MIME));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0049 A[Catch: IOException -> 0x00ee, TryCatch #0 {IOException -> 0x00ee, blocks: (B:6:0x0007, B:9:0x0018, B:11:0x0025, B:13:0x0029, B:15:0x0030, B:16:0x0045, B:18:0x0049, B:20:0x0084, B:22:0x008c, B:24:0x0095, B:26:0x0099, B:28:0x00a1, B:30:0x00a9, B:32:0x00af, B:35:0x00be, B:36:0x00ba, B:38:0x00c9, B:40:0x00d2, B:42:0x00df, B:43:0x00e8, B:46:0x004f, B:47:0x0077, B:48:0x0033, B:49:0x0038, B:51:0x003c, B:53:0x0043, B:54:0x0078), top: B:5:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x004f A[Catch: IOException -> 0x00ee, TryCatch #0 {IOException -> 0x00ee, blocks: (B:6:0x0007, B:9:0x0018, B:11:0x0025, B:13:0x0029, B:15:0x0030, B:16:0x0045, B:18:0x0049, B:20:0x0084, B:22:0x008c, B:24:0x0095, B:26:0x0099, B:28:0x00a1, B:30:0x00a9, B:32:0x00af, B:35:0x00be, B:36:0x00ba, B:38:0x00c9, B:40:0x00d2, B:42:0x00df, B:43:0x00e8, B:46:0x004f, B:47:0x0077, B:48:0x0033, B:49:0x0038, B:51:0x003c, B:53:0x0043, B:54:0x0078), top: B:5:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void updateHeaders(javax.mail.internet.MimePart r7) throws javax.mail.MessagingException {
        /*
            Method dump skipped, instructions count: 247
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.mail.internet.MimeBodyPart.updateHeaders(javax.mail.internet.MimePart):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeTo(MimePart mimePart, OutputStream outputStream, String[] strArr) throws IOException, MessagingException {
        LineOutputStream lineOutputStream = outputStream instanceof LineOutputStream ? (LineOutputStream) outputStream : new LineOutputStream(outputStream);
        Enumeration nonMatchingHeaderLines = mimePart.getNonMatchingHeaderLines(strArr);
        while (nonMatchingHeaderLines.hasMoreElements()) {
            lineOutputStream.writeln((String) nonMatchingHeaderLines.nextElement());
        }
        lineOutputStream.writeln();
        OutputStream encode = MimeUtility.encode(outputStream, mimePart.getEncoding());
        mimePart.getDataHandler().writeTo(encode);
        encode.flush();
    }

    @Override // javax.mail.Part
    public void addHeader(String str, String str2) throws MessagingException {
        this.headers.addHeader(str, str2);
    }

    public void addHeaderLine(String str) throws MessagingException {
        this.headers.addHeaderLine(str);
    }

    public void attachFile(File file) throws IOException, MessagingException {
        FileDataSource fileDataSource = new FileDataSource(file);
        setDataHandler(new DataHandler(fileDataSource));
        setFileName(fileDataSource.getName());
    }

    public void attachFile(String str) throws IOException, MessagingException {
        attachFile(new File(str));
    }

    public Enumeration getAllHeaderLines() throws MessagingException {
        return this.headers.getAllHeaderLines();
    }

    @Override // javax.mail.Part
    public Enumeration getAllHeaders() throws MessagingException {
        return this.headers.getAllHeaders();
    }

    @Override // javax.mail.Part
    public Object getContent() throws IOException, MessagingException {
        if (this.cachedContent != null) {
            return this.cachedContent;
        }
        try {
            Object content = getDataHandler().getContent();
            if (cacheMultipart && (((content instanceof Multipart) || (content instanceof Message)) && (this.content != null || this.contentStream != null))) {
                this.cachedContent = content;
            }
            return content;
        } catch (FolderClosedIOException e) {
            throw new FolderClosedException(e.getFolder(), e.getMessage());
        } catch (MessageRemovedIOException e2) {
            throw new MessageRemovedException(e2.getMessage());
        }
    }

    public String getContentID() throws MessagingException {
        return getHeader("Content-Id", null);
    }

    @Override // javax.mail.internet.MimePart
    public String[] getContentLanguage() throws MessagingException {
        return getContentLanguage(this);
    }

    public String getContentMD5() throws MessagingException {
        return getHeader(HttpHeaders.CONTENT_MD5, null);
    }

    public InputStream getContentStream() throws MessagingException {
        if (this.contentStream != null) {
            return ((SharedInputStream) this.contentStream).newStream(0L, -1L);
        }
        if (this.content != null) {
            return new ByteArrayInputStream(this.content);
        }
        throw new MessagingException("No content");
    }

    @Override // javax.mail.Part
    public String getContentType() throws MessagingException {
        String header = getHeader("Content-Type", null);
        return header == null ? "text/plain" : header;
    }

    @Override // javax.mail.Part
    public DataHandler getDataHandler() throws MessagingException {
        if (this.f10038dh == null) {
            this.f10038dh = new DataHandler(new MimePartDataSource(this));
        }
        return this.f10038dh;
    }

    @Override // javax.mail.Part
    public String getDescription() throws MessagingException {
        return getDescription(this);
    }

    @Override // javax.mail.Part
    public String getDisposition() throws MessagingException {
        return getDisposition(this);
    }

    public String getEncoding() throws MessagingException {
        return getEncoding(this);
    }

    @Override // javax.mail.Part
    public String getFileName() throws MessagingException {
        return getFileName(this);
    }

    @Override // javax.mail.internet.MimePart
    public String getHeader(String str, String str2) throws MessagingException {
        return this.headers.getHeader(str, str2);
    }

    @Override // javax.mail.Part
    public String[] getHeader(String str) throws MessagingException {
        return this.headers.getHeader(str);
    }

    @Override // javax.mail.Part
    public InputStream getInputStream() throws IOException, MessagingException {
        return getDataHandler().getInputStream();
    }

    @Override // javax.mail.Part
    public int getLineCount() throws MessagingException {
        return -1;
    }

    public Enumeration getMatchingHeaderLines(String[] strArr) throws MessagingException {
        return this.headers.getMatchingHeaderLines(strArr);
    }

    @Override // javax.mail.Part
    public Enumeration getMatchingHeaders(String[] strArr) throws MessagingException {
        return this.headers.getMatchingHeaders(strArr);
    }

    public Enumeration getNonMatchingHeaderLines(String[] strArr) throws MessagingException {
        return this.headers.getNonMatchingHeaderLines(strArr);
    }

    @Override // javax.mail.Part
    public Enumeration getNonMatchingHeaders(String[] strArr) throws MessagingException {
        return this.headers.getNonMatchingHeaders(strArr);
    }

    public InputStream getRawInputStream() throws MessagingException {
        return getContentStream();
    }

    @Override // javax.mail.Part
    public int getSize() throws MessagingException {
        if (this.content != null) {
            return this.content.length;
        }
        if (this.contentStream == null) {
            return -1;
        }
        try {
            int available = this.contentStream.available();
            if (available > 0) {
                return available;
            }
            return -1;
        } catch (IOException unused) {
            return -1;
        }
    }

    @Override // javax.mail.Part
    public boolean isMimeType(String str) throws MessagingException {
        return isMimeType(this, str);
    }

    @Override // javax.mail.Part
    public void removeHeader(String str) throws MessagingException {
        this.headers.removeHeader(str);
    }

    public void saveFile(File file) throws IOException, MessagingException {
        BufferedOutputStream bufferedOutputStream;
        InputStream inputStream;
        InputStream inputStream2 = null;
        try {
            bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
            try {
                inputStream = getInputStream();
            } catch (Throwable th) {
                th = th;
            }
        } catch (Throwable th2) {
            th = th2;
            bufferedOutputStream = null;
        }
        try {
            byte[] bArr = new byte[8192];
            while (true) {
                int read = inputStream.read(bArr);
                if (read <= 0) {
                    break;
                } else {
                    bufferedOutputStream.write(bArr, 0, read);
                }
            }
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused) {
                }
            }
            try {
                bufferedOutputStream.close();
            } catch (IOException unused2) {
            }
        } catch (Throwable th3) {
            inputStream2 = inputStream;
            th = th3;
            if (inputStream2 != null) {
                try {
                    inputStream2.close();
                } catch (IOException unused3) {
                }
            }
            if (bufferedOutputStream == null) {
                throw th;
            }
            try {
                bufferedOutputStream.close();
                throw th;
            } catch (IOException unused4) {
                throw th;
            }
        }
    }

    public void saveFile(String str) throws IOException, MessagingException {
        saveFile(new File(str));
    }

    @Override // javax.mail.Part
    public void setContent(Object obj, String str) throws MessagingException {
        if (obj instanceof Multipart) {
            setContent((Multipart) obj);
        } else {
            setDataHandler(new DataHandler(obj, str));
        }
    }

    @Override // javax.mail.Part
    public void setContent(Multipart multipart) throws MessagingException {
        setDataHandler(new DataHandler(multipart, multipart.getContentType()));
        multipart.setParent(this);
    }

    public void setContentID(String str) throws MessagingException {
        if (str == null) {
            removeHeader("Content-ID");
        } else {
            setHeader("Content-ID", str);
        }
    }

    @Override // javax.mail.internet.MimePart
    public void setContentLanguage(String[] strArr) throws MessagingException {
        setContentLanguage(this, strArr);
    }

    public void setContentMD5(String str) throws MessagingException {
        setHeader(HttpHeaders.CONTENT_MD5, str);
    }

    @Override // javax.mail.Part
    public void setDataHandler(DataHandler dataHandler) throws MessagingException {
        this.f10038dh = dataHandler;
        this.cachedContent = null;
        invalidateContentHeaders(this);
    }

    @Override // javax.mail.Part
    public void setDescription(String str) throws MessagingException {
        setDescription(str, null);
    }

    public void setDescription(String str, String str2) throws MessagingException {
        setDescription(this, str, str2);
    }

    @Override // javax.mail.Part
    public void setDisposition(String str) throws MessagingException {
        setDisposition(this, str);
    }

    @Override // javax.mail.Part
    public void setFileName(String str) throws MessagingException {
        setFileName(this, str);
    }

    @Override // javax.mail.Part
    public void setHeader(String str, String str2) throws MessagingException {
        this.headers.setHeader(str, str2);
    }

    @Override // javax.mail.Part, javax.mail.internet.MimePart
    public void setText(String str) throws MessagingException {
        setText(str, null);
    }

    @Override // javax.mail.internet.MimePart
    public void setText(String str, String str2) throws MessagingException {
        setText(this, str, str2, "plain");
    }

    @Override // javax.mail.internet.MimePart
    public void setText(String str, String str2, String str3) throws MessagingException {
        setText(this, str, str2, str3);
    }

    public void updateHeaders() throws MessagingException {
        updateHeaders(this);
        if (this.cachedContent != null) {
            this.f10038dh = new DataHandler(this.cachedContent, getContentType());
            this.cachedContent = null;
            this.content = null;
            if (this.contentStream != null) {
                try {
                    this.contentStream.close();
                } catch (IOException unused) {
                }
            }
            this.contentStream = null;
        }
    }

    @Override // javax.mail.Part
    public void writeTo(OutputStream outputStream) throws IOException, MessagingException {
        writeTo(this, outputStream, null);
    }
}
