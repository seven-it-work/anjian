.class public Lcom/sun/mail/imap/IMAPFolder;
.super Ljavax/mail/Folder;

# interfaces
.implements Lcom/sun/mail/iap/ResponseHandler;
.implements Ljavax/mail/UIDFolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;,
        Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ABORTING:I = 0x2

.field private static final IDLE:I = 0x1

.field private static final RUNNING:I = 0x0

.field protected static final UNKNOWN_SEPARATOR:C = '\uffff'


# instance fields
.field protected attributes:[Ljava/lang/String;

.field protected availableFlags:Ljavax/mail/Flags;

.field private cachedStatus:Lcom/sun/mail/imap/protocol/Status;

.field private cachedStatusTime:J

.field private connectionPoolDebug:Z

.field private debug:Z

.field private doExpungeNotification:Z

.field protected exists:Z

.field protected fullName:Ljava/lang/String;

.field private idleState:I

.field protected isNamespace:Z

.field protected messageCache:Ljava/util/Vector;

.field protected messageCacheLock:Ljava/lang/Object;

.field protected name:Ljava/lang/String;

.field private opened:Z

.field private out:Ljava/io/PrintStream;

.field protected permanentFlags:Ljavax/mail/Flags;

.field protected protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

.field private realTotal:I

.field private reallyClosed:Z

.field private recent:I

.field protected separator:C

.field private total:I

.field protected type:I

.field protected uidTable:Ljava/util/Hashtable;

.field private uidnext:J

.field private uidvalidity:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method protected constructor <init>(Lcom/sun/mail/imap/protocol/ListInfo;Lcom/sun/mail/imap/IMAPStore;)V
    .registers 5

    iget-object v0, p1, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    iget-char v1, p1, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C

    invoke-direct {p0, v0, v1, p2}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;)V

    iget-boolean p2, p1, Lcom/sun/mail/imap/protocol/ListInfo;->hasInferiors:Z

    if-eqz p2, :cond_11

    iget p2, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    or-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    :cond_11
    iget-boolean p2, p1, Lcom/sun/mail/imap/protocol/ListInfo;->canOpen:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_1b

    iget p2, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    or-int/2addr p2, v0

    iput p2, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    :cond_1b
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    iget-object p1, p1, Lcom/sun/mail/imap/protocol/ListInfo;->attrs:[Ljava/lang/String;

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;)V
    .registers 8

    invoke-direct {p0, p3}, Ljavax/mail/Folder;-><init>(Ljavax/mail/Store;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    iput v2, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I

    iput v2, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:J

    iput-wide v2, p0, Lcom/sun/mail/imap/IMAPFolder;->uidnext:J

    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatusTime:J

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->debug:Z

    if-nez p1, :cond_31

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Folder name is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    iput-char p2, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/sun/mail/imap/IMAPStore;->getSession()Ljavax/mail/Session;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/mail/Session;->getDebug()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/mail/imap/IMAPFolder;->debug:Z

    invoke-virtual {p3}, Lcom/sun/mail/imap/IMAPStore;->getConnectionPoolDebug()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/mail/imap/IMAPFolder;->connectionPoolDebug:Z

    invoke-virtual {p3}, Lcom/sun/mail/imap/IMAPStore;->getSession()Ljavax/mail/Session;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;

    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;

    if-nez p1, :cond_5e

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;

    :cond_5e
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    const p1, 0xffff

    if-eq p2, p1, :cond_82

    if-eqz p2, :cond_82

    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-lez p1, :cond_82

    iget-object p2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v1

    if-ne p1, p2, :cond_82

    iget-object p2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    :cond_82
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;)V

    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    return-void
.end method

.method static synthetic access$0(Lcom/sun/mail/imap/IMAPFolder;)Lcom/sun/mail/imap/protocol/Status;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1(Lcom/sun/mail/imap/IMAPFolder;)I
    .registers 1

    iget p0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    return p0
.end method

.method static synthetic access$2(Lcom/sun/mail/imap/IMAPFolder;I)V
    .registers 2

    iput p1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    return-void
.end method

.method private checkClosed()V
    .registers 3

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This operation is not allowed on an open folder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method private checkExists()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z

    move-result v0

    if-nez v0, :cond_24

    new-instance v0, Ljavax/mail/FolderNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0

    :cond_24
    return-void
.end method

.method private checkFlags(Ljavax/mail/Flags;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget p1, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1b

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot change flags on READ_ONLY folder: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    return-void
.end method

.method private checkOpened()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/FolderClosedException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This operation is not allowed on a closed folder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljavax/mail/FolderClosedException;

    const-string v1, "Lost folder connection to server"

    invoke-direct {v0, p0, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0

    :cond_18
    return-void
.end method

.method private checkRange(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    if-gtz p1, :cond_8

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    if-gt p1, v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_11
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V
    :try_end_14
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_11 .. :try_end_14} :catch_2d
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_11 .. :try_end_14} :catch_22
    .catchall {:try_start_11 .. :try_end_14} :catchall_20

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_20

    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    if-le p1, v0, :cond_1f

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_1f
    return-void

    :catchall_20
    move-exception p1

    goto :goto_38

    :catch_22
    move-exception p1

    :try_start_23
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_2d
    move-exception p1

    new-instance v1, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1

    :goto_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_20

    throw p1
.end method

.method private cleanup(Z)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->notifyConnectionListeners(I)V

    return-void
.end method

.method private close(ZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v1, :cond_13

    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    if-eqz v1, :cond_13

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This operation is not allowed on a closed folder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    iget-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v2, :cond_1c

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_ae

    return-void

    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->waitIfIdle()V

    if-eqz p2, :cond_49

    iget-boolean p1, p0, Lcom/sun/mail/imap/IMAPFolder;->debug:Z

    if-eqz p1, :cond_3f

    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG: forcing folder "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to close"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3f
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz p1, :cond_90

    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    goto :goto_90

    :cond_49
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast p2, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {p2}, Lcom/sun/mail/imap/IMAPStore;->isConnectionPoolFull()Z

    move-result p2

    if-eqz p2, :cond_6f

    iget-boolean p2, p0, Lcom/sun/mail/imap/IMAPFolder;->debug:Z

    if-eqz p2, :cond_5e

    iget-object p2, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG: pool is full, not adding an Authenticated connection"

    invoke-virtual {p2, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5e
    if-eqz p1, :cond_65

    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    :cond_65
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz p1, :cond_90

    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V

    goto :goto_90

    :cond_6f
    if-nez p1, :cond_87

    iget p1, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I
    :try_end_73
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1c .. :try_end_73} :catch_9b
    .catchall {:try_start_1c .. :try_end_73} :catchall_99

    const/4 p2, 0x2

    if-ne p1, p2, :cond_87

    :try_start_76
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object p2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;
    :try_end_7d
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_76 .. :try_end_7d} :catch_7e
    .catchall {:try_start_76 .. :try_end_7d} :catchall_99

    goto :goto_87

    :catch_7e
    :try_start_7e
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz p1, :cond_87

    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    :cond_87
    :goto_87
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz p1, :cond_90

    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V
    :try_end_90
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7e .. :try_end_90} :catch_9b
    .catchall {:try_start_7e .. :try_end_90} :catchall_99

    :cond_90
    :goto_90
    :try_start_90
    iget-boolean p1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz p1, :cond_97

    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->cleanup(Z)V

    :cond_97
    monitor-exit v0
    :try_end_98
    .catchall {:try_start_90 .. :try_end_98} :catchall_ae

    return-void

    :catchall_99
    move-exception p1

    goto :goto_a6

    :catch_9b
    move-exception p1

    :try_start_9c
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
    :try_end_a6
    .catchall {:try_start_9c .. :try_end_a6} :catchall_99

    :goto_a6
    :try_start_a6
    iget-boolean p2, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz p2, :cond_ad

    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->cleanup(Z)V

    :cond_ad
    throw p1

    :catchall_ae
    move-exception p1

    monitor-exit v0
    :try_end_b0
    .catchall {:try_start_a6 .. :try_end_b0} :catchall_ae

    throw p1
.end method

