package javax.mail.internet;

import com.sun.mail.util.ASCIIUtility;
import com.sun.mail.util.LineOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.activation.DataSource;
import javax.mail.BodyPart;
import javax.mail.MessageAware;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.MultipartDataSource;

/* loaded from: classes.dex */
public class MimeMultipart extends Multipart {
    private static boolean bmparse = true;
    private static boolean ignoreMissingBoundaryParameter = true;
    private static boolean ignoreMissingEndBoundary = true;
    private boolean complete;

    /* renamed from: ds */
    protected DataSource f10040ds;
    protected boolean parsed;
    private String preamble;

    static {
        try {
            String property = System.getProperty("mail.mime.multipart.ignoremissingendboundary");
            boolean z = true;
            ignoreMissingEndBoundary = property == null || !property.equalsIgnoreCase("false");
            String property2 = System.getProperty("mail.mime.multipart.ignoremissingboundaryparameter");
            ignoreMissingBoundaryParameter = property2 == null || !property2.equalsIgnoreCase("false");
            String property3 = System.getProperty("mail.mime.multipart.bmparse");
            if (property3 != null && property3.equalsIgnoreCase("false")) {
                z = false;
            }
            bmparse = z;
        } catch (SecurityException unused) {
        }
    }

    public MimeMultipart() {
        this("mixed");
    }

    public MimeMultipart(String str) {
        this.f10040ds = null;
        this.parsed = true;
        this.complete = true;
        this.preamble = null;
        String uniqueBoundaryValue = UniqueValue.getUniqueBoundaryValue();
        ContentType contentType = new ContentType("multipart", str, null);
        contentType.setParameter("boundary", uniqueBoundaryValue);
        this.contentType = contentType.toString();
    }

    public MimeMultipart(DataSource dataSource) throws MessagingException {
        this.f10040ds = null;
        this.parsed = true;
        this.complete = true;
        this.preamble = null;
        if (dataSource instanceof MessageAware) {
            setParent(((MessageAware) dataSource).getMessageContext().getPart());
        }
        if (dataSource instanceof MultipartDataSource) {
            setMultipartDataSource((MultipartDataSource) dataSource);
            return;
        }
        this.parsed = false;
        this.f10040ds = dataSource;
        this.contentType = dataSource.getContentType();
    }

