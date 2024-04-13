.class public Lcom/sun/mail/dsn/MultipartReport;
.super Ljavax/mail/internet/MimeMultipart;


# instance fields
.field protected constructed:Z


# direct methods
.method public constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "report"

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V

    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V

    iput-boolean v1, p0, Lcom/sun/mail/dsn/MultipartReport;->constructed:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sun/mail/dsn/DeliveryStatus;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "report"

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v1, p0, Lcom/sun/mail/dsn/MultipartReport;->contentType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v1, "report-type"

    const-string v2, "delivery-status"

    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/dsn/MultipartReport;->contentType:Ljava/lang/String;

    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    invoke-virtual {v0, p1}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V

    new-instance p1, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {p1}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    const-string v0, "message/delivery-status"

    invoke-virtual {p1, p2, v0}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V

    iput-boolean p2, p0, Lcom/sun/mail/dsn/MultipartReport;->constructed:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sun/mail/dsn/DeliveryStatus;Ljavax/mail/internet/InternetHeaders;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sun/mail/dsn/MultipartReport;-><init>(Ljava/lang/String;Lcom/sun/mail/dsn/DeliveryStatus;)V

    if-eqz p3, :cond_18

    new-instance p1, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {p1}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    new-instance p2, Lcom/sun/mail/dsn/MessageHeaders;

    invoke-direct {p2, p3}, Lcom/sun/mail/dsn/MessageHeaders;-><init>(Ljavax/mail/internet/InternetHeaders;)V

    const-string p3, "text/rfc822-headers"

    invoke-virtual {p1, p2, p3}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    invoke-direct {p0, p1, p2}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V

    :cond_18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sun/mail/dsn/DeliveryStatus;Ljavax/mail/internet/MimeMessage;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sun/mail/dsn/MultipartReport;-><init>(Ljava/lang/String;Lcom/sun/mail/dsn/DeliveryStatus;)V

    if-eqz p3, :cond_13

    new-instance p1, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {p1}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    const-string p2, "message/rfc822"

    invoke-virtual {p1, p3, p2}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    invoke-direct {p0, p1, p2}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V

    :cond_13
    return-void
.end method

.method public constructor <init>(Ljavax/activation/DataSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljavax/activation/DataSource;)V

    invoke-virtual {p0}, Lcom/sun/mail/dsn/MultipartReport;->parse()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/mail/dsn/MultipartReport;->constructed:Z

    return-void
.end method

