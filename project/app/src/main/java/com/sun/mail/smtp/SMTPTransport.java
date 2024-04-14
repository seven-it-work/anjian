package com.sun.mail.smtp;

import android.support.v7.widget.ActivityChooserView;
import android.support.v7.widget.helper.ItemTouchHelper;
import com.cyjh.common.util.C1176s;
import com.lidroid.xutils.http.client.multipart.MIME;
import com.sun.mail.util.ASCIIUtility;
import com.sun.mail.util.BASE64EncoderStream;
import com.sun.mail.util.LineInputStream;
import com.sun.mail.util.SocketFetcher;
import com.sun.mail.util.TraceInputStream;
import com.sun.mail.util.TraceOutputStream;
import com.umeng.commonsdk.proguard.C2489bg;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.StringReader;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.Hashtable;
import java.util.Locale;
import java.util.Properties;
import java.util.StringTokenizer;
import java.util.Vector;
import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.SendFailedException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.URLName;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.internet.MimePart;
import javax.mail.internet.ParseException;

/* loaded from: classes.dex */
public class SMTPTransport extends Transport {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String UNKNOWN = "UNKNOWN";
    private Address[] addresses;
    private SMTPOutputStream dataStream;
    private int defaultPort;
    private MessagingException exception;
    private Hashtable extMap;
    private Address[] invalidAddr;
    private boolean isSSL;
    private int lastReturnCode;
    private String lastServerResponse;
    private LineInputStream lineInputStream;
    private String localHostName;
    private DigestMD5 md5support;
    private MimeMessage message;
    private String name;
    private PrintStream out;
    private boolean quitWait;
    private boolean reportSuccess;
    private String saslRealm;
    private boolean sendPartiallyFailed;
    private BufferedInputStream serverInput;
    private OutputStream serverOutput;
    private Socket serverSocket;
    private boolean useRset;
    private boolean useStartTLS;
    private Address[] validSentAddr;
    private Address[] validUnsentAddr;
    private static final String[] ignoreList = {"Bcc", "Content-Length"};
    private static final byte[] CRLF = {C2489bg.f9368k, 10};
    private static char[] hexchar = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public SMTPTransport(Session session, URLName uRLName) {
        this(session, uRLName, "smtp", 25, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SMTPTransport(Session session, URLName uRLName, String str, int i, boolean z) {
        super(session, uRLName);
        this.name = "smtp";
        this.defaultPort = 25;
        this.isSSL = false;
        this.sendPartiallyFailed = false;
        this.quitWait = false;
        this.saslRealm = UNKNOWN;
        str = uRLName != null ? uRLName.getProtocol() : str;
        this.name = str;
        this.defaultPort = i;
        this.isSSL = z;
        this.out = session.getDebugOut();
        String property = session.getProperty("mail." + str + ".quitwait");
        this.quitWait = property == null || property.equalsIgnoreCase("true");
        String property2 = session.getProperty("mail." + str + ".reportsuccess");
        this.reportSuccess = property2 != null && property2.equalsIgnoreCase("true");
        String property3 = session.getProperty("mail." + str + ".starttls.enable");
        this.useStartTLS = property3 != null && property3.equalsIgnoreCase("true");
        String property4 = session.getProperty("mail." + str + ".userset");
        this.useRset = property4 != null && property4.equalsIgnoreCase("true");
    }

    private void closeConnection() throws MessagingException {
        try {
            try {
                if (this.serverSocket != null) {
                    this.serverSocket.close();
                }
            } catch (IOException e) {
                throw new MessagingException("Server Close Failed", e);
            }
        } finally {
            this.serverSocket = null;
            this.serverOutput = null;
            this.serverInput = null;
            this.lineInputStream = null;
            if (super.isConnected()) {
                super.close();
            }
        }
    }

    private boolean convertTo8Bit(MimePart mimePart) {
        try {
            if (mimePart.isMimeType("text/*")) {
                String encoding = mimePart.getEncoding();
                if (encoding != null && ((encoding.equalsIgnoreCase("quoted-printable") || encoding.equalsIgnoreCase("base64")) && is8Bit(mimePart.getInputStream()))) {
                    mimePart.setContent(mimePart.getContent(), mimePart.getContentType());
                    mimePart.setHeader(MIME.CONTENT_TRANSFER_ENC, MIME.ENC_8BIT);
                    return true;
                }
            } else if (mimePart.isMimeType("multipart/*")) {
                MimeMultipart mimeMultipart = (MimeMultipart) mimePart.getContent();
                int count = mimeMultipart.getCount();
                boolean z = false;
                for (int i = 0; i < count; i++) {
                    try {
                        if (convertTo8Bit((MimePart) mimeMultipart.getBodyPart(i))) {
                            z = true;
                        }
                    } catch (IOException | MessagingException unused) {
                    }
                }
                return z;
            }
        } catch (IOException | MessagingException unused2) {
        }
        return false;
    }

    private void expandGroups() {
        Vector vector = null;
        for (int i = 0; i < this.addresses.length; i++) {
            InternetAddress internetAddress = (InternetAddress) this.addresses[i];
            if (internetAddress.isGroup()) {
                if (vector == null) {
                    Vector vector2 = new Vector();
                    for (int i2 = 0; i2 < i; i2++) {
                        vector2.addElement(this.addresses[i2]);
                    }
                    vector = vector2;
                }
                try {
                    InternetAddress[] group = internetAddress.getGroup(true);
                    if (group != null) {
                        for (InternetAddress internetAddress2 : group) {
                            vector.addElement(internetAddress2);
                        }
                    } else {
                        vector.addElement(internetAddress);
                    }
                } catch (ParseException unused) {
                }
            } else {
                if (vector == null) {
                }
                vector.addElement(internetAddress);
            }
        }
        if (vector != null) {
            InternetAddress[] internetAddressArr = new InternetAddress[vector.size()];
            vector.copyInto(internetAddressArr);
            this.addresses = internetAddressArr;
        }
    }

    private synchronized DigestMD5 getMD5() {
        if (this.md5support == null) {
            this.md5support = new DigestMD5(this.debug ? this.out : null);
        }
        return this.md5support;
    }

    private void initStreams() throws IOException {
        Properties properties = this.session.getProperties();
        PrintStream debugOut = this.session.getDebugOut();
        boolean debug = this.session.getDebug();
        String property = properties.getProperty("mail.debug.quote");
        boolean z = property != null && property.equalsIgnoreCase("true");
        TraceInputStream traceInputStream = new TraceInputStream(this.serverSocket.getInputStream(), debugOut);
        traceInputStream.setTrace(debug);
        traceInputStream.setQuote(z);
        TraceOutputStream traceOutputStream = new TraceOutputStream(this.serverSocket.getOutputStream(), debugOut);
        traceOutputStream.setTrace(debug);
        traceOutputStream.setQuote(z);
        this.serverOutput = new BufferedOutputStream(traceOutputStream);
        this.serverInput = new BufferedInputStream(traceInputStream);
        this.lineInputStream = new LineInputStream(this.serverInput);
    }

    private boolean is8Bit(InputStream inputStream) {
        boolean z = false;
        int i = 0;
        while (true) {
            try {
                int read = inputStream.read();
                if (read < 0) {
                    if (this.debug && z) {
                        this.out.println("DEBUG SMTP: found an 8bit part");
                    }
                    return z;
                }
                int i2 = read & 255;
                if (i2 == 13 || i2 == 10) {
                    i = 0;
                } else if (i2 == 0 || (i = i + 1) > 998) {
                    return false;
                }
                if (i2 > 127) {
                    z = true;
                }
            } catch (IOException unused) {
                return false;
            }
        }
    }

    private boolean isNotLastLine(String str) {
        return str != null && str.length() >= 4 && str.charAt(3) == '-';
    }

    private void issueSendCommand(String str, int i) throws MessagingException {
        sendCommand(str);
        int readServerResponse = readServerResponse();
        if (readServerResponse != i) {
            int length = this.validSentAddr == null ? 0 : this.validSentAddr.length;
            int length2 = this.validUnsentAddr == null ? 0 : this.validUnsentAddr.length;
            Address[] addressArr = new Address[length + length2];
            if (length > 0) {
                System.arraycopy(this.validSentAddr, 0, addressArr, 0, length);
            }
            if (length2 > 0) {
                System.arraycopy(this.validUnsentAddr, 0, addressArr, length, length2);
            }
            this.validSentAddr = null;
            this.validUnsentAddr = addressArr;
            if (this.debug) {
                this.out.println("DEBUG SMTP: got response code " + readServerResponse + ", with response: " + this.lastServerResponse);
            }
            String str2 = this.lastServerResponse;
            int i2 = this.lastReturnCode;
            if (this.serverSocket != null) {
                issueCommand("RSET", ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
            }
            this.lastServerResponse = str2;
            this.lastReturnCode = i2;
            throw new SMTPSendFailedException(str, readServerResponse, this.lastServerResponse, this.exception, this.validSentAddr, this.validUnsentAddr, this.invalidAddr);
        }
    }

    private String normalizeAddress(String str) {
        if (str.startsWith("<") || str.endsWith(">")) {
            return str;
        }
        return "<" + str + ">";
    }

    private void openServer() throws MessagingException {
        String str;
        IOException e;
        int i;
        try {
            i = this.serverSocket.getPort();
            try {
                str = this.serverSocket.getInetAddress().getHostName();
                try {
                    if (this.debug) {
                        this.out.println("DEBUG SMTP: starting protocol to host \"" + str + "\", port " + i);
                    }
                    initStreams();
                    int readServerResponse = readServerResponse();
                    if (readServerResponse == 220) {
                        if (this.debug) {
                            this.out.println("DEBUG SMTP: protocol started to host \"" + str + "\", port: " + i + "\n");
                            return;
                        }
                        return;
                    }
                    this.serverSocket.close();
                    this.serverSocket = null;
                    this.serverOutput = null;
                    this.serverInput = null;
                    this.lineInputStream = null;
                    if (this.debug) {
                        this.out.println("DEBUG SMTP: got bad greeting from host \"" + str + "\", port: " + i + ", response: " + readServerResponse + "\n");
                    }
                    throw new MessagingException("Got bad greeting from SMTP host: " + str + ", port: " + i + ", response: " + readServerResponse);
                } catch (IOException e2) {
                    e = e2;
                    throw new MessagingException("Could not start protocol to SMTP host: " + str + ", port: " + i, e);
                }
            } catch (IOException e3) {
                str = UNKNOWN;
                e = e3;
            }
        } catch (IOException e4) {
            str = UNKNOWN;
            e = e4;
            i = -1;
        }
    }

    private void openServer(String str, int i) throws MessagingException {
        int i2;
        IOException e;
        if (this.debug) {
            this.out.println("DEBUG SMTP: trying to connect to host \"" + str + "\", port " + i + ", isSSL " + this.isSSL);
        }
        try {
            try {
                this.serverSocket = SocketFetcher.getSocket(str, i, this.session.getProperties(), "mail." + this.name, this.isSSL);
                i2 = this.serverSocket.getPort();
                try {
                    initStreams();
                    int readServerResponse = readServerResponse();
                    if (readServerResponse == 220) {
                        if (this.debug) {
                            this.out.println("DEBUG SMTP: connected to host \"" + str + "\", port: " + i2 + "\n");
                            return;
                        }
                        return;
                    }
                    this.serverSocket.close();
                    this.serverSocket = null;
                    this.serverOutput = null;
                    this.serverInput = null;
                    this.lineInputStream = null;
                    if (this.debug) {
                        this.out.println("DEBUG SMTP: could not connect to host \"" + str + "\", port: " + i2 + ", response: " + readServerResponse + "\n");
                    }
                    throw new MessagingException("Could not connect to SMTP host: " + str + ", port: " + i2 + ", response: " + readServerResponse);
                } catch (IOException e2) {
                    e = e2;
                    throw new MessagingException("Could not connect to SMTP host: " + str + ", port: " + i2, e);
                }
            } catch (IOException e3) {
                i2 = i;
                e = e3;
            }
        } catch (UnknownHostException e4) {
            throw new MessagingException("Unknown SMTP host: " + str, e4);
        }
    }

    private void sendCommand(byte[] bArr) throws MessagingException {
        try {
            this.serverOutput.write(bArr);
            this.serverOutput.write(CRLF);
            this.serverOutput.flush();
        } catch (IOException e) {
            throw new MessagingException("Can't send command to SMTP host", e);
        }
    }

    protected static String xtext(String str) {
        int i;
        StringBuffer stringBuffer = null;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt >= 128) {
                throw new IllegalArgumentException("Non-ASCII character in SMTP submitter: " + str);
            }
            if (charAt < '!' || charAt > '~' || charAt == '+' || charAt == '=') {
                if (stringBuffer == null) {
                    stringBuffer = new StringBuffer(str.length() + 4);
                    stringBuffer.append(str.substring(0, i));
                }
                stringBuffer.append('+');
                stringBuffer.append(hexchar[(charAt & 240) >> 4]);
                charAt = hexchar[charAt & 15];
            } else {
                i = stringBuffer == null ? i + 1 : 0;
            }
            stringBuffer.append(charAt);
        }
        return stringBuffer != null ? stringBuffer.toString() : str;
    }

    protected void checkConnected() {
        if (!super.isConnected()) {
            throw new IllegalStateException("Not connected");
        }
    }

    @Override // javax.mail.Service
    public synchronized void close() throws MessagingException {
        int readServerResponse;
        if (super.isConnected()) {
            try {
                if (this.serverSocket != null) {
                    sendCommand("QUIT");
                    if (this.quitWait && (readServerResponse = readServerResponse()) != 221 && readServerResponse != -1) {
                        this.out.println("DEBUG SMTP: QUIT failed with " + readServerResponse);
                    }
                }
            } finally {
                closeConnection();
            }
        }
    }

    public synchronized void connect(Socket socket) throws MessagingException {
        this.serverSocket = socket;
        super.connect();
    }

    protected OutputStream data() throws MessagingException {
        issueSendCommand("DATA", 354);
        this.dataStream = new SMTPOutputStream(this.serverOutput);
        return this.dataStream;
    }

    protected boolean ehlo(String str) throws MessagingException {
        String str2;
        if (str != null) {
            str2 = "EHLO " + str;
        } else {
            str2 = "EHLO";
        }
        sendCommand(str2);
        int readServerResponse = readServerResponse();
        if (readServerResponse == 250) {
            BufferedReader bufferedReader = new BufferedReader(new StringReader(this.lastServerResponse));
            this.extMap = new Hashtable();
            boolean z = true;
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    if (z) {
                        z = false;
                    } else if (readLine.length() >= 5) {
                        String substring = readLine.substring(4);
                        int indexOf = substring.indexOf(32);
                        String str3 = "";
                        if (indexOf > 0) {
                            str3 = substring.substring(indexOf + 1);
                            substring = substring.substring(0, indexOf);
                        }
                        if (this.debug) {
                            this.out.println("DEBUG SMTP: Found extension \"" + substring + "\", arg \"" + str3 + "\"");
                        }
                        this.extMap.put(substring.toUpperCase(Locale.ENGLISH), str3);
                    }
                } catch (IOException unused) {
                }
            }
        }
        return readServerResponse == 250;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // javax.mail.Service
    public void finalize() throws Throwable {
        super.finalize();
        try {
            closeConnection();
        } catch (MessagingException unused) {
        }
    }

