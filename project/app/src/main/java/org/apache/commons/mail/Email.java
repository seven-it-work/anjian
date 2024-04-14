package org.apache.commons.mail;

import com.cyjh.common.util.C1176s;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.internet.MimeUtility;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

/* loaded from: classes2.dex */
public abstract class Email {

    @Deprecated
    public static final String ATTACHMENTS = "attachments";

    @Deprecated
    public static final String CONTENT_TYPE = "content.type";

    @Deprecated
    public static final String EMAIL_BODY = "email.body";

    @Deprecated
    public static final String EMAIL_SUBJECT = "email.subject";

    @Deprecated
    public static final String FILE_SERVER = "file.server";

    @Deprecated
    public static final String ISO_8859_1 = "iso-8859-1";

    @Deprecated
    public static final String KOI8_R = "koi8-r";

    @Deprecated
    public static final String MAIL_DEBUG = "mail.debug";

    @Deprecated
    public static final String MAIL_HOST = "mail.smtp.host";

    @Deprecated
    public static final String MAIL_PORT = "mail.smtp.port";

    @Deprecated
    public static final String MAIL_SMTP_AUTH = "mail.smtp.auth";

    @Deprecated
    public static final String MAIL_SMTP_CONNECTIONTIMEOUT = "mail.smtp.connectiontimeout";

    @Deprecated
    public static final String MAIL_SMTP_FROM = "mail.smtp.from";

    @Deprecated
    public static final String MAIL_SMTP_PASSWORD = "mail.smtp.password";

    @Deprecated
    public static final String MAIL_SMTP_SOCKET_FACTORY_CLASS = "mail.smtp.socketFactory.class";

    @Deprecated
    public static final String MAIL_SMTP_SOCKET_FACTORY_FALLBACK = "mail.smtp.socketFactory.fallback";

    @Deprecated
    public static final String MAIL_SMTP_SOCKET_FACTORY_PORT = "mail.smtp.socketFactory.port";

    @Deprecated
    public static final String MAIL_SMTP_TIMEOUT = "mail.smtp.timeout";

    @Deprecated
    public static final String MAIL_SMTP_USER = "mail.smtp.user";

    @Deprecated
    public static final String MAIL_TRANSPORT_PROTOCOL = "mail.transport.protocol";

    @Deprecated
    public static final String MAIL_TRANSPORT_TLS = "mail.smtp.starttls.enable";

    @Deprecated
    public static final String RECEIVER_EMAIL = "receiver.email";

    @Deprecated
    public static final String RECEIVER_NAME = "receiver.name";

    @Deprecated
    public static final String SENDER_EMAIL = "sender.email";

    @Deprecated
    public static final String SENDER_NAME = "sender.name";

    @Deprecated
    public static final String SMTP = "smtp";

    @Deprecated
    public static final String TEXT_HTML = "text/html";

    @Deprecated
    public static final String TEXT_PLAIN = "text/plain";

    @Deprecated
    public static final String US_ASCII = "us-ascii";
    protected Authenticator authenticator;
    protected String bounceAddress;
    protected String charset;
    protected Object content;
    protected String contentType;
    protected boolean debug;
    protected MimeMultipart emailBody;
    protected InternetAddress fromAddress;
    protected String hostName;
    protected MimeMessage message;
    protected boolean popBeforeSmtp;
    protected String popHost;
    protected String popPassword;
    protected String popUsername;
    private boolean sendPartial;
    protected Date sentDate;
    private Session session;

    @Deprecated
    protected boolean ssl;
    private boolean sslCheckServerIdentity;
    private boolean sslOnConnect;
    private boolean startTlsEnabled;
    private boolean startTlsRequired;
    protected String subject;

    @Deprecated
    protected boolean tls;
    protected String smtpPort = "25";
    protected String sslSmtpPort = "465";
    protected List<InternetAddress> toList = new ArrayList();
    protected List<InternetAddress> ccList = new ArrayList();
    protected List<InternetAddress> bccList = new ArrayList();
    protected List<InternetAddress> replyList = new ArrayList();
    protected Map<String, String> headers = new HashMap();
    protected int socketTimeout = EmailConstants.SOCKET_TIMEOUT_MS;
    protected int socketConnectionTimeout = EmailConstants.SOCKET_TIMEOUT_MS;

    private void checkSessionAlreadyInitialized() {
        if (this.session != null) {
            throw new IllegalStateException("The mail session is already initialized");
        }
    }