.method private declared-synchronized setBodyPart(Ljavax/mail/BodyPart;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/dsn/MultipartReport;->parts:Ljava/util/Vector;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/dsn/MultipartReport;->parts:Ljava/util/Vector;

    :cond_c
    iget-object v0, p0, Lcom/sun/mail/dsn/MultipartReport;->parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p2, v0, :cond_17

    invoke-super {p0, p2}, Ljavax/mail/internet/MimeMultipart;->removeBodyPart(I)V

    :cond_17
    invoke-super {p0, p1, p2}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;I)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/dsn/MultipartReport;->constructed:Z

    if-nez v0, :cond_a

    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_12

    monitor-exit p0

    return-void

    :cond_a
    :try_start_a
    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "Can\'t add body parts to multipart/report 1"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_12

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance p1, Ljavax/mail/MessagingException;

    const-string p2, "Can\'t add body parts to multipart/report 2"

    invoke-direct {p1, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_9

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDeliveryStatus()Lcom/sun/mail/dsn/DeliveryStatus;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/dsn/MultipartReport;->getCount()I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2b

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_b

    monitor-exit p0

    return-object v2

    :cond_b
    const/4 v0, 0x1

    :try_start_c
    invoke-virtual {p0, v0}, Lcom/sun/mail/dsn/MultipartReport;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v0

    const-string v1, "message/delivery-status"

    invoke-virtual {v0, v1}, Ljavax/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z

    move-result v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_2b

    if-nez v1, :cond_1a

    monitor-exit p0

    return-object v2

    :cond_1a
    :try_start_1a
    invoke-virtual {v0}, Ljavax/mail/BodyPart;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/dsn/DeliveryStatus;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_20} :catch_22
    .catchall {:try_start_1a .. :try_end_20} :catchall_2b

    monitor-exit p0

    return-object v0

    :catch_22
    move-exception v0

    :try_start_23
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "IOException getting DeliveryStatus"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getReturnedMessage()Ljavax/mail/internet/MimeMessage;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/dsn/MultipartReport;->getCount()I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_33

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_b

    monitor-exit p0

    return-object v2

    :cond_b
    const/4 v0, 0x2

    :try_start_c
    invoke-virtual {p0, v0}, Lcom/sun/mail/dsn/MultipartReport;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v0

    const-string v1, "message/rfc822"

    invoke-virtual {v0, v1}, Ljavax/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "text/rfc822-headers"

    invoke-virtual {v0, v1}, Ljavax/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_33

    if-nez v1, :cond_22

    monitor-exit p0

    return-object v2

    :cond_22
    :try_start_22
    invoke-virtual {v0}, Ljavax/mail/BodyPart;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/MimeMessage;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_28} :catch_2a
    .catchall {:try_start_22 .. :try_end_28} :catchall_33

    monitor-exit p0

    return-object v0

    :catch_2a
    move-exception v0

    :try_start_2b
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "IOException getting ReturnedMessage"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getText()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/sun/mail/dsn/MultipartReport;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v1

    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Ljavax/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v1}, Ljavax/mail/BodyPart;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_14} :catch_47
    .catchall {:try_start_2 .. :try_end_14} :catchall_45

    monitor-exit p0

    return-object v0

    :cond_16
    :try_start_16
    const-string v2, "multipart/alternative"

    invoke-virtual {v1, v2}, Ljavax/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-virtual {v1}, Ljavax/mail/BodyPart;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/Multipart;

    :goto_24
    invoke-virtual {v1}, Ljavax/mail/Multipart;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_2b

    goto :goto_42

    :cond_2b
    invoke-virtual {v1, v0}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v2

    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Ljavax/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-virtual {v2}, Ljavax/mail/BodyPart;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_3d} :catch_47
    .catchall {:try_start_16 .. :try_end_3d} :catchall_45

    monitor-exit p0

    return-object v0

    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_42
    :goto_42
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_45
    move-exception v0

    goto :goto_50

    :catch_47
    move-exception v0

    :try_start_48
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Exception getting text content"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_50
    .catchall {:try_start_48 .. :try_end_50} :catchall_45

    :goto_50
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTextBodyPart()Ljavax/mail/internet/MimeBodyPart;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/sun/mail/dsn/MultipartReport;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/MimeBodyPart;
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeBodyPart(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "Can\'t remove body parts from multipart/report"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeBodyPart(Ljavax/mail/BodyPart;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "Can\'t remove body parts from multipart/report"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized setDeliveryStatus(Lcom/sun/mail/dsn/DeliveryStatus;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    const-string v1, "message/delivery-status"

    invoke-virtual {v0, p1, v1}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-direct {p0, v0, p1}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V

    new-instance p1, Ljavax/mail/internet/ContentType;

    iget-object v0, p0, Lcom/sun/mail/dsn/MultipartReport;->contentType:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v0, "report-type"

    const-string v1, "delivery-status"

    invoke-virtual {p1, v0, v1}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/dsn/MultipartReport;->contentType:Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    monitor-exit p0

    return-void

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setReturnedMessage(Ljavax/mail/internet/MimeMessage;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x2

    if-nez p1, :cond_10

    :try_start_4
    iget-object p1, p0, Lcom/sun/mail/dsn/MultipartReport;->parts:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    invoke-super {p0, v0}, Ljavax/mail/internet/MimeMultipart;->removeBodyPart(I)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    goto :goto_27

    :cond_10
    :try_start_10
    new-instance v1, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v1}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    instance-of v2, p1, Lcom/sun/mail/dsn/MessageHeaders;

    if-eqz v2, :cond_1f

    const-string v2, "text/rfc822-headers"

    :goto_1b
    invoke-virtual {v1, p1, v2}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_22

    :cond_1f
    const-string v2, "message/rfc822"

    goto :goto_1b

    :goto_22
    invoke-direct {p0, v1, v0}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_e

    monitor-exit p0

    return-void

    :goto_27
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSubType(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "Can\'t change subtype of MultipartReport"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_9

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setText(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    invoke-virtual {v0, p1}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTextBodyPart(Ljavax/mail/internet/MimeBodyPart;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method
