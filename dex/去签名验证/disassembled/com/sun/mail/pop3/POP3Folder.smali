.class public Lcom/sun/mail/pop3/POP3Folder;
.super Ljavax/mail/Folder;


# instance fields
.field private doneUidl:Z

.field private exists:Z

.field private message_cache:Ljava/util/Vector;

.field private name:Ljava/lang/String;

.field private opened:Z

.field private port:Lcom/sun/mail/pop3/Protocol;

.field private size:I

.field private total:I


# direct methods
.method constructor <init>(Lcom/sun/mail/pop3/POP3Store;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Ljavax/mail/Folder;-><init>(Ljavax/mail/Store;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/mail/pop3/POP3Folder;->exists:Z

    iput-boolean p1, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    iput-boolean p1, p0, Lcom/sun/mail/pop3/POP3Folder;->doneUidl:Z

    iput-object p2, p0, Lcom/sun/mail/pop3/POP3Folder;->name:Ljava/lang/String;

    const-string p1, "INBOX"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_17

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/mail/pop3/POP3Folder;->exists:Z

    :cond_17
    return-void
.end method


# virtual methods
.method public appendMessages([Ljavax/mail/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/MethodNotSupportedException;

    const-string v0, "Append not supported"

    invoke-direct {p1, v0}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method checkClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder is Open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method checkOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder is not Open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method checkReadable()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    goto :goto_10

    :cond_f
    return-void

    :cond_10
    :goto_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder is not Readable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method checkWritable()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    goto :goto_b

    :cond_a
    return-void

    :cond_b
    :goto_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder is not Writable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized close(Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_86

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_7
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v3, Lcom/sun/mail/pop3/POP3Store;

    iget-boolean v3, v3, Lcom/sun/mail/pop3/POP3Store;->rsetBeforeQuit:Z

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v3}, Lcom/sun/mail/pop3/Protocol;->rset()Z

    :cond_14
    if-eqz p1, :cond_4b

    iget p1, p0, Lcom/sun/mail/pop3/POP3Folder;->mode:I

    const/4 v3, 0x2

    if-ne p1, v3, :cond_4b

    const/4 p1, 0x0

    :goto_1c
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt p1, v3, :cond_25

    goto :goto_4b

    :cond_25
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/mail/pop3/POP3Message;

    if-eqz v3, :cond_48

    sget-object v4, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v3, v4}, Lcom/sun/mail/pop3/POP3Message;->isSet(Ljavax/mail/Flags$Flag;)Z

    move-result v3
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_35} :catch_74
    .catchall {:try_start_7 .. :try_end_35} :catchall_62

    if-eqz v3, :cond_48

    :try_start_37
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lcom/sun/mail/pop3/Protocol;->dele(I)Z
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3e} :catch_3f
    .catchall {:try_start_37 .. :try_end_3e} :catchall_62

    goto :goto_48

    :catch_3f
    move-exception p1

    :try_start_40
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "Exception deleting messages during close"

    invoke-direct {v3, v4, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    :cond_48
    :goto_48
    add-int/lit8 p1, p1, 0x1

    goto :goto_1c

    :cond_4b
    :goto_4b
    iget-object p1, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {p1}, Lcom/sun/mail/pop3/Protocol;->quit()Z
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_50} :catch_74
    .catchall {:try_start_40 .. :try_end_50} :catchall_62

    :try_start_50
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    iget-object p1, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast p1, Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {p1, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Folder;->notifyConnectionListeners(I)V
    :try_end_60
    .catchall {:try_start_50 .. :try_end_60} :catchall_86

    monitor-exit p0

    return-void

    :catchall_62
    move-exception p1

    :try_start_63
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v3, Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v3, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Folder;->notifyConnectionListeners(I)V

    throw p1

    :catch_74
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    iget-object p1, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast p1, Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {p1, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Folder;->notifyConnectionListeners(I)V
    :try_end_84
    .catchall {:try_start_63 .. :try_end_84} :catchall_86

    monitor-exit p0

    return-void

    :catchall_86
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public create(I)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method protected createMessage(Ljavax/mail/Folder;I)Lcom/sun/mail/pop3/POP3Message;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object p1, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast p1, Lcom/sun/mail/pop3/POP3Store;

    iget-object p1, p1, Lcom/sun/mail/pop3/POP3Store;->messageConstructor:Ljava/lang/reflect/Constructor;

    if-eqz p1, :cond_1d

    const/4 v0, 0x2

    :try_start_9
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/mail/pop3/POP3Message;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1c} :catch_1d

    goto :goto_1e

    :catch_1d
    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    if-nez p1, :cond_25

    new-instance p1, Lcom/sun/mail/pop3/POP3Message;

    invoke-direct {p1, p0, p2}, Lcom/sun/mail/pop3/POP3Message;-><init>(Ljavax/mail/Folder;I)V

    :cond_25
    return-object p1
.end method

.method public delete(Z)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/MethodNotSupportedException;

    const-string v0, "delete"

    invoke-direct {p1, v0}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public exists()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->exists:Z

    return v0
.end method

.method public expunge()[Ljavax/mail/Message;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "Expunge not supported"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkReadable()V

    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->doneUidl:Z

    const/4 v1, 0x0

    if-nez v0, :cond_55

    sget-object v0, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    invoke-virtual {p2, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_72

    :try_start_19
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v2, v0}, Lcom/sun/mail/pop3/Protocol;->uidl([Ljava/lang/String;)Z

    move-result v2
    :try_end_1f
    .catch Ljava/io/EOFException; {:try_start_19 .. :try_end_1f} :catch_47
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1f} :catch_3e
    .catchall {:try_start_19 .. :try_end_1f} :catchall_72

    if-nez v2, :cond_23

    monitor-exit p0

    return-void

    :cond_23
    const/4 v2, 0x0

    :goto_24
    :try_start_24
    array-length v3, v0

    if-lt v2, v3, :cond_2b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->doneUidl:Z

    goto :goto_55

    :cond_2b
    aget-object v3, v0, v2

    if-eqz v3, :cond_3b

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Lcom/sun/mail/pop3/POP3Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v3

    check-cast v3, Lcom/sun/mail/pop3/POP3Message;

    aget-object v4, v0, v2

    iput-object v4, v3, Lcom/sun/mail/pop3/POP3Message;->uid:Ljava/lang/String;

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :catch_3e
    move-exception p1

    new-instance p2, Ljavax/mail/MessagingException;

    const-string v0, "error getting UIDL"

    invoke-direct {p2, v0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_47
    move-exception p1

    invoke-virtual {p0, v1}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    new-instance p2, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw p2

    :cond_55
    :goto_55
    sget-object v0, Ljavax/mail/FetchProfile$Item;->ENVELOPE:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {p2, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result p2

    if-eqz p2, :cond_70

    :goto_5d
    array-length p2, p1
    :try_end_5e
    .catchall {:try_start_24 .. :try_end_5e} :catchall_72

    if-lt v1, p2, :cond_61

    goto :goto_70

    :cond_61
    :try_start_61
    aget-object p2, p1, v1

    check-cast p2, Lcom/sun/mail/pop3/POP3Message;

    const-string v0, ""

    invoke-virtual {p2, v0}, Lcom/sun/mail/pop3/POP3Message;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    invoke-virtual {p2}, Lcom/sun/mail/pop3/POP3Message;->getSize()I
    :try_end_6d
    .catch Ljavax/mail/MessageRemovedException; {:try_start_61 .. :try_end_6d} :catch_6d
    .catchall {:try_start_61 .. :try_end_6d} :catchall_72

    :catch_6d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    :cond_70
    :goto_70
    monitor-exit p0

    return-void

    :catchall_72
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljavax/mail/Folder;->finalize()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    return-void
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "not a directory"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFullName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getMessage(I)Ljavax/mail/Message;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/pop3/POP3Message;

    if-nez v0, :cond_19

    invoke-virtual {p0, p0, p1}, Lcom/sun/mail/pop3/POP3Folder;->createMessage(Ljavax/mail/Folder;I)Lcom/sun/mail/pop3/POP3Message;

    move-result-object v0

    iget-object p1, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    invoke-virtual {p1, v0, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit p0

    return-object v0

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessageCount()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_8

    const/4 v0, -0x1

    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkReadable()V

    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_f

    monitor-exit p0

    return v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljavax/mail/Folder;
    .registers 3

    new-instance v0, Lcom/sun/mail/pop3/DefaultFolder;

    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/pop3/POP3Store;

    invoke-direct {v0, v1}, Lcom/sun/mail/pop3/DefaultFolder;-><init>(Lcom/sun/mail/pop3/POP3Store;)V

    return-object v0
.end method

.method public getPermanentFlags()Ljavax/mail/Flags;
    .registers 2

    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    return-object v0
.end method

.method getProtocol()Lcom/sun/mail/pop3/Protocol;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    return-object v0
.end method

.method public getSeparator()C
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized getSize()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->size:I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSizes()[I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I

    new-array v0, v0, [I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_63

    const/4 v1, 0x0

    :try_start_9
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v2}, Lcom/sun/mail/pop3/Protocol;->list()Ljava/io/InputStream;

    move-result-object v2
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_f} :catch_58
    .catchall {:try_start_9 .. :try_end_f} :catchall_4a

    :try_start_f
    new-instance v3, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v3, v2}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_59
    .catchall {:try_start_f .. :try_end_14} :catchall_47

    :catch_14
    :cond_14
    :goto_14
    :try_start_14
    invoke-virtual {v3}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_18} :catch_45
    .catchall {:try_start_14 .. :try_end_18} :catchall_43

    if-nez v1, :cond_23

    :try_start_1a
    invoke-virtual {v3}, Lcom/sun/mail/util/LineInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_63

    :catch_1d
    if-eqz v2, :cond_61

    :goto_1f
    :try_start_1f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_61
    .catchall {:try_start_1f .. :try_end_22} :catchall_63

    goto :goto_61

    :cond_23
    :try_start_23
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v1, :cond_14

    iget v5, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I

    if-gt v1, v5, :cond_14

    add-int/lit8 v1, v1, -0x1

    aput v4, v0, v1
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_42} :catch_14
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_42} :catch_45
    .catchall {:try_start_23 .. :try_end_42} :catchall_43

    goto :goto_14

    :catchall_43
    move-exception v0

    goto :goto_4d

    :catch_45
    move-object v1, v3

    goto :goto_59

    :catchall_47
    move-exception v0

    move-object v3, v1

    goto :goto_4d

    :catchall_4a
    move-exception v0

    move-object v2, v1

    move-object v3, v2

    :goto_4d
    if-eqz v3, :cond_52

    :try_start_4f
    invoke-virtual {v3}, Lcom/sun/mail/util/LineInputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_63

    :catch_52
    :cond_52
    if-eqz v2, :cond_57

    :try_start_54
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_63

    :catch_57
    :cond_57
    :try_start_57
    throw v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_63

    :catch_58
    move-object v2, v1

    :catch_59
    :goto_59
    if-eqz v1, :cond_5e

    :try_start_5b
    invoke-virtual {v1}, Lcom/sun/mail/util/LineInputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_63

    :catch_5e
    :cond_5e
    if-eqz v2, :cond_61

    goto :goto_1f

    :catch_61
    :cond_61
    :goto_61
    monitor-exit p0

    return-object v0

    :catchall_63
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized getUID(Ljavax/mail/Message;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    check-cast p1, Lcom/sun/mail/pop3/POP3Message;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_34

    :try_start_6
    iget-object v0, p1, Lcom/sun/mail/pop3/POP3Message;->uid:Ljava/lang/String;

    const-string v1, "UNKNOWN"

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {p1}, Lcom/sun/mail/pop3/POP3Message;->getMessageNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/pop3/Protocol;->uidl(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/mail/pop3/POP3Message;->uid:Ljava/lang/String;

    :cond_18
    iget-object p1, p1, Lcom/sun/mail/pop3/POP3Message;->uid:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_1a} :catch_25
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1a} :catch_1c
    .catchall {:try_start_6 .. :try_end_1a} :catchall_34

    monitor-exit p0

    return-object p1

    :catch_1c
    move-exception p1

    :try_start_1d
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "error getting UIDL"

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_25
    move-exception p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    new-instance v0, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0
    :try_end_34
    .catchall {:try_start_1d .. :try_end_34} :catchall_34

    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public hasNewMessages()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isOpen()Z
    .registers 3

    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    invoke-virtual {v0}, Ljavax/mail/Store;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    :try_start_10
    invoke-virtual {p0, v1}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V
    :try_end_13
    .catch Ljavax/mail/MessagingException; {:try_start_10 .. :try_end_13} :catch_13

    :catch_13
    return v1
.end method

.method public list(Ljava/lang/String;)[Ljavax/mail/Folder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "not a directory"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized listCommand()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->list()Ljava/io/InputStream;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected notifyMessageChangedListeners(ILjavax/mail/Message;)V
    .registers 3

    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->notifyMessageChangedListeners(ILjavax/mail/Message;)V

    return-void
.end method

.method public declared-synchronized open(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkClosed()V

    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->exists:Z

    if-nez v0, :cond_10

    new-instance p1, Ljavax/mail/FolderNotFoundException;

    const-string v0, "folder is not INBOX"

    invoke-direct {p1, p0, v0}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw p1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_74

    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v0, p0}, Lcom/sun/mail/pop3/POP3Store;->getPort(Lcom/sun/mail/pop3/POP3Folder;)Lcom/sun/mail/pop3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->stat()Lcom/sun/mail/pop3/Status;

    move-result-object v0

    iget v1, v0, Lcom/sun/mail/pop3/Status;->total:I

    iput v1, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I

    iget v0, v0, Lcom/sun/mail/pop3/Status;->size:I

    iput v0, p0, Lcom/sun/mail/pop3/POP3Folder;->size:I

    iput p1, p0, Lcom/sun/mail/pop3/POP3Folder;->mode:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_2d} :catch_45
    .catchall {:try_start_10 .. :try_end_2d} :catchall_74

    :try_start_2d
    new-instance v0, Ljava/util/Vector;

    iget v1, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    iget v1, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->doneUidl:Z

    invoke-virtual {p0, p1}, Lcom/sun/mail/pop3/POP3Folder;->notifyConnectionListeners(I)V
    :try_end_43
    .catchall {:try_start_2d .. :try_end_43} :catchall_74

    monitor-exit p0

    return-void

    :catch_45
    move-exception p1

    const/4 v0, 0x0

    :try_start_47
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v1}, Lcom/sun/mail/pop3/Protocol;->quit()Z
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_50} :catch_65
    .catchall {:try_start_47 .. :try_end_50} :catchall_5a

    :cond_50
    :try_start_50
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/pop3/POP3Store;

    :goto_56
    invoke-virtual {v0, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    goto :goto_6c

    :catchall_5a
    move-exception p1

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v0, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    throw p1

    :catch_65
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/pop3/POP3Store;

    goto :goto_56

    :goto_6c
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Open failed"

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
    :try_end_74
    .catchall {:try_start_50 .. :try_end_74} :catchall_74

    :catchall_74
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public renameTo(Ljavax/mail/Folder;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/MethodNotSupportedException;

    const-string v0, "renameTo"

    invoke-direct {p1, v0}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