    protected void finishData() throws IOException, MessagingException {
        this.dataStream.ensureAtBOL();
        issueSendCommand(".", ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
    }

    public String getExtensionParameter(String str) {
        if (this.extMap == null) {
            return null;
        }
        return (String) this.extMap.get(str.toUpperCase(Locale.ENGLISH));
    }

    public synchronized int getLastReturnCode() {
        return this.lastReturnCode;
    }

    public synchronized String getLastServerResponse() {
        return this.lastServerResponse;
    }

    public synchronized String getLocalHost() {
        try {
            if (this.localHostName == null || this.localHostName.length() <= 0) {
                this.localHostName = this.session.getProperty("mail." + this.name + ".localhost");
            }
            if (this.localHostName == null || this.localHostName.length() <= 0) {
                this.localHostName = this.session.getProperty("mail." + this.name + ".localaddress");
            }
            if (this.localHostName == null || this.localHostName.length() <= 0) {
                InetAddress localHost = InetAddress.getLocalHost();
                this.localHostName = localHost.getHostName();
                if (this.localHostName == null) {
                    this.localHostName = "[" + localHost.getHostAddress() + "]";
                }
            }
        } catch (UnknownHostException unused) {
        }
        return this.localHostName;
    }

    public synchronized boolean getReportSuccess() {
        return this.reportSuccess;
    }

    public synchronized String getSASLRealm() {
        if (this.saslRealm == UNKNOWN) {
            this.saslRealm = this.session.getProperty("mail." + this.name + ".sasl.realm");
            if (this.saslRealm == null) {
                this.saslRealm = this.session.getProperty("mail." + this.name + ".saslrealm");
            }
        }
        return this.saslRealm;
    }

    public synchronized boolean getStartTLS() {
        return this.useStartTLS;
    }

    public synchronized boolean getUseRset() {
        return this.useRset;
    }

    protected void helo(String str) throws MessagingException {
        String str2;
        if (str != null) {
            str2 = "HELO " + str;
        } else {
            str2 = "HELO";
        }
        issueCommand(str2, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
    }

    @Override // javax.mail.Service
    public synchronized boolean isConnected() {
        if (!super.isConnected()) {
            return false;
        }
        try {
            try {
                sendCommand(this.useRset ? "RSET" : "NOOP");
                int readServerResponse = readServerResponse();
                if (readServerResponse >= 0 && readServerResponse != 421) {
                    return true;
                }
                try {
                    closeConnection();
                } catch (MessagingException unused) {
                }
                return false;
            } catch (Exception unused2) {
                closeConnection();
                return false;
            }
        } catch (MessagingException unused3) {
            return false;
        }
    }

    public synchronized void issueCommand(String str, int i) throws MessagingException {
        sendCommand(str);
        if (readServerResponse() != i) {
            throw new MessagingException(this.lastServerResponse);
        }
    }

    protected void mailFrom() throws MessagingException {
        Address[] from;
        String envelopeFrom = this.message instanceof SMTPMessage ? ((SMTPMessage) this.message).getEnvelopeFrom() : null;
        if (envelopeFrom == null || envelopeFrom.length() <= 0) {
            envelopeFrom = this.session.getProperty("mail." + this.name + ".from");
        }
        if (envelopeFrom == null || envelopeFrom.length() <= 0) {
            Address localAddress = (this.message == null || (from = this.message.getFrom()) == null || from.length <= 0) ? InternetAddress.getLocalAddress(this.session) : from[0];
            if (localAddress == null) {
                throw new MessagingException("can't determine local email address");
            }
            envelopeFrom = ((InternetAddress) localAddress).getAddress();
        }
        String str = "MAIL FROM:" + normalizeAddress(envelopeFrom);
        if (supportsExtension("DSN")) {
            String dSNRet = this.message instanceof SMTPMessage ? ((SMTPMessage) this.message).getDSNRet() : null;
            if (dSNRet == null) {
                dSNRet = this.session.getProperty("mail." + this.name + ".dsn.ret");
            }
            if (dSNRet != null) {
                str = String.valueOf(str) + " RET=" + dSNRet;
            }
        }
        if (supportsExtension("AUTH")) {
            String submitter = this.message instanceof SMTPMessage ? ((SMTPMessage) this.message).getSubmitter() : null;
            if (submitter == null) {
                submitter = this.session.getProperty("mail." + this.name + ".submitter");
            }
            if (submitter != null) {
                try {
                    str = String.valueOf(str) + " AUTH=" + xtext(submitter);
                } catch (IllegalArgumentException e) {
                    if (this.debug) {
                        this.out.println("DEBUG SMTP: ignoring invalid submitter: " + submitter + ", Exception: " + e);
                    }
                }
            }
        }
        String mailExtension = this.message instanceof SMTPMessage ? ((SMTPMessage) this.message).getMailExtension() : null;
        if (mailExtension == null) {
            mailExtension = this.session.getProperty("mail." + this.name + ".mailextension");
        }
        if (mailExtension != null && mailExtension.length() > 0) {
            str = String.valueOf(str) + C1176s.a.f4108a + mailExtension;
        }
        issueSendCommand(str, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // javax.mail.Service
    public boolean protocolConnect(String str, int i, String str2, String str3) throws MessagingException {
        int i2;
        DigestMD5 md5;
        String property = this.session.getProperty("mail." + this.name + ".ehlo");
        boolean z = property == null || !property.equalsIgnoreCase("false");
        String property2 = this.session.getProperty("mail." + this.name + ".auth");
        boolean z2 = property2 != null && property2.equalsIgnoreCase("true");
        if (this.debug) {
            this.out.println("DEBUG SMTP: useEhlo " + z + ", useAuth " + z2);
        }
        if (z2 && (str2 == null || str3 == null)) {
            return false;
        }
        int i3 = -1;
        int i4 = i;
        if (i4 == -1) {
            String property3 = this.session.getProperty("mail." + this.name + ".port");
            i4 = property3 != null ? Integer.parseInt(property3) : this.defaultPort;
        }
        int i5 = i4;
        String str4 = (str == null || str.length() == 0) ? "localhost" : str;
        if (this.serverSocket != null) {
            openServer();
        } else {
            openServer(str4, i5);
        }
        if (!(z ? ehlo(getLocalHost()) : false)) {
            helo(getLocalHost());
        }
        if (this.useStartTLS && supportsExtension("STARTTLS")) {
            startTLS();
            ehlo(getLocalHost());
        }
        if ((z2 || (str2 != null && str3 != null)) && (supportsExtension("AUTH") || supportsExtension("AUTH=LOGIN"))) {
            if (this.debug) {
                this.out.println("DEBUG SMTP: Attempt to authenticate");
                if (!supportsAuthentication("LOGIN") && supportsExtension("AUTH=LOGIN")) {
                    this.out.println("DEBUG SMTP: use AUTH=LOGIN hack");
                }
            }
            if (supportsAuthentication("LOGIN") || supportsExtension("AUTH=LOGIN")) {
                int simpleCommand = simpleCommand("AUTH LOGIN");
                if (simpleCommand == 530) {
                    startTLS();
                    simpleCommand = simpleCommand("AUTH LOGIN");
                }
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    BASE64EncoderStream bASE64EncoderStream = new BASE64EncoderStream(byteArrayOutputStream, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
                    if (simpleCommand == 334) {
                        bASE64EncoderStream.write(ASCIIUtility.getBytes(str2));
                        bASE64EncoderStream.flush();
                        i2 = simpleCommand(byteArrayOutputStream.toByteArray());
                        try {
                            byteArrayOutputStream.reset();
                            simpleCommand = i2;
                        } catch (IOException unused) {
                            simpleCommand = i2;
                            if (simpleCommand != 235) {
                                closeConnection();
                                return false;
                            }
                            return true;
                        } catch (Throwable th) {
                            th = th;
                            Throwable th2 = th;
                            if (i2 == 235) {
                                throw th2;
                            }
                            closeConnection();
                            return false;
                        }
                    }
                    if (simpleCommand == 334) {
                        bASE64EncoderStream.write(ASCIIUtility.getBytes(str3));
                        bASE64EncoderStream.flush();
                        i2 = simpleCommand(byteArrayOutputStream.toByteArray());
                        byteArrayOutputStream.reset();
                        simpleCommand = i2;
                    }
                    if (simpleCommand != 235) {
                        closeConnection();
                        return false;
                    }
                } catch (IOException unused2) {
                } catch (Throwable th3) {
                    th = th3;
                    i2 = simpleCommand;
                }
            } else if (supportsAuthentication("PLAIN")) {
                int simpleCommand2 = simpleCommand("AUTH PLAIN");
                try {
                    ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                    BASE64EncoderStream bASE64EncoderStream2 = new BASE64EncoderStream(byteArrayOutputStream2, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
                    if (simpleCommand2 == 334) {
                        bASE64EncoderStream2.write(0);
                        bASE64EncoderStream2.write(ASCIIUtility.getBytes(str2));
                        bASE64EncoderStream2.write(0);
                        bASE64EncoderStream2.write(ASCIIUtility.getBytes(str3));
                        bASE64EncoderStream2.flush();
                        simpleCommand2 = simpleCommand(byteArrayOutputStream2.toByteArray());
                    }
                    if (simpleCommand2 != 235) {
                        closeConnection();
                        return false;
                    }
                } catch (IOException unused3) {
                    if (simpleCommand2 != 235) {
                        closeConnection();
                        return false;
                    }
                } catch (Throwable th4) {
                    if (simpleCommand2 == 235) {
                        throw th4;
                    }
                    closeConnection();
                    return false;
                }
            } else if (supportsAuthentication("DIGEST-MD5") && (md5 = getMD5()) != null) {
                int simpleCommand3 = simpleCommand("AUTH DIGEST-MD5");
                try {
                    if (simpleCommand3 == 334) {
                        try {
                            int simpleCommand4 = simpleCommand(md5.authClient(str4, str2, str3, getSASLRealm(), this.lastServerResponse));
                            if (simpleCommand4 == 334) {
                                try {
                                    if (md5.authServer(this.lastServerResponse)) {
                                        i3 = simpleCommand(new byte[0]);
                                    }
                                } catch (Exception e) {
                                    e = e;
                                    simpleCommand3 = simpleCommand4;
                                    Exception exc = e;
                                    if (this.debug) {
                                        this.out.println("DEBUG SMTP: DIGEST-MD5: " + exc);
                                    }
                                    if (simpleCommand3 != 235) {
                                        closeConnection();
                                        return false;
                                    }
                                    return true;
                                } catch (Throwable th5) {
                                    th = th5;
                                    simpleCommand3 = simpleCommand4;
                                    Throwable th6 = th;
                                    if (simpleCommand3 == 235) {
                                        throw th6;
                                    }
                                    closeConnection();
                                    return false;
                                }
                            } else {
                                i3 = simpleCommand4;
                            }
                        } catch (Exception e2) {
                            e = e2;
                        }
                    } else {
                        i3 = simpleCommand3;
                    }
                    if (i3 != 235) {
                        closeConnection();
                        return false;
                    }
                } catch (Throwable th7) {
                    th = th7;
                }
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x029a, code lost:
    
        if (r14 == null) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x02e5, code lost:
    
        r14.setNextException(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x02f9, code lost:
    
        r14 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x02e2, code lost:
    
        if (r14 == null) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x02f7, code lost:
    
        if (r14 == null) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0308, code lost:
    
        if (r14 == null) goto L153;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:35:0x0270. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:36:0x0273. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:37:0x0276. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:127:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x022d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0144  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void rcptTo() throws javax.mail.MessagingException {
        /*
            Method dump skipped, instructions count: 814
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.mail.smtp.SMTPTransport.rcptTo():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0064, code lost:
    
        if (r6.debug == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0066, code lost:
    
        r1.printStackTrace(r6.out);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0073, code lost:
    
        if (r6.debug == false) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected int readServerResponse() throws javax.mail.MessagingException {
        /*
            r6 = this;
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r1 = 100
            r0.<init>(r1)
        L7:
            r1 = 0
            com.sun.mail.util.LineInputStream r2 = r6.lineInputStream     // Catch: java.io.IOException -> L95
            java.lang.String r2 = r2.readLine()     // Catch: java.io.IOException -> L95
            r3 = -1
            if (r2 != 0) goto L39
            java.lang.String r0 = r0.toString()     // Catch: java.io.IOException -> L95
            int r2 = r0.length()     // Catch: java.io.IOException -> L95
            if (r2 != 0) goto L1d
            java.lang.String r0 = "[EOF]"
        L1d:
            r6.lastServerResponse = r0     // Catch: java.io.IOException -> L95
            r6.lastReturnCode = r3     // Catch: java.io.IOException -> L95
            boolean r2 = r6.debug     // Catch: java.io.IOException -> L95
            if (r2 == 0) goto L38
            java.io.PrintStream r2 = r6.out     // Catch: java.io.IOException -> L95
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L95
            java.lang.String r5 = "DEBUG SMTP: EOF: "
            r4.<init>(r5)     // Catch: java.io.IOException -> L95
            r4.append(r0)     // Catch: java.io.IOException -> L95
            java.lang.String r0 = r4.toString()     // Catch: java.io.IOException -> L95
            r2.println(r0)     // Catch: java.io.IOException -> L95
        L38:
            return r3
        L39:
            r0.append(r2)     // Catch: java.io.IOException -> L95
            java.lang.String r4 = "\n"
            r0.append(r4)     // Catch: java.io.IOException -> L95
            boolean r2 = r6.isNotLastLine(r2)     // Catch: java.io.IOException -> L95
            if (r2 != 0) goto L7
            java.lang.String r0 = r0.toString()     // Catch: java.io.IOException -> L95
            if (r0 == 0) goto L76
            int r2 = r0.length()
            r4 = 3
            if (r2 < r4) goto L76
            java.lang.String r1 = r0.substring(r1, r4)     // Catch: java.lang.StringIndexOutOfBoundsException -> L5d java.lang.NumberFormatException -> L6c
            int r1 = java.lang.Integer.parseInt(r1)     // Catch: java.lang.StringIndexOutOfBoundsException -> L5d java.lang.NumberFormatException -> L6c
            goto L77
        L5d:
            r6.close()     // Catch: javax.mail.MessagingException -> L61
            goto L76
        L61:
            r1 = move-exception
            boolean r2 = r6.debug
            if (r2 == 0) goto L76
        L66:
            java.io.PrintStream r2 = r6.out
            r1.printStackTrace(r2)
            goto L76
        L6c:
            r6.close()     // Catch: javax.mail.MessagingException -> L70
            goto L76
        L70:
            r1 = move-exception
            boolean r2 = r6.debug
            if (r2 == 0) goto L76
            goto L66
        L76:
            r1 = -1
        L77:
            if (r1 != r3) goto L90
            boolean r2 = r6.debug
            if (r2 == 0) goto L90
            java.io.PrintStream r2 = r6.out
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "DEBUG SMTP: bad server response: "
            r3.<init>(r4)
            r3.append(r0)
            java.lang.String r3 = r3.toString()
            r2.println(r3)
        L90:
            r6.lastServerResponse = r0
            r6.lastReturnCode = r1
            return r1
        L95:
            r0 = move-exception
            boolean r2 = r6.debug
            if (r2 == 0) goto Lad
            java.io.PrintStream r2 = r6.out
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "DEBUG SMTP: exception reading response: "
            r3.<init>(r4)
            r3.append(r0)
            java.lang.String r3 = r3.toString()
            r2.println(r3)
        Lad:
            java.lang.String r2 = ""
            r6.lastServerResponse = r2
            r6.lastReturnCode = r1
            javax.mail.MessagingException r1 = new javax.mail.MessagingException
            java.lang.String r2 = "Exception reading response"
            r1.<init>(r2, r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.mail.smtp.SMTPTransport.readServerResponse():int");
    }

    protected void sendCommand(String str) throws MessagingException {
        sendCommand(ASCIIUtility.getBytes(str));
    }

    @Override // javax.mail.Transport
    public synchronized void sendMessage(Message message, Address[] addressArr) throws MessagingException, SendFailedException {
        checkConnected();
        if (!(message instanceof MimeMessage)) {
            if (this.debug) {
                this.out.println("DEBUG SMTP: Can only send RFC822 msgs");
            }
            throw new MessagingException("SMTP can only send RFC822 messages");
        }
        for (int i = 0; i < addressArr.length; i++) {
            if (!(addressArr[i] instanceof InternetAddress)) {
                throw new MessagingException(addressArr[i] + " is not an InternetAddress");
            }
        }
        this.message = (MimeMessage) message;
        this.addresses = addressArr;
        this.validUnsentAddr = addressArr;
        expandGroups();
        boolean allow8bitMIME = message instanceof SMTPMessage ? ((SMTPMessage) message).getAllow8bitMIME() : false;
        if (!allow8bitMIME) {
            String property = this.session.getProperty("mail." + this.name + ".allow8bitmime");
            allow8bitMIME = property != null && property.equalsIgnoreCase("true");
        }
        if (this.debug) {
            this.out.println("DEBUG SMTP: use8bit " + allow8bitMIME);
        }
        if (allow8bitMIME && supportsExtension("8BITMIME") && convertTo8Bit(this.message)) {
            try {
                this.message.saveChanges();
            } catch (MessagingException unused) {
            }
        }
        try {
            try {
                mailFrom();
                rcptTo();
                this.message.writeTo(data(), ignoreList);
                finishData();
                if (this.sendPartiallyFailed) {
                    if (this.debug) {
                        this.out.println("DEBUG SMTP: Sending partially failed because of invalid destination addresses");
                    }
                    notifyTransportListeners(3, this.validSentAddr, this.validUnsentAddr, this.invalidAddr, this.message);
                    throw new SMTPSendFailedException(".", this.lastReturnCode, this.lastServerResponse, this.exception, this.validSentAddr, this.validUnsentAddr, this.invalidAddr);
                }
                notifyTransportListeners(1, this.validSentAddr, this.validUnsentAddr, this.invalidAddr, this.message);
                this.invalidAddr = null;
                this.validUnsentAddr = null;
                this.validSentAddr = null;
                this.addresses = null;
                this.message = null;
                this.exception = null;
                this.sendPartiallyFailed = false;
            } catch (IOException e) {
                if (this.debug) {
                    e.printStackTrace(this.out);
                }
                try {
                    closeConnection();
                } catch (MessagingException unused2) {
                }
                notifyTransportListeners(2, this.validSentAddr, this.validUnsentAddr, this.invalidAddr, this.message);
                throw new MessagingException("IOException while sending message", e);
            } catch (MessagingException e2) {
                if (this.debug) {
                    e2.printStackTrace(this.out);
                }
                notifyTransportListeners(2, this.validSentAddr, this.validUnsentAddr, this.invalidAddr, this.message);
                throw e2;
            }
        } catch (Throwable th) {
            this.invalidAddr = null;
            this.validUnsentAddr = null;
            this.validSentAddr = null;
            this.addresses = null;
            this.message = null;
            this.exception = null;
            this.sendPartiallyFailed = false;
            throw th;
        }
    }

    public synchronized void setLocalHost(String str) {
        this.localHostName = str;
    }

    public synchronized void setReportSuccess(boolean z) {
        this.reportSuccess = z;
    }

    public synchronized void setSASLRealm(String str) {
        this.saslRealm = str;
    }

    public synchronized void setStartTLS(boolean z) {
        this.useStartTLS = z;
    }

    public synchronized void setUseRset(boolean z) {
        this.useRset = z;
    }

    public synchronized int simpleCommand(String str) throws MessagingException {
        sendCommand(str);
        return readServerResponse();
    }

    protected int simpleCommand(byte[] bArr) throws MessagingException {
        sendCommand(bArr);
        return readServerResponse();
    }

    protected void startTLS() throws MessagingException {
        issueCommand("STARTTLS", 220);
        try {
            this.serverSocket = SocketFetcher.startTLS(this.serverSocket, this.session.getProperties(), "mail." + this.name);
            initStreams();
        } catch (IOException e) {
            closeConnection();
            throw new MessagingException("Could not convert socket to TLS", e);
        }
    }

    protected boolean supportsAuthentication(String str) {
        String str2;
        if (this.extMap == null || (str2 = (String) this.extMap.get("AUTH")) == null) {
            return false;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str2);
        while (stringTokenizer.hasMoreTokens()) {
            if (stringTokenizer.nextToken().equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean supportsExtension(String str) {
        return (this.extMap == null || this.extMap.get(str.toUpperCase(Locale.ENGLISH)) == null) ? false : true;
    }
}
