.class public Lcom/sun/mail/pop3/POP3Store;
.super Ljavax/mail/Store;


# instance fields
.field private defaultPort:I

.field disableTop:Z

.field forgetTopHeaders:Z

.field private host:Ljava/lang/String;

.field private isSSL:Z

.field messageConstructor:Ljava/lang/reflect/Constructor;

.field private name:Ljava/lang/String;

.field private passwd:Ljava/lang/String;

.field private port:Lcom/sun/mail/pop3/Protocol;

.field private portNum:I

.field private portOwner:Lcom/sun/mail/pop3/POP3Folder;

.field rsetBeforeQuit:Z

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .registers 9

    const-string v3, "pop3"

    const/16 v4, 0x6e

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sun/mail/pop3/POP3Store;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;IZ)V
    .registers 9

    invoke-direct {p0, p1, p2}, Ljavax/mail/Store;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V

    const-string v0, "pop3"

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    const/16 v0, 0x6e

    iput v0, p0, Lcom/sun/mail/pop3/POP3Store;->defaultPort:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Store;->isSSL:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->host:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, p0, Lcom/sun/mail/pop3/POP3Store;->portNum:I

    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->user:Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->passwd:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Store;->rsetBeforeQuit:Z

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Store;->disableTop:Z

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Store;->forgetTopHeaders:Z

    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->messageConstructor:Ljava/lang/reflect/Constructor;

    if-eqz p2, :cond_2a

    invoke-virtual {p2}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object p3

    :cond_2a
    iput-object p3, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    iput p4, p0, Lcom/sun/mail/pop3/POP3Store;->defaultPort:I

    iput-boolean p5, p0, Lcom/sun/mail/pop3/POP3Store;->isSSL:Z

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "mail."

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ".rsetbeforequit"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x1

    if-eqz p2, :cond_54

    const-string p5, "true"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_54

    iput-boolean p4, p0, Lcom/sun/mail/pop3/POP3Store;->rsetBeforeQuit:Z

    :cond_54
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "mail."

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ".disabletop"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_77

    const-string p5, "true"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_77

    iput-boolean p4, p0, Lcom/sun/mail/pop3/POP3Store;->disableTop:Z

    :cond_77
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "mail."

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ".forgettopheaders"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9a

    const-string p5, "true"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9a

    iput-boolean p4, p0, Lcom/sun/mail/pop3/POP3Store;->forgetTopHeaders:Z

    :cond_9a
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "mail."

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".message.class"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_10d

    invoke-virtual {p1}, Ljavax/mail/Session;->getDebug()Z

    move-result p3

    if-eqz p3, :cond_ce

    invoke-virtual {p1}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object p3

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v1, "DEBUG: POP3 message class: "

    invoke-direct {p5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_ce
    :try_start_ce
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d6} :catch_f1

    :try_start_d6
    invoke-virtual {p3, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3
    :try_end_da
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d6 .. :try_end_da} :catch_db
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_da} :catch_f1

    goto :goto_df

    :catch_db
    :try_start_db
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    :goto_df
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Class;

    const-class p5, Ljavax/mail/Folder;

    aput-object p5, p2, v0

    sget-object p5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p5, p2, p4

    invoke-virtual {p3, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    iput-object p2, p0, Lcom/sun/mail/pop3/POP3Store;->messageConstructor:Ljava/lang/reflect/Constructor;
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_f0} :catch_f1

    return-void

    :catch_f1
    move-exception p2

    invoke-virtual {p1}, Ljavax/mail/Session;->getDebug()Z

    move-result p3

    if-eqz p3, :cond_10d

    invoke-virtual {p1}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "DEBUG: failed to load POP3 message class: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_10d
    return-void
.end method

