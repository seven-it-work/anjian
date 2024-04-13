.class public Lcom/sun/mail/dsn/text_rfc822headers;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/activation/DataContentHandler;


# static fields
.field private static myDF:Ljavax/activation/ActivationDataFlavor;

.field private static myDFs:Ljavax/activation/ActivationDataFlavor;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljavax/activation/ActivationDataFlavor;

    const-class v1, Lcom/sun/mail/dsn/MessageHeaders;

    const-string v2, "text/rfc822-headers"

    const-string v3, "RFC822 headers"

    invoke-direct {v0, v1, v2, v3}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sun/mail/dsn/text_rfc822headers;->myDF:Ljavax/activation/ActivationDataFlavor;

    new-instance v0, Ljavax/activation/ActivationDataFlavor;

    const-class v1, Ljava/lang/String;

    const-string v2, "text/rfc822-headers"

    const-string v3, "RFC822 headers"

    invoke-direct {v0, v1, v2, v3}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sun/mail/dsn/text_rfc822headers;->myDFs:Ljavax/activation/ActivationDataFlavor;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCharset(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-direct {v0, p1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string p1, "charset"

    invoke-virtual {v0, p1}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_f

    const-string p1, "us-ascii"

    :cond_f
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    return-object p1

    :catch_14
    const/4 p1, 0x0

    return-object p1
.end method

.method private getStringContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/mail/dsn/text_rfc822headers;->getCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_39

    :try_start_8
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-interface {p1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_11} :catch_3a

    const/16 p1, 0x400

    new-array p1, p1, [C

    const/4 v2, 0x0

    const/4 v0, 0x0

    :cond_17
    :goto_17
    array-length v3, p1

    sub-int/2addr v3, v0

    invoke-virtual {v1, p1, v0, v3}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_26

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v2, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_26
    add-int/2addr v0, v3

    array-length v3, p1

    if-lt v0, v3, :cond_17

    array-length v3, p1

    const/high16 v4, 0x40000

    if-ge v3, v4, :cond_31

    add-int/2addr v3, v3

    goto :goto_32

    :cond_31
    add-int/2addr v3, v4

    :goto_32
    new-array v3, v3, [C

    invoke-static {p1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v3

    goto :goto_17

    :catch_39
    const/4 v0, 0x0

    :catch_3a
    new-instance p1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {p1, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/sun/mail/dsn/MessageHeaders;

    invoke-interface {p1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sun/mail/dsn/MessageHeaders;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception creating MessageHeaders: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTransferData(Lmyjava/awt/datatransfer/DataFlavor;Ljavax/activation/DataSource;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/sun/mail/dsn/text_rfc822headers;->myDF:Ljavax/activation/ActivationDataFlavor;

    invoke-virtual {v0, p1}, Ljavax/activation/ActivationDataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p2}, Lcom/sun/mail/dsn/text_rfc822headers;->getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_d
    sget-object v0, Lcom/sun/mail/dsn/text_rfc822headers;->myDFs:Ljavax/activation/ActivationDataFlavor;

    invoke-virtual {v0, p1}, Ljavax/activation/ActivationDataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result p1

    if-eqz p1, :cond_1a

    invoke-direct {p0, p2}, Lcom/sun/mail/dsn/text_rfc822headers;->getStringContent(Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1a
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTransferDataFlavors()[Lmyjava/awt/datatransfer/DataFlavor;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Lmyjava/awt/datatransfer/DataFlavor;

    sget-object v1, Lcom/sun/mail/dsn/text_rfc822headers;->myDF:Ljavax/activation/ActivationDataFlavor;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sun/mail/dsn/text_rfc822headers;->myDFs:Ljavax/activation/ActivationDataFlavor;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/sun/mail/dsn/MessageHeaders;

    if-eqz v0, :cond_2a

    check-cast p1, Lcom/sun/mail/dsn/MessageHeaders;

    :try_start_6
    invoke-virtual {p1, p3}, Lcom/sun/mail/dsn/MessageHeaders;->writeTo(Ljava/io/OutputStream;)V
    :try_end_9
    .catch Ljavax/mail/MessagingException; {:try_start_6 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    invoke-virtual {p1}, Ljavax/mail/MessagingException;->getNextException()Ljava/lang/Exception;

    move-result-object p2

    instance-of p3, p2, Ljava/io/IOException;

    if-eqz p3, :cond_16

    check-cast p2, Ljava/io/IOException;

    throw p2

    :cond_16
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Exception writing headers: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2a
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_58

    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/sun/mail/dsn/text_rfc822headers;->myDFs:Ljavax/activation/ActivationDataFlavor;

    invoke-virtual {v0}, Ljavax/activation/ActivationDataFlavor;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" DataContentHandler requires String object, was given object of type "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_58
    const/4 v0, 0x0

    :try_start_59
    invoke-direct {p0, p2}, Lcom/sun/mail/dsn/text_rfc822headers;->getCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_5d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_59 .. :try_end_5d} :catch_70

    :try_start_5d
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p3, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_62
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5d .. :try_end_62} :catch_71

    check-cast p1, Ljava/lang/String;

    const/4 p2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;II)V

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    return-void

    :catch_70
    move-object p2, v0

    :catch_71
    new-instance p1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {p1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
