.class public Lcom/sun/mail/dsn/DeliveryStatus;
.super Ljava/lang/Object;


# static fields
.field private static debug:Z


# instance fields
.field protected messageDSN:Ljavax/mail/internet/InternetHeaders;

.field protected recipientDSN:[Ljavax/mail/internet/InternetHeaders;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    :try_start_0
    const-string v0, "mail.dsn.debug"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    sput-boolean v0, Lcom/sun/mail/dsn/DeliveryStatus;->debug:Z
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_15} :catch_15

    :catch_15
    return-void
.end method

.method public constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0}, Ljavax/mail/internet/InternetHeaders;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/dsn/DeliveryStatus;->messageDSN:Ljavax/mail/internet/InternetHeaders;

    const/4 v0, 0x0

    new-array v0, v0, [Ljavax/mail/internet/InternetHeaders;

    iput-object v0, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0, p1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sun/mail/dsn/DeliveryStatus;->messageDSN:Ljavax/mail/internet/InternetHeaders;

    sget-boolean v0, Lcom/sun/mail/dsn/DeliveryStatus;->debug:Z

    if-eqz v0, :cond_15

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DSN: got messageDSN"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_15
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :goto_1a
    :try_start_1a
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-gtz v1, :cond_21

    goto :goto_40

    :cond_21
    new-instance v1, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v1, p1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    sget-boolean v2, Lcom/sun/mail/dsn/DeliveryStatus;->debug:Z

    if-eqz v2, :cond_31

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "DSN: got recipientDSN"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_31
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_34
    .catch Ljava/io/EOFException; {:try_start_1a .. :try_end_34} :catch_35

    goto :goto_1a

    :catch_35
    sget-boolean p1, Lcom/sun/mail/dsn/DeliveryStatus;->debug:Z

    if-eqz p1, :cond_40

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DSN: got EOFException"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_40
    :goto_40
    sget-boolean p1, Lcom/sun/mail/dsn/DeliveryStatus;->debug:Z

    if-eqz p1, :cond_5b

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DSN: recipientDSN size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5b
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Ljavax/mail/internet/InternetHeaders;

    iput-object p1, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    iget-object p1, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-void
.end method

.method private static writeInternetHeaders(Ljavax/mail/internet/InternetHeaders;Lcom/sun/mail/util/LineOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/mail/internet/InternetHeaders;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object p0

    :goto_4
    :try_start_4
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V
    :try_end_14
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_14} :catch_15

    goto :goto_4

    :catch_15
    move-exception p0

    invoke-virtual {p0}, Ljavax/mail/MessagingException;->getNextException()Ljava/lang/Exception;

    move-result-object p1

    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_21

    check-cast p1, Ljava/io/IOException;

    throw p1

    :cond_21
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception writing headers: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addRecipientDSN(Ljavax/mail/internet/InternetHeaders;)V
    .registers 6

    iget-object v0, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljavax/mail/internet/InternetHeaders;

    iget-object v1, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    iget-object v2, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    iget-object v0, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    iget-object v1, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    return-void
.end method

.method public getMessageDSN()Ljavax/mail/internet/InternetHeaders;
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/dsn/DeliveryStatus;->messageDSN:Ljavax/mail/internet/InternetHeaders;

    return-object v0
.end method

.method public getRecipientDSN(I)Ljavax/mail/internet/InternetHeaders;
    .registers 3

    iget-object v0, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getRecipientDSNCount()I
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    array-length v0, v0

    return v0
.end method

.method public setMessageDSN(Ljavax/mail/internet/InternetHeaders;)V
    .registers 2

    iput-object p1, p0, Lcom/sun/mail/dsn/DeliveryStatus;->messageDSN:Ljavax/mail/internet/InternetHeaders;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeliveryStatus: Reporting-MTA="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/mail/dsn/DeliveryStatus;->messageDSN:Ljavax/mail/internet/InternetHeaders;

    const-string v2, "Reporting-MTA"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", #Recipients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    instance-of v0, p1, Lcom/sun/mail/util/LineOutputStream;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/sun/mail/util/LineOutputStream;

    goto :goto_d

    :cond_7
    new-instance v0, Lcom/sun/mail/util/LineOutputStream;

    invoke-direct {v0, p1}, Lcom/sun/mail/util/LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v0

    :goto_d
    iget-object v0, p0, Lcom/sun/mail/dsn/DeliveryStatus;->messageDSN:Ljavax/mail/internet/InternetHeaders;

    invoke-static {v0, p1}, Lcom/sun/mail/dsn/DeliveryStatus;->writeInternetHeaders(Ljavax/mail/internet/InternetHeaders;Lcom/sun/mail/util/LineOutputStream;)V

    invoke-virtual {p1}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    const/4 v0, 0x0

    :goto_16
    iget-object v1, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    array-length v1, v1

    if-lt v0, v1, :cond_1c

    return-void

    :cond_1c
    iget-object v1, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lcom/sun/mail/dsn/DeliveryStatus;->writeInternetHeaders(Ljavax/mail/internet/InternetHeaders;Lcom/sun/mail/util/LineOutputStream;)V

    invoke-virtual {p1}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_16
.end method
