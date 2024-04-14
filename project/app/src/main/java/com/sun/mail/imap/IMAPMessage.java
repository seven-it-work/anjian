package com.sun.mail.imap;

import com.cyjh.common.util.C1176s;
import com.sun.mail.iap.ConnectionException;
import com.sun.mail.iap.ProtocolException;
import com.sun.mail.iap.Response;
import com.sun.mail.imap.protocol.BODY;
import com.sun.mail.imap.protocol.BODYSTRUCTURE;
import com.sun.mail.imap.protocol.ENVELOPE;
import com.sun.mail.imap.protocol.FetchResponse;
import com.sun.mail.imap.protocol.IMAPProtocol;
import com.sun.mail.imap.protocol.INTERNALDATE;
import com.sun.mail.imap.protocol.Item;
import com.sun.mail.imap.protocol.RFC822DATA;
import com.sun.mail.imap.protocol.RFC822SIZE;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Locale;
import javax.activation.DataHandler;
import javax.mail.Address;
import javax.mail.Flags;
import javax.mail.FolderClosedException;
import javax.mail.IllegalWriteException;
import javax.mail.Message;
import javax.mail.MessageRemovedException;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.internet.ContentType;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.InternetHeaders;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
import org.litepal.p246g.InterfaceC3057b;

/* loaded from: classes.dex */
public class IMAPMessage extends MimeMessage {
    private static String EnvelopeCmd = "ENVELOPE INTERNALDATE RFC822.SIZE";

    /* renamed from: bs */
    protected BODYSTRUCTURE f8846bs;
    private String description;
    protected ENVELOPE envelope;
    private boolean headersLoaded;
    private Hashtable loadedHeaders;
    private boolean peek;
    private Date receivedDate;
    protected String sectionId;
    private int seqnum;
    private int size;
    private String subject;
    private String type;
    private long uid;

