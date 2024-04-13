.class public Lcom/sun/mail/smtp/SMTPTransport;
.super Ljavax/mail/Transport;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CRLF:[B

.field private static final UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field private static hexchar:[C

.field private static final ignoreList:[Ljava/lang/String;


# instance fields
.field private addresses:[Ljavax/mail/Address;

.field private dataStream:Lcom/sun/mail/smtp/SMTPOutputStream;

.field private defaultPort:I

.field private exception:Ljavax/mail/MessagingException;

.field private extMap:Ljava/util/Hashtable;

.field private invalidAddr:[Ljavax/mail/Address;

.field private isSSL:Z

.field private lastReturnCode:I

.field private lastServerResponse:Ljava/lang/String;

.field private lineInputStream:Lcom/sun/mail/util/LineInputStream;

.field private localHostName:Ljava/lang/String;

.field private md5support:Lcom/sun/mail/smtp/DigestMD5;

.field private message:Ljavax/mail/internet/MimeMessage;

.field private name:Ljava/lang/String;

.field private out:Ljava/io/PrintStream;

.field private quitWait:Z

.field private reportSuccess:Z

.field private saslRealm:Ljava/lang/String;

.field private sendPartiallyFailed:Z

.field private serverInput:Ljava/io/BufferedInputStream;

.field private serverOutput:Ljava/io/OutputStream;

.field private serverSocket:Ljava/net/Socket;

.field private useRset:Z

.field private useStartTLS:Z

.field private validSentAddr:[Ljavax/mail/Address;

.field private validUnsentAddr:[Ljavax/mail/Address;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "Bcc"

    const-string v1, "Content-Length"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/mail/smtp/SMTPTransport;->ignoreList:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/sun/mail/smtp/SMTPTransport;->CRLF:[B

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_22

    sput-object v0, Lcom/sun/mail/smtp/SMTPTransport;->hexchar:[C

    return-void

    :array_1c
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_22
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .registers 9

    const-string v3, "smtp"

    const/16 v4, 0x19

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sun/mail/smtp/SMTPTransport;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;IZ)V

    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;IZ)V
    .registers 8

    invoke-direct {p0, p1, p2}, Ljavax/mail/Transport;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V

    const-string v0, "smtp"

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    const/16 v0, 0x19

    iput v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->defaultPort:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->isSSL:Z

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->quitWait:Z

    const-string v1, "UNKNOWN"

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    if-eqz p2, :cond_1c

    invoke-virtual {p2}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object p3

    :cond_1c
    iput-object p3, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    iput p4, p0, Lcom/sun/mail/smtp/SMTPTransport;->defaultPort:I

    iput-boolean p5, p0, Lcom/sun/mail/smtp/SMTPTransport;->isSSL:Z

    invoke-virtual {p1}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object p2

    iput-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "mail."

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ".quitwait"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x1

    if-eqz p2, :cond_4c

    const-string p5, "true"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4c

    const/4 p2, 0x0

    goto :goto_4d

    :cond_4c
    const/4 p2, 0x1

    :goto_4d
    iput-boolean p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->quitWait:Z

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "mail."

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ".reportsuccess"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_72

    const-string p5, "true"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_72

    const/4 p2, 0x1

    goto :goto_73

    :cond_72
    const/4 p2, 0x0

    :goto_73
    iput-boolean p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "mail."

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ".starttls.enable"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_98

    const-string p5, "true"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_98

    const/4 p2, 0x1

    goto :goto_99

    :cond_98
    const/4 p2, 0x0

    :goto_99
    iput-boolean p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->useStartTLS:Z

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "mail."

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".userset"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_bd

    const-string p2, "true"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_bd

    goto :goto_be

    :cond_bd
    const/4 p4, 0x0

    :goto_be
    iput-boolean p4, p0, Lcom/sun/mail/smtp/SMTPTransport;->useRset:Z

    return-void
.end method

.method private closeConnection()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_1e
    .catchall {:try_start_1 .. :try_end_a} :catchall_1c

    :cond_a
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-super {p0}, Ljavax/mail/Transport;->close()V

    :cond_1b
    return-void

    :catchall_1c
    move-exception v1

    goto :goto_27

    :catch_1e
    move-exception v1

    :try_start_1f
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "Server Close Failed"

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_1c

    :goto_27
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-super {p0}, Ljavax/mail/Transport;->close()V

    :cond_38
    throw v1
.end method

.method private convertTo8Bit(Ljavax/mail/internet/MimePart;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    const-string v2, "text/*"

    invoke-interface {p1, v2}, Ljavax/mail/internet/MimePart;->isMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getEncoding()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_65

    const-string v3, "quoted-printable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20

    const-string v3, "base64"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    :cond_20
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sun/mail/smtp/SMTPTransport;->is8Bit(Ljava/io/InputStream;)Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getContent()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljavax/mail/internet/MimePart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Content-Transfer-Encoding"

    const-string v3, "8bit"

    invoke-interface {p1, v2, v3}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_3e
    const-string v2, "multipart/*"

    invoke-interface {p1, v2}, Ljavax/mail/internet/MimePart;->isMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/mail/internet/MimeMultipart;

    invoke-virtual {p1}, Ljavax/mail/internet/MimeMultipart;->getCount()I

    move-result v2
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_50} :catch_65
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_50} :catch_65

    const/4 v3, 0x0

    :goto_51
    if-lt v0, v2, :cond_55

    :catch_53
    move v0, v3

    return v0

    :cond_55
    :try_start_55
    invoke-virtual {p1, v0}, Ljavax/mail/internet/MimeMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v4

    check-cast v4, Ljavax/mail/internet/MimePart;

    invoke-direct {p0, v4}, Lcom/sun/mail/smtp/SMTPTransport;->convertTo8Bit(Ljavax/mail/internet/MimePart;)Z

    move-result v4
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5f} :catch_53
    .catch Ljavax/mail/MessagingException; {:try_start_55 .. :try_end_5f} :catch_53

    if-eqz v4, :cond_62

    const/4 v3, 0x1

    :cond_62
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    :catch_65
    :cond_65
    return v0
.end method

.method private expandGroups()V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    const/4 v1, 0x0

    :goto_4
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    array-length v3, v3

    if-lt v1, v3, :cond_17

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    :cond_16
    return-void

    :cond_17
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    aget-object v3, v3, v1

    check-cast v3, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v3}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_55

    if-nez v2, :cond_39

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    const/4 v2, 0x0

    :goto_2b
    if-lt v2, v1, :cond_2f

    move-object v2, v4

    goto :goto_39

    :cond_2f
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_39
    :goto_39
    const/4 v4, 0x1

    :try_start_3a
    invoke-virtual {v3, v4}, Ljavax/mail/internet/InternetAddress;->getGroup(Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v4

    if-eqz v4, :cond_4d

    const/4 v5, 0x0

    :goto_41
    array-length v6, v4

    if-lt v5, v6, :cond_45

    goto :goto_58

    :cond_45
    aget-object v6, v4, v5

    invoke-virtual {v2, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_41

    :cond_4d
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_50
    .catch Ljavax/mail/internet/ParseException; {:try_start_3a .. :try_end_50} :catch_51

    goto :goto_58

    :catch_51
    :goto_51
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_58

    :cond_55
    if-eqz v2, :cond_58

    goto :goto_51

    :cond_58
    :goto_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method private declared-synchronized getMD5()Lcom/sun/mail/smtp/DigestMD5;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->md5support:Lcom/sun/mail/smtp/DigestMD5;

    if-nez v0, :cond_14

    new-instance v0, Lcom/sun/mail/smtp/DigestMD5;

    iget-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    invoke-direct {v0, v1}, Lcom/sun/mail/smtp/DigestMD5;-><init>(Ljava/io/PrintStream;)V

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->md5support:Lcom/sun/mail/smtp/DigestMD5;

    :cond_14
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->md5support:Lcom/sun/mail/smtp/DigestMD5;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-object v0

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initStreams()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v0}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v1}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v2}, Ljavax/mail/Session;->getDebug()Z

    move-result v2

    const-string v3, "mail.debug.quote"

    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    new-instance v3, Lcom/sun/mail/util/TraceInputStream;

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/sun/mail/util/TraceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v3, v2}, Lcom/sun/mail/util/TraceInputStream;->setTrace(Z)V

    invoke-virtual {v3, v0}, Lcom/sun/mail/util/TraceInputStream;->setQuote(Z)V

    new-instance v4, Lcom/sun/mail/util/TraceOutputStream;

    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/sun/mail/util/TraceOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v4, v2}, Lcom/sun/mail/util/TraceOutputStream;->setTrace(Z)V

    invoke-virtual {v4, v0}, Lcom/sun/mail/util/TraceOutputStream;->setQuote(Z)V

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    new-instance v0, Lcom/sun/mail/util/LineInputStream;

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    invoke-direct {v0, v1}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    return-void
.end method

.method private is8Bit(Ljava/io/InputStream;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_4
    :goto_4
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_8} :catch_33

    if-gez v4, :cond_18

    iget-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz p1, :cond_17

    if-eqz v2, :cond_17

    iget-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v0, "DEBUG SMTP: found an 8bit part"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_17
    return v2

    :cond_18
    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xd

    if-eq v4, v5, :cond_2c

    const/16 v5, 0xa

    if-ne v4, v5, :cond_23

    goto :goto_2c

    :cond_23
    if-nez v4, :cond_26

    return v1

    :cond_26
    add-int/2addr v3, v0

    const/16 v5, 0x3e6

    if-le v3, v5, :cond_2d

    return v1

    :cond_2c
    :goto_2c
    const/4 v3, 0x0

    :cond_2d
    const/16 v5, 0x7f

    if-le v4, v5, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :catch_33
    return v1
.end method

.method private isNotLastLine(Ljava/lang/String;)Z
    .registers 4

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_14

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method private issueSendCommand(Ljava/lang/String;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v2

    if-eq v2, p2, :cond_79

    iget-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    const/4 v0, 0x0

    if-nez p2, :cond_10

    const/4 p2, 0x0

    goto :goto_13

    :cond_10
    iget-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    array-length p2, p2

    :goto_13
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    if-nez v1, :cond_19

    const/4 v1, 0x0

    goto :goto_1c

    :cond_19
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    array-length v1, v1

    :goto_1c
    add-int v3, p2, v1

    new-array v3, v3, [Ljavax/mail/Address;

    if-lez p2, :cond_27

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    invoke-static {v4, v0, v3, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_27
    if-lez v1, :cond_2e

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    invoke-static {v4, v0, v3, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2e
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-boolean p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz p2, :cond_54

    iget-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DEBUG SMTP: got response code "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", with response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_54
    iget-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    iget v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v1, :cond_63

    const-string v1, "RSET"

    const/16 v3, 0xfa

    invoke-virtual {p0, v1, v3}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    :cond_63
    iput-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    iput v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    new-instance p2, Lcom/sun/mail/smtp/SMTPSendFailedException;

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/sun/mail/smtp/SMTPSendFailedException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;)V

    throw p2

    :cond_79
    return-void
.end method

.method private normalizeAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_23
    return-object p1
.end method

.method private openServer()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "UNKNOWN"

    const/4 v1, -0x1

    :try_start_3
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getPort()I

    move-result v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_9} :catch_c7

    :try_start_9
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_13} :catch_c2

    :try_start_13
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG SMTP: starting protocol to host \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\", port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_32
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->initStreams()V

    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v0

    const/16 v3, 0xdc

    if-eq v0, v3, :cond_9b

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    iget-boolean v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v3, :cond_77

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DEBUG SMTP: got bad greeting from host \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\", port: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_77
    new-instance v3, Ljavax/mail/MessagingException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got bad greeting from SMTP host: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", port: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_9b
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v0, :cond_bf

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG SMTP: protocol started to host \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\", port: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_bf} :catch_c0

    :cond_bf
    return-void

    :catch_c0
    move-exception v0

    goto :goto_cb

    :catch_c2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_cb

    :catch_c7
    move-exception v2

    move-object v1, v0

    move-object v0, v2

    const/4 v2, -0x1

    :goto_cb
    new-instance v3, Ljavax/mail/MessagingException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not start protocol to SMTP host: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", port: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method private openServer(Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG SMTP: trying to connect to host \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isSSL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->isSSL:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_29
    :try_start_29
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v0}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->isSSL:Z

    invoke-static {p1, p2, v0, v1, v2}, Lcom/sun/mail/util/SocketFetcher;->getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0
    :try_end_4d
    .catch Ljava/net/UnknownHostException; {:try_start_29 .. :try_end_4d} :catch_fd
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_4d} :catch_dd

    :try_start_4d
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->initStreams()V

    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result p2

    const/16 v1, 0xdc

    if-eq p2, v1, :cond_b6

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    iget-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v1, :cond_92

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG SMTP: could not connect to host \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\", port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_92
    new-instance v1, Ljavax/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not connect to SMTP host: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b6
    iget-boolean p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz p2, :cond_da

    iget-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG SMTP: connected to host \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_da
    .catch Ljava/net/UnknownHostException; {:try_start_4d .. :try_end_da} :catch_fd
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_da} :catch_db

    :cond_da
    return-void

    :catch_db
    move-exception p2

    goto :goto_e1

    :catch_dd
    move-exception v0

    move-object v4, v0

    move v0, p2

    move-object p2, v4

    :goto_e1
    new-instance v1, Ljavax/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not connect to SMTP host: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", port: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_fd
    move-exception p2

    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown SMTP host: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method private sendCommand([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    sget-object v0, Lcom/sun/mail/smtp/SMTPTransport;->CRLF:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p1

    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Can\'t send command to SMTP host"

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method protected static xtext(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    const/4 v1, 0x0

    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_11

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_10
    return-object p0

    :cond_11
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-lt v3, v4, :cond_2d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Non-ASCII character in SMTP submitter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    const/16 v4, 0x21

    const/16 v5, 0x2b

    if-lt v3, v4, :cond_41

    const/16 v4, 0x7e

    if-gt v3, v4, :cond_41

    if-eq v3, v5, :cond_41

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_3e

    goto :goto_41

    :cond_3e
    if-eqz v2, :cond_6c

    goto :goto_69

    :cond_41
    :goto_41
    if-nez v2, :cond_55

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_55
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v4, Lcom/sun/mail/smtp/SMTPTransport;->hexchar:[C

    and-int/lit16 v5, v3, 0xf0

    shr-int/lit8 v5, v5, 0x4

    aget-char v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v4, Lcom/sun/mail/smtp/SMTPTransport;->hexchar:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v4, v3

    :goto_69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method


# virtual methods
.method protected checkConnected()V
    .registers 3

    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-void
.end method

.method public declared-synchronized close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_3e

    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v0, :cond_34

    const-string v0, "QUIT"

    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->quitWait:Z

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v0

    const/16 v1, 0xdd

    if-eq v0, v1, :cond_34

    const/4 v1, -0x1

    if-eq v0, v1, :cond_34

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG SMTP: QUIT failed with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_9 .. :try_end_34} :catchall_39

    :cond_34
    :try_start_34
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3e

    monitor-exit p0

    return-void

    :catchall_39
    move-exception v0

    :try_start_3a
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    throw v0
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connect(Ljava/net/Socket;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-super {p0}, Ljavax/mail/Transport;->connect()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected data()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "DATA"

    const/16 v1, 0x162

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->issueSendCommand(Ljava/lang/String;I)V

    new-instance v0, Lcom/sun/mail/smtp/SMTPOutputStream;

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lcom/sun/mail/smtp/SMTPOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->dataStream:Lcom/sun/mail/smtp/SMTPOutputStream;

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->dataStream:Lcom/sun/mail/smtp/SMTPOutputStream;

    return-object v0
.end method

.method protected ehlo(Ljava/lang/String;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    if-eqz p1, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EHLO "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_13

    :cond_11
    const-string p1, "EHLO"

    :goto_13
    invoke-virtual {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result p1

    const/16 v0, 0xfa

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_8f

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/StringReader;

    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    const/4 v4, 0x1

    :cond_34
    :goto_34
    :try_start_34
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3b

    goto :goto_8f

    :cond_3b
    if-eqz v4, :cond_3f

    const/4 v4, 0x0

    goto :goto_34

    :cond_3f
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    if-lt v6, v7, :cond_34

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const-string v7, ""

    if-lez v6, :cond_5f

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_5f
    iget-boolean v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v6, :cond_83

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DEBUG SMTP: Found extension \""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\", arg \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_83
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_8e} :catch_8f

    goto :goto_34

    :catch_8f
    :cond_8f
    :goto_8f
    if-ne p1, v0, :cond_92

    return v2

    :cond_92
    return v1
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljavax/mail/Transport;->finalize()V

    :try_start_3
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_6
    .catch Ljavax/mail/MessagingException; {:try_start_3 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method

.method protected finishData()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->dataStream:Lcom/sun/mail/smtp/SMTPOutputStream;

    invoke-virtual {v0}, Lcom/sun/mail/smtp/SMTPOutputStream;->ensureAtBOL()V

    const-string v0, "."

    const/16 v1, 0xfa

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->issueSendCommand(Ljava/lang/String;I)V

    return-void
.end method

.method public getExtensionParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public declared-synchronized getLastReturnCode()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastServerResponse()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLocalHost()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2a

    :cond_d
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".localhost"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    :cond_2a
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_53

    :cond_36
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".localaddress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    :cond_53
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_89

    :cond_5f
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    if-nez v1, :cond_89

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;
    :try_end_86
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_86} :catch_89
    .catchall {:try_start_1 .. :try_end_86} :catchall_87

    goto :goto_89

    :catchall_87
    move-exception v0

    goto :goto_8d

    :catch_89
    :cond_89
    :goto_89
    :try_start_89
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;
    :try_end_8b
    .catchall {:try_start_89 .. :try_end_8b} :catchall_87

    monitor-exit p0

    return-object v0

    :goto_8d
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getReportSuccess()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSASLRealm()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    const-string v1, "UNKNOWN"

    if-ne v0, v1, :cond_45

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".sasl.realm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".saslrealm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    :cond_45
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_49

    monitor-exit p0

    return-object v0

    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStartTLS()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useStartTLS:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUseRset()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useRset:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected helo(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/16 v0, 0xfa

    if-eqz p1, :cond_16

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HELO "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_12
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    return-void

    :cond_16
    const-string p1, "HELO"

    goto :goto_12
.end method

.method public declared-synchronized isConnected()Z
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2e

    const/4 v1, 0x0

    if-nez v0, :cond_a

    monitor-exit p0

    return v1

    :cond_a
    :try_start_a
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useRset:Z

    if-eqz v0, :cond_14

    const-string v0, "RSET"

    :goto_10
    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    goto :goto_17

    :cond_14
    const-string v0, "NOOP"

    goto :goto_10

    :goto_17
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1b} :catch_29
    .catchall {:try_start_a .. :try_end_1b} :catchall_2e

    if-ltz v0, :cond_24

    const/16 v2, 0x1a5

    if-eq v0, v2, :cond_24

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_24
    :try_start_24
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_27
    .catch Ljavax/mail/MessagingException; {:try_start_24 .. :try_end_27} :catch_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_29
    .catchall {:try_start_24 .. :try_end_27} :catchall_2e

    :catch_27
    monitor-exit p0

    return v1

    :catch_29
    :try_start_29
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_2c
    .catch Ljavax/mail/MessagingException; {:try_start_29 .. :try_end_2c} :catch_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2e

    :catch_2c
    monitor-exit p0

    return v1

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized issueCommand(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result p1

    if-eq p1, p2, :cond_12

    new-instance p1, Ljavax/mail/MessagingException;

    iget-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected mailFrom()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v0, v0, Lcom/sun/mail/smtp/SMTPMessage;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    check-cast v0, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/smtp/SMTPMessage;->getEnvelopeFrom()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_10
    move-object v0, v1

    :goto_11
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_34

    :cond_19
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mail."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".from"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_34
    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_5d

    :cond_3c
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeMessage;->getFrom()[Ljavax/mail/Address;

    move-result-object v0

    if-eqz v0, :cond_4f

    array-length v2, v0

    if-lez v2, :cond_4f

    const/4 v2, 0x0

    aget-object v0, v0, v2

    goto :goto_55

    :cond_4f
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    :goto_55
    if-eqz v0, :cond_17b

    check-cast v0, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    :cond_5d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MAIL FROM:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->normalizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DSN"

    invoke-virtual {p0, v2}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bb

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v2, v2, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v2, :cond_86

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    check-cast v2, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v2}, Lcom/sun/mail/smtp/SMTPMessage;->getDSNRet()Ljava/lang/String;

    move-result-object v2

    goto :goto_87

    :cond_86
    move-object v2, v1

    :goto_87
    if-nez v2, :cond_a4

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mail."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".dsn.ret"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_a4
    if-eqz v2, :cond_bb

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " RET="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_bb
    const-string v2, "AUTH"

    invoke-virtual {p0, v2}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12d

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v2, v2, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v2, :cond_d2

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    check-cast v2, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v2}, Lcom/sun/mail/smtp/SMTPMessage;->getSubmitter()Ljava/lang/String;

    move-result-object v2

    goto :goto_d3

    :cond_d2
    move-object v2, v1

    :goto_d3
    if-nez v2, :cond_f0

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mail."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".submitter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_f0
    if-eqz v2, :cond_12d

    :try_start_f2
    invoke-static {v2}, Lcom/sun/mail/smtp/SMTPTransport;->xtext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " AUTH="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_10b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f2 .. :try_end_10b} :catch_10d

    move-object v0, v3

    goto :goto_12d

    :catch_10d
    move-exception v3

    iget-boolean v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v4, :cond_12d

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DEBUG SMTP: ignoring invalid submitter: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Exception: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_12d
    :goto_12d
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v2, v2, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v2, :cond_13b

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    check-cast v1, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v1}, Lcom/sun/mail/smtp/SMTPMessage;->getMailExtension()Ljava/lang/String;

    move-result-object v1

    :cond_13b
    if-nez v1, :cond_158

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mail."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".mailextension"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_158
    if-eqz v1, :cond_175

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_175

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_175
    const/16 v1, 0xfa

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->issueSendCommand(Ljava/lang/String;I)V

    return-void

    :cond_17b
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "can\'t determine local email address"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "mail."

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".ehlo"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_2b

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v2, 0x0

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x1

    :goto_2c
    iget-object v3, v1, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mail."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".auth"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_53

    const-string v6, "true"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_53

    const/4 v3, 0x1

    goto :goto_54

    :cond_53
    const/4 v3, 0x0

    :goto_54
    iget-boolean v6, v1, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v6, :cond_73

    iget-object v6, v1, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "DEBUG SMTP: useEhlo "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", useAuth "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_73
    if-eqz v3, :cond_7a

    if-eqz p3, :cond_79

    if-nez p4, :cond_7a

    :cond_79
    return v9

    :cond_7a
    const/4 v10, -0x1

    move/from16 v6, p2

    if-ne v6, v10, :cond_a3

    iget-object v6, v1, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "mail."

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".port"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_a3

    :cond_a1
    iget v6, v1, Lcom/sun/mail/smtp/SMTPTransport;->defaultPort:I

    :cond_a3
    :goto_a3
    move v7, v6

    if-eqz p1, :cond_b0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_ad

    goto :goto_b0

    :cond_ad
    move-object/from16 v6, p1

    goto :goto_b2

    :cond_b0
    :goto_b0
    const-string v6, "localhost"

    :goto_b2
    iget-object v11, v1, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v11, :cond_ba

    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->openServer()V

    goto :goto_bd

    :cond_ba
    invoke-direct {v1, v6, v7}, Lcom/sun/mail/smtp/SMTPTransport;->openServer(Ljava/lang/String;I)V

    :goto_bd
    if-eqz v2, :cond_c8

    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->getLocalHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->ehlo(Ljava/lang/String;)Z

    move-result v2

    goto :goto_c9

    :cond_c8
    const/4 v2, 0x0

    :goto_c9
    if-nez v2, :cond_d2

    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->getLocalHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->helo(Ljava/lang/String;)V

    :cond_d2
    iget-boolean v2, v1, Lcom/sun/mail/smtp/SMTPTransport;->useStartTLS:Z

    if-eqz v2, :cond_e8

    const-string v2, "STARTTLS"

    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e8

    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->startTLS()V

    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->getLocalHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->ehlo(Ljava/lang/String;)Z

    :cond_e8
    if-nez v3, :cond_ee

    if-eqz p3, :cond_266

    if-eqz p4, :cond_266

    :cond_ee
    const-string v2, "AUTH"

    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_fe

    const-string v2, "AUTH=LOGIN"

    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_266

    :cond_fe
    iget-boolean v2, v1, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v2, :cond_120

    iget-object v2, v1, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v3, "DEBUG SMTP: Attempt to authenticate"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v2, "LOGIN"

    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->supportsAuthentication(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_120

    const-string v2, "AUTH=LOGIN"

    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_120

    iget-object v2, v1, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v3, "DEBUG SMTP: use AUTH=LOGIN hack"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_120
    const-string v2, "LOGIN"

    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->supportsAuthentication(Ljava/lang/String;)Z

    move-result v2

    const v3, 0x7fffffff

    const/16 v11, 0x14e

    const/16 v12, 0xeb

    if-nez v2, :cond_1fe

    const-string v2, "AUTH=LOGIN"

    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_139

    goto/16 :goto_1fe

    :cond_139
    const-string v2, "PLAIN"

    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->supportsAuthentication(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_188

    const-string v2, "AUTH PLAIN"

    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v2

    :try_start_147
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v7, Lcom/sun/mail/util/BASE64EncoderStream;

    invoke-direct {v7, v6, v3}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;I)V

    if-ne v2, v11, :cond_173

    invoke-virtual {v7, v9}, Ljava/io/OutputStream;->write(I)V

    invoke-static/range {p3 .. p3}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v7, v9}, Ljava/io/OutputStream;->write(I)V

    invoke-static/range {p4 .. p4}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand([B)I

    move-result v3
    :try_end_172
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_172} :catch_182
    .catchall {:try_start_147 .. :try_end_172} :catchall_179

    move v2, v3

    :cond_173
    if-eq v2, v12, :cond_266

    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    return v9

    :catchall_179
    move-exception v0

    move-object v3, v0

    if-eq v2, v12, :cond_181

    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    return v9

    :cond_181
    throw v3

    :catch_182
    if-eq v2, v12, :cond_266

    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    return v9

    :cond_188
    const-string v2, "DIGEST-MD5"

    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->supportsAuthentication(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_266

    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->getMD5()Lcom/sun/mail/smtp/DigestMD5;

    move-result-object v13

    if-eqz v13, :cond_266

    const-string v2, "AUTH DIGEST-MD5"

    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v14

    if-ne v14, v11, :cond_1f7

    :try_start_19e
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->getSASLRealm()Ljava/lang/String;

    move-result-object v7

    iget-object v15, v1, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    move-object v2, v13

    move-object v3, v6

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v7

    move-object v7, v15

    invoke-virtual/range {v2 .. v7}, Lcom/sun/mail/smtp/DigestMD5;->authClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand([B)I

    move-result v2
    :try_end_1b4
    .catch Ljava/lang/Exception; {:try_start_19e .. :try_end_1b4} :catch_1d1
    .catchall {:try_start_19e .. :try_end_1b4} :catchall_1ce

    if-ne v2, v11, :cond_1cc

    :try_start_1b6
    iget-object v3, v1, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-virtual {v13, v3}, Lcom/sun/mail/smtp/DigestMD5;->authServer(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1bf

    goto :goto_1f8

    :cond_1bf
    new-array v3, v9, [B

    invoke-virtual {v1, v3}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand([B)I

    move-result v10
    :try_end_1c5
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_1c5} :catch_1c9
    .catchall {:try_start_1b6 .. :try_end_1c5} :catchall_1c6

    goto :goto_1f8

    :catchall_1c6
    move-exception v0

    move v14, v2

    goto :goto_1cf

    :catch_1c9
    move-exception v0

    move v14, v2

    goto :goto_1d2

    :cond_1cc
    move v10, v2

    goto :goto_1f8

    :catchall_1ce
    move-exception v0

    :goto_1cf
    move-object v2, v0

    goto :goto_1f0

    :catch_1d1
    move-exception v0

    :goto_1d2
    move-object v2, v0

    :try_start_1d3
    iget-boolean v3, v1, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v3, :cond_1ea

    iget-object v3, v1, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DEBUG SMTP: DIGEST-MD5: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1ea
    .catchall {:try_start_1d3 .. :try_end_1ea} :catchall_1ce

    :cond_1ea
    if-eq v14, v12, :cond_266

    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    return v9

    :goto_1f0
    if-eq v14, v12, :cond_1f6

    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    return v9

    :cond_1f6
    throw v2

    :cond_1f7
    move v10, v14

    :goto_1f8
    if-eq v10, v12, :cond_266

    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    return v9

    :cond_1fe
    :goto_1fe
    const-string v2, "AUTH LOGIN"

    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v2

    const/16 v6, 0x212

    if-ne v2, v6, :cond_211

    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->startTLS()V

    const-string v2, "AUTH LOGIN"

    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v2

    :cond_211
    :try_start_211
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v7, Lcom/sun/mail/util/BASE64EncoderStream;

    invoke-direct {v7, v6, v3}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;I)V

    if-ne v2, v11, :cond_238

    invoke-static/range {p3 .. p3}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand([B)I

    move-result v3
    :try_end_22f
    .catch Ljava/io/IOException; {:try_start_211 .. :try_end_22f} :catch_260
    .catchall {:try_start_211 .. :try_end_22f} :catchall_256

    :try_start_22f
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_232
    .catch Ljava/io/IOException; {:try_start_22f .. :try_end_232} :catch_236
    .catchall {:try_start_22f .. :try_end_232} :catchall_234

    move v2, v3

    goto :goto_238

    :catchall_234
    move-exception v0

    goto :goto_258

    :catch_236
    move v2, v3

    goto :goto_260

    :cond_238
    :goto_238
    if-ne v2, v11, :cond_250

    :try_start_23a
    invoke-static/range {p4 .. p4}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand([B)I

    move-result v3
    :try_end_24c
    .catch Ljava/io/IOException; {:try_start_23a .. :try_end_24c} :catch_260
    .catchall {:try_start_23a .. :try_end_24c} :catchall_256

    :try_start_24c
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_24f
    .catch Ljava/io/IOException; {:try_start_24c .. :try_end_24f} :catch_236
    .catchall {:try_start_24c .. :try_end_24f} :catchall_234

    move v2, v3

    :cond_250
    if-eq v2, v12, :cond_266

    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    return v9

    :catchall_256
    move-exception v0

    move v3, v2

    :goto_258
    move-object v2, v0

    if-eq v3, v12, :cond_25f

    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    return v9

    :cond_25f
    throw v2

    :catch_260
    :goto_260
    if-eq v2, v12, :cond_266

    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    return v9

    :cond_266
    return v8
.end method

.method protected rcptTo()V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v7, p0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iput-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iput-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v5, v5, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v5, :cond_27

    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    check-cast v5, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v5}, Lcom/sun/mail/smtp/SMTPMessage;->getSendPartial()Z

    move-result v5

    goto :goto_28

    :cond_27
    const/4 v5, 0x0

    :goto_28
    const/4 v8, 0x1

    if-nez v5, :cond_53

    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mail."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v7, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".sendpartial"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_52

    const-string v9, "true"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    const/4 v5, 0x1

    goto :goto_53

    :cond_52
    const/4 v5, 0x0

    :cond_53
    :goto_53
    iget-boolean v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v9, :cond_60

    if-eqz v5, :cond_60

    iget-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v10, "DEBUG SMTP: sendPartial set"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_60
    const-string v9, "DSN"

    invoke-virtual {v7, v9}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9c

    iget-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v9, v9, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v9, :cond_77

    iget-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    check-cast v9, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v9}, Lcom/sun/mail/smtp/SMTPMessage;->getDSNNotify()Ljava/lang/String;

    move-result-object v9

    goto :goto_78

    :cond_77
    move-object v9, v4

    :goto_78
    if-nez v9, :cond_95

    iget-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "mail."

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v7, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".dsn.notify"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_95
    if-eqz v9, :cond_9a

    move-object v10, v9

    const/4 v9, 0x1

    goto :goto_9e

    :cond_9a
    move-object v10, v9

    goto :goto_9d

    :cond_9c
    move-object v10, v4

    :goto_9d
    const/4 v9, 0x0

    :goto_9e
    move-object v14, v4

    const/4 v4, 0x0

    const/4 v11, 0x0

    :goto_a1
    iget-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    array-length v12, v12

    const/16 v13, 0xfa

    if-lt v4, v12, :cond_22e

    if-eqz v5, :cond_b1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_b1

    const/4 v11, 0x1

    :cond_b1
    if-eqz v11, :cond_fd

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Ljavax/mail/Address;

    iput-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/2addr v3, v4

    new-array v3, v3, [Ljavax/mail/Address;

    iput-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_cf
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v3, v5, :cond_ed

    const/4 v1, 0x0

    :goto_d6
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_dd

    goto :goto_140

    :cond_dd
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/mail/Address;

    aput-object v8, v3, v4

    add-int/lit8 v1, v1, 0x1

    move v4, v5

    goto :goto_d6

    :cond_ed
    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/mail/Address;

    aput-object v9, v5, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v8

    goto :goto_cf

    :cond_fd
    iget-boolean v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z

    if-nez v4, :cond_115

    if-eqz v5, :cond_110

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    if-gtz v4, :cond_115

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_110

    goto :goto_115

    :cond_110
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    iput-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    goto :goto_140

    :cond_115
    :goto_115
    iput-boolean v8, v7, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z

    iput-object v14, v7, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Ljavax/mail/Address;

    iput-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v3, v3, [Ljavax/mail/Address;

    iput-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Ljavax/mail/Address;

    iput-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    :goto_140
    iget-boolean v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v1, :cond_1d7

    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    if-eqz v1, :cond_175

    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    array-length v1, v1

    if-lez v1, :cond_175

    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG SMTP: Verified Addresses"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_155
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    array-length v2, v2

    if-lt v1, v2, :cond_15b

    goto :goto_175

    :cond_15b
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG SMTP:   "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_155

    :cond_175
    :goto_175
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    if-eqz v1, :cond_1a6

    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    array-length v1, v1

    if-lez v1, :cond_1a6

    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG SMTP: Valid Unsent Addresses"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_186
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    array-length v2, v2

    if-lt v1, v2, :cond_18c

    goto :goto_1a6

    :cond_18c
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG SMTP:   "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_186

    :cond_1a6
    :goto_1a6
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    if-eqz v1, :cond_1d7

    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    array-length v1, v1

    if-lez v1, :cond_1d7

    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG SMTP: Invalid Addresses"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_1b7
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    array-length v1, v1

    if-lt v6, v1, :cond_1bd

    goto :goto_1d7

    :cond_1bd
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG SMTP:   "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b7

    :cond_1d7
    :goto_1d7
    if-eqz v11, :cond_22d

    iget-boolean v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v1, :cond_1e4

    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG SMTP: Sending failed because of invalid destination addresses"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1e4
    const/4 v2, 0x2

    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    iget v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    :try_start_1f5
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v3, :cond_1fe

    const-string v3, "RSET"

    invoke-virtual {v7, v3, v13}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V
    :try_end_1fe
    .catch Ljavax/mail/MessagingException; {:try_start_1f5 .. :try_end_1fe} :catch_206
    .catchall {:try_start_1f5 .. :try_end_1fe} :catchall_203

    :cond_1fe
    :goto_1fe
    iput-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    iput v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    goto :goto_215

    :catchall_203
    move-exception v0

    move-object v3, v0

    goto :goto_228

    :catch_206
    :try_start_206
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->close()V
    :try_end_209
    .catch Ljavax/mail/MessagingException; {:try_start_206 .. :try_end_209} :catch_20a
    .catchall {:try_start_206 .. :try_end_209} :catchall_203

    goto :goto_1fe

    :catch_20a
    move-exception v0

    :try_start_20b
    iget-boolean v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v3, :cond_1fe

    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v3}, Ljavax/mail/MessagingException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_214
    .catchall {:try_start_20b .. :try_end_214} :catchall_203

    goto :goto_1fe

    :goto_215
    new-instance v1, Ljavax/mail/SendFailedException;

    const-string v13, "Invalid Addresses"

    iget-object v15, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    move-object v12, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v12 .. v17}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;)V

    throw v1

    :goto_228
    iput-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    iput v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    throw v3

    :cond_22d
    return-void

    :cond_22e
    iget-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    aget-object v12, v12, v4

    check-cast v12, Ljavax/mail/internet/InternetAddress;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v6, "RCPT TO:"

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Lcom/sun/mail/smtp/SMTPTransport;->normalizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v9, :cond_261

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " NOTIFY="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_261
    invoke-virtual {v7, v6}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v15

    const/16 v8, 0x1f5

    if-eq v15, v8, :cond_2fb

    const/16 v8, 0x1f7

    if-eq v15, v8, :cond_2fb

    packed-switch v15, :pswitch_data_310

    packed-switch v15, :pswitch_data_318

    packed-switch v15, :pswitch_data_322

    const/16 v8, 0x190

    if-lt v15, v8, :cond_285

    const/16 v8, 0x1f3

    if-gt v15, v8, :cond_285

    invoke-virtual {v2, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_290

    :cond_285
    const/16 v8, 0x1f4

    if-lt v15, v8, :cond_29d

    const/16 v8, 0x257

    if-gt v15, v8, :cond_29d

    invoke-virtual {v3, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_290
    if-nez v5, :cond_293

    const/4 v11, 0x1

    :cond_293
    new-instance v8, Lcom/sun/mail/smtp/SMTPAddressFailedException;

    iget-object v13, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-direct {v8, v12, v6, v15, v13}, Lcom/sun/mail/smtp/SMTPAddressFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    if-nez v14, :cond_2e5

    goto :goto_2f9

    :cond_29d
    iget-boolean v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v1, :cond_2be

    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG SMTP: got response code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", with response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2be
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    iget v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v3, :cond_2cb

    const-string v3, "RSET"

    invoke-virtual {v7, v3, v13}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    :cond_2cb
    iput-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    iput v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    new-instance v2, Lcom/sun/mail/smtp/SMTPAddressFailedException;

    invoke-direct {v2, v12, v6, v15, v1}, Lcom/sun/mail/smtp/SMTPAddressFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    throw v2

    :pswitch_2d5
    if-nez v5, :cond_2d8

    const/4 v11, 0x1

    :cond_2d8
    invoke-virtual {v2, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v8, Lcom/sun/mail/smtp/SMTPAddressFailedException;

    iget-object v13, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-direct {v8, v12, v6, v15, v13}, Lcom/sun/mail/smtp/SMTPAddressFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    if-nez v14, :cond_2e5

    goto :goto_2f9

    :cond_2e5
    invoke-virtual {v14, v8}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    goto :goto_30b

    :pswitch_2e9
    invoke-virtual {v1, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-boolean v8, v7, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z

    if-eqz v8, :cond_30b

    new-instance v8, Lcom/sun/mail/smtp/SMTPAddressSucceededException;

    iget-object v13, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-direct {v8, v12, v6, v15, v13}, Lcom/sun/mail/smtp/SMTPAddressSucceededException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    if-nez v14, :cond_2e5

    :goto_2f9
    move-object v14, v8

    goto :goto_30b

    :cond_2fb
    :pswitch_2fb
    if-nez v5, :cond_2fe

    const/4 v11, 0x1

    :cond_2fe
    invoke-virtual {v3, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v8, Lcom/sun/mail/smtp/SMTPAddressFailedException;

    iget-object v13, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-direct {v8, v12, v6, v15, v13}, Lcom/sun/mail/smtp/SMTPAddressFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    if-nez v14, :cond_2e5

    goto :goto_2f9

    :cond_30b
    :goto_30b
    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x1

    goto/16 :goto_a1

    :pswitch_data_310
    .packed-switch 0xfa
        :pswitch_2e9
        :pswitch_2e9
    .end packed-switch

    :pswitch_data_318
    .packed-switch 0x1c2
        :pswitch_2d5
        :pswitch_2d5
        :pswitch_2d5
    .end packed-switch

    :pswitch_data_322
    .packed-switch 0x226
        :pswitch_2fb
        :pswitch_2fb
        :pswitch_2d5
        :pswitch_2fb
    .end packed-switch
.end method

.method protected readServerResponse()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    :cond_7
    const/4 v1, 0x0

    :try_start_8
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    invoke-virtual {v2}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-nez v2, :cond_39

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1d

    const-string v0, "[EOF]"

    :cond_1d
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    iput v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    iget-boolean v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DEBUG SMTP: EOF: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_38
    return v3

    :cond_39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, v2}, Lcom/sun/mail/smtp/SMTPTransport;->isNotLastLine(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_4b} :catch_95

    if-eqz v0, :cond_76

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x3

    if-lt v2, v4, :cond_76

    :try_start_54
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_5c
    .catch Ljava/lang/NumberFormatException; {:try_start_54 .. :try_end_5c} :catch_6c
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_54 .. :try_end_5c} :catch_5d

    goto :goto_77

    :catch_5d
    :try_start_5d
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->close()V
    :try_end_60
    .catch Ljavax/mail/MessagingException; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_76

    :catch_61
    move-exception v1

    iget-boolean v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v2, :cond_76

    :goto_66
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljavax/mail/MessagingException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_76

    :catch_6c
    :try_start_6c
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->close()V
    :try_end_6f
    .catch Ljavax/mail/MessagingException; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_76

    :catch_70
    move-exception v1

    iget-boolean v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v2, :cond_76

    goto :goto_66

    :cond_76
    :goto_76
    const/4 v1, -0x1

    :goto_77
    if-ne v1, v3, :cond_90

    iget-boolean v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v2, :cond_90

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG SMTP: bad server response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_90
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    iput v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    return v1

    :catch_95
    move-exception v0

    iget-boolean v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v2, :cond_ad

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG SMTP: exception reading response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_ad
    const-string v2, ""

    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    iput v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Exception reading response"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected sendCommand(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand([B)V

    return-void
.end method

.method public declared-synchronized sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljavax/mail/SendFailedException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    monitor-enter p0

    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->checkConnected()V

    instance-of v3, v1, Ljavax/mail/internet/MimeMessage;

    if-nez v3, :cond_21

    iget-boolean v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v1, :cond_19

    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG SMTP: Can only send RFC822 msgs"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_19
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "SMTP can only send RFC822 messages"

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    const/4 v8, 0x0

    const/4 v3, 0x0

    :goto_23
    array-length v4, v2

    if-lt v3, v4, :cond_14b

    move-object v3, v1

    check-cast v3, Ljavax/mail/internet/MimeMessage;

    iput-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    iput-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    iput-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->expandGroups()V

    instance-of v2, v1, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v2, :cond_3d

    check-cast v1, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v1}, Lcom/sun/mail/smtp/SMTPMessage;->getAllow8bitMIME()Z

    move-result v1

    goto :goto_3e

    :cond_3d
    const/4 v1, 0x0

    :goto_3e
    if-nez v1, :cond_68

    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mail."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".allow8bitmime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_67

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67

    const/4 v1, 0x1

    goto :goto_68

    :cond_67
    const/4 v1, 0x0

    :cond_68
    :goto_68
    iget-boolean v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v2, :cond_7f

    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG SMTP: use8bit "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7f
    if-eqz v1, :cond_96

    const-string v1, "8BITMIME"

    invoke-virtual {v7, v1}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_96

    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    invoke-direct {v7, v1}, Lcom/sun/mail/smtp/SMTPTransport;->convertTo8Bit(Ljavax/mail/internet/MimePart;)Z

    move-result v1
    :try_end_8f
    .catchall {:try_start_7 .. :try_end_8f} :catchall_16e

    if-eqz v1, :cond_96

    :try_start_91
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v1}, Ljavax/mail/internet/MimeMessage;->saveChanges()V
    :try_end_96
    .catch Ljavax/mail/MessagingException; {:try_start_91 .. :try_end_96} :catch_96
    .catchall {:try_start_91 .. :try_end_96} :catchall_16e

    :catch_96
    :cond_96
    const/4 v9, 0x0

    :try_start_97
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->mailFrom()V

    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->rcptTo()V

    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->data()Ljava/io/OutputStream;

    move-result-object v2

    sget-object v3, Lcom/sun/mail/smtp/SMTPTransport;->ignoreList:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;[Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->finishData()V

    iget-boolean v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z

    if-eqz v1, :cond_e0

    iget-boolean v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v1, :cond_ba

    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG SMTP: Sending partially failed because of invalid destination addresses"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_ba
    const/4 v2, 0x3

    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    new-instance v1, Lcom/sun/mail/smtp/SMTPSendFailedException;

    const-string v11, "."

    iget v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    iget-object v13, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    iget-object v14, v7, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    iget-object v15, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    move-object v10, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v10 .. v17}, Lcom/sun/mail/smtp/SMTPSendFailedException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;)V

    throw v1

    :cond_e0
    const/4 v2, 0x1

    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V
    :try_end_ed
    .catch Ljavax/mail/MessagingException; {:try_start_97 .. :try_end_ed} :catch_123
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_ed} :catch_100
    .catchall {:try_start_97 .. :try_end_ed} :catchall_fd

    :try_start_ed
    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    iput-boolean v8, v7, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z
    :try_end_fb
    .catchall {:try_start_ed .. :try_end_fb} :catchall_16e

    monitor-exit p0

    return-void

    :catchall_fd
    move-exception v0

    move-object v1, v0

    goto :goto_13c

    :catch_100
    move-exception v0

    move-object v10, v0

    :try_start_102
    iget-boolean v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v1, :cond_10b

    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_10b
    .catchall {:try_start_102 .. :try_end_10b} :catchall_fd

    :cond_10b
    :try_start_10b
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_10e
    .catch Ljavax/mail/MessagingException; {:try_start_10b .. :try_end_10e} :catch_10e
    .catchall {:try_start_10b .. :try_end_10e} :catchall_fd

    :catch_10e
    const/4 v2, 0x2

    :try_start_10f
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "IOException while sending message"

    invoke-direct {v1, v2, v10}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_123
    move-exception v0

    move-object v10, v0

    iget-boolean v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v1, :cond_12e

    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v1}, Ljavax/mail/MessagingException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_12e
    const/4 v2, 0x2

    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    throw v10
    :try_end_13c
    .catchall {:try_start_10f .. :try_end_13c} :catchall_fd

    :goto_13c
    :try_start_13c
    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    iput-boolean v8, v7, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z

    throw v1

    :cond_14b
    aget-object v4, v2, v3

    instance-of v4, v4, Ljavax/mail/internet/InternetAddress;

    if-nez v4, :cond_16a

    new-instance v1, Ljavax/mail/MessagingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v2, v3

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not an InternetAddress"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_16a
    .catchall {:try_start_13c .. :try_end_16a} :catchall_16e

    :cond_16a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_23

    :catchall_16e
    move-exception v0

    move-object v1, v0

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setLocalHost(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setReportSuccess(Z)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSASLRealm(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStartTLS(Z)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->useStartTLS:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUseRset(Z)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->useRset:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized simpleCommand(Ljava/lang/String;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result p1
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return p1

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected simpleCommand([B)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand([B)V

    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result p1

    return p1
.end method

.method protected startTLS()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "STARTTLS"

    const/16 v1, 0xdc

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    :try_start_7
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v1}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mail."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sun/mail/util/SocketFetcher;->startTLS(Ljava/net/Socket;Ljava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->initStreams()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_28} :catch_29

    return-void

    :catch_29
    move-exception v0

    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Could not convert socket to TLS"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected supportsAuthentication(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    const-string v2, "AUTH"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_13

    return v1

    :cond_13
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :cond_18
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_1f

    return v1

    :cond_1f
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p1, 0x1

    return p1
.end method

.method public supportsExtension(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method
