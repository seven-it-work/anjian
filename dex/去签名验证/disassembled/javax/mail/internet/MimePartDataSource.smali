.class public Ljavax/mail/internet/MimePartDataSource;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/activation/DataSource;
.implements Ljavax/mail/MessageAware;


# static fields
.field private static ignoreMultipartEncoding:Z = true


# instance fields
.field private context:Ljavax/mail/MessageContext;

.field protected part:Ljavax/mail/internet/MimePart;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    :try_start_0
    const-string v0, "mail.mime.ignoremultipartencoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    const/4 v0, 0x1

    :goto_13
    sput-boolean v0, Ljavax/mail/internet/MimePartDataSource;->ignoreMultipartEncoding:Z
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_15} :catch_15

    :catch_15
    return-void
.end method

.method public constructor <init>(Ljavax/mail/internet/MimePart;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    return-void
.end method

.method private static restrictEncoding(Ljava/lang/String;Ljavax/mail/internet/MimePart;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    sget-boolean v0, Ljavax/mail/internet/MimePartDataSource;->ignoreMultipartEncoding:Z

    if-eqz v0, :cond_3d

    if-nez p0, :cond_7

    return-object p0

    :cond_7
    const-string v0, "7bit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "8bit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "binary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    return-object p0

    :cond_20
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_27

    return-object p0

    :cond_27
    :try_start_27
    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-direct {v0, p1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string p1, "multipart/*"

    invoke-virtual {v0, p1}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3c

    const-string p1, "message/*"

    invoke-virtual {v0, p1}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result p1
    :try_end_3a
    .catch Ljavax/mail/internet/ParseException; {:try_start_27 .. :try_end_3a} :catch_3d

    if-eqz p1, :cond_3d

    :cond_3c
    const/4 p0, 0x0

    :catch_3d
    :cond_3d
    return-object p0
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .registers 2

    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    invoke-interface {v0}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    const-string v0, "application/octet-stream"

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    instance-of v0, v0, Ljavax/mail/internet/MimeBodyPart;

    if-eqz v0, :cond_f

    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    check-cast v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeBodyPart;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1d

    :cond_f
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    instance-of v0, v0, Ljavax/mail/internet/MimeMessage;

    if-eqz v0, :cond_30

    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    check-cast v0, Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeMessage;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_1d
    iget-object v1, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    invoke-interface {v1}, Ljavax/mail/internet/MimePart;->getEncoding()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    invoke-static {v1, v2}, Ljavax/mail/internet/MimePartDataSource;->restrictEncoding(Ljava/lang/String;Ljavax/mail/internet/MimePart;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2f

    invoke-static {v0, v1}, Ljavax/mail/internet/MimeUtility;->decode(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_2f
    return-object v0

    :cond_30
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Unknown part"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_38
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_38} :catch_38

    :catch_38
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public declared-synchronized getMessageContext()Ljavax/mail/MessageContext;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->context:Ljavax/mail/MessageContext;

    if-nez v0, :cond_e

    new-instance v0, Ljavax/mail/MessageContext;

    iget-object v1, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    invoke-direct {v0, v1}, Ljavax/mail/MessageContext;-><init>(Ljavax/mail/Part;)V

    iput-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->context:Ljavax/mail/MessageContext;

    :cond_e
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->context:Ljavax/mail/MessageContext;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    instance-of v0, v0, Ljavax/mail/internet/MimeBodyPart;

    if-eqz v0, :cond_f

    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    check-cast v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeBodyPart;->getFileName()Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    :cond_f
    const-string v0, ""

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/UnknownServiceException;

    invoke-direct {v0}, Ljava/net/UnknownServiceException;-><init>()V

    throw v0
.end method