    private String createFoldedHeaderValue(String str, Object obj) {
        if (EmailUtils.isEmpty(str)) {
            throw new IllegalArgumentException("name can not be null or empty");
        }
        if (obj == null || EmailUtils.isEmpty(obj.toString())) {
            throw new IllegalArgumentException("value can not be null or empty");
        }
        try {
            return MimeUtility.fold(str.length() + 2, MimeUtility.encodeText(obj.toString(), this.charset, null));
        } catch (UnsupportedEncodingException unused) {
            return obj.toString();
        }
    }

    private InternetAddress createInternetAddress(String str, String str2, String str3) throws EmailException {
        try {
            InternetAddress internetAddress = new InternetAddress(str);
            if (EmailUtils.isNotEmpty(str2)) {
                if (EmailUtils.isEmpty(str3)) {
                    internetAddress.setPersonal(str2);
                } else {
                    internetAddress.setPersonal(str2, Charset.forName(str3).name());
                }
            }
            internetAddress.validate();
            return internetAddress;
        } catch (UnsupportedEncodingException e) {
            throw new EmailException(e);
        } catch (AddressException e2) {
            throw new EmailException(e2);
        }
    }

    public Email addBcc(String str) throws EmailException {
        return addBcc(str, null);
    }

    public Email addBcc(String str, String str2) throws EmailException {
        return addBcc(str, str2, this.charset);
    }

    public Email addBcc(String str, String str2, String str3) throws EmailException {
        this.bccList.add(createInternetAddress(str, str2, str3));
        return this;
    }

    public Email addBcc(String... strArr) throws EmailException {
        if (strArr == null || strArr.length == 0) {
            throw new EmailException("Address List provided was invalid");
        }
        for (String str : strArr) {
            addBcc(str, null);
        }
        return this;
    }

    public Email addCc(String str) throws EmailException {
        return addCc(str, null);
    }

    public Email addCc(String str, String str2) throws EmailException {
        return addCc(str, str2, this.charset);
    }

    public Email addCc(String str, String str2, String str3) throws EmailException {
        this.ccList.add(createInternetAddress(str, str2, str3));
        return this;
    }

    public Email addCc(String... strArr) throws EmailException {
        if (strArr == null || strArr.length == 0) {
            throw new EmailException("Address List provided was invalid");
        }
        for (String str : strArr) {
            addCc(str, null);
        }
        return this;
    }

    public void addHeader(String str, String str2) {
        if (EmailUtils.isEmpty(str)) {
            throw new IllegalArgumentException("name can not be null or empty");
        }
        if (EmailUtils.isEmpty(str2)) {
            throw new IllegalArgumentException("value can not be null or empty");
        }
        this.headers.put(str, str2);
    }

    public Email addReplyTo(String str) throws EmailException {
        return addReplyTo(str, null);
    }

    public Email addReplyTo(String str, String str2) throws EmailException {
        return addReplyTo(str, str2, this.charset);
    }

    public Email addReplyTo(String str, String str2, String str3) throws EmailException {
        this.replyList.add(createInternetAddress(str, str2, str3));
        return this;
    }

    public Email addTo(String str) throws EmailException {
        return addTo(str, null);
    }

    public Email addTo(String str, String str2) throws EmailException {
        return addTo(str, str2, this.charset);
    }

    public Email addTo(String str, String str2, String str3) throws EmailException {
        this.toList.add(createInternetAddress(str, str2, str3));
        return this;
    }

    public Email addTo(String... strArr) throws EmailException {
        if (strArr == null || strArr.length == 0) {
            throw new EmailException("Address List provided was invalid");
        }
        for (String str : strArr) {
            addTo(str, null);
        }
        return this;
    }