.method private declared-synchronized doList(Ljava/lang/String;Z)[Ljavax/mail/Folder;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    new-array p1, v1, [Ljavax/mail/Folder;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_60

    monitor-exit p0

    return-object p1

    :cond_f
    :try_start_f
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v0

    new-instance v2, Lcom/sun/mail/imap/IMAPFolder$2;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/sun/mail/imap/IMAPFolder$2;-><init>(Lcom/sun/mail/imap/IMAPFolder;ZCLjava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sun/mail/imap/protocol/ListInfo;

    if-nez p1, :cond_24

    new-array p1, v1, [Ljavax/mail/Folder;
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_60

    monitor-exit p0

    return-object p1

    :cond_24
    :try_start_24
    array-length p2, p1

    if-lez p2, :cond_44

    aget-object p2, p1, v1

    iget-object p2, p2, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_44

    const/4 v1, 0x1

    :cond_44
    array-length p2, p1

    sub-int/2addr p2, v1

    new-array p2, p2, [Lcom/sun/mail/imap/IMAPFolder;

    move v0, v1

    :goto_49
    array-length v2, p1
    :try_end_4a
    .catchall {:try_start_24 .. :try_end_4a} :catchall_60

    if-lt v0, v2, :cond_4e

    monitor-exit p0

    return-object p2

    :cond_4e
    sub-int v2, v0, v1

    :try_start_50
    new-instance v3, Lcom/sun/mail/imap/IMAPFolder;

    aget-object v4, p1, v0

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v5, Lcom/sun/mail/imap/IMAPStore;

    invoke-direct {v3, v4, v5}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Lcom/sun/mail/imap/protocol/ListInfo;Lcom/sun/mail/imap/IMAPStore;)V

    aput-object v3, p2, v2
    :try_end_5d
    .catchall {:try_start_50 .. :try_end_5d} :catchall_60

    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    :catchall_60
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private findName([Lcom/sun/mail/imap/protocol/ListInfo;Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    array-length v2, p1

    if-lt v1, v2, :cond_6

    goto :goto_13

    :cond_6
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_13
    :goto_13
    array-length p1, p1

    if-lt v1, p1, :cond_17

    return v0

    :cond_17
    move v0, v1

    return v0
.end method

.method private getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->waitIfIdle()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    return-object v0
.end method

.method private getStatus()Lcom/sun/mail/imap/protocol/Status;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getStatusCacheTimeout()I

    move-result v0

    if-lez v0, :cond_1e

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;

    if-eqz v1, :cond_1e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatusTime:J

    sub-long v5, v1, v3

    int-to-long v1, v0

    cmp-long v3, v5, v1

    if-gez v3, :cond_1e

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;

    return-object v0

    :cond_1e
    const/4 v1, 0x0

    :try_start_1f
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_39

    :try_start_23
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;

    move-result-object v1

    if-lez v0, :cond_33

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatusTime:J
    :try_end_33
    .catchall {:try_start_23 .. :try_end_33} :catchall_37

    :cond_33
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    return-object v1

    :catchall_37
    move-exception v0

    goto :goto_3b

    :catchall_39
    move-exception v0

    move-object v2, v1

    :goto_3b
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    throw v0
.end method

.method private isDirectory()Z
    .registers 2

    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private keepConnectionAlive(Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J

    move-result-wide v2

    sub-long v4, v0, v2

    const-wide/16 v0, 0x3e8

    cmp-long v2, v4, v0

    if-lez v2, :cond_1a

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->waitIfIdle()V

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V

    :cond_1a
    if-eqz p1, :cond_56

    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast p1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPStore;->hasSeparateStoreConnection()Z

    move-result p1

    if-eqz p1, :cond_56

    const/4 p1, 0x0

    :try_start_27
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v2, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_4b

    :try_start_2f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J

    move-result-wide v5

    const/4 p1, 0x0

    sub-long v7, v3, v5

    cmp-long p1, v7, v0

    if-lez p1, :cond_41

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V
    :try_end_41
    .catchall {:try_start_2f .. :try_end_41} :catchall_49

    :cond_41
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast p1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {p1, v2}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    return-void

    :catchall_49
    move-exception p1

    goto :goto_4e

    :catchall_4b
    move-exception v0

    move-object v2, p1

    move-object p1, v0

    :goto_4e
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0, v2}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    throw p1

    :cond_56
    return-void
.end method

.method private releaseProtocol(Z)V
    .registers 3

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast p1, Lcom/sun/mail/imap/IMAPStore;

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {p1, p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseProtocol(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    return-void

    :cond_15
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast p1, Lcom/sun/mail/imap/IMAPStore;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseProtocol(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    :cond_1d
    return-void
.end method

.method private setACL(Lcom/sun/mail/imap/ACL;C)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "ACL not supported"

    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$18;

    invoke-direct {v1, p0, p2, p1}, Lcom/sun/mail/imap/IMAPFolder$18;-><init>(Lcom/sun/mail/imap/IMAPFolder;CLcom/sun/mail/imap/ACL;)V

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    return-void
.end method

.method private declared-synchronized throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/FolderClosedException;,
            Ljavax/mail/StoreClosedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getProtocol()Lcom/sun/mail/iap/Protocol;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eq v0, v1, :cond_15

    :cond_d
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    if-nez v0, :cond_1f

    :cond_15
    new-instance v0, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0

    :cond_1f
    new-instance v0, Ljavax/mail/StoreClosedException;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addACL(Lcom/sun/mail/imap/ACL;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->setACL(Lcom/sun/mail/imap/ACL;C)V

    return-void
.end method

.method public declared-synchronized addMessages([Ljavax/mail/Message;)[Ljavax/mail/Message;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    array-length v0, p1

    new-array v0, v0, [Ljavax/mail/internet/MimeMessage;

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->appendUIDMessages([Ljavax/mail/Message;)[Lcom/sun/mail/imap/AppendUID;

    move-result-object p1

    const/4 v1, 0x0

    :goto_c
    array-length v2, p1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_28

    if-lt v1, v2, :cond_11

    monitor-exit p0

    return-object v0

    :cond_11
    :try_start_11
    aget-object v2, p1, v1

    if-eqz v2, :cond_25

    iget-wide v3, v2, Lcom/sun/mail/imap/AppendUID;->uidvalidity:J

    iget-wide v5, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:J
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_28

    cmp-long v7, v3, v5

    if-nez v7, :cond_25

    :try_start_1d
    iget-wide v2, v2, Lcom/sun/mail/imap/AppendUID;->uid:J

    invoke-virtual {p0, v2, v3}, Lcom/sun/mail/imap/IMAPFolder;->getMessageByUID(J)Ljavax/mail/Message;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_25
    .catch Ljavax/mail/MessagingException; {:try_start_1d .. :try_end_25} :catch_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_28

    :catch_25
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addRights(Lcom/sun/mail/imap/ACL;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/16 v0, 0x2b

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->setACL(Lcom/sun/mail/imap/ACL;C)V

    return-void
.end method

.method public declared-synchronized appendMessages([Ljavax/mail/Message;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getAppendBufferSize()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_e
    array-length v3, p1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_45

    if-lt v2, v3, :cond_13

    monitor-exit p0

    return-void

    :cond_13
    :try_start_13
    aget-object v3, p1, v2
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_45

    :try_start_15
    new-instance v4, Lcom/sun/mail/imap/MessageLiteral;

    invoke-virtual {v3}, Ljavax/mail/Message;->getSize()I

    move-result v5

    if-le v5, v0, :cond_1f

    const/4 v5, 0x0

    goto :goto_20

    :cond_1f
    move v5, v0

    :goto_20
    invoke-direct {v4, v3, v5}, Lcom/sun/mail/imap/MessageLiteral;-><init>(Ljavax/mail/Message;I)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_23} :catch_3c
    .catch Ljavax/mail/MessageRemovedException; {:try_start_15 .. :try_end_23} :catch_39
    .catchall {:try_start_15 .. :try_end_23} :catchall_45

    :try_start_23
    invoke-virtual {v3}, Ljavax/mail/Message;->getReceivedDate()Ljava/util/Date;

    move-result-object v5

    if-nez v5, :cond_2d

    invoke-virtual {v3}, Ljavax/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v5

    :cond_2d
    invoke-virtual {v3}, Ljavax/mail/Message;->getFlags()Ljavax/mail/Flags;

    move-result-object v3

    new-instance v6, Lcom/sun/mail/imap/IMAPFolder$10;

    invoke-direct {v6, p0, v3, v5, v4}, Lcom/sun/mail/imap/IMAPFolder$10;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/imap/MessageLiteral;)V

    invoke-virtual {p0, v6}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    :catch_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :catch_3c
    move-exception p1

    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "IOException while appending messages"

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
    :try_end_45
    .catchall {:try_start_23 .. :try_end_45} :catchall_45

    :catchall_45
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized appendUIDMessages([Ljavax/mail/Message;)[Lcom/sun/mail/imap/AppendUID;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getAppendBufferSize()I

    move-result v0

    array-length v1, p1

    new-array v1, v1, [Lcom/sun/mail/imap/AppendUID;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_11
    array-length v4, p1
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_4d

    if-lt v3, v4, :cond_16

    monitor-exit p0

    return-object v1

    :cond_16
    :try_start_16
    aget-object v4, p1, v3
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_4d

    :try_start_18
    new-instance v5, Lcom/sun/mail/imap/MessageLiteral;

    invoke-virtual {v4}, Ljavax/mail/Message;->getSize()I

    move-result v6

    if-le v6, v0, :cond_22

    const/4 v6, 0x0

    goto :goto_23

    :cond_22
    move v6, v0

    :goto_23
    invoke-direct {v5, v4, v6}, Lcom/sun/mail/imap/MessageLiteral;-><init>(Ljavax/mail/Message;I)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_26} :catch_44
    .catch Ljavax/mail/MessageRemovedException; {:try_start_18 .. :try_end_26} :catch_41
    .catchall {:try_start_18 .. :try_end_26} :catchall_4d

    :try_start_26
    invoke-virtual {v4}, Ljavax/mail/Message;->getReceivedDate()Ljava/util/Date;

    move-result-object v6

    if-nez v6, :cond_30

    invoke-virtual {v4}, Ljavax/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v6

    :cond_30
    invoke-virtual {v4}, Ljavax/mail/Message;->getFlags()Ljavax/mail/Flags;

    move-result-object v4

    new-instance v7, Lcom/sun/mail/imap/IMAPFolder$11;

    invoke-direct {v7, p0, v4, v6, v5}, Lcom/sun/mail/imap/IMAPFolder$11;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/imap/MessageLiteral;)V

    invoke-virtual {p0, v7}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/mail/imap/AppendUID;

    aput-object v4, v1, v3

    :catch_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :catch_44
    move-exception p1

    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "IOException while appending messages"

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
    :try_end_4d
    .catchall {:try_start_26 .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->close(ZZ)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized copyMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    array-length v0, p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_84

    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    invoke-virtual {p2}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    if-ne v0, v1, :cond_7f

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_84

    :try_start_14
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/sun/mail/imap/Utility;->toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object p1

    if-nez p1, :cond_27

    new-instance p1, Ljavax/mail/MessageRemovedException;

    const-string v1, "Messages have been removed"

    invoke-direct {p1, v1}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_27
    invoke-virtual {p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->copy([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)V
    :try_end_2e
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_14 .. :try_end_2e} :catch_49
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_14 .. :try_end_2e} :catch_3e
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_14 .. :try_end_2e} :catch_33
    .catchall {:try_start_14 .. :try_end_2e} :catchall_31

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_31

    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    goto :goto_7d

    :catch_33
    move-exception p1

    :try_start_34
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_3e
    move-exception p1

    new-instance p2, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw p2

    :catch_49
    move-exception p1

    invoke-virtual {p1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TRYCREATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_73

    new-instance p1, Ljavax/mail/FolderNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p2, v1}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw p1

    :cond_73
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :goto_7d
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_34 .. :try_end_7e} :catchall_31

    :try_start_7e
    throw p1

    :cond_7f
    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->copyMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)V
    :try_end_82
    .catchall {:try_start_7e .. :try_end_82} :catchall_84

    monitor-exit p0

    return-void

    :catchall_84
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized create(I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-nez v0, :cond_d

    :try_start_6
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v0

    goto :goto_e

    :catchall_b
    move-exception p1

    goto :goto_27

    :cond_d
    const/4 v0, 0x0

    :goto_e
    new-instance v2, Lcom/sun/mail/imap/IMAPFolder$6;

    invoke-direct {v2, p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder$6;-><init>(Lcom/sun/mail/imap/IMAPFolder;IC)V

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object p1
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_b

    if-nez p1, :cond_1b

    monitor-exit p0

    return v1

    :cond_1b
    :try_start_1b
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z

    move-result p1

    if-eqz p1, :cond_25

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->notifyFolderListeners(I)V
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_b

    :cond_25
    monitor-exit p0

    return p1

    :goto_27
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized delete(Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkClosed()V

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->list()[Ljavax/mail/Folder;

    move-result-object v1

    const/4 v2, 0x0

    :goto_c
    array-length v3, v1

    if-lt v2, v3, :cond_10

    goto :goto_18

    :cond_10
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Ljavax/mail/Folder;->delete(Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_18
    :goto_18
    new-instance p1, Lcom/sun/mail/imap/IMAPFolder$8;

    invoke-direct {p1, p0}, Lcom/sun/mail/imap/IMAPFolder$8;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object p1
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_31

    if-nez p1, :cond_25

    monitor-exit p0

    return v0

    :cond_25
    :try_start_25
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->notifyFolderListeners(I)V
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_31

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_4} :catch_10
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception p1

    new-instance v0, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_10
    move-exception p1

    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_1 .. :try_end_5} :catch_15
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_5} :catch_11
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_5} :catch_6

    return-object p1

    :catch_6
    move-exception p1

    new-instance v0, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_11
    move-exception p1

    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V

    :catch_15
    return-object v0
.end method

.method public doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object p2
    :try_end_4
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_0 .. :try_end_4} :catch_16
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_4} :catch_10
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p2

    :catch_5
    move-exception p1

    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_10
    move-exception p1

    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V

    const/4 p1, 0x0

    return-object p1

    :catch_16
    move-exception p2

    new-instance v0, Ljavax/mail/MessagingException;

    invoke-direct {v0, p1, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method protected doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->hasSeparateStoreConnection()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_36

    :try_start_12
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;->doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1d

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_36

    return-object p1

    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw p1

    :cond_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_36

    const/4 v0, 0x0

    :try_start_22
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_31

    :try_start_26
    invoke-interface {p1, v1}, Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;->doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_2e

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    return-object p1

    :catchall_2e
    move-exception p1

    move-object v0, v1

    goto :goto_32

    :catchall_31
    move-exception p1

    :goto_32
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    throw p1

    :catchall_36
    move-exception p1

    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p1
.end method

.method public declared-synchronized exists()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    if-eqz v0, :cond_1e

    iget-char v0, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v1, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_1e
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    :goto_20
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$1;

    invoke-direct {v1, p0, v0}, Lcom/sun/mail/imap/IMAPFolder$1;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sun/mail/imap/protocol/ListInfo;

    if-eqz v1, :cond_80

    invoke-direct {p0, v1, v0}, Lcom/sun/mail/imap/IMAPFolder;->findName([Lcom/sun/mail/imap/protocol/ListInfo;Ljava/lang/String;)I

    move-result v0

    aget-object v2, v1, v0

    iget-object v2, v2, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    aget-object v2, v1, v0

    iget-char v2, v2, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C

    iput-char v2, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-char v3, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_5e

    if-lez v2, :cond_5e

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    sub-int/2addr v2, v5

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-char v6, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    if-ne v3, v6, :cond_5e

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    :cond_5e
    iput v4, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    aget-object v2, v1, v0

    iget-boolean v2, v2, Lcom/sun/mail/imap/protocol/ListInfo;->hasInferiors:Z

    if-eqz v2, :cond_6c

    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    :cond_6c
    aget-object v2, v1, v0

    iget-boolean v2, v2, Lcom/sun/mail/imap/protocol/ListInfo;->canOpen:Z

    if-eqz v2, :cond_77

    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    or-int/2addr v2, v5

    iput v2, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    :cond_77
    iput-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    aget-object v0, v1, v0

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ListInfo;->attrs:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    goto :goto_87

    :cond_80
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    :goto_87
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z
    :try_end_89
    .catchall {:try_start_1 .. :try_end_89} :catchall_8b

    monitor-exit p0

    return v0

    :catchall_8b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized expunge()[Ljavax/mail/Message;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->expunge([Ljavax/mail/Message;)[Ljavax/mail/Message;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized expunge([Ljavax/mail/Message;)[Ljavax/mail/Message;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    if-eqz p1, :cond_18

    new-instance v1, Ljavax/mail/FetchProfile;

    invoke-direct {v1}, Ljavax/mail/FetchProfile;-><init>()V

    sget-object v2, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    invoke-virtual {v1, v2}, Ljavax/mail/FetchProfile;->add(Ljavax/mail/FetchProfile$Item;)V

    invoke-virtual {p0, p1, v1}, Lcom/sun/mail/imap/IMAPFolder;->fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V

    :cond_18
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_d1

    const/4 v2, 0x0

    :try_start_1c
    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_ce

    const/4 v3, 0x1

    :try_start_1f
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v4

    if-eqz p1, :cond_2d

    invoke-static {p1}, Lcom/sun/mail/imap/Utility;->toUIDSet([Ljavax/mail/Message;)[Lcom/sun/mail/imap/protocol/UIDSet;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->uidexpunge([Lcom/sun/mail/imap/protocol/UIDSet;)V

    goto :goto_30

    :cond_2d
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->expunge()V
    :try_end_30
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_1f .. :try_end_30} :catch_a5
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1f .. :try_end_30} :catch_9a
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1f .. :try_end_30} :catch_8f
    .catchall {:try_start_1f .. :try_end_30} :catchall_8d

    :goto_30
    :try_start_30
    iput-boolean v3, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    :cond_32
    :goto_32
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-lt v2, p1, :cond_54

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_ce

    :try_start_3b
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    iput p1, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Ljavax/mail/Message;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    array-length v0, p1

    if-lez v0, :cond_52

    invoke-virtual {p0, v3, p1}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageRemovedListeners(Z[Ljavax/mail/Message;)V
    :try_end_52
    .catchall {:try_start_3b .. :try_end_52} :catchall_d1

    :cond_52
    monitor-exit p0

    return-object p1

    :cond_54
    :try_start_54
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v4

    if-eqz v4, :cond_83

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-eqz v4, :cond_32

    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long p1, v4, v6

    if-eqz p1, :cond_32

    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p1, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    :cond_83
    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/sun/mail/imap/IMAPMessage;->setMessageNumber(I)V
    :try_end_8a
    .catchall {:try_start_54 .. :try_end_8a} :catchall_ce

    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :catchall_8d
    move-exception p1

    goto :goto_cb

    :catch_8f
    move-exception p1

    :try_start_90
    new-instance v0, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_9a
    move-exception p1

    new-instance v0, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0

    :catch_a5
    move-exception p1

    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_c1

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Cannot expunge READ_ONLY folder: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c1
    new-instance v0, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
    :try_end_cb
    .catchall {:try_start_90 .. :try_end_cb} :catchall_8d

    :goto_cb
    :try_start_cb
    iput-boolean v3, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    throw p1

    :catchall_ce
    move-exception p1

    monitor-exit v1
    :try_end_d0
    .catchall {:try_start_cb .. :try_end_d0} :catchall_ce

    :try_start_d0
    throw p1
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_d1

    :catchall_d1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    invoke-static {p0, p1, p2}, Lcom/sun/mail/imap/IMAPMessage;->fetch(Lcom/sun/mail/imap/IMAPFolder;[Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized forceClose()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_3
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->close(ZZ)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getACL()[Lcom/sun/mail/imap/ACL;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "ACL not supported"

    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$14;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/IMAPFolder$14;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/mail/imap/ACL;

    return-object v0
.end method

.method public getAttributes()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z

    :cond_7
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
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
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_43

    const/4 v0, -0x1

    monitor-exit p0

    return v0

    :cond_b
    :try_start_b
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    sget-object v1, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_43

    :try_start_15
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_18
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_15 .. :try_end_18} :catch_38
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_15 .. :try_end_18} :catch_2d
    .catchall {:try_start_15 .. :try_end_18} :catchall_43

    :try_start_18
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    new-instance v3, Ljavax/mail/search/FlagTerm;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Ljavax/mail/search/FlagTerm;-><init>(Ljavax/mail/Flags;Z)V

    invoke-virtual {v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljavax/mail/search/SearchTerm;)[I

    move-result-object v0

    array-length v0, v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_2a

    monitor-exit p0

    return v0

    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    :try_start_2c
    throw v0
    :try_end_2d
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2c .. :try_end_2d} :catch_38
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2c .. :try_end_2d} :catch_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_43

    :catch_2d
    move-exception v0

    :try_start_2e
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_38
    move-exception v0

    new-instance v1, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1
    :try_end_43
    .catchall {:try_start_2e .. :try_end_43} :catchall_43

    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_12

    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "Cannot contain subfolders"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v0

    new-instance v1, Lcom/sun/mail/imap/IMAPFolder;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v2, Lcom/sun/mail/imap/IMAPStore;

    invoke-direct {v1, p1, v0, v2}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;)V

    return-object v1
.end method

.method public declared-synchronized getFullName()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessage(I)Ljavax/mail/Message;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->checkRange(I)V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/mail/Message;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object p1

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;
    .registers 5

    add-int/lit8 v0, p1, -0x1

    :goto_2
    iget v1, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    if-lt v0, v1, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v2

    if-ne v2, p1, :cond_17

    return-object v1

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public declared-synchronized getMessageByUID(J)Ljavax/mail/Message;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_61

    const/4 v0, 0x0

    :try_start_5
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_8
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_8} :catch_56
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_8} :catch_4b
    .catchall {:try_start_5 .. :try_end_8} :catchall_61

    :try_start_8
    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-eqz v3, :cond_1e

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/IMAPMessage;

    if-eqz v0, :cond_25

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_48

    monitor-exit p0

    return-object v0

    :cond_1e
    :try_start_1e
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    :cond_25
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSequenceNumber(J)Lcom/sun/mail/imap/protocol/UID;

    move-result-object p1

    if-eqz p1, :cond_45

    iget p2, p1, Lcom/sun/mail/imap/protocol/UID;->seqnum:I

    iget v3, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    if-gt p2, v3, :cond_45

    iget p2, p1, Lcom/sun/mail/imap/protocol/UID;->seqnum:I

    invoke-virtual {p0, p2}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v0

    iget-wide p1, p1, Lcom/sun/mail/imap/protocol/UID;->uid:J

    invoke-virtual {v0, p1, p2}, Lcom/sun/mail/imap/IMAPMessage;->setUID(J)V

    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    invoke-virtual {p1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_1e .. :try_end_46} :catchall_48

    monitor-exit p0

    return-object v0

    :catchall_48
    move-exception p1

    :try_start_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    :try_start_4a
    throw p1
    :try_end_4b
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4a .. :try_end_4b} :catch_56
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4a .. :try_end_4b} :catch_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_61

    :catch_4b
    move-exception p1

    :try_start_4c
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_56
    move-exception p1

    new-instance p2, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw p2
    :try_end_61
    .catchall {:try_start_4c .. :try_end_61} :catchall_61

    :catchall_61
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessageCount()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v0, :cond_58

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_7e

    :try_start_8
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object v0

    iget v0, v0, Lcom/sun/mail/imap/protocol/Status;->total:I
    :try_end_e
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_8 .. :try_end_e} :catch_28
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_8 .. :try_end_e} :catch_1b
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_8 .. :try_end_e} :catch_10
    .catchall {:try_start_8 .. :try_end_e} :catchall_7e

    monitor-exit p0

    return v0

    :catch_10
    move-exception v0

    :try_start_11
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1b
    move-exception v0

    new-instance v1, Ljavax/mail/StoreClosedException;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v1
    :try_end_28
    .catchall {:try_start_11 .. :try_end_28} :catchall_7e

    :catch_28
    const/4 v0, 0x0

    :try_start_29
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1
    :try_end_2d
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_29 .. :try_end_2d} :catch_46
    .catchall {:try_start_29 .. :try_end_2d} :catchall_41

    :try_start_2d
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;

    move-result-object v0

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    iget v0, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->total:I
    :try_end_38
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2d .. :try_end_38} :catch_3f
    .catchall {:try_start_2d .. :try_end_38} :catchall_3d

    :try_start_38
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_7e

    monitor-exit p0

    return v0

    :catchall_3d
    move-exception v0

    goto :goto_54

    :catch_3f
    move-exception v0

    goto :goto_4a

    :catchall_41
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_54

    :catch_46
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_4a
    :try_start_4a
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_3d

    :goto_54
    :try_start_54
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    throw v0

    :cond_58
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_7e

    const/4 v1, 0x1

    :try_start_5c
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V

    iget v1, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I
    :try_end_61
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5c .. :try_end_61} :catch_71
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5c .. :try_end_61} :catch_66
    .catchall {:try_start_5c .. :try_end_61} :catchall_64

    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_64

    monitor-exit p0

    return v1

    :catchall_64
    move-exception v1

    goto :goto_7c

    :catch_66
    move-exception v1

    :try_start_67
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_71
    move-exception v1

    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    :goto_7c
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_67 .. :try_end_7d} :catchall_64

    :try_start_7d
    throw v1
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7e

    :catchall_7e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessagesByUID(JJ)[Ljavax/mail/Message;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_5f

    :try_start_4
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_7
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_7} :catch_54
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_7} :catch_49
    .catchall {:try_start_4 .. :try_end_7} :catchall_5f

    :try_start_7
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-nez v1, :cond_12

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    :cond_12
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSequenceNumbers(JJ)[Lcom/sun/mail/imap/protocol/UID;

    move-result-object p1

    array-length p2, p1

    new-array p2, p2, [Ljavax/mail/Message;

    const/4 p3, 0x0

    :goto_1e
    array-length p4, p1

    if-lt p3, p4, :cond_24

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_46

    monitor-exit p0

    return-object p2

    :cond_24
    :try_start_24
    aget-object p4, p1, p3

    iget p4, p4, Lcom/sun/mail/imap/protocol/UID;->seqnum:I

    invoke-virtual {p0, p4}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object p4

    aget-object v1, p1, p3

    iget-wide v1, v1, Lcom/sun/mail/imap/protocol/UID;->uid:J

    invoke-virtual {p4, v1, v2}, Lcom/sun/mail/imap/IMAPMessage;->setUID(J)V

    aput-object p4, p2, p3

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Long;

    aget-object v3, p1, p3

    iget-wide v3, v3, Lcom/sun/mail/imap/protocol/UID;->uid:J

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v2, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    goto :goto_1e

    :catchall_46
    move-exception p1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_24 .. :try_end_48} :catchall_46

    :try_start_48
    throw p1
    :try_end_49
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_48 .. :try_end_49} :catch_54
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_48 .. :try_end_49} :catch_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_5f

    :catch_49
    move-exception p1

    :try_start_4a
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_54
    move-exception p1

    new-instance p2, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw p2
    :try_end_5f
    .catchall {:try_start_4a .. :try_end_5f} :catchall_5f

    :catchall_5f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessagesByUID([J)[Ljavax/mail/Message;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_b1

    :try_start_4
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_7
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_7} :catch_a6
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_7} :catch_9b
    .catchall {:try_start_4 .. :try_end_7} :catchall_b1

    :try_start_7
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    const/4 v2, 0x0

    if-eqz v1, :cond_43

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v3, 0x0

    :goto_12
    array-length v4, p1

    if-lt v3, v4, :cond_2e

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v4, v3, [J

    const/4 v5, 0x0

    :goto_1c
    if-lt v5, v3, :cond_1f

    goto :goto_4b

    :cond_1f
    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_2e
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    new-instance v5, Ljava/lang/Long;

    aget-wide v6, p1, v3

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    invoke-virtual {v1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_43
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    move-object v4, p1

    :goto_4b
    array-length v1, v4

    if-lez v1, :cond_7b

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSequenceNumbers([J)[Lcom/sun/mail/imap/protocol/UID;

    move-result-object v1

    const/4 v3, 0x0

    :goto_57
    array-length v4, v1

    if-lt v3, v4, :cond_5b

    goto :goto_7b

    :cond_5b
    aget-object v4, v1, v3

    iget v4, v4, Lcom/sun/mail/imap/protocol/UID;->seqnum:I

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v4

    aget-object v5, v1, v3

    iget-wide v5, v5, Lcom/sun/mail/imap/protocol/UID;->uid:J

    invoke-virtual {v4, v5, v6}, Lcom/sun/mail/imap/IMAPMessage;->setUID(J)V

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    new-instance v6, Ljava/lang/Long;

    aget-object v7, v1, v3

    iget-wide v7, v7, Lcom/sun/mail/imap/protocol/UID;->uid:J

    invoke-direct {v6, v7, v8}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_57

    :cond_7b
    :goto_7b
    array-length v1, p1

    new-array v1, v1, [Ljavax/mail/Message;

    :goto_7e
    array-length v3, p1

    if-lt v2, v3, :cond_84

    monitor-exit v0
    :try_end_82
    .catchall {:try_start_7 .. :try_end_82} :catchall_98

    monitor-exit p0

    return-object v1

    :cond_84
    :try_start_84
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Long;

    aget-wide v5, p1, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/mail/Message;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7e

    :catchall_98
    move-exception p1

    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_84 .. :try_end_9a} :catchall_98

    :try_start_9a
    throw p1
    :try_end_9b
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_9a .. :try_end_9b} :catch_a6
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_9a .. :try_end_9b} :catch_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_b1

    :catch_9b
    move-exception p1

    :try_start_9c
    new-instance v0, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_a6
    move-exception p1

    new-instance v0, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0
    :try_end_b1
    .catchall {:try_start_9c .. :try_end_b1} :catchall_b1

    :catchall_b1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->name:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1d

    if-nez v0, :cond_19

    :try_start_5
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->name:Ljava/lang/String;
    :try_end_19
    .catch Ljavax/mail/MessagingException; {:try_start_5 .. :try_end_19} :catch_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1d

    :catch_19
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->name:Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-object v0

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
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
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v0, :cond_58

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_7e

    :try_start_8
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object v0

    iget v0, v0, Lcom/sun/mail/imap/protocol/Status;->recent:I
    :try_end_e
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_8 .. :try_end_e} :catch_28
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_8 .. :try_end_e} :catch_1b
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_8 .. :try_end_e} :catch_10
    .catchall {:try_start_8 .. :try_end_e} :catchall_7e

    monitor-exit p0

    return v0

    :catch_10
    move-exception v0

    :try_start_11
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1b
    move-exception v0

    new-instance v1, Ljavax/mail/StoreClosedException;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v1
    :try_end_28
    .catchall {:try_start_11 .. :try_end_28} :catchall_7e

    :catch_28
    const/4 v0, 0x0

    :try_start_29
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1
    :try_end_2d
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_29 .. :try_end_2d} :catch_46
    .catchall {:try_start_29 .. :try_end_2d} :catchall_41

    :try_start_2d
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;

    move-result-object v0

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    iget v0, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->recent:I
    :try_end_38
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2d .. :try_end_38} :catch_3f
    .catchall {:try_start_2d .. :try_end_38} :catchall_3d

    :try_start_38
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_7e

    monitor-exit p0

    return v0

    :catchall_3d
    move-exception v0

    goto :goto_54

    :catch_3f
    move-exception v0

    goto :goto_4a

    :catchall_41
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_54

    :catch_46
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_4a
    :try_start_4a
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_3d

    :goto_54
    :try_start_54
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    throw v0

    :cond_58
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_7e

    const/4 v1, 0x1

    :try_start_5c
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V

    iget v1, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I
    :try_end_61
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5c .. :try_end_61} :catch_71
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5c .. :try_end_61} :catch_66
    .catchall {:try_start_5c .. :try_end_61} :catchall_64

    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_64

    monitor-exit p0

    return v1

    :catchall_64
    move-exception v1

    goto :goto_7c

    :catch_66
    move-exception v1

    :try_start_67
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_71
    move-exception v1

    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    :goto_7c
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_67 .. :try_end_7d} :catchall_64

    :try_start_7d
    throw v1
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7e

    :catchall_7e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getParent()Ljavax/mail/Folder;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_20

    new-instance v2, Lcom/sun/mail/imap/IMAPFolder;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v3, Lcom/sun/mail/imap/IMAPStore;

    invoke-direct {v2, v1, v0, v3}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_2b

    monitor-exit p0

    return-object v2

    :cond_20
    :try_start_20
    new-instance v0, Lcom/sun/mail/imap/DefaultFolder;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    invoke-direct {v0, v1}, Lcom/sun/mail/imap/DefaultFolder;-><init>(Lcom/sun/mail/imap/IMAPStore;)V
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_2b

    monitor-exit p0

    return-object v0

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPermanentFlags()Ljavax/mail/Flags;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->permanentFlags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Flags;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getQuota()[Ljavax/mail/Quota;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "QUOTA not supported"

    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$12;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/IMAPFolder$12;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/mail/Quota;

    return-object v0
.end method

.method public declared-synchronized getSeparator()C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-char v0, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    const v1, 0xffff

    if-ne v0, v1, :cond_21

    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$3;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/IMAPFolder$3;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/mail/imap/protocol/ListInfo;

    if-eqz v0, :cond_1d

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-char v0, v0, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C

    iput-char v0, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    goto :goto_21

    :cond_1d
    const/16 v0, 0x2f

    iput-char v0, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    :cond_21
    :goto_21
    iget-char v0, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    monitor-exit p0

    return v0

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->connectionPoolDebug:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;

    const-string v1, "DEBUG: getStoreProtocol() - borrowing a connection"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getType()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z

    goto :goto_10

    :cond_d
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    :cond_10
    :goto_10
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return v0

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUID(Ljavax/mail/Message;)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljavax/mail/Message;->getFolder()Ljavax/mail/Folder;

    move-result-object v0

    if-eq v0, p0, :cond_f

    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "Message does not belong to this folder"

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    check-cast p1, Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_6b

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_20

    monitor-exit p0

    return-wide v0

    :cond_20
    :try_start_20
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_6b

    :try_start_23
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchUID(I)Lcom/sun/mail/imap/protocol/UID;

    move-result-object v3

    if-eqz v3, :cond_4e

    iget-wide v0, v3, Lcom/sun/mail/imap/protocol/UID;->uid:J

    invoke-virtual {p1, v0, v1}, Lcom/sun/mail/imap/IMAPMessage;->setUID(J)V

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-nez v3, :cond_44

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    :cond_44
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3, v4, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_23 .. :try_end_4e} :catch_5e
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_23 .. :try_end_4e} :catch_53
    .catchall {:try_start_23 .. :try_end_4e} :catchall_51

    :cond_4e
    :try_start_4e
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_51

    monitor-exit p0

    return-wide v0

    :catchall_51
    move-exception p1

    goto :goto_69

    :catch_53
    move-exception p1

    :try_start_54
    new-instance v0, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_5e
    move-exception p1

    new-instance v0, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0

    :goto_69
    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_54 .. :try_end_6a} :catchall_51

    :try_start_6a
    throw p1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_6b

    :catchall_6b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getUIDNext()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v0, :cond_9

    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidnext:J
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_55

    monitor-exit p0

    return-wide v0

    :cond_9
    const/4 v0, 0x0

    :try_start_a
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1
    :try_end_e
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_a .. :try_end_e} :catch_44
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_a .. :try_end_e} :catch_38
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_a .. :try_end_e} :catch_2a
    .catchall {:try_start_a .. :try_end_e} :catchall_25

    :try_start_e
    const-string v2, "UIDNEXT"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;

    move-result-object v2
    :try_end_1a
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_e .. :try_end_1a} :catch_23
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_e .. :try_end_1a} :catch_21
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_e .. :try_end_1a} :catch_1f
    .catchall {:try_start_e .. :try_end_1a} :catchall_50

    :try_start_1a
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_55

    move-object v0, v2

    goto :goto_40

    :catch_1f
    move-exception v0

    goto :goto_2e

    :catch_21
    move-exception v2

    goto :goto_3a

    :catch_23
    move-exception v0

    goto :goto_48

    :catchall_25
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_51

    :catch_2a
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2e
    :try_start_2e
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_38
    move-exception v2

    move-object v1, v0

    :goto_3a
    invoke-direct {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
    :try_end_3d
    .catchall {:try_start_2e .. :try_end_3d} :catchall_50

    :try_start_3d
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    :goto_40
    iget-wide v0, v0, Lcom/sun/mail/imap/protocol/Status;->uidnext:J
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_55

    monitor-exit p0

    return-wide v0

    :catch_44
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_48
    :try_start_48
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "Cannot obtain UIDNext"

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_50
    .catchall {:try_start_48 .. :try_end_50} :catchall_50

    :catchall_50
    move-exception v0

    :goto_51
    :try_start_51
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    throw v0
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_55

    :catchall_55
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUIDValidity()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v0, :cond_9

    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:J
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_55

    monitor-exit p0

    return-wide v0

    :cond_9
    const/4 v0, 0x0

    :try_start_a
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1
    :try_end_e
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_a .. :try_end_e} :catch_44
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_a .. :try_end_e} :catch_38
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_a .. :try_end_e} :catch_2a
    .catchall {:try_start_a .. :try_end_e} :catchall_25

    :try_start_e
    const-string v2, "UIDVALIDITY"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;

    move-result-object v2
    :try_end_1a
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_e .. :try_end_1a} :catch_23
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_e .. :try_end_1a} :catch_21
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_e .. :try_end_1a} :catch_1f
    .catchall {:try_start_e .. :try_end_1a} :catchall_50

    :try_start_1a
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_55

    move-object v0, v2

    goto :goto_40

    :catch_1f
    move-exception v0

    goto :goto_2e

    :catch_21
    move-exception v2

    goto :goto_3a

    :catch_23
    move-exception v0

    goto :goto_48

    :catchall_25
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_51

    :catch_2a
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2e
    :try_start_2e
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_38
    move-exception v2

    move-object v1, v0

    :goto_3a
    invoke-direct {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
    :try_end_3d
    .catchall {:try_start_2e .. :try_end_3d} :catchall_50

    :try_start_3d
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    :goto_40
    iget-wide v0, v0, Lcom/sun/mail/imap/protocol/Status;->uidvalidity:J
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_55

    monitor-exit p0

    return-wide v0

    :catch_44
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_48
    :try_start_48
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "Cannot obtain UIDValidity"

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_50
    .catchall {:try_start_48 .. :try_end_50} :catchall_50

    :catchall_50
    move-exception v0

    :goto_51
    :try_start_51
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    throw v0
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_55

    :catchall_55
    move-exception v0

    monitor-exit p0

    throw v0
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
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v0, :cond_2b

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_63

    :try_start_8
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object v0

    iget v0, v0, Lcom/sun/mail/imap/protocol/Status;->unseen:I
    :try_end_e
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_8 .. :try_end_e} :catch_28
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_8 .. :try_end_e} :catch_1b
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_8 .. :try_end_e} :catch_10
    .catchall {:try_start_8 .. :try_end_e} :catchall_63

    monitor-exit p0

    return v0

    :catch_10
    move-exception v0

    :try_start_11
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1b
    move-exception v0

    new-instance v1, Ljavax/mail/StoreClosedException;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v1
    :try_end_28
    .catchall {:try_start_11 .. :try_end_28} :catchall_63

    :catch_28
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    :cond_2b
    :try_start_2b
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    sget-object v1, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_63

    :try_start_35
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_38
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_35 .. :try_end_38} :catch_58
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_35 .. :try_end_38} :catch_4d
    .catchall {:try_start_35 .. :try_end_38} :catchall_63

    :try_start_38
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    new-instance v3, Ljavax/mail/search/FlagTerm;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Ljavax/mail/search/FlagTerm;-><init>(Ljavax/mail/Flags;Z)V

    invoke-virtual {v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljavax/mail/search/SearchTerm;)[I

    move-result-object v0

    array-length v0, v0

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_38 .. :try_end_48} :catchall_4a

    monitor-exit p0

    return v0

    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    :try_start_4c
    throw v0
    :try_end_4d
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4c .. :try_end_4d} :catch_58
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4c .. :try_end_4d} :catch_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_63

    :catch_4d
    move-exception v0

    :try_start_4e
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_58
    move-exception v0

    new-instance v1, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1
    :try_end_63
    .catchall {:try_start_4e .. :try_end_63} :catchall_63

    :catchall_63
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleResponse(Lcom/sun/mail/iap/Response;)V
    .registers 8

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBAD()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_18
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/IMAPStore;->handleResponseCode(Lcom/sun/mail/iap/Response;)V

    :cond_1f
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    iget-boolean p1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz p1, :cond_2d

    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->cleanup(Z)V

    :cond_2d
    return-void

    :cond_2e
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v0

    if-eqz v0, :cond_35

    return-void

    :cond_35
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isUnTagged()Z

    move-result v0

    if-nez v0, :cond_3c

    return-void

    :cond_3c
    instance-of v0, p1, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v0, :cond_5f

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UNEXPECTED RESPONSE : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;

    const-string v0, "CONTACT javamail@sun.com"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_5f
    check-cast p1, Lcom/sun/mail/imap/protocol/IMAPResponse;

    const-string v0, "EXISTS"

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_98

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result p1

    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    if-gt p1, v0, :cond_73

    return-void

    :cond_73
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    sub-int v0, p1, v0

    new-array v3, v0, [Ljavax/mail/Message;

    :goto_79
    if-lt v1, v0, :cond_7f

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageAddedListeners([Ljavax/mail/Message;)V

    return-void

    :cond_7f
    new-instance p1, Lcom/sun/mail/imap/IMAPMessage;

    iget v4, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    iget v5, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    invoke-direct {p1, p0, v4, v5}, Lcom/sun/mail/imap/IMAPMessage;-><init>(Lcom/sun/mail/imap/IMAPFolder;II)V

    aput-object p1, v3, v1

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_79

    :cond_98
    const-string v0, "EXPUNGE"

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_dd

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sun/mail/imap/IMAPMessage;->setExpunged(Z)V

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageNumber()I

    move-result p1

    :goto_af
    iget v3, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    if-lt p1, v3, :cond_c4

    iget p1, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    iget-boolean p1, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    if-eqz p1, :cond_110

    new-array p1, v2, [Ljavax/mail/Message;

    aput-object v0, p1, v1

    invoke-virtual {p0, v1, p1}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageRemovedListeners(Z[Ljavax/mail/Message;)V

    return-void

    :cond_c4
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v4

    if-nez v4, :cond_da

    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/mail/imap/IMAPMessage;->setSequenceNumber(I)V

    :cond_da
    add-int/lit8 p1, p1, 0x1

    goto :goto_af

    :cond_dd
    const-string v0, "FETCH"

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_102

    check-cast p1, Lcom/sun/mail/imap/protocol/FetchResponse;

    const-class v0, Ljavax/mail/Flags;

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v0

    check-cast v0, Ljavax/mail/Flags;

    if-eqz v0, :cond_110

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object p1

    if-eqz p1, :cond_110

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/IMAPMessage;->_setFlags(Ljavax/mail/Flags;)V

    invoke-virtual {p0, v2, p1}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageChangedListeners(ILjavax/mail/Message;)V

    return-void

    :cond_102
    const-string v0, "RECENT"

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_110

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I

    :cond_110
    return-void
.end method

.method handleResponses([Lcom/sun/mail/iap/Response;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-lt v0, v1, :cond_5

    return-void

    :cond_5
    aget-object v1, p1, v0

    if-eqz v1, :cond_e

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->handleResponse(Lcom/sun/mail/iap/Response;)V

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public declared-synchronized hasNewMessages()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_47

    const/4 v2, 0x1

    :try_start_a
    invoke-direct {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V
    :try_end_d
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_a .. :try_end_d} :catch_22
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_a .. :try_end_d} :catch_17
    .catchall {:try_start_a .. :try_end_d} :catchall_15

    :try_start_d
    iget v3, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I

    if-lez v3, :cond_12

    const/4 v1, 0x1

    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_15

    monitor-exit p0

    return v1

    :catchall_15
    move-exception v1

    goto :goto_2d

    :catch_17
    move-exception v1

    :try_start_18
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_22
    move-exception v1

    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_15

    :try_start_2e
    throw v1

    :cond_2f
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$7;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/IMAPFolder$7;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_3d
    .catchall {:try_start_2e .. :try_end_3d} :catchall_47

    if-nez v0, :cond_41

    monitor-exit p0

    return v1

    :cond_41
    :try_start_41
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_47

    monitor-exit p0

    return v0

    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public idle()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    const-string v0, "IDLE not supported"

    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$19;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/IMAPFolder$19;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_19

    monitor-exit p0

    return-void

    :cond_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_60

    :goto_1a
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readIdleResponse()Lcom/sun/mail/iap/Response;

    move-result-object v0

    :try_start_20
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_23
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_20 .. :try_end_23} :catch_5b
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_20 .. :try_end_23} :catch_50

    if-eqz v0, :cond_36

    :try_start_25
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->processIdleResponse(Lcom/sun/mail/iap/Response;)Z

    move-result v0

    if-nez v0, :cond_32

    goto :goto_36

    :cond_32
    monitor-exit v1

    goto :goto_1a

    :catchall_34
    move-exception v0

    goto :goto_4e

    :cond_36
    :goto_36
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_25 .. :try_end_3f} :catchall_34

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getMinIdleTime()I

    move-result v0

    if-lez v0, :cond_4d

    int-to-long v0, v0

    :try_start_4a
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4d
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_4d} :catch_4d

    :catch_4d
    :cond_4d
    return-void

    :goto_4e
    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_34

    :try_start_4f
    throw v0
    :try_end_50
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4f .. :try_end_50} :catch_5b
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4f .. :try_end_50} :catch_50

    :catch_50
    move-exception v0

    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_5b
    move-exception v0

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V

    goto :goto_1a

    :catchall_60
    move-exception v0

    :try_start_61
    monitor-exit p0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v0