    /* JADX INFO: Access modifiers changed from: protected */
    public IMAPMessage(IMAPFolder iMAPFolder, int i, int i2) {
        super(iMAPFolder, i);
        this.size = -1;
        this.uid = -1L;
        this.headersLoaded = false;
        this.seqnum = i2;
        this.flags = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public IMAPMessage(Session session) {
        super(session);
        this.size = -1;
        this.uid = -1L;
        this.headersLoaded = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BODYSTRUCTURE _getBodyStructure() {
        return this.f8846bs;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ENVELOPE _getEnvelope() {
        return this.envelope;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Flags _getFlags() {
        return this.flags;
    }

    private InternetAddress[] aaclone(InternetAddress[] internetAddressArr) {
        if (internetAddressArr == null) {
            return null;
        }
        return (InternetAddress[]) internetAddressArr.clone();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean areHeadersLoaded() {
        return this.headersLoaded;
    }

    private static String craftHeaderCmd(IMAPProtocol iMAPProtocol, String[] strArr) {
        StringBuffer stringBuffer = iMAPProtocol.isREV1() ? new StringBuffer("BODY.PEEK[HEADER.FIELDS (") : new StringBuffer("RFC822.HEADER.LINES (");
        for (int i = 0; i < strArr.length; i++) {
            if (i > 0) {
                stringBuffer.append(C1176s.a.f4108a);
            }
            stringBuffer.append(strArr[i]);
        }
        stringBuffer.append(iMAPProtocol.isREV1() ? ")]" : ")");
        return stringBuffer.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:126:0x01de A[Catch: all -> 0x020f, TryCatch #3 {, blocks: (B:47:0x00b2, B:49:0x00b8, B:52:0x00ba, B:54:0x00bf, B:56:0x00d9, B:59:0x00dc, B:141:0x00df, B:143:0x00e5, B:144:0x00ed, B:61:0x00ef, B:63:0x00f3, B:65:0x00f9, B:66:0x00fb, B:69:0x0100, B:71:0x0117, B:73:0x011f, B:77:0x012a, B:81:0x01e8, B:84:0x0135, B:86:0x0139, B:87:0x0142, B:89:0x0146, B:90:0x014f, B:92:0x0153, B:93:0x015a, B:95:0x015e, B:96:0x0163, B:98:0x0167, B:100:0x0173, B:101:0x017a, B:102:0x0187, B:104:0x018d, B:106:0x0191, B:108:0x0195, B:109:0x01a2, B:113:0x01b1, B:114:0x01b5, B:126:0x01de, B:129:0x01e5, B:131:0x01f0, B:116:0x01bc, B:119:0x01cc, B:133:0x01da, B:134:0x019c, B:68:0x01f8, B:153:0x00cc, B:154:0x00d5, B:149:0x0204, B:150:0x020e), top: B:46:0x00b2, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x01e3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void fetch(com.sun.mail.imap.IMAPFolder r17, javax.mail.Message[] r18, javax.mail.FetchProfile r19) throws javax.mail.MessagingException {
        /*
            Method dump skipped, instructions count: 531
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.mail.imap.IMAPMessage.fetch(com.sun.mail.imap.IMAPFolder, javax.mail.Message[], javax.mail.FetchProfile):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean isHeaderLoaded(String str) {
        boolean z;
        if (this.headersLoaded) {
            z = true;
        } else {
            if (this.loadedHeaders != null) {
                return this.loadedHeaders.containsKey(str.toUpperCase(Locale.ENGLISH));
            }
            z = false;
        }
        return z;
    }

    private synchronized void loadBODYSTRUCTURE() throws MessagingException {
        if (this.f8846bs != null) {
            return;
        }
        synchronized (getMessageCacheLock()) {
            try {
                IMAPProtocol protocol = getProtocol();
                checkExpunged();
                this.f8846bs = protocol.fetchBodyStructure(getSequenceNumber());
                if (this.f8846bs == null) {
                    forceCheckExpunged();
                    throw new MessagingException("Unable to load BODYSTRUCTURE");
                }
            } catch (ConnectionException e) {
                throw new FolderClosedException(this.folder, e.getMessage());
            } catch (ProtocolException e2) {
                forceCheckExpunged();
                throw new MessagingException(e2.getMessage(), e2);
            }
        }
    }

    private synchronized void loadEnvelope() throws MessagingException {
        if (this.envelope != null) {
            return;
        }
        synchronized (getMessageCacheLock()) {
            try {
                IMAPProtocol protocol = getProtocol();
                checkExpunged();
                int sequenceNumber = getSequenceNumber();
                Response[] fetch = protocol.fetch(sequenceNumber, EnvelopeCmd);
                for (int i = 0; i < fetch.length; i++) {
                    if (fetch[i] != null && (fetch[i] instanceof FetchResponse) && ((FetchResponse) fetch[i]).getNumber() == sequenceNumber) {
                        FetchResponse fetchResponse = (FetchResponse) fetch[i];
                        int itemCount = fetchResponse.getItemCount();
                        for (int i2 = 0; i2 < itemCount; i2++) {
                            Item item = fetchResponse.getItem(i2);
                            if (item instanceof ENVELOPE) {
                                this.envelope = (ENVELOPE) item;
                            } else if (item instanceof INTERNALDATE) {
                                this.receivedDate = ((INTERNALDATE) item).getDate();
                            } else if (item instanceof RFC822SIZE) {
                                this.size = ((RFC822SIZE) item).size;
                            }
                        }
                    }
                }
                protocol.notifyResponseHandlers(fetch);
                protocol.handleResult(fetch[fetch.length - 1]);
            } catch (ConnectionException e) {
                throw new FolderClosedException(this.folder, e.getMessage());
            } catch (ProtocolException e2) {
                forceCheckExpunged();
                throw new MessagingException(e2.getMessage(), e2);
            }
        }
        if (this.envelope == null) {
            throw new MessagingException("Failed to load IMAP envelope");
        }
    }

    private synchronized void loadFlags() throws MessagingException {
        if (this.flags != null) {
            return;
        }
        synchronized (getMessageCacheLock()) {
            try {
                try {
                    IMAPProtocol protocol = getProtocol();
                    checkExpunged();
                    this.flags = protocol.fetchFlags(getSequenceNumber());
                } catch (ProtocolException e) {
                    forceCheckExpunged();
                    throw new MessagingException(e.getMessage(), e);
                }
            } catch (ConnectionException e2) {
                throw new FolderClosedException(this.folder, e2.getMessage());
            }
        }
    }

    private synchronized void loadHeaders() throws MessagingException {
        if (this.headersLoaded) {
            return;
        }
        ByteArrayInputStream byteArrayInputStream = null;
        synchronized (getMessageCacheLock()) {
            try {
                IMAPProtocol protocol = getProtocol();
                checkExpunged();
                if (protocol.isREV1()) {
                    BODY peekBody = protocol.peekBody(getSequenceNumber(), toSection("HEADER"));
                    if (peekBody != null) {
                        byteArrayInputStream = peekBody.getByteArrayInputStream();
                    }
                } else {
                    RFC822DATA fetchRFC822 = protocol.fetchRFC822(getSequenceNumber(), "HEADER");
                    if (fetchRFC822 != null) {
                        byteArrayInputStream = fetchRFC822.getByteArrayInputStream();
                    }
                }
            } catch (ConnectionException e) {
                throw new FolderClosedException(this.folder, e.getMessage());
            } catch (ProtocolException e2) {
                forceCheckExpunged();
                throw new MessagingException(e2.getMessage(), e2);
            }
        }
        if (byteArrayInputStream == null) {
            throw new MessagingException("Cannot load header");
        }
        this.headers = new InternetHeaders(byteArrayInputStream);
        this.headersLoaded = true;
    }

    private synchronized void setHeaderLoaded(String str) {
        if (this.loadedHeaders == null) {
            this.loadedHeaders = new Hashtable(1);
        }
        this.loadedHeaders.put(str.toUpperCase(Locale.ENGLISH), str);
    }

    private synchronized void setHeadersLoaded(boolean z) {
        this.headersLoaded = z;
    }

    private String toSection(String str) {
        if (this.sectionId == null) {
            return str;
        }
        return String.valueOf(this.sectionId) + "." + str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Session _getSession() {
        return this.session;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void _setFlags(Flags flags) {
        this.flags = flags;
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.Message
    public void addFrom(Address[] addressArr) throws MessagingException {
        throw new IllegalWriteException("IMAPMessage is read-only");
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.Part
    public void addHeader(String str, String str2) throws MessagingException {
        throw new IllegalWriteException("IMAPMessage is read-only");
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.internet.MimePart
    public void addHeaderLine(String str) throws MessagingException {
        throw new IllegalWriteException("IMAPMessage is read-only");
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.Message
    public void addRecipients(Message.RecipientType recipientType, Address[] addressArr) throws MessagingException {
        throw new IllegalWriteException("IMAPMessage is read-only");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void checkExpunged() throws MessageRemovedException {
        if (this.expunged) {
            throw new MessageRemovedException();
        }
    }

    protected void forceCheckExpunged() throws MessageRemovedException, FolderClosedException {
        synchronized (getMessageCacheLock()) {
            try {
                getProtocol().noop();
            } catch (ConnectionException e) {
                throw new FolderClosedException(this.folder, e.getMessage());
            } catch (ProtocolException unused) {
            }
        }
        if (this.expunged) {
            throw new MessageRemovedException();
        }
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.internet.MimePart
    public Enumeration getAllHeaderLines() throws MessagingException {
        checkExpunged();
        loadHeaders();
        return super.getAllHeaderLines();
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.Part
    public Enumeration getAllHeaders() throws MessagingException {
        checkExpunged();
        loadHeaders();
        return super.getAllHeaders();
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.internet.MimePart
    public String getContentID() throws MessagingException {
        checkExpunged();
        loadBODYSTRUCTURE();
        return this.f8846bs.f8847id;
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.internet.MimePart
    public String[] getContentLanguage() throws MessagingException {
        checkExpunged();
        loadBODYSTRUCTURE();
        if (this.f8846bs.language != null) {
            return (String[]) this.f8846bs.language.clone();
        }
        return null;
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.internet.MimePart
    public String getContentMD5() throws MessagingException {
        checkExpunged();
        loadBODYSTRUCTURE();
        return this.f8846bs.md5;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // javax.mail.internet.MimeMessage
    public InputStream getContentStream() throws MessagingException {
        ByteArrayInputStream byteArrayInputStream;
        boolean peek = getPeek();
        synchronized (getMessageCacheLock()) {
            try {
                IMAPProtocol protocol = getProtocol();
                checkExpunged();
                if (protocol.isREV1()) {
                    if (getFetchBlockSize() != -1) {
                        return new IMAPInputStream(this, toSection("TEXT"), this.f8846bs != null ? this.f8846bs.size : -1, peek);
                    }
                }
                if (protocol.isREV1()) {
                    BODY peekBody = peek ? protocol.peekBody(getSequenceNumber(), toSection("TEXT")) : protocol.fetchBody(getSequenceNumber(), toSection("TEXT"));
                    if (peekBody != null) {
                        byteArrayInputStream = peekBody.getByteArrayInputStream();
                    }
                    byteArrayInputStream = null;
                } else {
                    RFC822DATA fetchRFC822 = protocol.fetchRFC822(getSequenceNumber(), "TEXT");
                    if (fetchRFC822 != null) {
                        byteArrayInputStream = fetchRFC822.getByteArrayInputStream();
                    }
                    byteArrayInputStream = null;
                }
                if (byteArrayInputStream == null) {
                    throw new MessagingException("No content");
                }
                return byteArrayInputStream;
            } catch (ConnectionException e) {
                throw new FolderClosedException(this.folder, e.getMessage());
            } catch (ProtocolException e2) {
                forceCheckExpunged();
                throw new MessagingException(e2.getMessage(), e2);
            }
        }
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.Part
    public String getContentType() throws MessagingException {
        checkExpunged();
        if (this.type == null) {
            loadBODYSTRUCTURE();
            this.type = new ContentType(this.f8846bs.type, this.f8846bs.subtype, this.f8846bs.cParams).toString();
        }
        return this.type;
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.Part
    public synchronized DataHandler getDataHandler() throws MessagingException {
        DataHandler dataHandler;
        String str;
        checkExpunged();
        if (this.f10039dh == null) {
            loadBODYSTRUCTURE();
            if (this.type == null) {
                this.type = new ContentType(this.f8846bs.type, this.f8846bs.subtype, this.f8846bs.cParams).toString();
            }
            if (this.f8846bs.isMulti()) {
                dataHandler = new DataHandler(new IMAPMultipartDataSource(this, this.f8846bs.bodies, this.sectionId, this));
            } else if (this.f8846bs.isNested() && isREV1()) {
                BODYSTRUCTURE bodystructure = this.f8846bs.bodies[0];
                ENVELOPE envelope = this.f8846bs.envelope;
                if (this.sectionId == null) {
                    str = "1";
                } else {
                    str = String.valueOf(this.sectionId) + ".1";
                }
                dataHandler = new DataHandler(new IMAPNestedMessage(this, bodystructure, envelope, str), this.type);
            }
            this.f10039dh = dataHandler;
        }
        return super.getDataHandler();
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.Part
    public String getDescription() throws MessagingException {
        checkExpunged();
        if (this.description != null) {
            return this.description;
        }
        loadBODYSTRUCTURE();
        if (this.f8846bs.description == null) {
            return null;
        }
        try {
            this.description = MimeUtility.decodeText(this.f8846bs.description);
        } catch (UnsupportedEncodingException unused) {
            this.description = this.f8846bs.description;
        }
        return this.description;
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.Part
    public String getDisposition() throws MessagingException {
        checkExpunged();
        loadBODYSTRUCTURE();
        return this.f8846bs.disposition;
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.internet.MimePart
    public String getEncoding() throws MessagingException {
        checkExpunged();
        loadBODYSTRUCTURE();
        return this.f8846bs.encoding;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getFetchBlockSize() {
        return ((IMAPStore) this.folder.getStore()).getFetchBlockSize();
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.Part
    public String getFileName() throws MessagingException {
        checkExpunged();
        loadBODYSTRUCTURE();
        String str = this.f8846bs.dParams != null ? this.f8846bs.dParams.get("filename") : null;
        return (str != null || this.f8846bs.cParams == null) ? str : this.f8846bs.cParams.get(InterfaceC3057b.c.f11208b);
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.Message
    public synchronized Flags getFlags() throws MessagingException {
        checkExpunged();
        loadFlags();
        return super.getFlags();
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.Message
    public Address[] getFrom() throws MessagingException {
        checkExpunged();
        loadEnvelope();
        return aaclone(this.envelope.from);
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.internet.MimePart
    public String getHeader(String str, String str2) throws MessagingException {
        checkExpunged();
        if (getHeader(str) == null) {
            return null;
        }
        return this.headers.getHeader(str, str2);
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.Part
    public String[] getHeader(String str) throws MessagingException {
        ByteArrayInputStream byteArrayInputStream;
        checkExpunged();
        if (!isHeaderLoaded(str)) {
            synchronized (getMessageCacheLock()) {
                try {
                    IMAPProtocol protocol = getProtocol();
                    checkExpunged();
                    if (protocol.isREV1()) {
                        BODY peekBody = protocol.peekBody(getSequenceNumber(), toSection("HEADER.FIELDS (" + str + ")"));
                        if (peekBody != null) {
                            byteArrayInputStream = peekBody.getByteArrayInputStream();
                        }
                        byteArrayInputStream = null;
                    } else {
                        RFC822DATA fetchRFC822 = protocol.fetchRFC822(getSequenceNumber(), "HEADER.LINES (" + str + ")");
                        if (fetchRFC822 != null) {
                            byteArrayInputStream = fetchRFC822.getByteArrayInputStream();
                        }
                        byteArrayInputStream = null;
                    }
                } catch (ConnectionException e) {
                    throw new FolderClosedException(this.folder, e.getMessage());
                } catch (ProtocolException e2) {
                    forceCheckExpunged();
                    throw new MessagingException(e2.getMessage(), e2);
                }
            }
            if (byteArrayInputStream == null) {
                return null;
            }
            if (this.headers == null) {
                this.headers = new InternetHeaders();
            }
            this.headers.load(byteArrayInputStream);
            setHeaderLoaded(str);
        }
        return this.headers.getHeader(str);
    }

    public String getInReplyTo() throws MessagingException {
        checkExpunged();
        loadEnvelope();
        return this.envelope.inReplyTo;
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.Part
    public int getLineCount() throws MessagingException {
        checkExpunged();
        loadBODYSTRUCTURE();
        return this.f8846bs.lines;
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.internet.MimePart
    public Enumeration getMatchingHeaderLines(String[] strArr) throws MessagingException {
        checkExpunged();
        loadHeaders();
        return super.getMatchingHeaderLines(strArr);
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.Part
    public Enumeration getMatchingHeaders(String[] strArr) throws MessagingException {
        checkExpunged();
        loadHeaders();
        return super.getMatchingHeaders(strArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object getMessageCacheLock() {
        return ((IMAPFolder) this.folder).messageCacheLock;
    }

    @Override // javax.mail.internet.MimeMessage
    public String getMessageID() throws MessagingException {
        checkExpunged();
        loadEnvelope();
        return this.envelope.messageId;
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.internet.MimePart
    public Enumeration getNonMatchingHeaderLines(String[] strArr) throws MessagingException {
        checkExpunged();
        loadHeaders();
        return super.getNonMatchingHeaderLines(strArr);
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.Part
    public Enumeration getNonMatchingHeaders(String[] strArr) throws MessagingException {
        checkExpunged();
        loadHeaders();
        return super.getNonMatchingHeaders(strArr);
    }

    public synchronized boolean getPeek() {
        return this.peek;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public IMAPProtocol getProtocol() throws ProtocolException, FolderClosedException {
        ((IMAPFolder) this.folder).waitIfIdle();
        IMAPProtocol iMAPProtocol = ((IMAPFolder) this.folder).protocol;
        if (iMAPProtocol == null) {
            throw new FolderClosedException(this.folder);
        }
        return iMAPProtocol;
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.Message
    public Date getReceivedDate() throws MessagingException {
        checkExpunged();
        loadEnvelope();
        if (this.receivedDate == null) {
            return null;
        }
        return new Date(this.receivedDate.getTime());
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.Message
    public Address[] getRecipients(Message.RecipientType recipientType) throws MessagingException {
        InternetAddress[] internetAddressArr;
        checkExpunged();
        loadEnvelope();
        if (recipientType == Message.RecipientType.f10034TO) {
            internetAddressArr = this.envelope.f8849to;
        } else if (recipientType == Message.RecipientType.f10033CC) {
            internetAddressArr = this.envelope.f8848cc;
        } else {
            if (recipientType != Message.RecipientType.BCC) {
                return super.getRecipients(recipientType);
            }
            internetAddressArr = this.envelope.bcc;
        }
        return aaclone(internetAddressArr);
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.Message
    public Address[] getReplyTo() throws MessagingException {
        checkExpunged();
        loadEnvelope();
        return aaclone(this.envelope.replyTo);
    }

    @Override // javax.mail.internet.MimeMessage
    public Address getSender() throws MessagingException {
        checkExpunged();
        loadEnvelope();
        if (this.envelope.sender != null) {
            return this.envelope.sender[0];
        }
        return null;
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.Message
    public Date getSentDate() throws MessagingException {
        checkExpunged();
        loadEnvelope();
        if (this.envelope.date == null) {
            return null;
        }
        return new Date(this.envelope.date.getTime());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getSequenceNumber() {
        return this.seqnum;
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.Part
    public int getSize() throws MessagingException {
        checkExpunged();
        if (this.size == -1) {
            loadEnvelope();
        }
        return this.size;
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.Message
    public String getSubject() throws MessagingException {
        checkExpunged();
        if (this.subject != null) {
            return this.subject;
        }
        loadEnvelope();
        if (this.envelope.subject == null) {
            return null;
        }
        try {
            this.subject = MimeUtility.decodeText(this.envelope.subject);
        } catch (UnsupportedEncodingException unused) {
            this.subject = this.envelope.subject;
        }
        return this.subject;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long getUID() {
        return this.uid;
    }

    public synchronized void invalidateHeaders() {
        this.headersLoaded = false;
        this.loadedHeaders = null;
        this.envelope = null;
        this.f8846bs = null;
        this.receivedDate = null;
        this.size = -1;
        this.type = null;
        this.subject = null;
        this.description = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isREV1() throws FolderClosedException {
        IMAPProtocol iMAPProtocol = ((IMAPFolder) this.folder).protocol;
        if (iMAPProtocol == null) {
            throw new FolderClosedException(this.folder);
        }
        return iMAPProtocol.isREV1();
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.Message
    public synchronized boolean isSet(Flags.Flag flag) throws MessagingException {
        checkExpunged();
        loadFlags();
        return super.isSet(flag);
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.Part
    public void removeHeader(String str) throws MessagingException {
        throw new IllegalWriteException("IMAPMessage is read-only");
    }

    @Override // javax.mail.internet.MimeMessage
    public void setContentID(String str) throws MessagingException {
        throw new IllegalWriteException("IMAPMessage is read-only");
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.internet.MimePart
    public void setContentLanguage(String[] strArr) throws MessagingException {
        throw new IllegalWriteException("IMAPMessage is read-only");
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.internet.MimePart
    public void setContentMD5(String str) throws MessagingException {
        throw new IllegalWriteException("IMAPMessage is read-only");
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.Part
    public void setDataHandler(DataHandler dataHandler) throws MessagingException {
        throw new IllegalWriteException("IMAPMessage is read-only");
    }

    @Override // javax.mail.internet.MimeMessage
    public void setDescription(String str, String str2) throws MessagingException {
        throw new IllegalWriteException("IMAPMessage is read-only");
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.Part
    public void setDisposition(String str) throws MessagingException {
        throw new IllegalWriteException("IMAPMessage is read-only");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // javax.mail.Message
    public void setExpunged(boolean z) {
        super.setExpunged(z);
        this.seqnum = -1;
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.Part
    public void setFileName(String str) throws MessagingException {
        throw new IllegalWriteException("IMAPMessage is read-only");
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.Message
    public synchronized void setFlags(Flags flags, boolean z) throws MessagingException {
        synchronized (getMessageCacheLock()) {
            try {
                IMAPProtocol protocol = getProtocol();
                checkExpunged();
                protocol.storeFlags(getSequenceNumber(), flags, z);
            } catch (ConnectionException e) {
                throw new FolderClosedException(this.folder, e.getMessage());
            } catch (ProtocolException e2) {
                throw new MessagingException(e2.getMessage(), e2);
            }
        }
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.Message
    public void setFrom(Address address) throws MessagingException {
        throw new IllegalWriteException("IMAPMessage is read-only");
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.Part
    public void setHeader(String str, String str2) throws MessagingException {
        throw new IllegalWriteException("IMAPMessage is read-only");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // javax.mail.Message
    public void setMessageNumber(int i) {
        super.setMessageNumber(i);
    }

    public synchronized void setPeek(boolean z) {
        this.peek = z;
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.Message
    public void setRecipients(Message.RecipientType recipientType, Address[] addressArr) throws MessagingException {
        throw new IllegalWriteException("IMAPMessage is read-only");
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.Message
    public void setReplyTo(Address[] addressArr) throws MessagingException {
        throw new IllegalWriteException("IMAPMessage is read-only");
    }

    @Override // javax.mail.internet.MimeMessage
    public void setSender(Address address) throws MessagingException {
        throw new IllegalWriteException("IMAPMessage is read-only");
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.Message
    public void setSentDate(Date date) throws MessagingException {
        throw new IllegalWriteException("IMAPMessage is read-only");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setSequenceNumber(int i) {
        this.seqnum = i;
    }

    @Override // javax.mail.internet.MimeMessage
    public void setSubject(String str, String str2) throws MessagingException {
        throw new IllegalWriteException("IMAPMessage is read-only");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setUID(long j) {
        this.uid = j;
    }

    @Override // javax.mail.internet.MimeMessage, javax.mail.Part
    public void writeTo(OutputStream outputStream) throws IOException, MessagingException {
        ByteArrayInputStream byteArrayInputStream;
        boolean peek = getPeek();
        synchronized (getMessageCacheLock()) {
            try {
                IMAPProtocol protocol = getProtocol();
                checkExpunged();
                byteArrayInputStream = null;
                if (protocol.isREV1()) {
                    BODY peekBody = peek ? protocol.peekBody(getSequenceNumber(), this.sectionId) : protocol.fetchBody(getSequenceNumber(), this.sectionId);
                    if (peekBody != null) {
                        byteArrayInputStream = peekBody.getByteArrayInputStream();
                    }
                } else {
                    RFC822DATA fetchRFC822 = protocol.fetchRFC822(getSequenceNumber(), null);
                    if (fetchRFC822 != null) {
                        byteArrayInputStream = fetchRFC822.getByteArrayInputStream();
                    }
                }
            } catch (ConnectionException e) {
                throw new FolderClosedException(this.folder, e.getMessage());
            } catch (ProtocolException e2) {
                forceCheckExpunged();
                throw new MessagingException(e2.getMessage(), e2);
            }
        }
        if (byteArrayInputStream == null) {
            throw new MessagingException("No content");
        }
        byte[] bArr = new byte[1024];
        while (true) {
            int read = byteArrayInputStream.read(bArr);
            if (read == -1) {
                return;
            } else {
                outputStream.write(bArr, 0, read);
            }
        }
    }
}