    public void buildMimeMessage() throws EmailException {
        MimeMessage mimeMessage;
        Object obj;
        String str;
        if (this.message != null) {
            throw new IllegalStateException("The MimeMessage is already built.");
        }
        try {
            this.message = createMimeMessage(getMailSession());
            if (EmailUtils.isNotEmpty(this.subject)) {
                if (EmailUtils.isNotEmpty(this.charset)) {
                    this.message.setSubject(this.subject, this.charset);
                } else {
                    this.message.setSubject(this.subject);
                }
            }
            updateContentType(this.contentType);
            if (this.content != null) {
                if ("text/plain".equalsIgnoreCase(this.contentType) && (this.content instanceof String)) {
                    this.message.setText(this.content.toString(), this.charset);
                } else {
                    mimeMessage = this.message;
                    obj = this.content;
                    str = this.contentType;
                    mimeMessage.setContent(obj, str);
                }
            } else if (this.emailBody == null) {
                this.message.setText("");
            } else if (this.contentType == null) {
                this.message.setContent(this.emailBody);
            } else {
                mimeMessage = this.message;
                obj = this.emailBody;
                str = this.contentType;
                mimeMessage.setContent(obj, str);
            }
            if (this.fromAddress != null) {
                this.message.setFrom(this.fromAddress);
            } else if (this.session.getProperty("mail.smtp.from") == null && this.session.getProperty(EmailConstants.MAIL_FROM) == null) {
                throw new EmailException("From address required");
            }
            if (this.toList.size() + this.ccList.size() + this.bccList.size() == 0) {
                throw new EmailException("At least one receiver address required");
            }
            if (this.toList.size() > 0) {
                this.message.setRecipients(Message.RecipientType.f10034TO, toInternetAddressArray(this.toList));
            }
            if (this.ccList.size() > 0) {
                this.message.setRecipients(Message.RecipientType.f10033CC, toInternetAddressArray(this.ccList));
            }
            if (this.bccList.size() > 0) {
                this.message.setRecipients(Message.RecipientType.BCC, toInternetAddressArray(this.bccList));
            }
            if (this.replyList.size() > 0) {
                this.message.setReplyTo(toInternetAddressArray(this.replyList));
            }
            if (this.headers.size() > 0) {
                for (Map.Entry<String, String> entry : this.headers.entrySet()) {
                    this.message.addHeader(entry.getKey(), createFoldedHeaderValue(entry.getKey(), entry.getValue()));
                }
            }
            if (this.message.getSentDate() == null) {
                this.message.setSentDate(getSentDate());
            }
            if (this.popBeforeSmtp) {
                this.session.getStore("pop3").connect(this.popHost, this.popUsername, this.popPassword);
            }
        } catch (MessagingException e) {
            throw new EmailException(e);
        }
    }

    protected MimeMessage createMimeMessage(Session session) {
        return new MimeMessage(session);
    }

    public List<InternetAddress> getBccAddresses() {
        return this.bccList;
    }

    public String getBounceAddress() {
        return this.bounceAddress;
    }

    public List<InternetAddress> getCcAddresses() {
        return this.ccList;
    }

    public InternetAddress getFromAddress() {
        return this.fromAddress;
    }

    public String getHostName() {
        if (this.session != null) {
            return this.session.getProperty("mail.smtp.host");
        }
        if (EmailUtils.isNotEmpty(this.hostName)) {
            return this.hostName;
        }
        return null;
    }

    public Session getMailSession() throws EmailException {
        if (this.session == null) {
            Properties properties = new Properties(System.getProperties());
            properties.setProperty("mail.transport.protocol", "smtp");
            if (EmailUtils.isEmpty(this.hostName)) {
                this.hostName = properties.getProperty("mail.smtp.host");
            }
            if (EmailUtils.isEmpty(this.hostName)) {
                throw new EmailException("Cannot find valid hostname for mail session");
            }
            properties.setProperty("mail.smtp.port", this.smtpPort);
            properties.setProperty("mail.smtp.host", this.hostName);
            properties.setProperty("mail.debug", String.valueOf(this.debug));
            properties.setProperty("mail.smtp.starttls.enable", isStartTLSEnabled() ? "true" : "false");
            properties.setProperty(EmailConstants.MAIL_TRANSPORT_STARTTLS_REQUIRED, isStartTLSRequired() ? "true" : "false");
            properties.setProperty(EmailConstants.MAIL_SMTP_SEND_PARTIAL, isSendPartial() ? "true" : "false");
            properties.setProperty(EmailConstants.MAIL_SMTPS_SEND_PARTIAL, isSendPartial() ? "true" : "false");
            if (this.authenticator != null) {
                properties.setProperty("mail.smtp.auth", "true");
            }
            if (isSSLOnConnect()) {
                properties.setProperty("mail.smtp.port", this.sslSmtpPort);
                properties.setProperty("mail.smtp.socketFactory.port", this.sslSmtpPort);
                properties.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
                properties.setProperty("mail.smtp.socketFactory.fallback", "false");
            }
            if ((isSSLOnConnect() || isStartTLSEnabled()) && isSSLCheckServerIdentity()) {
                properties.setProperty(EmailConstants.MAIL_SMTP_SSL_CHECKSERVERIDENTITY, "true");
            }
            if (this.bounceAddress != null) {
                properties.setProperty("mail.smtp.from", this.bounceAddress);
            }
            if (this.socketTimeout > 0) {
                properties.setProperty("mail.smtp.timeout", Integer.toString(this.socketTimeout));
            }
            if (this.socketConnectionTimeout > 0) {
                properties.setProperty("mail.smtp.connectiontimeout", Integer.toString(this.socketConnectionTimeout));
            }
            this.session = Session.getInstance(properties, this.authenticator);
        }
        return this.session;
    }

