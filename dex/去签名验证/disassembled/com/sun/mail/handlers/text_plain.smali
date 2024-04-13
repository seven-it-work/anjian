.class public Lcom/sun/mail/handlers/text_plain;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/activation/DataContentHandler;


# static fields
.field private static myDF:Ljavax/activation/ActivationDataFlavor;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljavax/activation/ActivationDataFlavor;

    const-class v1, Ljava/lang/String;

    const-string v2, "text/plain"

    const-string v3, "Text String"

    invoke-direct {v0, v1, v2, v3}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sun/mail/handlers/text_plain;->myDF:Ljavax/activation/ActivationDataFlavor;

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


# virtual methods
.method public getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/mail/handlers/text_plain;->getCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_41

    :try_start_8
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-interface {p1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_11} :catch_42

    const/16 p1, 0x400

    :try_start_13
    new-array p1, p1, [C

    const/4 v0, 0x0

    const/4 v2, 0x0

    :cond_17
    :goto_17
    array-length v3, p1

    sub-int/2addr v3, v2

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_29

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, v0, v2}, Ljava/lang/String;-><init>([CII)V
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_3c

    :try_start_25
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_28

    :catch_28
    return-object v3

    :cond_29
    add-int/2addr v2, v3

    :try_start_2a
    array-length v3, p1

    if-lt v2, v3, :cond_17

    array-length v3, p1

    const/high16 v4, 0x40000

    if-ge v3, v4, :cond_34

    add-int/2addr v3, v3

    goto :goto_35

    :cond_34
    add-int/2addr v3, v4

    :goto_35
    new-array v3, v3, [C

    invoke-static {p1, v0, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3a
    .catchall {:try_start_2a .. :try_end_3a} :catchall_3c

    move-object p1, v3

    goto :goto_17

    :catchall_3c
    move-exception p1

    :try_start_3d
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_40

    :catch_40
    throw p1

    :catch_41
    const/4 v0, 0x0

    :catch_42
    new-instance p1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {p1, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getDF()Ljavax/activation/ActivationDataFlavor;
    .registers 2

    sget-object v0, Lcom/sun/mail/handlers/text_plain;->myDF:Ljavax/activation/ActivationDataFlavor;

    return-object v0
.end method

.method public getTransferData(Lmyjava/awt/datatransfer/DataFlavor;Ljavax/activation/DataSource;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/handlers/text_plain;->getDF()Ljavax/activation/ActivationDataFlavor;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/activation/ActivationDataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p0, p2}, Lcom/sun/mail/handlers/text_plain;->getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTransferDataFlavors()[Lmyjava/awt/datatransfer/DataFlavor;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Lmyjava/awt/datatransfer/DataFlavor;

    invoke-virtual {p0}, Lcom/sun/mail/handlers/text_plain;->getDF()Ljavax/activation/ActivationDataFlavor;

    move-result-object v1

    const/4 v2, 0x0

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

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_30

    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/mail/handlers/text_plain;->getDF()Ljavax/activation/ActivationDataFlavor;

    move-result-object v0

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

    :cond_30
    const/4 v0, 0x0

    :try_start_31
    invoke-direct {p0, p2}, Lcom/sun/mail/handlers/text_plain;->getCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_35
    .catch Ljava/lang/IllegalArgumentException; {:try_start_31 .. :try_end_35} :catch_48

    :try_start_35
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p3, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35 .. :try_end_3a} :catch_49

    check-cast p1, Ljava/lang/String;

    const/4 p2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;II)V

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    return-void

    :catch_48
    move-object p2, v0

    :catch_49
    new-instance p1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {p1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
