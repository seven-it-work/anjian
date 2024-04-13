.class public Lcom/sun/mail/imap/IMAPStore;
.super Ljavax/mail/Store;

# interfaces
.implements Lcom/sun/mail/iap/ResponseHandler;
.implements Ljavax/mail/QuotaAwareStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/imap/IMAPStore$ConnectionPool;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final RESPONSE:I = 0x3e8


# instance fields
.field private appendBufferSize:I

.field private authorizationID:Ljava/lang/String;

.field private blksize:I

.field private volatile connected:Z

.field private defaultPort:I

.field private disableAuthLogin:Z

.field private disableAuthPlain:Z

.field private enableImapEvents:Z

.field private enableSASL:Z

.field private enableStartTLS:Z

.field private forcePasswordRefresh:Z

.field private host:Ljava/lang/String;

.field private isSSL:Z

.field private minIdleTime:I

.field private name:Ljava/lang/String;

.field private namespaces:Lcom/sun/mail/imap/protocol/Namespaces;

.field private out:Ljava/io/PrintStream;

.field private password:Ljava/lang/String;

.field private pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

.field private port:I

.field private proxyAuthUser:Ljava/lang/String;

.field private saslMechanisms:[Ljava/lang/String;

.field private saslRealm:Ljava/lang/String;

.field private statusCacheTimeout:I

.field private user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .registers 9

    const-string v3, "imap"

    const/16 v4, 0x8f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sun/mail/imap/IMAPStore;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;IZ)V

    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;IZ)V
    .registers 9

    invoke-direct {p0, p1, p2}, Ljavax/mail/Store;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V

    const-string v0, "imap"

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    const/16 v0, 0x8f

    iput v0, p0, Lcom/sun/mail/imap/IMAPStore;->defaultPort:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->isSSL:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    const/16 v2, 0x4000

    iput v2, p0, Lcom/sun/mail/imap/IMAPStore;->blksize:I

    const/16 v2, 0x3e8

    iput v2, p0, Lcom/sun/mail/imap/IMAPStore;->statusCacheTimeout:I

    iput v1, p0, Lcom/sun/mail/imap/IMAPStore;->appendBufferSize:I

    const/16 v2, 0xa

    iput v2, p0, Lcom/sun/mail/imap/IMAPStore;->minIdleTime:I

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->disableAuthLogin:Z

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->disableAuthPlain:Z

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->enableStartTLS:Z

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->enableSASL:Z

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->forcePasswordRefresh:Z

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->enableImapEvents:Z

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->connected:Z

    new-instance v0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-direct {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    if-eqz p2, :cond_3a

    invoke-virtual {p2}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object p3

    :cond_3a
    iput-object p3, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    iput p4, p0, Lcom/sun/mail/imap/IMAPStore;->defaultPort:I

    iput-boolean p5, p0, Lcom/sun/mail/imap/IMAPStore;->isSSL:Z

    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    invoke-static {p2, p4, p5}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$0(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;J)V

    invoke-virtual {p1}, Ljavax/mail/Session;->getDebug()Z

    move-result p2

    iput-boolean p2, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    invoke-virtual {p1}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object p2

    iput-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    if-nez p2, :cond_5d

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    :cond_5d
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "mail."

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ".connectionpool.debug"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x1

    if-eqz p2, :cond_84

    const-string p5, "true"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_84

    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {p2, p4}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$1(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Z)V

    :cond_84
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "mail."

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ".partialfetch"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_b3

    const-string p5, "false"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b3

    iput v1, p0, Lcom/sun/mail/imap/IMAPStore;->blksize:I

    iget-boolean p2, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz p2, :cond_e9

    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string p5, "DEBUG: mail.imap.partialfetch: false"

    :goto_af
    invoke-virtual {p2, p5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_e9

    :cond_b3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "mail."

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ".fetchsize"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_d2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/sun/mail/imap/IMAPStore;->blksize:I

    :cond_d2
    iget-boolean p2, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz p2, :cond_e9

    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "DEBUG: mail.imap.fetchsize: "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sun/mail/imap/IMAPStore;->blksize:I

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_af

    :cond_e9
    :goto_e9
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "mail."

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ".statuscachetimeout"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_121

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/sun/mail/imap/IMAPStore;->statusCacheTimeout:I

    iget-boolean p2, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz p2, :cond_121

    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "DEBUG: mail.imap.statuscachetimeout: "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sun/mail/imap/IMAPStore;->statusCacheTimeout:I

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_121
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "mail."

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ".appendbuffersize"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_159

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/sun/mail/imap/IMAPStore;->appendBufferSize:I

    iget-boolean p2, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz p2, :cond_159

    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "DEBUG: mail.imap.appendbuffersize: "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sun/mail/imap/IMAPStore;->appendBufferSize:I

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_159
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "mail."

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ".minidletime"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_191

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/sun/mail/imap/IMAPStore;->minIdleTime:I

    iget-boolean p2, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz p2, :cond_191

    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "DEBUG: mail.imap.minidletime: "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sun/mail/imap/IMAPStore;->minIdleTime:I

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_191
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "mail."

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ".connectionpoolsize"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1d6

    :try_start_1aa
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_1b5

    iget-object p5, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {p5, p2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$2(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;I)V
    :try_end_1b5
    .catch Ljava/lang/NumberFormatException; {:try_start_1aa .. :try_end_1b5} :catch_1b5

    :catch_1b5
    :cond_1b5
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z
    invoke-static {p2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result p2

    if-eqz p2, :cond_1d6

    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "DEBUG: mail.imap.connectionpoolsize: "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->poolSize:I
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$4(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I

    move-result v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1d6
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "mail."

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ".connectionpooltimeout"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_21c

    :try_start_1ef
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_1fb

    iget-object p5, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    int-to-long v0, p2

    invoke-static {p5, v0, v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$5(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;J)V
    :try_end_1fb
    .catch Ljava/lang/NumberFormatException; {:try_start_1ef .. :try_end_1fb} :catch_1fb

    :catch_1fb
    :cond_1fb
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z
    invoke-static {p2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result p2

    if-eqz p2, :cond_21c

    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "DEBUG: mail.imap.connectionpooltimeout: "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->clientTimeoutInterval:J
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$6(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_21c
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "mail."

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ".servertimeout"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_262

    :try_start_235
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_241

    iget-object p5, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    int-to-long v0, p2

    invoke-static {p5, v0, v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$7(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;J)V
    :try_end_241
    .catch Ljava/lang/NumberFormatException; {:try_start_235 .. :try_end_241} :catch_241

    :catch_241
    :cond_241
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z
    invoke-static {p2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result p2

    if-eqz p2, :cond_262

    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "DEBUG: mail.imap.servertimeout: "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->serverTimeoutInterval:J
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$8(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_262
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "mail."

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ".separatestoreconnection"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_297

    const-string p5, "true"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_297

    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z
    invoke-static {p2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result p2

    if-eqz p2, :cond_292

    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string p5, "DEBUG: dedicate a store connection"

    invoke-virtual {p2, p5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_292
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {p2, p4}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$9(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Z)V

    :cond_297
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "mail."

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ".proxyauth.user"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2cb

    iput-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    iget-boolean p2, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz p2, :cond_2cb

    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "DEBUG: mail.imap.proxyauth.user: "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2cb
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "mail."

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ".auth.login.disable"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2f9

    const-string p5, "true"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2f9

    iget-boolean p2, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz p2, :cond_2f7

    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string p5, "DEBUG: disable AUTH=LOGIN"

    invoke-virtual {p2, p5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2f7
    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPStore;->disableAuthLogin:Z

    :cond_2f9
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "mail."

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ".auth.plain.disable"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_327

    const-string p5, "true"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_327

    iget-boolean p2, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz p2, :cond_325

    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string p5, "DEBUG: disable AUTH=PLAIN"

    invoke-virtual {p2, p5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_325
    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPStore;->disableAuthPlain:Z

    :cond_327
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "mail."

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ".starttls.enable"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_355

    const-string p5, "true"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_355

    iget-boolean p2, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz p2, :cond_353

    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string p5, "DEBUG: enable STARTTLS"

    invoke-virtual {p2, p5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_353
    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPStore;->enableStartTLS:Z

    :cond_355
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "mail."

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ".sasl.enable"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_383

    const-string p5, "true"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_383

    iget-boolean p2, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz p2, :cond_381

    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string p5, "DEBUG: enable SASL"

    invoke-virtual {p2, p5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_381
    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPStore;->enableSASL:Z

    :cond_383
    iget-boolean p2, p0, Lcom/sun/mail/imap/IMAPStore;->enableSASL:Z

    if-eqz p2, :cond_3ec

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "mail."

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ".sasl.mechanisms"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3ec

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p5

    if-lez p5, :cond_3ec

    iget-boolean p5, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz p5, :cond_3bd

    iget-object p5, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DEBUG: SASL mechanisms allowed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3bd
    new-instance p5, Ljava/util/Vector;

    const/4 v0, 0x5

    invoke-direct {p5, v0}, Ljava/util/Vector;-><init>(I)V

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, " ,"

    invoke-direct {v0, p2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3ca
    :goto_3ca
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-nez p2, :cond_3de

    invoke-virtual {p5}, Ljava/util/Vector;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->saslMechanisms:[Ljava/lang/String;

    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->saslMechanisms:[Ljava/lang/String;

    invoke-virtual {p5, p2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto :goto_3ec

    :cond_3de
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3ca

    invoke-virtual {p5, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3ca

    :cond_3ec
    :goto_3ec
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "mail."

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ".sasl.authorizationid"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_420

    iput-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->authorizationID:Ljava/lang/String;

    iget-boolean p2, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz p2, :cond_420

    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "DEBUG: mail.imap.sasl.authorizationid: "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->authorizationID:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_420
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "mail."

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ".sasl.realm"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_454

    iput-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->saslRealm:Ljava/lang/String;

    iget-boolean p2, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz p2, :cond_454

    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "DEBUG: mail.imap.sasl.realm: "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->saslRealm:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_454
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "mail."

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ".forcepasswordrefresh"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_482

    const-string p5, "true"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_482

    iget-boolean p2, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz p2, :cond_480

    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string p5, "DEBUG: enable forcePasswordRefresh"

    invoke-virtual {p2, p5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_480
    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPStore;->forcePasswordRefresh:Z

    :cond_482
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "mail."

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".enableimapevents"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4b0

    const-string p2, "true"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4b0

    iget-boolean p1, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz p1, :cond_4ae

    iget-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string p2, "DEBUG: enable IMAP events"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4ae
    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPStore;->enableImapEvents:Z

    :cond_4b0
    return-void
.end method

.method private checkConnected()V
    .registers 3

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->connected:Z

    if-nez v0, :cond_10

    const/4 v0, 0x0

    invoke-super {p0, v0}, Ljavax/mail/Store;->setConnected(Z)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    return-void
.end method

.method private cleanup()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->cleanup(Z)V

    return-void
.end method

.method private cleanup(Z)V
    .registers 10

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG: IMAPStore cleanup, force "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_17
    const/4 v0, 0x0

    move-object v1, v0

    :goto_19
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v2

    :try_start_1c
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->folders:Ljava/util/Vector;
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$13(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_32

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->folders:Ljava/util/Vector;
    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$13(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v1

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3, v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$14(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Ljava/util/Vector;)V

    const/4 v3, 0x0

    goto :goto_33

    :cond_32
    const/4 v3, 0x1

    :goto_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_1c .. :try_end_34} :catchall_82

    if-nez v3, :cond_66

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_3b
    if-lt v3, v2, :cond_3e

    goto :goto_19

    :cond_3e
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/mail/imap/IMAPFolder;

    if-eqz p1, :cond_55

    :try_start_46
    iget-boolean v6, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v6, :cond_51

    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v7, "DEBUG: force folder to close"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_51
    invoke-virtual {v5}, Lcom/sun/mail/imap/IMAPFolder;->forceClose()V

    goto :goto_63

    :cond_55
    iget-boolean v6, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v6, :cond_60

    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v7, "DEBUG: close folder"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_60
    invoke-virtual {v5, v4}, Lcom/sun/mail/imap/IMAPFolder;->close(Z)V
    :try_end_63
    .catch Ljavax/mail/MessagingException; {:try_start_46 .. :try_end_63} :catch_63
    .catch Ljava/lang/IllegalStateException; {:try_start_46 .. :try_end_63} :catch_63

    :catch_63
    :goto_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    :cond_66
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v0

    :try_start_69
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPStore;->emptyConnectionPool(Z)V

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_7f

    iput-boolean v4, p0, Lcom/sun/mail/imap/IMAPStore;->connected:Z

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPStore;->notifyConnectionListeners(I)V

    iget-boolean p1, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz p1, :cond_7e

    iget-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v0, "DEBUG: IMAPStore cleanup done"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7e
    return-void

    :catchall_7f
    move-exception p1

    :try_start_80
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw p1

    :catchall_82
    move-exception p1

    :try_start_83
    monitor-exit v2
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw p1
.end method

.method private emptyConnectionPool(Z)V
    .registers 5

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_f
    if-gez v1, :cond_2b

    iget-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {p1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Vector;->removeAllElements()V

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_46

    iget-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z
    invoke-static {p1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result p1

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v0, "DEBUG: removed all authenticated connections"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2a
    return-void

    :cond_2b
    :try_start_2b
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    if-eqz p1, :cond_40

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    goto :goto_43

    :cond_40
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_43
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2b .. :try_end_43} :catch_43
    .catchall {:try_start_2b .. :try_end_43} :catchall_46

    :catch_43
    :goto_43
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    :catchall_46
    move-exception p1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p1
.end method

.method private declared-synchronized getNamespaces()Lcom/sun/mail/imap/protocol/Namespaces;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->namespaces:Lcom/sun/mail/imap/protocol/Namespaces;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_58

    if-nez v1, :cond_54

    :try_start_9
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1
    :try_end_d
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_9 .. :try_end_d} :catch_4e
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_9 .. :try_end_d} :catch_37
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_9 .. :try_end_d} :catch_29
    .catchall {:try_start_9 .. :try_end_d} :catchall_24

    :try_start_d
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->namespace()Lcom/sun/mail/imap/protocol/Namespaces;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->namespaces:Lcom/sun/mail/imap/protocol/Namespaces;
    :try_end_13
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_d .. :try_end_13} :catch_22
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_d .. :try_end_13} :catch_20
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_d .. :try_end_13} :catch_1e
    .catchall {:try_start_d .. :try_end_13} :catchall_1c

    :try_start_13
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    if-nez v1, :cond_54

    :goto_18
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_58

    goto :goto_54

    :catchall_1c
    move-exception v0

    goto :goto_45

    :catch_1e
    move-exception v0

    goto :goto_2d

    :catch_20
    move-exception v0

    goto :goto_3b

    :catch_22
    move-object v0, v1

    goto :goto_4e

    :catchall_24
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_45

    :catch_29
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2d
    :try_start_2d
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_37
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_3b
    new-instance v2, Ljavax/mail/StoreClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v2
    :try_end_45
    .catchall {:try_start_2d .. :try_end_45} :catchall_1c

    :goto_45
    :try_start_45
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    if-nez v1, :cond_4d

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V

    :cond_4d
    throw v0

    :catch_4e
    :goto_4e
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    if-nez v0, :cond_54

    goto :goto_18

    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->namespaces:Lcom/sun/mail/imap/protocol/Namespaces;
    :try_end_56
    .catchall {:try_start_45 .. :try_end_56} :catchall_58

    monitor-exit p0

    return-object v0

    :catchall_58
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private login(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->enableStartTLS:Z

    if-eqz v0, :cond_12

    const-string v0, "STARTTLS"

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->startTLS()V

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capability()V

    :cond_12
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_19

    return-void

    :cond_19
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getCapabilities()Ljava/util/Map;

    move-result-object v0

    const-string v1, "__PRELOGIN__"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->authorizationID:Ljava/lang/String;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->authorizationID:Ljava/lang/String;

    goto :goto_33

    :cond_2b
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    goto :goto_33

    :cond_32
    move-object v0, p2

    :goto_33
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPStore;->enableSASL:Z

    if-eqz v1, :cond_42

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->saslMechanisms:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->saslRealm:Ljava/lang/String;

    move-object v1, p1

    move-object v4, v0

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->sasllogin([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_42
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isAuthenticated()Z

    move-result v1

    if-nez v1, :cond_84

    const-string v1, "AUTH=PLAIN"

    invoke-virtual {p1, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPStore;->disableAuthPlain:Z

    if-nez v1, :cond_58

    invoke-virtual {p1, v0, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authplain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_84

    :cond_58
    const-string v0, "AUTH-LOGIN"

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_68

    const-string v0, "AUTH=LOGIN"

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    :cond_68
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->disableAuthLogin:Z

    if-nez v0, :cond_70

    invoke-virtual {p1, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authlogin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_84

    :cond_70
    const-string v0, "LOGINDISABLED"

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7c

    invoke-virtual {p1, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->login(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_84

    :cond_7c
    new-instance p1, Lcom/sun/mail/iap/ProtocolException;

    const-string p2, "No login methods supported!"

    invoke-direct {p1, p2}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_84
    :goto_84
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    if-eqz p2, :cond_8d

    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->proxyauth(Ljava/lang/String;)V

    :cond_8d
    const-string p2, "__PRELOGIN__"

    invoke-virtual {p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9b

    :try_start_95
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capability()V
    :try_end_98
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_95 .. :try_end_98} :catch_99
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_95 .. :try_end_98} :catch_9b

    return-void

    :catch_99
    move-exception p1

    throw p1

    :catch_9b
    :cond_9b
    return-void
.end method

.method private namespaceToFolders([Lcom/sun/mail/imap/protocol/Namespaces$Namespace;Ljava/lang/String;)[Ljavax/mail/Folder;
    .registers 10

    array-length v0, p1

    new-array v0, v0, [Ljavax/mail/Folder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    array-length v3, v0

    if-lt v2, v3, :cond_9

    return-object v0

    :cond_9
    aget-object v3, p1, v2

    iget-object v3, v3, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->prefix:Ljava/lang/String;

    if-nez p2, :cond_26

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_36

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-object v6, p1, v2

    iget-char v6, v6, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->delimiter:C

    if-ne v5, v6, :cond_36

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_36

    :cond_26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_36
    :goto_36
    new-instance v4, Lcom/sun/mail/imap/IMAPFolder;

    aget-object v5, p1, v2

    iget-char v5, v5, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->delimiter:C

    if-nez p2, :cond_40

    const/4 v6, 0x1

    goto :goto_41

    :cond_40
    const/4 v6, 0x0

    :goto_41
    invoke-direct {v4, v3, v5, p0, v6}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;Z)V

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method private timeoutConnections()V
    .registers 12

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->lastTimePruned:J
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$16(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v3

    const/4 v5, 0x0

    sub-long v5, v1, v3

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->pruningInterval:J
    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$17(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v1

    cmp-long v3, v5, v1

    if-lez v3, :cond_ee

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_ee

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z
    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v1

    if-eqz v1, :cond_68

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG: checking for connections to prune: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->lastTimePruned:J
    invoke-static {v6}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$16(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v6

    const/4 v8, 0x0

    sub-long v8, v4, v6

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG: clientTimeoutInterval: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->clientTimeoutInterval:J
    invoke-static {v4}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$6(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_68
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_73
    if-gtz v1, :cond_7f

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$0(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;J)V

    goto :goto_ee

    :cond_7f
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v3

    if-eqz v3, :cond_b1

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DEBUG: protocol last used: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J

    move-result-wide v7

    const/4 v9, 0x0

    sub-long v9, v5, v7

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_b1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J

    move-result-wide v5

    const/4 v7, 0x0

    sub-long v7, v3, v5

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->clientTimeoutInterval:J
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$6(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v3

    cmp-long v5, v7, v3

    if-lez v5, :cond_eb

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v3

    if-eqz v3, :cond_dc

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v4, "DEBUG: authenticated connection timed out"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v4, "DEBUG: logging out the connection"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_dc
    invoke-virtual {v2, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Vector;->removeElementAt(I)V
    :try_end_e8
    .catchall {:try_start_3 .. :try_end_e8} :catchall_f0

    :try_start_e8
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_eb
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_e8 .. :try_end_eb} :catch_eb
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_f0

    :catch_eb
    :cond_eb
    add-int/lit8 v1, v1, -0x1

    goto :goto_73

    :cond_ee
    :goto_ee
    :try_start_ee
    monitor-exit v0

    return-void

    :catchall_f0
    move-exception v1

    monitor-exit v0
    :try_end_f2
    .catchall {:try_start_ee .. :try_end_f2} :catchall_f0

    throw v1
.end method

.method private waitIfIdle()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    :catch_0
    :goto_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->idleState:I
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$19(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->idleState:I
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$19(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->idleProtocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$21(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleAbort()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$20(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;I)V

    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_26} :catch_0

    goto :goto_0
.end method


# virtual methods
.method allowReadOnlySelect()Z
    .registers 4

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".allowreadonlyselect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    return v0

    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_6e

    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    const/4 v0, 0x0

    :try_start_a
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v1
    :try_end_d
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_a .. :try_end_d} :catch_5c
    .catchall {:try_start_a .. :try_end_d} :catchall_5a

    :try_start_d
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_57

    if-eqz v2, :cond_31

    :try_start_1a
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z
    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG: close() - no connections "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_29
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V
    :try_end_2c
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1a .. :try_end_2c} :catch_5c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_5a

    :try_start_2c
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_6e

    monitor-exit p0

    return-void

    :cond_31
    :try_start_31
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1
    :try_end_35
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_31 .. :try_end_35} :catch_5c
    .catchall {:try_start_31 .. :try_end_35} :catchall_5a

    :try_start_35
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v0
    :try_end_38
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_35 .. :try_end_38} :catch_52
    .catchall {:try_start_35 .. :try_end_38} :catchall_4d

    :try_start_38
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_4a

    :try_start_42
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_45
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_42 .. :try_end_45} :catch_52
    .catchall {:try_start_42 .. :try_end_45} :catchall_4d

    :try_start_45
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_6e

    monitor-exit p0

    return-void

    :catchall_4a
    move-exception v2

    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    :try_start_4c
    throw v2
    :try_end_4d
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4c .. :try_end_4d} :catch_52
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_6a

    :catch_52
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_5d

    :catchall_57
    move-exception v2

    :try_start_58
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    :try_start_59
    throw v2
    :try_end_5a
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_59 .. :try_end_5a} :catch_5c
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception v1

    goto :goto_6a

    :catch_5c
    move-exception v1

    :goto_5d
    :try_start_5d
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V

    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_6a
    .catchall {:try_start_5d .. :try_end_6a} :catchall_5a

    :goto_6a
    :try_start_6a
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    throw v1
    :try_end_6e
    .catchall {:try_start_6a .. :try_end_6e} :catchall_6e

    :catchall_6e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljavax/mail/Store;->finalize()V

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->close()V

    return-void
.end method

.method getAppendBufferSize()I
    .registers 2

    iget v0, p0, Lcom/sun/mail/imap/IMAPStore;->appendBufferSize:I

    return v0
.end method

.method getConnectionPoolDebug()Z
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getDefaultFolder()Ljavax/mail/Folder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V

    new-instance v0, Lcom/sun/mail/imap/DefaultFolder;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/DefaultFolder;-><init>(Lcom/sun/mail/imap/IMAPStore;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getFetchBlockSize()I
    .registers 2

    iget v0, p0, Lcom/sun/mail/imap/IMAPStore;->blksize:I

    return v0
.end method

.method public declared-synchronized getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V

    new-instance v0, Lcom/sun/mail/imap/IMAPFolder;

    const v1, 0xffff

    invoke-direct {v0, p1, v1, p0}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getFolder(Ljavax/mail/URLName;)Ljavax/mail/Folder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V

    new-instance v0, Lcom/sun/mail/imap/IMAPFolder;

    invoke-virtual {p1}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object p1

    const v1, 0xffff

    invoke-direct {v0, p1, v1, p0}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getMinIdleTime()I
    .registers 2

    iget v0, p0, Lcom/sun/mail/imap/IMAPStore;->minIdleTime:I

    return v0
.end method

.method public getPersonalNamespaces()[Ljavax/mail/Folder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getNamespaces()Lcom/sun/mail/imap/protocol/Namespaces;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v1, v0, Lcom/sun/mail/imap/protocol/Namespaces;->personal:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    if-nez v1, :cond_b

    goto :goto_13

    :cond_b
    iget-object v0, v0, Lcom/sun/mail/imap/protocol/Namespaces;->personal:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/imap/IMAPStore;->namespaceToFolders([Lcom/sun/mail/imap/protocol/Namespaces$Namespace;Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object v0

    return-object v0

    :cond_13
    :goto_13
    invoke-super {p0}, Ljavax/mail/Store;->getPersonalNamespaces()[Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method getProtocol(Lcom/sun/mail/imap/IMAPFolder;)Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_5

    return-object v1

    :cond_5
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v2

    :try_start_8
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8f

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_32

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->separateStoreConnection:Z
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$11(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v3

    if-nez v3, :cond_8f

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->storeConnectionInUse:Z
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$12(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_8f

    :cond_32
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG: connection available -- size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v4}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_53
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J

    move-result-wide v5

    const/4 v7, 0x0

    sub-long v7, v3, v5

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->serverTimeoutInterval:J
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$8(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v3
    :try_end_79
    .catchall {:try_start_8 .. :try_end_79} :catchall_11f

    cmp-long v5, v7, v3

    if-lez v5, :cond_8a

    :try_start_7d
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V
    :try_end_80
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7d .. :try_end_80} :catch_81
    .catchall {:try_start_7d .. :try_end_80} :catchall_11f

    goto :goto_8a

    :catch_81
    :try_start_81
    invoke-virtual {v1, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V
    :try_end_87
    .catchall {:try_start_81 .. :try_end_87} :catchall_87

    :catchall_87
    :try_start_87
    monitor-exit v2

    goto/16 :goto_1

    :cond_8a
    :goto_8a
    invoke-virtual {v1, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    goto/16 :goto_fc

    :cond_8f
    :goto_8f
    iget-boolean v3, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v3, :cond_9a

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v4, "DEBUG: no connections in the pool, creating a new one"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_9a
    .catchall {:try_start_87 .. :try_end_9a} :catchall_11f

    :cond_9a
    :try_start_9a
    iget-boolean v3, p0, Lcom/sun/mail/imap/IMAPStore;->forcePasswordRefresh:Z
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9c} :catch_eb
    .catchall {:try_start_9a .. :try_end_9c} :catchall_11f

    if-eqz v3, :cond_c2

    :try_start_9e
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->host:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3
    :try_end_a4
    .catch Ljava/net/UnknownHostException; {:try_start_9e .. :try_end_a4} :catch_a6
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a4} :catch_eb
    .catchall {:try_start_9e .. :try_end_a4} :catchall_11f

    move-object v4, v3

    goto :goto_a7

    :catch_a6
    move-object v4, v0

    :goto_a7
    :try_start_a7
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    iget v5, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    invoke-virtual/range {v3 .. v8}, Ljavax/mail/Session;->requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/PasswordAuthentication;

    move-result-object v3

    if-eqz v3, :cond_c2

    invoke-virtual {v3}, Ljavax/mail/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    invoke-virtual {v3}, Ljavax/mail/PasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;

    :cond_c2
    new-instance v11, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->host:Ljava/lang/String;

    iget v6, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    invoke-virtual {v3}, Ljavax/mail/Session;->getDebug()Z

    move-result v7

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    invoke-virtual {v3}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v8

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    invoke-virtual {v3}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v9

    iget-boolean v10, p0, Lcom/sun/mail/imap/IMAPStore;->isSSL:Z

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/sun/mail/imap/protocol/IMAPProtocol;-><init>(Ljava/lang/String;Ljava/lang/String;IZLjava/io/PrintStream;Ljava/util/Properties;Z)V
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_e2} :catch_eb
    .catchall {:try_start_a7 .. :try_end_e2} :catchall_11f

    :try_start_e2
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;

    invoke-direct {p0, v11, v1, v3}, Lcom/sun/mail/imap/IMAPStore;->login(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e9} :catch_ea
    .catchall {:try_start_e2 .. :try_end_e9} :catchall_11f

    goto :goto_f1

    :catch_ea
    move-object v1, v11

    :catch_eb
    if-eqz v1, :cond_f0

    :try_start_ed
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_f0} :catch_f0
    .catchall {:try_start_ed .. :try_end_f0} :catchall_11f

    :catch_f0
    :cond_f0
    move-object v11, v0

    :goto_f1
    if-nez v11, :cond_fb

    :try_start_f3
    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "connection failure"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_fb
    move-object v1, v11

    :goto_fc
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->timeoutConnections()V

    if-eqz p1, :cond_11c

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->folders:Ljava/util/Vector;
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$13(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    if-nez v3, :cond_113

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    invoke-static {v3, v4}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$14(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Ljava/util/Vector;)V

    :cond_113
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->folders:Ljava/util/Vector;
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$13(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_11c
    monitor-exit v2

    goto/16 :goto_2

    :catchall_11f
    move-exception p1

    monitor-exit v2
    :try_end_121
    .catchall {:try_start_f3 .. :try_end_121} :catchall_11f

    throw p1
.end method

.method public declared-synchronized getQuota(Ljava/lang/String;)[Ljavax/mail/Quota;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_4d

    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1
    :try_end_9
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_5 .. :try_end_9} :catch_3b
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_9} :catch_30
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_9} :catch_25
    .catchall {:try_start_5 .. :try_end_9} :catchall_23

    :try_start_9
    invoke-virtual {v1, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getQuotaRoot(Ljava/lang/String;)[Ljavax/mail/Quota;

    move-result-object p1
    :try_end_d
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_9 .. :try_end_d} :catch_20
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_9 .. :try_end_d} :catch_1d
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_9 .. :try_end_d} :catch_1a
    .catchall {:try_start_9 .. :try_end_d} :catchall_17

    :try_start_d
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    if-nez v1, :cond_15

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_4d

    :cond_15
    monitor-exit p0

    return-object p1

    :catchall_17
    move-exception p1

    move-object v0, v1

    goto :goto_44

    :catch_1a
    move-exception p1

    move-object v0, v1

    goto :goto_26

    :catch_1d
    move-exception p1

    move-object v0, v1

    goto :goto_31

    :catch_20
    move-exception p1

    move-object v0, v1

    goto :goto_3c

    :catchall_23
    move-exception p1

    goto :goto_44

    :catch_25
    move-exception p1

    :goto_26
    :try_start_26
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_30
    move-exception p1

    :goto_31
    new-instance v1, Ljavax/mail/StoreClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v1

    :catch_3b
    move-exception p1

    :goto_3c
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "QUOTA not supported"

    invoke-direct {v1, v2, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_44
    .catchall {:try_start_26 .. :try_end_44} :catchall_23

    :goto_44
    :try_start_44
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    if-nez v0, :cond_4c

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V

    :cond_4c
    throw p1
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getSession()Ljavax/mail/Session;
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    return-object v0
.end method

.method public getSharedNamespaces()[Ljavax/mail/Folder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getNamespaces()Lcom/sun/mail/imap/protocol/Namespaces;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v1, v0, Lcom/sun/mail/imap/protocol/Namespaces;->shared:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    if-nez v1, :cond_b

    goto :goto_13

    :cond_b
    iget-object v0, v0, Lcom/sun/mail/imap/protocol/Namespaces;->shared:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/imap/IMAPStore;->namespaceToFolders([Lcom/sun/mail/imap/protocol/Namespaces$Namespace;Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object v0

    return-object v0

    :cond_13
    :goto_13
    invoke-super {p0}, Ljavax/mail/Store;->getSharedNamespaces()[Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method getStatusCacheTimeout()I
    .registers 2

    iget v0, p0, Lcom/sun/mail/imap/IMAPStore;->statusCacheTimeout:I

    return v0
.end method

.method getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_5

    return-object v1

    :cond_5
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v2

    :try_start_8
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->waitIfIdle()V

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6c

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v4, "DEBUG: getStoreProtocol() - no connections in the pool, creating a new one"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_c9

    :cond_26
    :try_start_26
    new-instance v11, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->host:Ljava/lang/String;

    iget v6, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    invoke-virtual {v3}, Ljavax/mail/Session;->getDebug()Z

    move-result v7

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    invoke-virtual {v3}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v8

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    invoke-virtual {v3}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v9

    iget-boolean v10, p0, Lcom/sun/mail/imap/IMAPStore;->isSSL:Z

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/sun/mail/imap/protocol/IMAPProtocol;-><init>(Ljava/lang/String;Ljava/lang/String;IZLjava/io/PrintStream;Ljava/util/Properties;Z)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_46} :catch_4f
    .catchall {:try_start_26 .. :try_end_46} :catchall_c9

    :try_start_46
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;

    invoke-direct {p0, v11, v1, v3}, Lcom/sun/mail/imap/IMAPStore;->login(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4d} :catch_4e
    .catchall {:try_start_46 .. :try_end_4d} :catchall_c9

    goto :goto_55

    :catch_4e
    move-object v1, v11

    :catch_4f
    if-eqz v1, :cond_54

    :try_start_51
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_c9

    :catch_54
    :cond_54
    move-object v11, v0

    :goto_55
    if-nez v11, :cond_5f

    :try_start_57
    new-instance v0, Lcom/sun/mail/iap/ConnectionException;

    const-string v1, "failed to create new store connection"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f
    invoke-virtual {v11, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_9e

    :cond_6c
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z
    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v1

    if-eqz v1, :cond_91

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG: getStoreProtocol() - connection available -- size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v4}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_91
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    :goto_9e
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->storeConnectionInUse:Z
    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$12(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v1
    :try_end_a4
    .catchall {:try_start_57 .. :try_end_a4} :catchall_c9

    if-eqz v1, :cond_ad

    :try_start_a6
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_ab
    .catch Ljava/lang/InterruptedException; {:try_start_a6 .. :try_end_ab} :catch_ab
    .catchall {:try_start_a6 .. :try_end_ab} :catchall_c9

    :catch_ab
    move-object v1, v0

    goto :goto_c3

    :cond_ad
    :try_start_ad
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$15(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Z)V

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z
    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v1

    if-eqz v1, :cond_c2

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v3, "DEBUG: getStoreProtocol() -- storeConnectionInUse"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_c2
    move-object v1, v11

    :goto_c3
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->timeoutConnections()V

    monitor-exit v2

    goto/16 :goto_2

    :catchall_c9
    move-exception v0

    monitor-exit v2
    :try_end_cb
    .catchall {:try_start_ad .. :try_end_cb} :catchall_c9

    throw v0
.end method

.method public getUserNamespaces(Ljava/lang/String;)[Ljavax/mail/Folder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getNamespaces()Lcom/sun/mail/imap/protocol/Namespaces;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v1, v0, Lcom/sun/mail/imap/protocol/Namespaces;->otherUsers:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    if-nez v1, :cond_b

    goto :goto_12

    :cond_b
    iget-object v0, v0, Lcom/sun/mail/imap/protocol/Namespaces;->otherUsers:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    invoke-direct {p0, v0, p1}, Lcom/sun/mail/imap/IMAPStore;->namespaceToFolders([Lcom/sun/mail/imap/protocol/Namespaces$Namespace;Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object p1

    return-object p1

    :cond_12
    :goto_12
    invoke-super {p0, p1}, Ljavax/mail/Store;->getUserNamespaces(Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object p1

    return-object p1
.end method

.method public handleResponse(Lcom/sun/mail/iap/Response;)V
    .registers 4

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

    if-eqz v0, :cond_1b

    :cond_18
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPStore;->handleResponseCode(Lcom/sun/mail/iap/Response;)V

    :cond_1b
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v1, "DEBUG: IMAPStore connection dead"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2c
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->connected:Z

    if-eqz v0, :cond_37

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isSynthetic()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPStore;->cleanup(Z)V

    :cond_37
    return-void
.end method

.method handleResponseCode(Lcom/sun/mail/iap/Response;)V
    .registers 8

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->getRest()Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2e

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_25

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "[ALERT]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    const/4 v2, 0x1

    :cond_25
    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_2e
    if-eqz v2, :cond_34

    invoke-virtual {p0, v3, v0}, Lcom/sun/mail/imap/IMAPStore;->notifyStoreListeners(ILjava/lang/String;)V

    return-void

    :cond_34
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isUnTagged()Z

    move-result p1

    if-eqz p1, :cond_44

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_44

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/IMAPStore;->notifyStoreListeners(ILjava/lang/String;)V

    :cond_44
    return-void
.end method

.method public declared-synchronized hasCapability(Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1
    :try_end_6
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_6} :catch_17
    .catchall {:try_start_2 .. :try_end_6} :catchall_15

    :try_start_6
    invoke-virtual {v1, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result p1
    :try_end_a
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_6 .. :try_end_a} :catch_12
    .catchall {:try_start_6 .. :try_end_a} :catchall_f

    :try_start_a
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_2b

    monitor-exit p0

    return p1

    :catchall_f
    move-exception p1

    move-object v0, v1

    goto :goto_27

    :catch_12
    move-exception p1

    move-object v0, v1

    goto :goto_18

    :catchall_15
    move-exception p1

    goto :goto_27

    :catch_17
    move-exception p1

    :goto_18
    if-nez v0, :cond_1d

    :try_start_1a
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V

    :cond_1d
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_15

    :goto_27
    :try_start_27
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    throw p1
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method hasSeparateStoreConnection()Z
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->separateStoreConnection:Z
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$11(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v0

    return v0
.end method

.method public idle()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_da

    const/4 v0, 0x0

    :try_start_6
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v1
    :try_end_9
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_6 .. :try_end_9} :catch_ba
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_6 .. :try_end_9} :catch_ae
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_6 .. :try_end_9} :catch_a2
    .catchall {:try_start_6 .. :try_end_9} :catchall_9f

    :try_start_9
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_95

    :try_start_d
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->idleState:I
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$19(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I

    move-result v3

    if-nez v3, :cond_78

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleStart()V

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$20(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;I)V

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3, v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$18(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_93

    :cond_24
    :goto_24
    :try_start_24
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readIdleResponse()Lcom/sun/mail/iap/Response;

    move-result-object v1

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v3
    :try_end_2b
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_24 .. :try_end_2b} :catch_9d
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_24 .. :try_end_2b} :catch_9b
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_24 .. :try_end_2b} :catch_99
    .catchall {:try_start_24 .. :try_end_2b} :catchall_c4

    if-eqz v1, :cond_4b

    :try_start_2d
    invoke-virtual {v2, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->processIdleResponse(Lcom/sun/mail/iap/Response;)Z

    move-result v4

    if-nez v4, :cond_34

    goto :goto_4b

    :cond_34
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_49

    :try_start_35
    iget-boolean v3, p0, Lcom/sun/mail/imap/IMAPStore;->enableImapEvents:Z

    if-eqz v3, :cond_24

    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isUnTagged()Z

    move-result v3

    if-eqz v3, :cond_24

    const/16 v3, 0x3e8

    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/sun/mail/imap/IMAPStore;->notifyStoreListeners(ILjava/lang/String;)V
    :try_end_48
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_35 .. :try_end_48} :catch_9d
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_35 .. :try_end_48} :catch_9b
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_35 .. :try_end_48} :catch_99
    .catchall {:try_start_35 .. :try_end_48} :catchall_c4

    goto :goto_24

    :catchall_49
    move-exception v1

    goto :goto_76

    :cond_4b
    :goto_4b
    :try_start_4b
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$20(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;I)V

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_57
    .catchall {:try_start_4b .. :try_end_57} :catchall_49

    :try_start_57
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->getMinIdleTime()I

    move-result v1
    :try_end_5b
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_57 .. :try_end_5b} :catch_9d
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_57 .. :try_end_5b} :catch_9b
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_57 .. :try_end_5b} :catch_99
    .catchall {:try_start_57 .. :try_end_5b} :catchall_c4

    if-lez v1, :cond_61

    int-to-long v3, v1

    :try_start_5e
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_61
    .catch Ljava/lang/InterruptedException; {:try_start_5e .. :try_end_61} :catch_61
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_5e .. :try_end_61} :catch_9d
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5e .. :try_end_61} :catch_9b
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5e .. :try_end_61} :catch_99
    .catchall {:try_start_5e .. :try_end_61} :catchall_c4

    :catch_61
    :cond_61
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v1

    :try_start_64
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3, v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$18(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_64 .. :try_end_6a} :catchall_73

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    if-nez v2, :cond_72

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V

    :cond_72
    return-void

    :catchall_73
    move-exception v0

    :try_start_74
    monitor-exit v1
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw v0

    :goto_76
    :try_start_76
    monitor-exit v3
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_49

    :try_start_77
    throw v1
    :try_end_78
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_77 .. :try_end_78} :catch_9d
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_77 .. :try_end_78} :catch_9b
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_77 .. :try_end_78} :catch_99
    .catchall {:try_start_77 .. :try_end_78} :catchall_c4

    :cond_78
    :try_start_78
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_7d
    .catch Ljava/lang/InterruptedException; {:try_start_78 .. :try_end_7d} :catch_7d
    .catchall {:try_start_78 .. :try_end_7d} :catchall_93

    :catch_7d
    :try_start_7d
    monitor-exit v1
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_93

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v3

    :try_start_81
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1, v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$18(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    monitor-exit v3
    :try_end_87
    .catchall {:try_start_81 .. :try_end_87} :catchall_90

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    if-nez v2, :cond_8f

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V

    :cond_8f
    return-void

    :catchall_90
    move-exception v0

    :try_start_91
    monitor-exit v3
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    throw v0

    :catchall_93
    move-exception v3

    goto :goto_97

    :catchall_95
    move-exception v3

    move-object v2, v0

    :goto_97
    :try_start_97
    monitor-exit v1
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_93

    :try_start_98
    throw v3
    :try_end_99
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_98 .. :try_end_99} :catch_9d
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_98 .. :try_end_99} :catch_9b
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_98 .. :try_end_99} :catch_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_c4

    :catch_99
    move-exception v1

    goto :goto_a4

    :catch_9b
    move-exception v1

    goto :goto_b0

    :catch_9d
    move-exception v1

    goto :goto_bc

    :catchall_9f
    move-exception v1

    move-object v2, v0

    goto :goto_c5

    :catch_a2
    move-exception v1

    move-object v2, v0

    :goto_a4
    :try_start_a4
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    :catch_ae
    move-exception v1

    move-object v2, v0

    :goto_b0
    new-instance v3, Ljavax/mail/StoreClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, p0, v1}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v3

    :catch_ba
    move-exception v1

    move-object v2, v0

    :goto_bc
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "IDLE not supported"

    invoke-direct {v3, v4, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
    :try_end_c4
    .catchall {:try_start_a4 .. :try_end_c4} :catchall_c4

    :catchall_c4
    move-exception v1

    :goto_c5
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v3

    :try_start_c8
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v4, v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$18(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    monitor-exit v3
    :try_end_ce
    .catchall {:try_start_c8 .. :try_end_ce} :catchall_d7

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    if-nez v2, :cond_d6

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V

    :cond_d6
    throw v1

    :catchall_d7
    move-exception v0

    :try_start_d8
    monitor-exit v3
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_d7

    throw v0

    :catchall_da
    move-exception v0

    :try_start_db
    monitor-exit p0
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_da

    throw v0
.end method

.method public declared-synchronized isConnected()Z
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->connected:Z

    if-nez v0, :cond_b

    const/4 v0, 0x0

    invoke-super {p0, v0}, Ljavax/mail/Store;->setConnected(Z)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_33

    monitor-exit p0

    return v0

    :cond_b
    const/4 v0, 0x0

    :try_start_c
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1
    :try_end_10
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_c .. :try_end_10} :catch_20
    .catchall {:try_start_c .. :try_end_10} :catchall_1e

    :try_start_10
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V
    :try_end_13
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_10 .. :try_end_13} :catch_1c
    .catchall {:try_start_10 .. :try_end_13} :catchall_17

    :try_start_13
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_33

    goto :goto_2d

    :catchall_17
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_26

    :catch_1c
    move-object v0, v1

    goto :goto_20

    :catchall_1e
    move-exception v1

    goto :goto_26

    :catch_20
    :goto_20
    if-nez v0, :cond_2a

    :try_start_22
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_1e

    goto :goto_2a

    :goto_26
    :try_start_26
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    throw v1

    :cond_2a
    :goto_2a
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    :goto_2d
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z

    move-result v0
    :try_end_31
    .catchall {:try_start_26 .. :try_end_31} :catchall_33

    monitor-exit p0

    return v0

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isConnectionPoolFull()Z
    .registers 5

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z
    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG: current size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "   pool size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->poolSize:I
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$4(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_36
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->poolSize:I
    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$4(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I

    move-result v2

    if-lt v1, v2, :cond_4a

    const/4 v1, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v1, 0x0

    :goto_4b
    monitor-exit v0

    return v1

    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method protected declared-synchronized protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_df

    if-eqz p4, :cond_df

    if-nez p3, :cond_a

    goto/16 :goto_df

    :cond_a
    const/4 v1, -0x1

    if-eq p2, v1, :cond_10

    :goto_d
    :try_start_d
    iput p2, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    goto :goto_32

    :cond_10
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mail."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".port"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_32

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_d

    :cond_32
    :goto_32
    iget p2, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    if-ne p2, v1, :cond_3a

    iget p2, p0, Lcom/sun/mail/imap/IMAPStore;->defaultPort:I

    iput p2, p0, Lcom/sun/mail/imap/IMAPStore;->port:I
    :try_end_3a
    .catchall {:try_start_d .. :try_end_3a} :catchall_110

    :cond_3a
    :try_start_3a
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter p2
    :try_end_3d
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_3a .. :try_end_3d} :catch_ca
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3a .. :try_end_3d} :catch_bf
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_b4
    .catchall {:try_start_3a .. :try_end_3d} :catchall_110

    :try_start_3d
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    monitor-exit p2
    :try_end_48
    .catchall {:try_start_3d .. :try_end_48} :catchall_b1

    if-eqz v1, :cond_ac

    :try_start_4a
    new-instance p2, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    iget v5, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    invoke-virtual {v1}, Ljavax/mail/Session;->getDebug()Z

    move-result v6

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    invoke-virtual {v1}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v7

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    invoke-virtual {v1}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v8

    iget-boolean v9, p0, Lcom/sun/mail/imap/IMAPStore;->isSSL:Z

    move-object v2, p2

    move-object v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/sun/mail/imap/protocol/IMAPProtocol;-><init>(Ljava/lang/String;Ljava/lang/String;IZLjava/io/PrintStream;Ljava/util/Properties;Z)V
    :try_end_69
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_4a .. :try_end_69} :catch_ca
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4a .. :try_end_69} :catch_bf
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_69} :catch_b4
    .catchall {:try_start_4a .. :try_end_69} :catchall_110

    :try_start_69
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG: protocolConnect login, host="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", password=<non-null>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8d
    invoke-direct {p0, p2, p3, p4}, Lcom/sun/mail/imap/IMAPStore;->login(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->host:Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    iput-object p4, p0, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;

    iget-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter p1
    :try_end_9c
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_69 .. :try_end_9c} :catch_aa
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_69 .. :try_end_9c} :catch_bf
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_9c} :catch_b4
    .catchall {:try_start_69 .. :try_end_9c} :catchall_110

    :try_start_9c
    iget-object p3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {p3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    monitor-exit p1

    goto :goto_ac

    :catchall_a7
    move-exception p3

    monitor-exit p1
    :try_end_a9
    .catchall {:try_start_9c .. :try_end_a9} :catchall_a7

    :try_start_a9
    throw p3
    :try_end_aa
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_a9 .. :try_end_aa} :catch_aa
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_a9 .. :try_end_aa} :catch_bf
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_aa} :catch_b4
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_110

    :catch_aa
    move-exception p1

    goto :goto_cc

    :cond_ac
    :goto_ac
    const/4 p1, 0x1

    :try_start_ad
    iput-boolean p1, p0, Lcom/sun/mail/imap/IMAPStore;->connected:Z
    :try_end_af
    .catchall {:try_start_ad .. :try_end_af} :catchall_110

    monitor-exit p0

    return p1

    :catchall_b1
    move-exception p1

    :try_start_b2
    monitor-exit p2
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    :try_start_b3
    throw p1
    :try_end_b4
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_b3 .. :try_end_b4} :catch_ca
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_b3 .. :try_end_b4} :catch_bf
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b4} :catch_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_110

    :catch_b4
    move-exception p1

    :try_start_b5
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_bf
    move-exception p1

    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_ca
    move-exception p1

    move-object p2, v0

    :goto_cc
    if-eqz p2, :cond_d1

    invoke-virtual {p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    :cond_d1
    new-instance p2, Ljavax/mail/AuthenticationFailedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/CommandFailedException;->getResponse()Lcom/sun/mail/iap/Response;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->getRest()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_df
    :goto_df
    iget-boolean p2, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz p2, :cond_10d

    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DEBUG: protocolConnect returning false, host="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", user="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", password="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_101

    const-string p1, "<non-null>"

    goto :goto_103

    :cond_101
    const-string p1, "<null>"

    :goto_103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_10d
    .catchall {:try_start_b5 .. :try_end_10d} :catchall_110

    :cond_10d
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_110
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method releaseProtocol(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    .registers 6

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v0

    if-eqz p2, :cond_4a

    :try_start_5
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->isConnectionPoolFull()Z

    move-result v1

    if-nez v1, :cond_39

    invoke-virtual {p2, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-boolean p2, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz p2, :cond_4a

    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG: added an Authenticated connection -- size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;
    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4a

    :cond_39
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG: pool is full, not adding an Authenticated connection"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_48

    :cond_44
    :try_start_44
    invoke-virtual {p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_47
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_44 .. :try_end_47} :catch_4a
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4a

    :catchall_48
    move-exception p1

    goto :goto_60

    :catch_4a
    :cond_4a
    :goto_4a
    :try_start_4a
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->folders:Ljava/util/Vector;
    invoke-static {p2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$13(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object p2

    if-eqz p2, :cond_5b

    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->folders:Ljava/util/Vector;
    invoke-static {p2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$13(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    :cond_5b
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->timeoutConnections()V

    monitor-exit v0

    return-void

    :goto_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_4a .. :try_end_61} :catchall_48

    throw p1
.end method

.method releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter p1

    :try_start_6
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$15(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Z)V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    # getter for: Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v1, "DEBUG: releaseStoreProtocol()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_20
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->timeoutConnections()V

    monitor-exit p1

    return-void

    :catchall_25
    move-exception v0

    monitor-exit p1
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public declared-synchronized setPassword(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setQuota(Ljavax/mail/Quota;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_4c

    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1
    :try_end_9
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_5 .. :try_end_9} :catch_3a
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_9} :catch_2f
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_9} :catch_24
    .catchall {:try_start_5 .. :try_end_9} :catchall_22

    :try_start_9
    invoke-virtual {v1, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setQuota(Ljavax/mail/Quota;)V
    :try_end_c
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_9 .. :try_end_c} :catch_1f
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_9 .. :try_end_c} :catch_1c
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_9 .. :try_end_c} :catch_19
    .catchall {:try_start_9 .. :try_end_c} :catchall_16

    :try_start_c
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    if-nez v1, :cond_14

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_4c

    :cond_14
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    move-object v0, v1

    goto :goto_43

    :catch_19
    move-exception p1

    move-object v0, v1

    goto :goto_25

    :catch_1c
    move-exception p1

    move-object v0, v1

    goto :goto_30

    :catch_1f
    move-exception p1

    move-object v0, v1

    goto :goto_3b

    :catchall_22
    move-exception p1

    goto :goto_43

    :catch_24
    move-exception p1

    :goto_25
    :try_start_25
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_2f
    move-exception p1

    :goto_30
    new-instance v1, Ljavax/mail/StoreClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v1

    :catch_3a
    move-exception p1

    :goto_3b
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "QUOTA not supported"

    invoke-direct {v1, v2, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_43
    .catchall {:try_start_25 .. :try_end_43} :catchall_22

    :goto_43
    :try_start_43
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    if-nez v0, :cond_4b

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V

    :cond_4b
    throw p1
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUsername(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method
