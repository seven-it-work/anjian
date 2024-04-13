.class public Lcom/sun/mail/imap/IMAPBodyPart;
.super Ljavax/mail/internet/MimeBodyPart;


# instance fields
.field private bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

.field private description:Ljava/lang/String;

.field private headersLoaded:Z

.field private message:Lcom/sun/mail/imap/IMAPMessage;

.field private sectionId:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;Ljava/lang/String;Lcom/sun/mail/imap/IMAPMessage;)V
    .registers 5

    invoke-direct {p0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headersLoaded:Z

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iput-object p2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->sectionId:Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    new-instance p2, Ljavax/mail/internet/ContentType;

    iget-object p3, p1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    iget-object v0, p1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    iget-object p1, p1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    invoke-direct {p2, p3, v0, p1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    invoke-virtual {p2}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->type:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized loadHeaders()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headersLoaded:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d3

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_12

    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0}, Ljavax/mail/internet/InternetHeaders;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    :cond_12
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_d3

    :try_start_19
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v2

    if-eqz v2, :cond_66

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPBodyPart;->sectionId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".MIME"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v1

    if-nez v1, :cond_52

    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Failed to fetch headers"

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_52
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/BODY;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v1

    if-nez v1, :cond_60

    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Failed to fetch headers"

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_60
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v2, v1}, Ljavax/mail/internet/InternetHeaders;->load(Ljava/io/InputStream;)V

    goto :goto_ad

    :cond_66
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    const-string v2, "Content-Type"

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPBodyPart;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    const-string v2, "Content-Transfer-Encoding"

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v3, v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    if-eqz v1, :cond_8b

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    const-string v2, "Content-Description"

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v3, v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8b
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->id:Ljava/lang/String;

    if-eqz v1, :cond_9c

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    const-string v2, "Content-ID"

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v3, v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9c
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->md5:Ljava/lang/String;

    if-eqz v1, :cond_ad

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    const-string v2, "Content-MD5"

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v3, v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->md5:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ad
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_19 .. :try_end_ad} :catch_c0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_19 .. :try_end_ad} :catch_b5
    .catchall {:try_start_19 .. :try_end_ad} :catchall_b3

    :cond_ad
    :goto_ad
    :try_start_ad
    monitor-exit v0
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_b3

    const/4 v0, 0x1

    :try_start_af
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headersLoaded:Z
    :try_end_b1
    .catchall {:try_start_af .. :try_end_b1} :catchall_d3

    monitor-exit p0

    return-void

    :catchall_b3
    move-exception v1

    goto :goto_d1

    :catch_b5
    move-exception v1

    :try_start_b6
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_c0
    move-exception v1

    new-instance v2, Ljavax/mail/FolderClosedException;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getFolder()Ljavax/mail/Folder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    :goto_d1
    monitor-exit v0
    :try_end_d2
    .catchall {:try_start_b6 .. :try_end_d2} :catchall_b3

    :try_start_d2
    throw v1
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d3

    :catchall_d3
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/IllegalWriteException;

    const-string p2, "IMAPBodyPart is read-only"

    invoke-direct {p1, p2}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addHeaderLine(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/IllegalWriteException;

    const-string v0, "IMAPBodyPart is read-only"

    invoke-direct {p1, v0}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAllHeaderLines()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPBodyPart;->loadHeaders()V

    invoke-super {p0}, Ljavax/mail/internet/MimeBodyPart;->getAllHeaderLines()Ljava/util/Enumeration;

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

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPBodyPart;->loadHeaders()V

    invoke-super {p0}, Ljavax/mail/internet/MimeBodyPart;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getContentID()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getContentMD5()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->md5:Ljava/lang/String;

    return-object v0
.end method

.method protected getContentStream()Ljava/io/InputStream;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getPeek()Z

    move-result v0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_d
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getFetchBlockSize()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_36

    new-instance v2, Lcom/sun/mail/imap/IMAPInputStream;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPBodyPart;->sectionId:Ljava/lang/String;

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget v5, v5, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/sun/mail/imap/IMAPInputStream;-><init>(Lcom/sun/mail/imap/IMAPMessage;Ljava/lang/String;IZ)V
    :try_end_34
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_d .. :try_end_34} :catch_6c
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_d .. :try_end_34} :catch_61
    .catchall {:try_start_d .. :try_end_34} :catchall_5f

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_5f

    return-object v2

    :cond_36
    :try_start_36
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v3

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->sectionId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    goto :goto_4b

    :cond_45
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->sectionId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    :goto_4b
    if-eqz v0, :cond_52

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BODY;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v0
    :try_end_51
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_36 .. :try_end_51} :catch_6c
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_36 .. :try_end_51} :catch_61
    .catchall {:try_start_36 .. :try_end_51} :catchall_5f

    goto :goto_53

    :cond_52
    const/4 v0, 0x0

    :goto_53
    :try_start_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_5f

    if-nez v0, :cond_5e

    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "No content"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5e
    return-object v0

    :catchall_5f
    move-exception v0

    goto :goto_7d

    :catch_61
    move-exception v0

    :try_start_62
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_6c
    move-exception v0

    new-instance v2, Ljavax/mail/FolderClosedException;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getFolder()Ljavax/mail/Folder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    :goto_7d
    monitor-exit v1
    :try_end_7e
    .catchall {:try_start_62 .. :try_end_7e} :catchall_5f

    throw v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->type:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getDataHandler()Ljavax/activation/DataHandler;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->dh:Ljavax/activation/DataHandler;

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->isMulti()Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Ljavax/activation/DataHandler;

    new-instance v1, Lcom/sun/mail/imap/IMAPMultipartDataSource;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v2, v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPBodyPart;->sectionId:Ljava/lang/String;

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/sun/mail/imap/IMAPMultipartDataSource;-><init>(Ljavax/mail/internet/MimePart;[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;Ljava/lang/String;Lcom/sun/mail/imap/IMAPMessage;)V

    invoke-direct {v0, v1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    :goto_1f
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->dh:Ljavax/activation/DataHandler;

    goto :goto_4e

    :cond_22
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->isNested()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->isREV1()Z

    move-result v0

    if-eqz v0, :cond_4e

    new-instance v0, Ljavax/activation/DataHandler;

    new-instance v1, Lcom/sun/mail/imap/IMAPNestedMessage;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v3, v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v4, v4, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPBodyPart;->sectionId:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/mail/imap/IMAPNestedMessage;-><init>(Lcom/sun/mail/imap/IMAPMessage;Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;Lcom/sun/mail/imap/protocol/ENVELOPE;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->type:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1f

    :cond_4e
    :goto_4e
    invoke-super {p0}, Ljavax/mail/internet/MimeBodyPart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_54

    monitor-exit p0

    return-object v0

    :catchall_54
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

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->description:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->description:Ljava/lang/String;

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    if-nez v0, :cond_f

    const/4 v0, 0x0

    return-object v0

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->description:Ljava/lang/String;
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_19} :catch_1a

    goto :goto_20

    :catch_1a
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->description:Ljava/lang/String;

    :goto_20
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDisposition()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    const-string v1, "filename"

    invoke-virtual {v0, v1}, Ljavax/mail/internet/ParameterList;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-nez v0, :cond_24

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    if-eqz v1, :cond_24

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljavax/mail/internet/ParameterList;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_24
    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPBodyPart;->loadHeaders()V

    invoke-super {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLineCount()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    return v0
.end method

.method public getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPBodyPart;->loadHeaders()V

    invoke-super {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1
.end method

.method public getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPBodyPart;->loadHeaders()V

    invoke-super {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1
.end method

.method public getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPBodyPart;->loadHeaders()V

    invoke-super {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1
.end method

.method public getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPBodyPart;->loadHeaders()V

    invoke-super {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1
.end method

.method public getSize()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    return v0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/IllegalWriteException;

    const-string v0, "IMAPBodyPart is read-only"

    invoke-direct {p1, v0}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setContent(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/IllegalWriteException;

    const-string p2, "IMAPBodyPart is read-only"

    invoke-direct {p1, p2}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setContent(Ljavax/mail/Multipart;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/IllegalWriteException;

    const-string v0, "IMAPBodyPart is read-only"

    invoke-direct {p1, v0}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setContentMD5(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/IllegalWriteException;

    const-string v0, "IMAPBodyPart is read-only"

    invoke-direct {p1, v0}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDataHandler(Ljavax/activation/DataHandler;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/IllegalWriteException;

    const-string v0, "IMAPBodyPart is read-only"

    invoke-direct {p1, v0}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDescription(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/IllegalWriteException;

    const-string p2, "IMAPBodyPart is read-only"

    invoke-direct {p1, p2}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDisposition(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/IllegalWriteException;

    const-string v0, "IMAPBodyPart is read-only"

    invoke-direct {p1, v0}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFileName(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/IllegalWriteException;

    const-string v0, "IMAPBodyPart is read-only"

    invoke-direct {p1, v0}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/IllegalWriteException;

    const-string p2, "IMAPBodyPart is read-only"

    invoke-direct {p1, p2}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected updateHeaders()V
    .registers 1

    return-void
.end method