    public MimeMessage getMimeMessage() {
        return this.message;
    }

    public List<InternetAddress> getReplyToAddresses() {
        return this.replyList;
    }

    public Date getSentDate() {
        return this.sentDate == null ? new Date() : new Date(this.sentDate.getTime());
    }

    public String getSmtpPort() {
        if (this.session != null) {
            return this.session.getProperty("mail.smtp.port");
        }
        if (EmailUtils.isNotEmpty(this.smtpPort)) {
            return this.smtpPort;
        }
        return null;
    }

    public int getSocketConnectionTimeout() {
        return this.socketConnectionTimeout;
    }

    public int getSocketTimeout() {
        return this.socketTimeout;
    }

    public String getSslSmtpPort() {
        if (this.session != null) {
            return this.session.getProperty("mail.smtp.socketFactory.port");
        }
        if (EmailUtils.isNotEmpty(this.sslSmtpPort)) {
            return this.sslSmtpPort;
        }
        return null;
    }

    public String getSubject() {
        return this.subject;
    }

    public List<InternetAddress> getToAddresses() {
        return this.toList;
    }

    @Deprecated
    public boolean isSSL() {
        return isSSLOnConnect();
    }

    public boolean isSSLCheckServerIdentity() {
        return this.sslCheckServerIdentity;
    }

    public boolean isSSLOnConnect() {
        return this.sslOnConnect || this.ssl;
    }

    public boolean isSendPartial() {
        return this.sendPartial;
    }

    public boolean isStartTLSEnabled() {
        return this.startTlsEnabled || this.tls;
    }

    public boolean isStartTLSRequired() {
        return this.startTlsRequired;
    }

    @Deprecated
    public boolean isTLS() {
        return isStartTLSEnabled();
    }

    public String send() throws EmailException {
        buildMimeMessage();
        return sendMimeMessage();
    }

    public String sendMimeMessage() throws EmailException {
        EmailUtils.notNull(this.message, "MimeMessage has not been created yet");
        try {
            Transport.send(this.message);
            return this.message.getMessageID();
        } catch (Throwable th) {
            throw new EmailException("Sending the email to the following server failed : " + getHostName() + ":" + getSmtpPort(), th);
        }
    }

    public void setAuthentication(String str, String str2) {
        setAuthenticator(new DefaultAuthenticator(str, str2));
    }

    public void setAuthenticator(Authenticator authenticator) {
        this.authenticator = authenticator;
    }

    public Email setBcc(Collection<InternetAddress> collection) throws EmailException {
        if (collection == null || collection.isEmpty()) {
            throw new EmailException("Address List provided was invalid");
        }
        this.bccList = new ArrayList(collection);
        return this;
    }

    public Email setBounceAddress(String str) {
        checkSessionAlreadyInitialized();
        this.bounceAddress = str;
        return this;
    }

    public Email setCc(Collection<InternetAddress> collection) throws EmailException {
        if (collection == null || collection.isEmpty()) {
            throw new EmailException("Address List provided was invalid");
        }
        this.ccList = new ArrayList(collection);
        return this;
    }

    public void setCharset(String str) {
        this.charset = Charset.forName(str).name();
    }

    public void setContent(Object obj, String str) {
        this.content = obj;
        updateContentType(str);
    }

    public void setContent(MimeMultipart mimeMultipart) {
        this.emailBody = mimeMultipart;
    }

    public void setDebug(boolean z) {
        this.debug = z;
    }

    public Email setFrom(String str) throws EmailException {
        return setFrom(str, null);
    }

    public Email setFrom(String str, String str2) throws EmailException {
        return setFrom(str, str2, this.charset);
    }

    public Email setFrom(String str, String str2, String str3) throws EmailException {
        this.fromAddress = createInternetAddress(str, str2, str3);
        return this;
    }

