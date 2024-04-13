.class public Ljavax/mail/internet/MimeMessage;
.super Ljavax/mail/Message;

# interfaces
.implements Ljavax/mail/internet/MimePart;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/internet/MimeMessage$RecipientType;
    }
.end annotation


# static fields
.field private static final answeredFlag:Ljavax/mail/Flags;

.field private static mailDateFormat:Ljavax/mail/internet/MailDateFormat;


# instance fields
.field cachedContent:Ljava/lang/Object;

.field protected content:[B

.field protected contentStream:Ljava/io/InputStream;

.field protected dh:Ljavax/activation/DataHandler;

.field protected flags:Ljavax/mail/Flags;

.field protected headers:Ljavax/mail/internet/InternetHeaders;

.field protected modified:Z

.field protected saved:Z

.field private strict:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljavax/mail/internet/MailDateFormat;

    invoke-direct {v0}, Ljavax/mail/internet/MailDateFormat;-><init>()V

    sput-object v0, Ljavax/mail/internet/MimeMessage;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    new-instance v0, Ljavax/mail/Flags;

    sget-object v1, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    invoke-direct {v0, v1}, Ljavax/mail/Flags;-><init>(Ljavax/mail/Flags$Flag;)V

    sput-object v0, Ljavax/mail/internet/MimeMessage;->answeredFlag:Ljavax/mail/Flags;

    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Folder;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljavax/mail/Message;-><init>(Ljavax/mail/Folder;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    iput-boolean p1, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    new-instance p2, Ljavax/mail/Flags;

    invoke-direct {p2}, Ljavax/mail/Flags;-><init>()V

    iput-object p2, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    iput-boolean p1, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    invoke-direct {p0}, Ljavax/mail/internet/MimeMessage;->initStrict()V

    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Folder;Ljava/io/InputStream;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Folder;I)V

    invoke-direct {p0}, Ljavax/mail/internet/MimeMessage;->initStrict()V

    invoke-virtual {p0, p2}, Ljavax/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Folder;Ljavax/mail/internet/InternetHeaders;[BI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0, p1, p4}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Folder;I)V

    iput-object p2, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    iput-object p3, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    invoke-direct {p0}, Ljavax/mail/internet/MimeMessage;->initStrict()V

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;)V
    .registers 2

    invoke-direct {p0, p1}, Ljavax/mail/Message;-><init>(Ljavax/mail/Session;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    iput-boolean p1, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    iput-boolean p1, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    new-instance p1, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {p1}, Ljavax/mail/internet/InternetHeaders;-><init>()V

    iput-object p1, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    new-instance p1, Ljavax/mail/Flags;

    invoke-direct {p1}, Ljavax/mail/Flags;-><init>()V

    iput-object p1, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    invoke-direct {p0}, Ljavax/mail/internet/MimeMessage;->initStrict()V

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;Ljava/io/InputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljavax/mail/Message;-><init>(Ljavax/mail/Session;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    iput-boolean p1, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    invoke-direct {p0}, Ljavax/mail/internet/MimeMessage;->initStrict()V

    invoke-virtual {p0, p2}, Ljavax/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    iput-boolean p1, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    return-void
.end method

.method public constructor <init>(Ljavax/mail/internet/MimeMessage;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p1, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    invoke-direct {p0, v0}, Ljavax/mail/Message;-><init>(Ljavax/mail/Session;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->getFlags()Ljavax/mail/Flags;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->getSize()I

    move-result v1

    if-lez v1, :cond_1f

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    goto :goto_24

    :cond_1f
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_24
    :try_start_24
    iget-boolean v1, p1, Ljavax/mail/internet/MimeMessage;->strict:Z

    iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    invoke-virtual {p1, v2}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance p1, Ljavax/mail/util/SharedByteArrayInputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {p1, v1}, Ljavax/mail/util/SharedByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Ljavax/mail/util/SharedByteArrayInputStream;->close()V

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_3f} :catch_40

    return-void

    :catch_40
    move-exception p1

    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "IOException while copying message"

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method private addAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-static {p2}, Ljavax/mail/internet/InternetAddress;->toString([Ljavax/mail/Address;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private eliminateDuplicates(Ljava/util/Vector;[Ljavax/mail/Address;)[Ljavax/mail/Address;
    .registers 10

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    array-length v4, p2

    if-lt v2, v4, :cond_2e

    if-eqz v3, :cond_2c

    instance-of p1, p2, [Ljavax/mail/internet/InternetAddress;

    if-eqz p1, :cond_15

    array-length p1, p2

    sub-int/2addr p1, v3

    new-array p1, p1, [Ljavax/mail/internet/InternetAddress;

    goto :goto_19

    :cond_15
    array-length p1, p2

    sub-int/2addr p1, v3

    new-array p1, p1, [Ljavax/mail/Address;

    :goto_19
    const/4 v0, 0x0

    :goto_1a
    array-length v2, p2

    if-lt v1, v2, :cond_1e

    return-object p1

    :cond_1e
    aget-object v2, p2, v1

    if-eqz v2, :cond_29

    add-int/lit8 v2, v0, 0x1

    aget-object v3, p2, v1

    aput-object v3, p1, v0

    move v0, v2

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_2c
    move-object p1, p2

    return-object p1

    :cond_2e
    const/4 v4, 0x0

    :goto_2f
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v4, v5, :cond_37

    const/4 v4, 0x0

    goto :goto_4a

    :cond_37
    invoke-virtual {p1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/mail/internet/InternetAddress;

    aget-object v6, p2, v2

    invoke-virtual {v5, v6}, Ljavax/mail/internet/InternetAddress;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    add-int/lit8 v3, v3, 0x1

    aput-object v0, p2, v2

    const/4 v4, 0x1

    :goto_4a
    if-nez v4, :cond_51

    aget-object v4, p2, v2

    invoke-virtual {p1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f
.end method

.method private getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, ","

    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return-object p1

    :cond_a
    iget-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    invoke-static {p1, v0}, Ljavax/mail/internet/InternetAddress;->parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object p1

    return-object p1
.end method

.method private getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    sget-object v0, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    if-ne p1, v0, :cond_7

    const-string p1, "To"

    return-object p1

    :cond_7
    sget-object v0, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    if-ne p1, v0, :cond_e

    const-string p1, "Cc"

    return-object p1

    :cond_e
    sget-object v0, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    if-ne p1, v0, :cond_15

    const-string p1, "Bcc"

    return-object p1

    :cond_15
    sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    if-ne p1, v0, :cond_1c

    const-string p1, "Newsgroups"

    return-object p1

    :cond_1c
    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "Invalid Recipient Type"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initStrict()V
    .registers 3

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    const-string v1, "mail.mime.address.strict"

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    const/4 v0, 0x1

    :goto_19
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    :cond_1b
    return-void
.end method

.method private setAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-static {p2}, Ljavax/mail/internet/InternetAddress;->toString([Ljavax/mail/Address;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_a

    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addFrom([Ljavax/mail/Address;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "From"

    invoke-direct {p0, v0, p1}, Ljavax/mail/internet/MimeMessage;->addAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V

    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addHeaderLine(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->addHeaderLine(Ljava/lang/String;)V

    return-void
.end method

.method public addRecipients(Ljavax/mail/Message$RecipientType;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    if-ne p1, v0, :cond_12

    if-eqz p2, :cond_1d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_1d

    const-string p1, "Newsgroups"

    invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;->addAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V

    :cond_1d
    return-void
.end method

.method public addRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    if-ne p1, v0, :cond_10

    invoke-static {p2}, Ljavax/mail/internet/NewsAddress;->toString([Ljavax/mail/Address;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_17

    const-string p2, "Newsgroups"

    invoke-virtual {p0, p2, p1}, Ljavax/mail/internet/MimeMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;->addAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V

    :cond_17
    return-void
.end method

.method protected createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0, p1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected createMimeMessage(Ljavax/mail/Session;)Ljavax/mail/internet/MimeMessage;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v0, p1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    return-object v0
.end method

.method public getAllHeaderLines()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAllHeaders()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAllRecipients()[Ljavax/mail/Address;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-super {p0}, Ljavax/mail/Message;->getAllRecipients()[Ljavax/mail/Address;

    move-result-object v0

    sget-object v1, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v1

    if-nez v1, :cond_d

    return-object v0

    :cond_d
    if-nez v0, :cond_10

    return-object v1

    :cond_10
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljavax/mail/Address;

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public getContent()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;

    return-object v0

    :cond_7
    :try_start_7
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getContent()Ljava/lang/Object;

    move-result-object v0
    :try_end_f
    .catch Lcom/sun/mail/util/FolderClosedIOException; {:try_start_7 .. :try_end_f} :catch_31
    .catch Lcom/sun/mail/util/MessageRemovedIOException; {:try_start_7 .. :try_end_f} :catch_26

    sget-boolean v1, Ljavax/mail/internet/MimeBodyPart;->cacheMultipart:Z

    if-eqz v1, :cond_25

    instance-of v1, v0, Ljavax/mail/Multipart;

    if-nez v1, :cond_1b

    instance-of v1, v0, Ljavax/mail/Message;

    if-eqz v1, :cond_25

    :cond_1b
    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-nez v1, :cond_23

    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    if-eqz v1, :cond_25

    :cond_23
    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;

    :cond_25
    return-object v0

    :catch_26
    move-exception v0

    new-instance v1, Ljavax/mail/MessageRemovedException;

    invoke-virtual {v0}, Lcom/sun/mail/util/MessageRemovedIOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_31
    move-exception v0

    new-instance v1, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/util/FolderClosedIOException;->getFolder()Ljavax/mail/Folder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sun/mail/util/FolderClosedIOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1
.end method

.method public getContentID()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Content-Id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLanguage()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getContentLanguage(Ljavax/mail/internet/MimePart;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentMD5()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Content-MD5"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentStream()Ljava/io/InputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    if-eqz v0, :cond_11

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    const-wide/16 v1, 0x0

    const-wide/16 v3, -0x1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_11
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-eqz v0, :cond_1d

    new-instance v0, Ljavax/mail/util/SharedByteArrayInputStream;

    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    invoke-direct {v0, v1}, Ljavax/mail/util/SharedByteArrayInputStream;-><init>([B)V

    return-object v0

    :cond_1d
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "No content"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Content-Type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, "text/plain"

    :cond_b
    return-object v0
.end method

.method public declared-synchronized getDataHandler()Ljavax/activation/DataHandler;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;

    if-nez v0, :cond_11

    new-instance v0, Ljavax/activation/DataHandler;

    new-instance v1, Ljavax/mail/internet/MimePartDataSource;

    invoke-direct {v1, p0}, Ljavax/mail/internet/MimePartDataSource;-><init>(Ljavax/mail/internet/MimePart;)V

    invoke-direct {v0, v1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;

    :cond_11
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getDescription(Ljavax/mail/internet/MimePart;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisposition()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getDisposition(Ljavax/mail/internet/MimePart;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getEncoding(Ljavax/mail/internet/MimePart;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getFileName(Ljavax/mail/internet/MimePart;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getFlags()Ljavax/mail/Flags;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Flags;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFrom()[Ljavax/mail/Address;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "From"

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMessage;->getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "Sender"

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMessage;->getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getLineCount()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, -0x1

    return v0
.end method

.method public getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1
.end method

.method public getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1
.end method

.method public getMessageID()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Message-ID"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1
.end method

.method public getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1
.end method

.method public getRawInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getReceivedDate()Ljava/util/Date;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    if-ne p1, v0, :cond_15

    const-string p1, "Newsgroups"

    const-string v0, ","

    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_10

    const/4 p1, 0x0

    return-object p1

    :cond_10
    invoke-static {p1}, Ljavax/mail/internet/NewsAddress;->parse(Ljava/lang/String;)[Ljavax/mail/internet/NewsAddress;

    move-result-object p1

    return-object p1

    :cond_15
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;

    move-result-object p1

    return-object p1
.end method

.method public getReplyTo()[Ljavax/mail/Address;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Reply-To"

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMessage;->getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getFrom()[Ljavax/mail/Address;

    move-result-object v0

    :cond_c
    return-object v0
.end method

.method public getSender()Ljavax/mail/Address;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Sender"

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMessage;->getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;

    move-result-object v0

    if-eqz v0, :cond_10

    array-length v1, v0

    if-nez v1, :cond_c

    goto :goto_10

    :cond_c
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_10
    :goto_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSentDate()Ljava/util/Date;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Date"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_9
    sget-object v2, Ljavax/mail/internet/MimeMessage;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    monitor-enter v2
    :try_end_c
    .catch Ljava/text/ParseException; {:try_start_9 .. :try_end_c} :catch_17

    :try_start_c
    sget-object v3, Ljavax/mail/internet/MimeMessage;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    invoke-virtual {v3, v0}, Ljavax/mail/internet/MailDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    monitor-exit v2

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    :try_start_16
    throw v0
    :try_end_17
    .catch Ljava/text/ParseException; {:try_start_16 .. :try_end_17} :catch_17

    :catch_17
    :cond_17
    return-object v1
.end method

.method public getSize()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-eqz v0, :cond_8

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    array-length v0, v0

    return v0

    :cond_8
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    if-eqz v0, :cond_15

    :try_start_c
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_12} :catch_15

    if-lez v0, :cond_15

    return v0

    :catch_15
    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Subject"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    :try_start_a
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_12} :catch_13

    return-object v1

    :catch_13
    return-object v0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->isMimeType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized isSet(Ljavax/mail/Flags$Flag;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0, p1}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags$Flag;)Z

    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected parse(Ljava/io/InputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    instance-of v0, p1, Ljava/io/ByteArrayInputStream;

    if-nez v0, :cond_12

    instance-of v0, p1, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_12

    instance-of v0, p1, Ljavax/mail/internet/SharedInputStream;

    if-nez v0, :cond_12

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    :cond_12
    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMessage;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    instance-of v0, p1, Ljavax/mail/internet/SharedInputStream;

    if-eqz v0, :cond_2b

    check-cast p1, Ljavax/mail/internet/SharedInputStream;

    invoke-interface {p1}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    goto :goto_31

    :cond_2b
    :try_start_2b
    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/io/InputStream;)[B

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/internet/MimeMessage;->content:[B
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_31} :catch_35

    :goto_31
    const/4 p1, 0x0

    iput-boolean p1, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    return-void

    :catch_35
    move-exception p1

    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "IOException"

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->removeHeader(Ljava/lang/String;)V

    return-void
.end method

.method public reply(Z)Ljavax/mail/Message;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->createMimeMessage(Ljavax/mail/Session;)Ljavax/mail/internet/MimeMessage;

    move-result-object v0

    const-string v1, "Subject"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "Re: "

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_2a

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Re: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2a
    const-string v3, "Subject"

    invoke-virtual {v0, v3, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getReplyTo()[Ljavax/mail/Address;

    move-result-object v1

    sget-object v3, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v0, v3, v1}, Ljavax/mail/internet/MimeMessage;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    const/4 v3, 0x1

    if-eqz p1, :cond_bd

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iget-object v4, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    invoke-static {v4}, Ljavax/mail/internet/InternetAddress;->getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;

    move-result-object v4

    if-eqz v4, :cond_4b

    invoke-virtual {p1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4b
    iget-object v4, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    if-eqz v4, :cond_58

    iget-object v4, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    const-string v5, "mail.alternates"

    invoke-virtual {v4, v5}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_59

    :cond_58
    move-object v4, v2

    :goto_59
    const/4 v5, 0x0

    if-eqz v4, :cond_63

    invoke-static {v4, v5}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Ljavax/mail/internet/MimeMessage;->eliminateDuplicates(Ljava/util/Vector;[Ljavax/mail/Address;)[Ljavax/mail/Address;

    :cond_63
    iget-object v4, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    if-eqz v4, :cond_70

    iget-object v4, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    const-string v6, "mail.replyallcc"

    invoke-virtual {v4, v6}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_71

    :cond_70
    move-object v4, v2

    :goto_71
    if-eqz v4, :cond_7c

    const-string v6, "true"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7c

    const/4 v5, 0x1

    :cond_7c
    invoke-direct {p0, p1, v1}, Ljavax/mail/internet/MimeMessage;->eliminateDuplicates(Ljava/util/Vector;[Ljavax/mail/Address;)[Ljavax/mail/Address;

    sget-object v1, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Ljavax/mail/internet/MimeMessage;->eliminateDuplicates(Ljava/util/Vector;[Ljavax/mail/Address;)[Ljavax/mail/Address;

    move-result-object v1

    if-eqz v1, :cond_99

    array-length v4, v1

    if-lez v4, :cond_99

    if-eqz v5, :cond_96

    sget-object v4, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    :goto_92
    invoke-virtual {v0, v4, v1}, Ljavax/mail/internet/MimeMessage;->addRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    goto :goto_99

    :cond_96
    sget-object v4, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    goto :goto_92

    :cond_99
    :goto_99
    sget-object v1, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Ljavax/mail/internet/MimeMessage;->eliminateDuplicates(Ljava/util/Vector;[Ljavax/mail/Address;)[Ljavax/mail/Address;

    move-result-object p1

    if-eqz p1, :cond_ad

    array-length v1, p1

    if-lez v1, :cond_ad

    sget-object v1, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v0, v1, p1}, Ljavax/mail/internet/MimeMessage;->addRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    :cond_ad
    sget-object p1, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object p1

    if-eqz p1, :cond_bd

    array-length v1, p1

    if-lez v1, :cond_bd

    sget-object v1, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    invoke-virtual {v0, v1, p1}, Ljavax/mail/internet/MimeMessage;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    :cond_bd
    const-string p1, "Message-Id"

    invoke-virtual {p0, p1, v2}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_ca

    const-string v1, "In-Reply-To"

    invoke-virtual {v0, v1, p1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ca
    const-string v1, "References"

    const-string v2, " "

    invoke-virtual {p0, v1, v2}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_dc

    const-string v1, "In-Reply-To"

    const-string v2, " "

    invoke-virtual {p0, v1, v2}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_dc
    if-eqz p1, :cond_fa

    if-eqz v1, :cond_fb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_fb

    :cond_fa
    move-object p1, v1

    :cond_fb
    :goto_fb
    if-eqz p1, :cond_108

    const-string v1, "References"

    const/16 v2, 0xc

    invoke-static {v2, p1}, Ljavax/mail/internet/MimeUtility;->fold(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_108
    :try_start_108
    sget-object p1, Ljavax/mail/internet/MimeMessage;->answeredFlag:Ljavax/mail/Flags;

    invoke-virtual {p0, p1, v3}, Ljavax/mail/internet/MimeMessage;->setFlags(Ljavax/mail/Flags;Z)V
    :try_end_10d
    .catch Ljavax/mail/MessagingException; {:try_start_108 .. :try_end_10d} :catch_10d

    :catch_10d
    return-object v0
.end method

.method public saveChanges()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->updateHeaders()V

    return-void
.end method

.method public setContent(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    instance-of v0, p1, Ljavax/mail/Multipart;

    if-eqz v0, :cond_a

    check-cast p1, Ljavax/mail/Multipart;

    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMessage;->setContent(Ljavax/mail/Multipart;)V

    return-void

    :cond_a
    new-instance v0, Ljavax/activation/DataHandler;

    invoke-direct {v0, p1, p2}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->setDataHandler(Ljavax/activation/DataHandler;)V

    return-void
.end method

.method public setContent(Ljavax/mail/Multipart;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Ljavax/activation/DataHandler;

    invoke-virtual {p1}, Ljavax/mail/Multipart;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->setDataHandler(Ljavax/activation/DataHandler;)V

    invoke-virtual {p1, p0}, Ljavax/mail/Multipart;->setParent(Ljavax/mail/Part;)V

    return-void
.end method

.method public setContentID(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    if-nez p1, :cond_8

    const-string p1, "Content-ID"

    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    return-void

    :cond_8
    const-string v0, "Content-ID"

    invoke-virtual {p0, v0, p1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setContentLanguage([Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setContentLanguage(Ljavax/mail/internet/MimePart;[Ljava/lang/String;)V

    return-void
.end method

.method public setContentMD5(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Content-MD5"

    invoke-virtual {p0, v0, p1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setDataHandler(Ljavax/activation/DataHandler;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;

    const/4 p1, 0x0

    iput-object p1, p0, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;

    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->invalidateContentHeaders(Ljavax/mail/internet/MimePart;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->setDescription(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDescription(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Ljavax/mail/internet/MimeBodyPart;->setDescription(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDisposition(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setDisposition(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setFileName(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setFlags(Ljavax/mail/Flags;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_c

    :try_start_3
    iget-object p2, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    invoke-virtual {p2, p1}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    goto :goto_13

    :cond_c
    :try_start_c
    iget-object p2, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    invoke-virtual {p2, p1}, Ljavax/mail/Flags;->remove(Ljavax/mail/Flags;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_a

    monitor-exit p0

    return-void

    :goto_13
    monitor-exit p0

    throw p1
.end method

.method public setFrom()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->setFrom(Ljavax/mail/Address;)V

    return-void

    :cond_c
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "No From address"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFrom(Ljavax/mail/Address;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    if-nez p1, :cond_8

    const-string p1, "From"

    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    return-void

    :cond_8
    const-string v0, "From"

    invoke-virtual {p1}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRecipients(Ljavax/mail/Message$RecipientType;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    if-ne p1, v0, :cond_19

    if-eqz p2, :cond_13

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_d

    goto :goto_13

    :cond_d
    const-string p1, "Newsgroups"

    invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    :goto_13
    const-string p1, "Newsgroups"

    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    return-void

    :cond_19
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;->setAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V

    return-void
.end method

.method public setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    if-ne p1, v0, :cond_1a

    if-eqz p2, :cond_14

    array-length p1, p2

    if-nez p1, :cond_a

    goto :goto_14

    :cond_a
    const-string p1, "Newsgroups"

    invoke-static {p2}, Ljavax/mail/internet/NewsAddress;->toString([Ljavax/mail/Address;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    :goto_14
    const-string p1, "Newsgroups"

    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    return-void

    :cond_1a
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;->setAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V

    return-void
.end method

.method public setReplyTo([Ljavax/mail/Address;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Reply-To"

    invoke-direct {p0, v0, p1}, Ljavax/mail/internet/MimeMessage;->setAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V

    return-void
.end method

.method public setSender(Ljavax/mail/Address;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    if-nez p1, :cond_8

    const-string p1, "Sender"

    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    return-void

    :cond_8
    const-string v0, "Sender"

    invoke-virtual {p1}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSentDate(Ljava/util/Date;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    if-nez p1, :cond_8

    const-string p1, "Date"

    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    return-void

    :cond_8
    sget-object v0, Ljavax/mail/internet/MimeMessage;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    monitor-enter v0

    :try_start_b
    const-string v1, "Date"

    sget-object v2, Ljavax/mail/internet/MimeMessage;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    invoke-virtual {v2, p1}, Ljavax/mail/internet/MailDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public setSubject(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSubject(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    if-nez p1, :cond_8

    const-string p1, "Subject"

    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    return-void

    :cond_8
    :try_start_8
    const-string v0, "Subject"

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-static {p1, p2, v2}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ljavax/mail/internet/MimeUtility;->fold(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p1

    new-instance p2, Ljavax/mail/MessagingException;

    const-string v0, "Encoding error"

    invoke-direct {p2, v0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "plain"

    invoke-static {p0, p1, p2, v0}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected updateHeaders()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->updateHeaders(Ljavax/mail/internet/MimePart;)V

    const-string v0, "MIME-Version"

    const-string v1, "1.0"

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->updateMessageID()V

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;

    if-eqz v0, :cond_2e

    new-instance v0, Ljavax/activation/DataHandler;

    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;

    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    if-eqz v1, :cond_2c

    :try_start_27
    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2c} :catch_2c

    :catch_2c
    :cond_2c
    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    :cond_2e
    return-void
.end method

.method protected updateMessageID()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Message-ID"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    invoke-static {v2}, Ljavax/mail/internet/UniqueValue;->getUniqueMessageIDValue(Ljavax/mail/Session;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;[Ljava/lang/String;)V

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;[Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->saveChanges()V

    :cond_7
    iget-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    if-eqz v0, :cond_f

    invoke-static {p0, p1, p2}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljavax/mail/internet/MimePart;Ljava/io/OutputStream;[Ljava/lang/String;)V

    return-void

    :cond_f
    invoke-virtual {p0, p2}, Ljavax/mail/internet/MimeMessage;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p2

    new-instance v0, Lcom/sun/mail/util/LineOutputStream;

    invoke-direct {v0, p1}, Lcom/sun/mail/util/LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    :goto_18
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_45

    invoke-virtual {v0}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    iget-object p2, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-nez p2, :cond_3c

    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getContentStream()Ljava/io/InputStream;

    move-result-object p2

    const/16 v0, 0x2000

    new-array v0, v0, [B

    :goto_2d
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gtz v1, :cond_37

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    goto :goto_41

    :cond_37
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2d

    :cond_3c
    iget-object p2, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    :goto_41
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void

    :cond_45
    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V

    goto :goto_18
.end method