    /* JADX WARN: Code restructure failed: missing block: B:148:0x019b, code lost:
    
        r27 = r8;
        r18 = (r3.getPosition() - r5) - r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x014b, code lost:
    
        r26 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:219:0x00e9, code lost:
    
        r2.close();
     */
    /* JADX WARN: Removed duplicated region for block: B:151:0x01b4 A[Catch: all -> 0x0368, IOException -> 0x036b, TryCatch #5 {IOException -> 0x036b, blocks: (B:26:0x0055, B:27:0x005c, B:60:0x009a, B:61:0x00a1, B:63:0x00a4, B:64:0x00aa, B:68:0x00b6, B:84:0x00bb, B:87:0x00c9, B:88:0x00cd, B:90:0x00d3, B:213:0x00db, B:215:0x00df, B:216:0x00e6, B:217:0x00e7, B:95:0x00fa, B:210:0x0100, B:211:0x0107, B:98:0x010a, B:99:0x0115, B:100:0x011d, B:200:0x012d, B:206:0x0131, B:207:0x0138, B:203:0x013b, B:204:0x013f, B:172:0x01f5, B:174:0x0224, B:175:0x0204, B:177:0x020e, B:178:0x0212, B:181:0x0218, B:182:0x021c, B:111:0x016e, B:119:0x0182, B:127:0x0268, B:132:0x027f, B:133:0x0285, B:135:0x028f, B:138:0x029e, B:143:0x02ac, B:144:0x02b2, B:148:0x019b, B:149:0x01ac, B:151:0x01b4, B:188:0x01bc, B:167:0x01d8, B:169:0x01e2, B:160:0x024a, B:104:0x0157, B:106:0x0161, B:208:0x0110, B:227:0x00f4, B:70:0x02d3, B:76:0x02f9, B:79:0x02e5, B:72:0x02ea, B:74:0x02f2, B:66:0x030b, B:29:0x006a, B:38:0x007c, B:40:0x0084, B:43:0x0329, B:52:0x0331, B:47:0x033f, B:48:0x034b, B:230:0x008f, B:31:0x0072), top: B:25:0x0055, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:156:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x01ef A[EDGE_INSN: B:184:0x01ef->B:170:0x01ef BREAK  A[LOOP:8: B:100:0x011d->B:137:0x02c0], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x032f  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0351 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private synchronized void parsebm() throws javax.mail.MessagingException {
        /*
            Method dump skipped, instructions count: 903
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.mail.internet.MimeMultipart.parsebm():void");
    }

    private static int readFully(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        if (i2 == 0) {
            return 0;
        }
        while (i2 > 0) {
            int read = inputStream.read(bArr, i, i2);
            if (read <= 0) {
                break;
            }
            i += read;
            i3 += read;
            i2 -= read;
        }
        if (i3 > 0) {
            return i3;
        }
        return -1;
    }

    private void skipFully(InputStream inputStream, long j) throws IOException {
        while (j > 0) {
            long skip = inputStream.skip(j);
            if (skip <= 0) {
                throw new EOFException("can't skip");
            }
            j -= skip;
        }
    }

    @Override // javax.mail.Multipart
    public synchronized void addBodyPart(BodyPart bodyPart) throws MessagingException {
        parse();
        super.addBodyPart(bodyPart);
    }

    @Override // javax.mail.Multipart
    public synchronized void addBodyPart(BodyPart bodyPart, int i) throws MessagingException {
        parse();
        super.addBodyPart(bodyPart, i);
    }

    protected InternetHeaders createInternetHeaders(InputStream inputStream) throws MessagingException {
        return new InternetHeaders(inputStream);
    }

    protected MimeBodyPart createMimeBodyPart(InputStream inputStream) throws MessagingException {
        return new MimeBodyPart(inputStream);
    }

    protected MimeBodyPart createMimeBodyPart(InternetHeaders internetHeaders, byte[] bArr) throws MessagingException {
        return new MimeBodyPart(internetHeaders, bArr);
    }

    @Override // javax.mail.Multipart
    public synchronized BodyPart getBodyPart(int i) throws MessagingException {
        parse();
        return super.getBodyPart(i);
    }

    public synchronized BodyPart getBodyPart(String str) throws MessagingException {
        parse();
        int count = getCount();
        for (int i = 0; i < count; i++) {
            MimeBodyPart mimeBodyPart = (MimeBodyPart) getBodyPart(i);
            String contentID = mimeBodyPart.getContentID();
            if (contentID != null && contentID.equals(str)) {
                return mimeBodyPart;
            }
        }
        return null;
    }

    @Override // javax.mail.Multipart
    public synchronized int getCount() throws MessagingException {
        parse();
        return super.getCount();
    }

    public synchronized String getPreamble() throws MessagingException {
        parse();
        return this.preamble;
    }

    public synchronized boolean isComplete() throws MessagingException {
        parse();
        return this.complete;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x00de, code lost:
    
        r2.close();
     */
    /* JADX WARN: Removed duplicated region for block: B:134:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0187 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x020d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0065 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized void parse() throws javax.mail.MessagingException {
        /*
            Method dump skipped, instructions count: 603
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.mail.internet.MimeMultipart.parse():void");
    }

    @Override // javax.mail.Multipart
    public void removeBodyPart(int i) throws MessagingException {
        parse();
        super.removeBodyPart(i);
    }

    @Override // javax.mail.Multipart
    public boolean removeBodyPart(BodyPart bodyPart) throws MessagingException {
        parse();
        return super.removeBodyPart(bodyPart);
    }

    public synchronized void setPreamble(String str) throws MessagingException {
        this.preamble = str;
    }

    public synchronized void setSubType(String str) throws MessagingException {
        ContentType contentType = new ContentType(this.contentType);
        contentType.setSubType(str);
        this.contentType = contentType.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateHeaders() throws MessagingException {
        for (int i = 0; i < this.parts.size(); i++) {
            ((MimeBodyPart) this.parts.elementAt(i)).updateHeaders();
        }
    }

    @Override // javax.mail.Multipart
    public synchronized void writeTo(OutputStream outputStream) throws IOException, MessagingException {
        parse();
        String str = "--" + new ContentType(this.contentType).getParameter("boundary");
        LineOutputStream lineOutputStream = new LineOutputStream(outputStream);
        if (this.preamble != null) {
            byte[] bytes = ASCIIUtility.getBytes(this.preamble);
            lineOutputStream.write(bytes);
            if (bytes.length > 0 && bytes[bytes.length - 1] != 13 && bytes[bytes.length - 1] != 10) {
                lineOutputStream.writeln();
            }
        }
        for (int i = 0; i < this.parts.size(); i++) {
            lineOutputStream.writeln(str);
            ((MimeBodyPart) this.parts.elementAt(i)).writeTo(outputStream);
            lineOutputStream.writeln();
        }
        lineOutputStream.writeln(String.valueOf(str) + "--");
    }
}
