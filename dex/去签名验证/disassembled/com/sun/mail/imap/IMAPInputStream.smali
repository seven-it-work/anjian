.class public Lcom/sun/mail/imap/IMAPInputStream;
.super Ljava/io/InputStream;


# static fields
.field private static final slop:I = 0x40


# instance fields
.field private blksize:I

.field private buf:[B

.field private bufcount:I

.field private bufpos:I

.field private max:I

.field private msg:Lcom/sun/mail/imap/IMAPMessage;

.field private peek:Z

.field private pos:I

.field private readbuf:Lcom/sun/mail/iap/ByteArray;

.field private section:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sun/mail/imap/IMAPMessage;Ljava/lang/String;IZ)V
    .registers 5

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    iput-object p2, p0, Lcom/sun/mail/imap/IMAPInputStream;->section:Ljava/lang/String;

    iput p3, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPInputStream;->peek:Z

    const/4 p2, 0x0

    iput p2, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPMessage;->getFetchBlockSize()I

    move-result p1

    iput p1, p0, Lcom/sun/mail/imap/IMAPInputStream;->blksize:I

    return-void
.end method

.method private checkSeen()V
    .registers 4

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->peek:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getFolder()Ljavax/mail/Folder;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljavax/mail/Folder;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    sget-object v2, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v2}, Lcom/sun/mail/imap/IMAPMessage;->isSet(Ljavax/mail/Flags$Flag;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    sget-object v2, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v2, v1}, Lcom/sun/mail/imap/IMAPMessage;->setFlag(Ljavax/mail/Flags$Flag;Z)V
    :try_end_25
    .catch Ljavax/mail/MessagingException; {:try_start_5 .. :try_end_25} :catch_25

    :catch_25
    :cond_25
    return-void
.end method