    public void setHeaders(Map<String, String> map) {
        this.headers.clear();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            addHeader(entry.getKey(), entry.getValue());
        }
    }

    public void setHostName(String str) {
        checkSessionAlreadyInitialized();
        this.hostName = str;
    }

    public void setMailSession(Session session) {
        EmailUtils.notNull(session, "no mail session supplied");
        Properties properties = session.getProperties();
        if (!"true".equalsIgnoreCase(properties.getProperty("mail.smtp.auth"))) {
            this.session = session;
            return;
        }
        String property = properties.getProperty("mail.smtp.user");
        String property2 = properties.getProperty("mail.smtp.password");
        if (!EmailUtils.isNotEmpty(property) || !EmailUtils.isNotEmpty(property2)) {
            this.session = session;
        } else {
            this.authenticator = new DefaultAuthenticator(property, property2);
            this.session = Session.getInstance(properties, this.authenticator);
        }
    }

    public void setMailSessionFromJNDI(String str) throws NamingException {
        if (EmailUtils.isEmpty(str)) {
            throw new IllegalArgumentException("JNDI name missing");
        }
        setMailSession((Session) (str.startsWith("java:") ? new InitialContext() : (Context) new InitialContext().lookup("java:comp/env")).lookup(str));
    }

    public abstract Email setMsg(String str) throws EmailException;

    public void setPopBeforeSmtp(boolean z, String str, String str2, String str3) {
        this.popBeforeSmtp = z;
        this.popHost = str;
        this.popUsername = str2;
        this.popPassword = str3;
    }

    public Email setReplyTo(Collection<InternetAddress> collection) throws EmailException {
        if (collection == null || collection.isEmpty()) {
            throw new EmailException("Address List provided was invalid");
        }
        this.replyList = new ArrayList(collection);
        return this;
    }

    @Deprecated
    public void setSSL(boolean z) {
        setSSLOnConnect(z);
    }

    public Email setSSLCheckServerIdentity(boolean z) {
        checkSessionAlreadyInitialized();
        this.sslCheckServerIdentity = z;
        return this;
    }

    public Email setSSLOnConnect(boolean z) {
        checkSessionAlreadyInitialized();
        this.sslOnConnect = z;
        this.ssl = z;
        return this;
    }

    public Email setSendPartial(boolean z) {
        checkSessionAlreadyInitialized();
        this.sendPartial = z;
        return this;
    }

    public void setSentDate(Date date) {
        if (date != null) {
            this.sentDate = new Date(date.getTime());
        }
    }

    public void setSmtpPort(int i) {
        checkSessionAlreadyInitialized();
        if (i > 0) {
            this.smtpPort = Integer.toString(i);
            return;
        }
        throw new IllegalArgumentException("Cannot connect to a port number that is less than 1 ( " + i + " )");
    }

    public void setSocketConnectionTimeout(int i) {
        checkSessionAlreadyInitialized();
        this.socketConnectionTimeout = i;
    }

    public void setSocketTimeout(int i) {
        checkSessionAlreadyInitialized();
        this.socketTimeout = i;
    }

    public void setSslSmtpPort(String str) {
        checkSessionAlreadyInitialized();
        this.sslSmtpPort = str;
    }

    public Email setStartTLSEnabled(boolean z) {
        checkSessionAlreadyInitialized();
        this.startTlsEnabled = z;
        this.tls = z;
        return this;
    }

    public Email setStartTLSRequired(boolean z) {
        checkSessionAlreadyInitialized();
        this.startTlsRequired = z;
        return this;
    }

    public Email setSubject(String str) {
        this.subject = str;
        return this;
    }

    @Deprecated
    public void setTLS(boolean z) {
        setStartTLSEnabled(z);
    }

    public Email setTo(Collection<InternetAddress> collection) throws EmailException {
        if (collection == null || collection.isEmpty()) {
            throw new EmailException("Address List provided was invalid");
        }
        this.toList = new ArrayList(collection);
        return this;
    }

    protected InternetAddress[] toInternetAddressArray(List<InternetAddress> list) {
        return (InternetAddress[]) list.toArray(new InternetAddress[list.size()]);
    }

    public void updateContentType(String str) {
        if (EmailUtils.isEmpty(str)) {
            this.contentType = null;
            return;
        }
        this.contentType = str;
        int indexOf = str.toLowerCase().indexOf("; charset=");
        if (indexOf != -1) {
            int i = indexOf + 10;
            int indexOf2 = str.toLowerCase().indexOf(C1176s.a.f4108a, i);
            if (indexOf2 != -1) {
                this.charset = str.substring(i, indexOf2);
                return;
            } else {
                this.charset = str.substring(i);
                return;
            }
        }
        if (this.contentType.startsWith("text/") && EmailUtils.isNotEmpty(this.charset)) {
            StringBuffer stringBuffer = new StringBuffer(this.contentType);
            stringBuffer.append("; charset=");
            stringBuffer.append(this.charset);
            this.contentType = stringBuffer.toString();
        }
    }
}