.method private checkConnected()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v1}, Lcom/sun/mail/pop3/Protocol;->quit()Z
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_b} :catch_19
    .catchall {:try_start_2 .. :try_end_b} :catchall_12

    :cond_b
    :try_start_b
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-super {p0}, Ljavax/mail/Store;->close()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_20

    monitor-exit p0

    return-void

    :catchall_12
    move-exception v1

    :try_start_13
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-super {p0}, Ljavax/mail/Store;->close()V

    throw v1

    :catch_19
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-super {p0}, Ljavax/mail/Store;->close()V
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-void

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized closePort(Lcom/sun/mail/pop3/POP3Folder;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    if-ne v0, p1, :cond_a

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;
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

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljavax/mail/Store;->finalize()V

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Store;->close()V

    :cond_a
    return-void
.end method

.method public getDefaultFolder()Ljavax/mail/Folder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Store;->checkConnected()V

    new-instance v0, Lcom/sun/mail/pop3/DefaultFolder;

    invoke-direct {v0, p0}, Lcom/sun/mail/pop3/DefaultFolder;-><init>(Lcom/sun/mail/pop3/POP3Store;)V

    return-object v0
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Store;->checkConnected()V

    new-instance v0, Lcom/sun/mail/pop3/POP3Folder;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/pop3/POP3Folder;-><init>(Lcom/sun/mail/pop3/POP3Store;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFolder(Ljavax/mail/URLName;)Ljavax/mail/Folder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Store;->checkConnected()V

    new-instance v0, Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {p1}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/pop3/POP3Folder;-><init>(Lcom/sun/mail/pop3/POP3Store;Ljava/lang/String;)V

    return-object v0
.end method

.method declared-synchronized getPort(Lcom/sun/mail/pop3/POP3Folder;)Lcom/sun/mail/pop3/Protocol;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    if-nez v0, :cond_f

    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    iget-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_62

    monitor-exit p0

    return-object p1

    :cond_f
    :try_start_f
    new-instance v8, Lcom/sun/mail/pop3/Protocol;

    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->host:Ljava/lang/String;

    iget v2, p0, Lcom/sun/mail/pop3/POP3Store;->portNum:I

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;

    invoke-virtual {v0}, Ljavax/mail/Session;->getDebug()Z

    move-result v3

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;

    invoke-virtual {v0}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v4

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;

    invoke-virtual {v0}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "mail."

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p0, Lcom/sun/mail/pop3/POP3Store;->isSSL:Z

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/sun/mail/pop3/Protocol;-><init>(Ljava/lang/String;IZLjava/io/PrintStream;Ljava/util/Properties;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->user:Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->passwd:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Lcom/sun/mail/pop3/Protocol;->login(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_45
    .catchall {:try_start_f .. :try_end_45} :catchall_62

    if-eqz v0, :cond_50

    :try_start_47
    invoke-virtual {v8}, Lcom/sun/mail/pop3/Protocol;->quit()Z
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4a

    :catch_4a
    :catchall_4a
    :try_start_4a
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_50
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-nez v0, :cond_5a

    if-eqz p1, :cond_5a

    iput-object v8, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    :cond_5a
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    if-nez v0, :cond_60

    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;
    :try_end_60
    .catchall {:try_start_4a .. :try_end_60} :catchall_62

    :cond_60
    monitor-exit p0

    return-object v8

    :catchall_62
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isConnected()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2a

    const/4 v1, 0x0

    if-nez v0, :cond_a

    monitor-exit p0

    return v1

    :cond_a
    :try_start_a
    monitor-enter p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_2a

    :try_start_b
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-nez v0, :cond_17

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Store;->getPort(Lcom/sun/mail/pop3/POP3Folder;)Lcom/sun/mail/pop3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    goto :goto_1c

    :cond_17
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->noop()Z
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1c} :catch_22
    .catchall {:try_start_b .. :try_end_1c} :catchall_20

    :goto_1c
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_20

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_20
    move-exception v0

    goto :goto_28

    :catch_22
    :try_start_22
    invoke-super {p0}, Ljavax/mail/Store;->close()V
    :try_end_25
    .catch Ljavax/mail/MessagingException; {:try_start_22 .. :try_end_25} :catch_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_25

    :catch_25
    :catchall_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_20

    monitor-exit p0

    return v1

    :goto_28
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_20

    :try_start_29
    throw v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_5b

    if-eqz p4, :cond_5b

    if-nez p3, :cond_8

    goto :goto_5b

    :cond_8
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2f

    :try_start_b
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mail."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".port"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2f

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_2f

    :catchall_2d
    move-exception p1

    goto :goto_59

    :cond_2f
    :goto_2f
    if-ne p2, v0, :cond_33

    iget p2, p0, Lcom/sun/mail/pop3/POP3Store;->defaultPort:I

    :cond_33
    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->host:Ljava/lang/String;

    iput p2, p0, Lcom/sun/mail/pop3/POP3Store;->portNum:I

    iput-object p3, p0, Lcom/sun/mail/pop3/POP3Store;->user:Ljava/lang/String;

    iput-object p4, p0, Lcom/sun/mail/pop3/POP3Store;->passwd:Ljava/lang/String;
    :try_end_3b
    .catchall {:try_start_b .. :try_end_3b} :catchall_2d

    const/4 p1, 0x0

    :try_start_3c
    invoke-virtual {p0, p1}, Lcom/sun/mail/pop3/POP3Store;->getPort(Lcom/sun/mail/pop3/POP3Folder;)Lcom/sun/mail/pop3/Protocol;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;
    :try_end_42
    .catch Ljava/io/EOFException; {:try_start_3c .. :try_end_42} :catch_4e
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_42} :catch_45
    .catchall {:try_start_3c .. :try_end_42} :catchall_2d

    const/4 p1, 0x1

    :goto_43
    monitor-exit p0

    return p1

    :catch_45
    move-exception p1

    :try_start_46
    new-instance p2, Ljavax/mail/MessagingException;

    const-string p3, "Connect failed"

    invoke-direct {p2, p3, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_4e
    move-exception p1

    new-instance p2, Ljavax/mail/AuthenticationFailedException;

    invoke-virtual {p1}, Ljava/io/EOFException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_59
    .catchall {:try_start_46 .. :try_end_59} :catchall_2d

    :goto_59
    monitor-exit p0

    throw p1

    :cond_5b
    :goto_5b
    const/4 p1, 0x0

    goto :goto_43
.end method
