.class public abstract Ljavax/mail/Folder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/Folder$TerminatorEvent;
    }
.end annotation


# static fields
.field public static final HOLDS_FOLDERS:I = 0x2

.field public static final HOLDS_MESSAGES:I = 0x1

.field public static final READ_ONLY:I = 0x1

.field public static final READ_WRITE:I = 0x2


# instance fields
.field private volatile connectionListeners:Ljava/util/Vector;

.field private volatile folderListeners:Ljava/util/Vector;

.field private volatile messageChangedListeners:Ljava/util/Vector;

.field private volatile messageCountListeners:Ljava/util/Vector;

.field protected mode:I

.field private q:Ljavax/mail/EventQueue;

.field private qLock:Ljava/lang/Object;

.field protected store:Ljavax/mail/Store;


# direct methods
.method protected constructor <init>(Ljavax/mail/Store;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/Folder;->mode:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    iput-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    iput-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    iput-object v0, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/mail/Folder;->qLock:Ljava/lang/Object;

    iput-object p1, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    return-void
.end method

.method private queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V
    .registers 5

    iget-object v0, p0, Ljavax/mail/Folder;->qLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljavax/mail/Folder;->q:Ljavax/mail/EventQueue;

    if-nez v1, :cond_e

    new-instance v1, Ljavax/mail/EventQueue;

    invoke-direct {v1}, Ljavax/mail/EventQueue;-><init>()V

    iput-object v1, p0, Ljavax/mail/Folder;->q:Ljavax/mail/EventQueue;

    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1b

    invoke-virtual {p2}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Vector;

    iget-object v0, p0, Ljavax/mail/Folder;->q:Ljavax/mail/EventQueue;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/EventQueue;->enqueue(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    return-void

    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method private terminateQueue()V
    .registers 5

    iget-object v0, p0, Ljavax/mail/Folder;->qLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljavax/mail/Folder;->q:Ljavax/mail/EventQueue;

    if-eqz v1, :cond_1d

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->setSize(I)V

    iget-object v2, p0, Ljavax/mail/Folder;->q:Ljavax/mail/EventQueue;

    new-instance v3, Ljavax/mail/Folder$TerminatorEvent;

    invoke-direct {v3}, Ljavax/mail/Folder$TerminatorEvent;-><init>()V

    invoke-virtual {v2, v3, v1}, Ljavax/mail/EventQueue;->enqueue(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    const/4 v1, 0x0

    iput-object v1, p0, Ljavax/mail/Folder;->q:Ljavax/mail/EventQueue;

    :cond_1d
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method


# virtual methods
.method public declared-synchronized addConnectionListener(Ljavax/mail/event/ConnectionListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    :cond_c
    iget-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addFolderListener(Ljavax/mail/event/FolderListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    :cond_c
    iget-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMessageChangedListener(Ljavax/mail/event/MessageChangedListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    :cond_c
    iget-object v0, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMessageCountListener(Ljavax/mail/event/MessageCountListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    :cond_c
    iget-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract appendMessages([Ljavax/mail/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract close(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public copyMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p2}, Ljavax/mail/Folder;->exists()Z

    move-result v0

    if-nez v0, :cond_22

    new-instance p1, Ljavax/mail/FolderNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " does not exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Ljavax/mail/FolderNotFoundException;-><init>(Ljava/lang/String;Ljavax/mail/Folder;)V

    throw p1

    :cond_22
    invoke-virtual {p2, p1}, Ljavax/mail/Folder;->appendMessages([Ljavax/mail/Message;)V

    return-void
.end method

.method public abstract create(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract delete(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract exists()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract expunge()[Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-direct {p0}, Ljavax/mail/Folder;->terminateQueue()V

    return-void
.end method

.method public declared-synchronized getDeletedMessageCount()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/Folder;->isOpen()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_25

    if-nez v0, :cond_a

    const/4 v0, -0x1

    monitor-exit p0

    return v0

    :cond_a
    const/4 v0, 0x0

    :try_start_b
    invoke-virtual {p0}, Ljavax/mail/Folder;->getMessageCount()I

    move-result v1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_25

    const/4 v2, 0x1

    :goto_10
    if-le v2, v1, :cond_14

    monitor-exit p0

    return v0

    :cond_14
    :try_start_14
    invoke-virtual {p0, v2}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v3

    sget-object v4, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v3, v4}, Ljavax/mail/Message;->isSet(Ljavax/mail/Flags$Flag;)Z

    move-result v3
    :try_end_1e
    .catch Ljavax/mail/MessageRemovedException; {:try_start_14 .. :try_end_1e} :catch_22
    .catchall {:try_start_14 .. :try_end_1e} :catchall_25

    if-eqz v3, :cond_22

    add-int/lit8 v0, v0, 0x1

    :catch_22
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getFullName()Ljava/lang/String;
.end method

.method public abstract getMessage(I)Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getMessageCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public declared-synchronized getMessages()[Ljavax/mail/Message;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/Folder;->isOpen()Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-virtual {p0}, Ljavax/mail/Folder;->getMessageCount()I

    move-result v0

    new-array v1, v0, [Ljavax/mail/Message;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_25

    const/4 v2, 0x1

    :goto_16
    if-le v2, v0, :cond_1a

    monitor-exit p0

    return-object v1

    :cond_1a
    add-int/lit8 v3, v2, -0x1

    :try_start_1c
    invoke-virtual {p0, v2}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v4

    aput-object v4, v1, v3
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_25

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessages(II)[Ljavax/mail/Message;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    :try_start_5
    new-array v0, v0, [Ljavax/mail/Message;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_17

    move v1, p1

    :goto_8
    if-le v1, p2, :cond_c

    monitor-exit p0

    return-object v0

    :cond_c
    sub-int v2, v1, p1

    :try_start_e
    invoke-virtual {p0, v1}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_17

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessages([I)[Ljavax/mail/Message;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    array-length v0, p1

    new-array v1, v0, [Ljavax/mail/Message;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_14

    const/4 v2, 0x0

    :goto_5
    if-lt v2, v0, :cond_9

    monitor-exit p0

    return-object v1

    :cond_9
    :try_start_9
    aget v3, p1, v2

    invoke-virtual {p0, v3}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_14

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getMode()I
    .registers 3

    invoke-virtual {p0}, Ljavax/mail/Folder;->isOpen()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget v0, p0, Ljavax/mail/Folder;->mode:I

    return v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public declared-synchronized getNewMessageCount()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/Folder;->isOpen()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_25

    if-nez v0, :cond_a

    const/4 v0, -0x1

    monitor-exit p0

    return v0

    :cond_a
    const/4 v0, 0x0

    :try_start_b
    invoke-virtual {p0}, Ljavax/mail/Folder;->getMessageCount()I

    move-result v1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_25

    const/4 v2, 0x1

    :goto_10
    if-le v2, v1, :cond_14

    monitor-exit p0

    return v0

    :cond_14
    :try_start_14
    invoke-virtual {p0, v2}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v3

    sget-object v4, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    invoke-virtual {v3, v4}, Ljavax/mail/Message;->isSet(Ljavax/mail/Flags$Flag;)Z

    move-result v3
    :try_end_1e
    .catch Ljavax/mail/MessageRemovedException; {:try_start_14 .. :try_end_1e} :catch_22
    .catchall {:try_start_14 .. :try_end_1e} :catchall_25

    if-eqz v3, :cond_22

    add-int/lit8 v0, v0, 0x1

    :catch_22
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract getParent()Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getPermanentFlags()Ljavax/mail/Flags;
.end method

.method public abstract getSeparator()C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public getStore()Ljavax/mail/Store;
    .registers 2

    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    return-object v0
.end method

.method public abstract getType()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public getURLName()Ljavax/mail/URLName;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/mail/Store;->getURLName()Ljavax/mail/URLName;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljavax/mail/Folder;->getSeparator()C

    if-eqz v1, :cond_19

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_19
    new-instance v1, Ljavax/mail/URLName;

    invoke-virtual {v0}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljavax/mail/URLName;->getPort()I

    move-result v6

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljavax/mail/URLName;->getUsername()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public declared-synchronized getUnreadMessageCount()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/Folder;->isOpen()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_25

    if-nez v0, :cond_a

    const/4 v0, -0x1

    monitor-exit p0

    return v0

    :cond_a
    const/4 v0, 0x0

    :try_start_b
    invoke-virtual {p0}, Ljavax/mail/Folder;->getMessageCount()I

    move-result v1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_25

    const/4 v2, 0x1

    :goto_10
    if-le v2, v1, :cond_14

    monitor-exit p0

    return v0

    :cond_14
    :try_start_14
    invoke-virtual {p0, v2}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v3

    sget-object v4, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v3, v4}, Ljavax/mail/Message;->isSet(Ljavax/mail/Flags$Flag;)Z

    move-result v3
    :try_end_1e
    .catch Ljavax/mail/MessageRemovedException; {:try_start_14 .. :try_end_1e} :catch_22
    .catchall {:try_start_14 .. :try_end_1e} :catchall_25

    if-nez v3, :cond_22

    add-int/lit8 v0, v0, 0x1

    :catch_22
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract hasNewMessages()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract isOpen()Z
.end method

.method public isSubscribed()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public list()[Ljavax/mail/Folder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljavax/mail/Folder;->list(Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method public abstract list(Ljava/lang/String;)[Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public listSubscribed()[Ljavax/mail/Folder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljavax/mail/Folder;->listSubscribed(Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method public listSubscribed(Ljava/lang/String;)[Ljavax/mail/Folder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljavax/mail/Folder;->list(Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object p1

    return-object p1
.end method

.method protected notifyConnectionListeners(I)V
    .registers 4

    iget-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    if-eqz v0, :cond_e

    new-instance v0, Ljavax/mail/event/ConnectionEvent;

    invoke-direct {v0, p0, p1}, Ljavax/mail/event/ConnectionEvent;-><init>(Ljava/lang/Object;I)V

    iget-object v1, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    invoke-direct {p0, v0, v1}, Ljavax/mail/Folder;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    :cond_e
    const/4 v0, 0x3

    if-ne p1, v0, :cond_14

    invoke-direct {p0}, Ljavax/mail/Folder;->terminateQueue()V

    :cond_14
    return-void
.end method

.method protected notifyFolderListeners(I)V
    .registers 4

    iget-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    if-eqz v0, :cond_e

    new-instance v0, Ljavax/mail/event/FolderEvent;

    invoke-direct {v0, p0, p0, p1}, Ljavax/mail/event/FolderEvent;-><init>(Ljava/lang/Object;Ljavax/mail/Folder;I)V

    iget-object v1, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    invoke-direct {p0, v0, v1}, Ljavax/mail/Folder;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    :cond_e
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    invoke-virtual {v0, p1, p0}, Ljavax/mail/Store;->notifyFolderListeners(ILjavax/mail/Folder;)V

    return-void
.end method

.method protected notifyFolderRenamedListeners(Ljavax/mail/Folder;)V
    .registers 4

    iget-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    if-eqz v0, :cond_f

    new-instance v0, Ljavax/mail/event/FolderEvent;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p0, p1, v1}, Ljavax/mail/event/FolderEvent;-><init>(Ljava/lang/Object;Ljavax/mail/Folder;Ljavax/mail/Folder;I)V

    iget-object v1, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    invoke-direct {p0, v0, v1}, Ljavax/mail/Folder;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    :cond_f
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    invoke-virtual {v0, p0, p1}, Ljavax/mail/Store;->notifyFolderRenamedListeners(Ljavax/mail/Folder;Ljavax/mail/Folder;)V

    return-void
.end method

.method protected notifyMessageAddedListeners([Ljavax/mail/Message;)V
    .registers 5

    iget-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljavax/mail/event/MessageCountEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Ljavax/mail/event/MessageCountEvent;-><init>(Ljavax/mail/Folder;IZ[Ljavax/mail/Message;)V

    iget-object p1, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    invoke-direct {p0, v0, p1}, Ljavax/mail/Folder;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    return-void
.end method

.method protected notifyMessageChangedListeners(ILjavax/mail/Message;)V
    .registers 4

    iget-object v0, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljavax/mail/event/MessageChangedEvent;

    invoke-direct {v0, p0, p1, p2}, Ljavax/mail/event/MessageChangedEvent;-><init>(Ljava/lang/Object;ILjavax/mail/Message;)V

    iget-object p1, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    invoke-direct {p0, v0, p1}, Ljavax/mail/Folder;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    return-void
.end method

.method protected notifyMessageRemovedListeners(Z[Ljavax/mail/Message;)V
    .registers 5

    iget-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljavax/mail/event/MessageCountEvent;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1, p2}, Ljavax/mail/event/MessageCountEvent;-><init>(Ljavax/mail/Folder;IZ[Ljavax/mail/Message;)V

    iget-object p1, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    invoke-direct {p0, v0, p1}, Ljavax/mail/Folder;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    return-void
.end method

.method public abstract open(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public declared-synchronized removeConnectionListener(Ljavax/mail/event/ConnectionListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    if-eqz v0, :cond_a

    iget-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeFolderListener(Ljavax/mail/event/FolderListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    if-eqz v0, :cond_a

    iget-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeMessageChangedListener(Ljavax/mail/event/MessageChangedListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    if-eqz v0, :cond_a

    iget-object v0, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeMessageCountListener(Ljavax/mail/event/MessageCountListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    if-eqz v0, :cond_a

    iget-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract renameTo(Ljavax/mail/Folder;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/mail/Folder;->getMessages()[Ljavax/mail/Message;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;

    move-result-object p1

    return-object p1
.end method

.method public search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :goto_6
    array-length v2, p2

    if-lt v1, v2, :cond_13

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Ljavax/mail/Message;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object p1

    :cond_13
    :try_start_13
    aget-object v2, p2, v1

    invoke-virtual {v2, p1}, Ljavax/mail/Message;->match(Ljavax/mail/search/SearchTerm;)Z

    move-result v2

    if-eqz v2, :cond_20

    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_20
    .catch Ljavax/mail/MessageRemovedException; {:try_start_13 .. :try_end_20} :catch_20

    :catch_20
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public declared-synchronized setFlags(IILjavax/mail/Flags;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :goto_1
    if-le p1, p2, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    invoke-virtual {p0, p1}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljavax/mail/Message;->setFlags(Ljavax/mail/Flags;Z)V
    :try_end_c
    .catch Ljavax/mail/MessageRemovedException; {:try_start_5 .. :try_end_c} :catch_10
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    goto :goto_10

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_10
    :goto_10
    add-int/lit8 p1, p1, 0x1

    goto :goto_1
.end method

.method public declared-synchronized setFlags([ILjavax/mail/Flags;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :goto_2
    :try_start_2
    array-length v1, p1
    :try_end_3
    .catchall {:try_start_2 .. :try_end_3} :catchall_13

    if-lt v0, v1, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljavax/mail/Message;->setFlags(Ljavax/mail/Flags;Z)V
    :try_end_10
    .catch Ljavax/mail/MessageRemovedException; {:try_start_7 .. :try_end_10} :catch_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_13

    :catch_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFlags([Ljavax/mail/Message;Ljavax/mail/Flags;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :goto_2
    :try_start_2
    array-length v1, p1
    :try_end_3
    .catchall {:try_start_2 .. :try_end_3} :catchall_f

    if-lt v0, v1, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    aget-object v1, p1, v0

    invoke-virtual {v1, p2, p3}, Ljavax/mail/Message;->setFlags(Ljavax/mail/Flags;Z)V
    :try_end_c
    .catch Ljavax/mail/MessageRemovedException; {:try_start_7 .. :try_end_c} :catch_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_f

    :catch_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSubscribed(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/MethodNotSupportedException;

    invoke-direct {p1}, Ljavax/mail/MethodNotSupportedException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