.method private fill()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_16

    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    if-lt v0, v2, :cond_16

    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->checkSeen()V

    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->readbuf:Lcom/sun/mail/iap/ByteArray;

    return-void

    :cond_16
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->readbuf:Lcom/sun/mail/iap/ByteArray;

    if-nez v0, :cond_25

    new-instance v0, Lcom/sun/mail/iap/ByteArray;

    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->blksize:I

    add-int/lit8 v2, v2, 0x40

    invoke-direct {v0, v2}, Lcom/sun/mail/iap/ByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->readbuf:Lcom/sun/mail/iap/ByteArray;

    :cond_25
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_2c
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v2

    if-eqz v2, :cond_42

    new-instance v1, Lcom/sun/mail/util/MessageRemovedIOException;

    const-string v2, "No content for expunged message"

    invoke-direct {v1, v2}, Lcom/sun/mail/util/MessageRemovedIOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_42
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v4

    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->blksize:I

    iget v5, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    if-eq v5, v1, :cond_5e

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    iget v5, p0, Lcom/sun/mail/imap/IMAPInputStream;->blksize:I

    add-int/2addr v1, v5

    iget v5, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    if-le v1, v5, :cond_5e

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    sub-int/2addr v1, v2

    move v7, v1

    goto :goto_5f

    :cond_5e
    move v7, v2

    :goto_5f
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->peek:Z

    if-eqz v1, :cond_6e

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPInputStream;->section:Ljava/lang/String;

    iget v6, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    iget-object v8, p0, Lcom/sun/mail/imap/IMAPInputStream;->readbuf:Lcom/sun/mail/iap/ByteArray;

    invoke-virtual/range {v3 .. v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;IILcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v1

    goto :goto_78

    :cond_6e
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPInputStream;->section:Ljava/lang/String;

    iget v6, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    iget-object v8, p0, Lcom/sun/mail/imap/IMAPInputStream;->readbuf:Lcom/sun/mail/iap/ByteArray;

    invoke-virtual/range {v3 .. v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;IILcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v1
    :try_end_78
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2c .. :try_end_78} :catch_c0
    .catch Ljavax/mail/FolderClosedException; {:try_start_2c .. :try_end_78} :catch_b1
    .catchall {:try_start_2c .. :try_end_78} :catchall_af

    :goto_78
    if-eqz v1, :cond_a4

    :try_start_7a
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/BODY;->getByteArray()Lcom/sun/mail/iap/ByteArray;

    move-result-object v1

    if-nez v1, :cond_81

    goto :goto_a4

    :cond_81
    monitor-exit v0
    :try_end_82
    .catchall {:try_start_7a .. :try_end_82} :catchall_af

    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    if-nez v0, :cond_89

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->checkSeen()V

    :cond_89
    invoke-virtual {v1}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->buf:[B

    invoke-virtual {v1}, Lcom/sun/mail/iap/ByteArray;->getStart()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    invoke-virtual {v1}, Lcom/sun/mail/iap/ByteArray;->getCount()I

    move-result v0

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    return-void

    :cond_a4
    :goto_a4
    :try_start_a4
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->forceCheckExpunged()V

    new-instance v1, Ljava/io/IOException;

    const-string v2, "No content"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_af
    move-exception v1

    goto :goto_ce

    :catch_b1
    move-exception v1

    new-instance v2, Lcom/sun/mail/util/FolderClosedIOException;

    invoke-virtual {v1}, Ljavax/mail/FolderClosedException;->getFolder()Ljavax/mail/Folder;

    move-result-object v3

    invoke-virtual {v1}, Ljavax/mail/FolderClosedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/sun/mail/util/FolderClosedIOException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    :catch_c0
    move-exception v1

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->forceCheckExpunged()V

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_ce
    monitor-exit v0
    :try_end_cf
    .catchall {:try_start_a4 .. :try_end_cf} :catchall_af

    throw v1
.end method

.method private forceCheckExpunged()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/util/MessageRemovedIOException;,
            Lcom/sun/mail/util/FolderClosedIOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V
    :try_end_10
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_7 .. :try_end_10} :catch_32
    .catch Ljavax/mail/FolderClosedException; {:try_start_7 .. :try_end_10} :catch_23
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7 .. :try_end_10} :catch_13
    .catchall {:try_start_7 .. :try_end_10} :catchall_11

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_43

    :catch_13
    :goto_13
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_11

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Lcom/sun/mail/util/MessageRemovedIOException;

    invoke-direct {v0}, Lcom/sun/mail/util/MessageRemovedIOException;-><init>()V

    throw v0

    :cond_22
    return-void

    :catch_23
    move-exception v1

    :try_start_24
    new-instance v2, Lcom/sun/mail/util/FolderClosedIOException;

    invoke-virtual {v1}, Ljavax/mail/FolderClosedException;->getFolder()Ljavax/mail/Folder;

    move-result-object v3

    invoke-virtual {v1}, Ljavax/mail/FolderClosedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/sun/mail/util/FolderClosedIOException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    :catch_32
    move-exception v1

    new-instance v2, Lcom/sun/mail/util/FolderClosedIOException;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getFolder()Ljavax/mail/Folder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/sun/mail/util/FolderClosedIOException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_24 .. :try_end_44} :catchall_11

    throw v1
.end method


# virtual methods
.method public declared-synchronized available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    if-lt v0, v1, :cond_13

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->fill()V

    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_20

    if-lt v0, v1, :cond_13

    const/4 v0, -0x1

    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->buf:[B

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    aget-byte v0, v0, v1
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_20

    and-int/lit16 v0, v0, 0xff

    goto :goto_11

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sun/mail/imap/IMAPInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public declared-synchronized read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_15

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->fill()V

    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_26

    sub-int/2addr v0, v1

    if-gtz v0, :cond_15

    const/4 p1, -0x1

    monitor-exit p0

    return p1

    :cond_15
    if-ge v0, p3, :cond_18

    move p3, v0

    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->buf:[B

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_26

    monitor-exit p0

    return p3

    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method