.end method

.method public declared-synchronized isOpen()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_14

    :try_start_4
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_11

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    :try_start_9
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V
    :try_end_c
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_9 .. :try_end_c} :catch_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_11

    :catch_c
    :cond_c
    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_11

    :try_start_d
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_14

    monitor-exit p0

    return v0

    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    :try_start_13
    throw v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_14

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSubscribed()Z
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    if-eqz v1, :cond_1f

    iget-char v1, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    if-eqz v1, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v2, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_21

    :cond_1f
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_3c

    :goto_21
    :try_start_21
    new-instance v2, Lcom/sun/mail/imap/IMAPFolder$4;

    invoke-direct {v2, p0, v1}, Lcom/sun/mail/imap/IMAPFolder$4;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sun/mail/imap/protocol/ListInfo;
    :try_end_2c
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_21 .. :try_end_2c} :catch_2d
    .catchall {:try_start_21 .. :try_end_2c} :catchall_3c

    move-object v0, v2

    :catch_2d
    if-eqz v0, :cond_39

    :try_start_2f
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->findName([Lcom/sun/mail/imap/protocol/ListInfo;Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/sun/mail/imap/protocol/ListInfo;->canOpen:Z
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_3c

    monitor-exit p0

    return v0

    :cond_39
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public list(Ljava/lang/String;)[Ljavax/mail/Folder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doList(Ljava/lang/String;Z)[Ljavax/mail/Folder;

    move-result-object p1

    return-object p1
.end method

.method public listRights(Ljava/lang/String;)[Lcom/sun/mail/imap/Rights;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "ACL not supported"

    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$16;

    invoke-direct {v1, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$16;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sun/mail/imap/Rights;

    return-object p1
.end method

.method public listSubscribed(Ljava/lang/String;)[Ljavax/mail/Folder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doList(Ljava/lang/String;Z)[Ljavax/mail/Folder;

    move-result-object p1

    return-object p1
.end method

.method public myRights()Lcom/sun/mail/imap/Rights;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "ACL not supported"

    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$17;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/IMAPFolder$17;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/Rights;

    return-object v0
.end method

.method public declared-synchronized open(I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkClosed()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/IMAPStore;->getProtocol(Lcom/sun/mail/imap/IMAPFolder;)Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_eb

    :try_start_11
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v1, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2a

    :try_start_1b
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;

    move-result-object v4

    goto :goto_32

    :catch_24
    move-exception p1

    goto/16 :goto_a7

    :catch_27
    move-exception p1

    goto/16 :goto_bb

    :cond_2a
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->select(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;

    move-result-object v4
    :try_end_32
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_1b .. :try_end_32} :catch_27
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1b .. :try_end_32} :catch_24
    .catchall {:try_start_1b .. :try_end_32} :catchall_e8

    :goto_32
    :try_start_32
    iget v5, v4, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    if-eq v5, p1, :cond_68

    const/4 v5, 0x2

    if-ne p1, v5, :cond_47

    iget p1, v4, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    if-ne p1, v3, :cond_47

    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast p1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPStore;->allowReadOnlySelect()Z

    move-result p1
    :try_end_45
    .catchall {:try_start_32 .. :try_end_45} :catchall_e8

    if-nez p1, :cond_68

    :cond_47
    :try_start_47
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    invoke-direct {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V
    :try_end_4f
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_47 .. :try_end_4f} :catch_50
    .catchall {:try_start_47 .. :try_end_4f} :catchall_5e

    goto :goto_5e

    :catch_50
    :try_start_50
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_55
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_50 .. :try_end_55} :catch_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_59

    :catch_55
    :try_start_55
    invoke-direct {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    goto :goto_5e

    :catchall_59
    move-exception p1

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    throw p1
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_5e

    :catchall_5e
    :goto_5e
    :try_start_5e
    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    new-instance p1, Ljavax/mail/ReadOnlyFolderException;

    const-string v1, "Cannot open in desired mode"

    invoke-direct {p1, p0, v1}, Ljavax/mail/ReadOnlyFolderException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw p1

    :cond_68
    iput-boolean v3, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    iget p1, v4, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    iput p1, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I

    iget-object p1, v4, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->availableFlags:Ljavax/mail/Flags;

    iget-object p1, v4, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->permanentFlags:Ljavax/mail/Flags;

    iget p1, v4, Lcom/sun/mail/imap/protocol/MailboxInfo;->total:I

    iput p1, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    iput p1, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    iget p1, v4, Lcom/sun/mail/imap/protocol/MailboxInfo;->recent:I

    iput p1, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I

    iget-wide v5, v4, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidvalidity:J

    iput-wide v5, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:J

    iget-wide v4, v4, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidnext:J

    iput-wide v4, p0, Lcom/sun/mail/imap/IMAPFolder;->uidnext:J

    new-instance p1, Ljava/util/Vector;

    iget v4, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    invoke-direct {p1, v4}, Ljava/util/Vector;-><init>(I)V

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    :goto_93
    iget p1, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    if-lt v2, p1, :cond_9a

    monitor-exit v0

    move-object p1, v1

    goto :goto_c1

    :cond_9a
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    new-instance v4, Lcom/sun/mail/imap/IMAPMessage;

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v4, p0, v2, v2}, Lcom/sun/mail/imap/IMAPMessage;-><init>(Lcom/sun/mail/imap/IMAPFolder;II)V

    invoke-virtual {p1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_a6
    .catchall {:try_start_5e .. :try_end_a6} :catchall_e8

    goto :goto_93

    :goto_a7
    :try_start_a7
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_ac
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_a7 .. :try_end_ac} :catch_ac
    .catchall {:try_start_a7 .. :try_end_ac} :catchall_ac

    :catch_ac
    :catchall_ac
    :try_start_ac
    invoke-direct {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :goto_bb
    invoke-direct {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    monitor-exit v0
    :try_end_c1
    .catchall {:try_start_ac .. :try_end_c1} :catchall_e8

    :goto_c1
    if-eqz p1, :cond_dd

    :try_start_c3
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    and-int/2addr v0, v3

    if-nez v0, :cond_d3

    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "folder cannot contain messages"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d3
    new-instance v0, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_dd
    iput-boolean v3, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    iput v3, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->notifyConnectionListeners(I)V
    :try_end_e6
    .catchall {:try_start_c3 .. :try_end_e6} :catchall_eb

    monitor-exit p0

    return-void

    :catchall_e8
    move-exception p1

    :try_start_e9
    monitor-exit v0
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_e8

    :try_start_ea
    throw p1
    :try_end_eb
    .catchall {:try_start_ea .. :try_end_eb} :catchall_eb

    :catchall_eb
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeACL(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "ACL not supported"

    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$15;

    invoke-direct {v1, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$15;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    return-void
.end method

.method public removeRights(Lcom/sun/mail/imap/ACL;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/16 v0, 0x2d

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->setACL(Lcom/sun/mail/imap/ACL;C)V

    return-void
.end method

.method public declared-synchronized renameTo(Ljavax/mail/Folder;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkClosed()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    invoke-virtual {p1}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    if-eq v0, v1, :cond_17

    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "Can\'t rename across Stores"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$9;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$9;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Folder;)V

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_30

    const/4 v1, 0x0

    if-nez v0, :cond_25

    monitor-exit p0

    return v1

    :cond_25
    :try_start_25
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->notifyFolderRenamedListeners(Ljavax/mail/Folder;)V
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_30

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_4d

    const/4 v0, 0x0

    :try_start_5
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_8
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_5 .. :try_end_8} :catch_47
    .catch Ljavax/mail/search/SearchException; {:try_start_5 .. :try_end_8} :catch_41
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_8} :catch_36
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_8} :catch_2b
    .catchall {:try_start_5 .. :try_end_8} :catchall_4d

    :try_start_8
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljavax/mail/search/SearchTerm;)[I

    move-result-object v2

    if-eqz v2, :cond_25

    array-length v0, v2

    new-array v0, v0, [Lcom/sun/mail/imap/IMAPMessage;

    const/4 v3, 0x0

    :goto_16
    array-length v4, v2

    if-lt v3, v4, :cond_1a

    goto :goto_25

    :cond_1a
    aget v4, v2, v3

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_25
    :goto_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_28

    monitor-exit p0

    return-object v0

    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    :try_start_2a
    throw v0
    :try_end_2b
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_2a .. :try_end_2b} :catch_47
    .catch Ljavax/mail/search/SearchException; {:try_start_2a .. :try_end_2b} :catch_41
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2a .. :try_end_2b} :catch_36
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2a .. :try_end_2b} :catch_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_4d

    :catch_2b
    move-exception p1

    :try_start_2c
    new-instance v0, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_36
    move-exception p1

    new-instance v0, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0

    :catch_41
    invoke-super {p0, p1}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;

    move-result-object p1
    :try_end_45
    .catchall {:try_start_2c .. :try_end_45} :catchall_4d

    monitor-exit p0

    return-object p1

    :catch_47
    :try_start_47
    invoke-super {p0, p1}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;

    move-result-object p1
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_4d

    monitor-exit p0

    return-object p1

    :catchall_4d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    array-length v0, p2
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_60

    if-nez v0, :cond_9

    monitor-exit p0

    return-object p2

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_c
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_9 .. :try_end_c} :catch_5a
    .catch Ljavax/mail/search/SearchException; {:try_start_9 .. :try_end_c} :catch_54
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_9 .. :try_end_c} :catch_49
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_9 .. :try_end_c} :catch_3e
    .catchall {:try_start_9 .. :try_end_c} :catchall_60

    :try_start_c
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2, v2}, Lcom/sun/mail/imap/Utility;->toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v3

    if-nez v3, :cond_1f

    new-instance v1, Ljavax/mail/MessageRemovedException;

    const-string v2, "Messages have been removed"

    invoke-direct {v1, v2}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    invoke-virtual {v1, v3, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search([Lcom/sun/mail/imap/protocol/MessageSet;Ljavax/mail/search/SearchTerm;)[I

    move-result-object v1

    if-eqz v1, :cond_38

    array-length v2, v1

    new-array v2, v2, [Lcom/sun/mail/imap/IMAPMessage;

    const/4 v3, 0x0

    :goto_29
    array-length v4, v1

    if-lt v3, v4, :cond_2d

    goto :goto_38

    :cond_2d
    aget v4, v1, v3

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_38
    :goto_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_c .. :try_end_39} :catchall_3b

    monitor-exit p0

    return-object v2

    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    :try_start_3d
    throw v1
    :try_end_3e
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_3d .. :try_end_3e} :catch_5a
    .catch Ljavax/mail/search/SearchException; {:try_start_3d .. :try_end_3e} :catch_54
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_3d .. :try_end_3e} :catch_49
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3d .. :try_end_3e} :catch_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_60

    :catch_3e
    move-exception p1

    :try_start_3f
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_49
    move-exception p1

    new-instance p2, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw p2

    :catch_54
    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;

    move-result-object p1
    :try_end_58
    .catchall {:try_start_3f .. :try_end_58} :catchall_60

    monitor-exit p0

    return-object p1

    :catch_5a
    :try_start_5a
    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;

    move-result-object p1
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_60

    monitor-exit p0

    return-object p1

    :catchall_60
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFlags([Ljavax/mail/Message;Ljavax/mail/Flags;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    invoke-direct {p0, p2}, Lcom/sun/mail/imap/IMAPFolder;->checkFlags(Ljavax/mail/Flags;)V

    array-length v0, p1
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_42

    if-nez v0, :cond_c

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_42

    :try_start_f
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/sun/mail/imap/Utility;->toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object p1

    if-nez p1, :cond_22

    new-instance p1, Ljavax/mail/MessageRemovedException;

    const-string p2, "Messages have been removed"

    invoke-direct {p1, p2}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_22
    invoke-virtual {v1, p1, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->storeFlags([Lcom/sun/mail/imap/protocol/MessageSet;Ljavax/mail/Flags;Z)V
    :try_end_25
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_f .. :try_end_25} :catch_35
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_f .. :try_end_25} :catch_2a
    .catchall {:try_start_f .. :try_end_25} :catchall_28

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_28

    monitor-exit p0

    return-void

    :catchall_28
    move-exception p1

    goto :goto_40

    :catch_2a
    move-exception p1

    :try_start_2b
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_35
    move-exception p1

    new-instance p2, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw p2

    :goto_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_2b .. :try_end_41} :catchall_28

    :try_start_41
    throw p1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_42

    :catchall_42
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setQuota(Ljavax/mail/Quota;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "QUOTA not supported"

    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$13;

    invoke-direct {v1, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$13;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Quota;)V

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized setSubscribed(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$5;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$5;-><init>(Lcom/sun/mail/imap/IMAPFolder;Z)V

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method waitIfIdle()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    :catch_0
    :goto_0
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleAbort()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_17} :catch_0

    goto :goto_0
.end method
