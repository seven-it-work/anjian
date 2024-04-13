.class public Lcom/sun/mail/handlers/multipart_mixed;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/activation/DataContentHandler;


# instance fields
.field private myDF:Ljavax/activation/ActivationDataFlavor;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljavax/activation/ActivationDataFlavor;

    const-class v1, Ljavax/mail/internet/MimeMultipart;

    const-string v2, "multipart/mixed"

    const-string v3, "Multipart"

    invoke-direct {v0, v1, v2, v3}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/mail/handlers/multipart_mixed;->myDF:Ljavax/activation/ActivationDataFlavor;

    return-void
.end method


# virtual methods
.method public getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v0, p1}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljavax/activation/DataSource;)V
    :try_end_5
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Exception while constructing MimeMultipart"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method public getTransferData(Lmyjava/awt/datatransfer/DataFlavor;Ljavax/activation/DataSource;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/mail/handlers/multipart_mixed;->myDF:Ljavax/activation/ActivationDataFlavor;

    invoke-virtual {v0, p1}, Ljavax/activation/ActivationDataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0, p2}, Lcom/sun/mail/handlers/multipart_mixed;->getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTransferDataFlavors()[Lmyjava/awt/datatransfer/DataFlavor;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Lmyjava/awt/datatransfer/DataFlavor;

    iget-object v1, p0, Lcom/sun/mail/handlers/multipart_mixed;->myDF:Ljavax/activation/ActivationDataFlavor;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of p2, p1, Ljavax/mail/internet/MimeMultipart;

    if-eqz p2, :cond_15

    :try_start_4
    check-cast p1, Ljavax/mail/internet/MimeMultipart;

    invoke-virtual {p1, p3}, Ljavax/mail/internet/MimeMultipart;->writeTo(Ljava/io/OutputStream;)V
    :try_end_9
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljavax/mail/MessagingException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_15
    return-void
.end method
