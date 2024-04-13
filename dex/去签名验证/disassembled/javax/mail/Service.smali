.class public abstract Ljavax/mail/Service;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/Service$TerminatorEvent;
    }
.end annotation


# instance fields
.field private connected:Z

.field private connectionListeners:Ljava/util/Vector;

.field protected debug:Z

.field private q:Ljavax/mail/EventQueue;

.field private qLock:Ljava/lang/Object;

.field protected session:Ljavax/mail/Session;

.field protected url:Ljavax/mail/URLName;


# direct methods
.method protected constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    const/4 v1, 0x0

    iput-boolean v1, p0, Ljavax/mail/Service;->debug:Z

    iput-boolean v1, p0, Ljavax/mail/Service;->connected:Z

    iput-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/mail/Service;->qLock:Ljava/lang/Object;

    iput-object p1, p0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    iput-object p2, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {p1}, Ljavax/mail/Session;->getDebug()Z

    move-result p1

    iput-boolean p1, p0, Ljavax/mail/Service;->debug:Z

    return-void
.end method

.method private terminateQueue()V
    .registers 5

    iget-object v0, p0, Ljavax/mail/Service;->qLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    if-eqz v1, :cond_1d

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->setSize(I)V

    iget-object v2, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    new-instance v3, Ljavax/mail/Service$TerminatorEvent;

    invoke-direct {v3}, Ljavax/mail/Service$TerminatorEvent;-><init>()V

    invoke-virtual {v2, v3, v1}, Ljavax/mail/EventQueue;->enqueue(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    const/4 v1, 0x0

    iput-object v1, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

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
    iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    :cond_c
    iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

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

.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Ljavax/mail/Service;->setConnected(Z)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljavax/mail/Service;->notifyConnectionListeners(I)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Ljavax/mail/Service;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized connect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    monitor-enter p0

    :try_start_5
    invoke-virtual/range {p0 .. p0}, Ljavax/mail/Service;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_13

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "already connected"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_13
    iget-object v4, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    if-eqz v4, :cond_60

    iget-object v4, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v4}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v4

    if-nez p1, :cond_26

    iget-object v6, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v6}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;

    move-result-object v6

    goto :goto_28

    :cond_26
    move-object/from16 v6, p1

    :goto_28
    const/4 v7, -0x1

    move/from16 v8, p2

    if-ne v8, v7, :cond_34

    iget-object v7, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v7}, Ljavax/mail/URLName;->getPort()I

    move-result v7

    goto :goto_35

    :cond_34
    move v7, v8

    :goto_35
    if-nez v2, :cond_46

    iget-object v2, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v2}, Ljavax/mail/URLName;->getUsername()Ljava/lang/String;

    move-result-object v2

    if-nez p4, :cond_57

    iget-object v3, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    :goto_41
    invoke-virtual {v3}, Ljavax/mail/URLName;->getPassword()Ljava/lang/String;

    move-result-object v3

    goto :goto_59

    :cond_46
    if-nez p4, :cond_57

    iget-object v8, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v8}, Ljavax/mail/URLName;->getUsername()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_57

    iget-object v3, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    goto :goto_41

    :cond_57
    move-object/from16 v3, p4

    :goto_59
    iget-object v8, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v8}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v8

    goto :goto_69

    :cond_60
    move/from16 v8, p2

    move-object/from16 v6, p1

    move-object/from16 v3, p4

    move v7, v8

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_69
    if-eqz v4, :cond_a1

    if-nez v6, :cond_86

    iget-object v6, v1, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mail."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".host"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_86
    if-nez v2, :cond_a1

    iget-object v2, v1, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mail."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".user"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_a1
    if-nez v6, :cond_ab

    iget-object v6, v1, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    const-string v9, "mail.host"

    invoke-virtual {v6, v9}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_ab
    if-nez v2, :cond_b5

    iget-object v2, v1, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    const-string v9, "mail.user"

    invoke-virtual {v2, v9}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_b5
    .catchall {:try_start_5 .. :try_end_b5} :catchall_179

    :cond_b5
    if-nez v2, :cond_ce

    :try_start_b7
    const-string v9, "user.name"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_bd
    .catch Ljava/lang/SecurityException; {:try_start_b7 .. :try_end_bd} :catch_bf
    .catchall {:try_start_b7 .. :try_end_bd} :catchall_179

    move-object v2, v9

    goto :goto_ce

    :catch_bf
    move-exception v0

    move-object v9, v0

    :try_start_c1
    iget-boolean v10, v1, Ljavax/mail/Service;->debug:Z

    if-eqz v10, :cond_ce

    iget-object v10, v1, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    invoke-virtual {v10}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/SecurityException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_ce
    :goto_ce
    const/16 v16, 0x0

    const/4 v15, 0x1

    if-nez v3, :cond_114

    iget-object v9, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    if-eqz v9, :cond_114

    new-instance v14, Ljavax/mail/URLName;

    const/16 v17, 0x0

    move-object v9, v14

    move-object v10, v4

    move-object v11, v6

    move v12, v7

    move-object v13, v8

    move-object v5, v14

    move-object v14, v2

    move-object/from16 v18, v3

    const/4 v3, 0x1

    move-object/from16 v15, v17

    invoke-direct/range {v9 .. v15}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljavax/mail/Service;->setURLName(Ljavax/mail/URLName;)V

    iget-object v5, v1, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    invoke-virtual/range {p0 .. p0}, Ljavax/mail/Service;->getURLName()Ljavax/mail/URLName;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljavax/mail/Session;->getPasswordAuthentication(Ljavax/mail/URLName;)Ljavax/mail/PasswordAuthentication;

    move-result-object v5

    if-eqz v5, :cond_10f

    if-nez v2, :cond_104

    invoke-virtual {v5}, Ljavax/mail/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v2

    :goto_ff
    invoke-virtual {v5}, Ljavax/mail/PasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object v5

    goto :goto_119

    :cond_104
    invoke-virtual {v5}, Ljavax/mail/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_10c
    .catchall {:try_start_c1 .. :try_end_10c} :catchall_179

    if-eqz v9, :cond_117

    goto :goto_ff

    :cond_10f
    move-object/from16 v5, v18

    const/16 v17, 0x1

    goto :goto_11b

    :cond_114
    move-object/from16 v18, v3

    const/4 v3, 0x1

    :cond_117
    move-object/from16 v5, v18

    :goto_119
    const/16 v17, 0x0

    :goto_11b
    :try_start_11b
    invoke-virtual {v1, v6, v7, v2, v5}, Ljavax/mail/Service;->protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v9
    :try_end_11f
    .catch Ljavax/mail/AuthenticationFailedException; {:try_start_11b .. :try_end_11f} :catch_123
    .catchall {:try_start_11b .. :try_end_11f} :catchall_179

    move/from16 v16, v9

    const/4 v15, 0x0

    goto :goto_125

    :catch_123
    move-exception v0

    move-object v15, v0

    :goto_125
    if-nez v16, :cond_146

    :try_start_127
    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9
    :try_end_12b
    .catch Ljava/net/UnknownHostException; {:try_start_127 .. :try_end_12b} :catch_12d
    .catchall {:try_start_127 .. :try_end_12b} :catchall_179

    move-object v10, v9

    goto :goto_12e

    :catch_12d
    const/4 v10, 0x0

    :goto_12e
    :try_start_12e
    iget-object v9, v1, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    const/4 v13, 0x0

    move v11, v7

    move-object v12, v4

    move-object v14, v2

    invoke-virtual/range {v9 .. v14}, Ljavax/mail/Session;->requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/PasswordAuthentication;

    move-result-object v9

    if-eqz v9, :cond_146

    invoke-virtual {v9}, Ljavax/mail/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Ljavax/mail/PasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v7, v2, v5}, Ljavax/mail/Service;->protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v16

    :cond_146
    if-nez v16, :cond_151

    if-eqz v15, :cond_14b

    throw v15

    :cond_14b
    new-instance v2, Ljavax/mail/AuthenticationFailedException;

    invoke-direct {v2}, Ljavax/mail/AuthenticationFailedException;-><init>()V

    throw v2

    :cond_151
    new-instance v15, Ljavax/mail/URLName;

    move-object v9, v15

    move-object v10, v4

    move-object v11, v6

    move v12, v7

    move-object v13, v8

    move-object v14, v2

    move-object v4, v15

    move-object v15, v5

    invoke-direct/range {v9 .. v15}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljavax/mail/Service;->setURLName(Ljavax/mail/URLName;)V

    if-eqz v17, :cond_171

    iget-object v4, v1, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    invoke-virtual/range {p0 .. p0}, Ljavax/mail/Service;->getURLName()Ljavax/mail/URLName;

    move-result-object v6

    new-instance v7, Ljavax/mail/PasswordAuthentication;

    invoke-direct {v7, v2, v5}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6, v7}, Ljavax/mail/Session;->setPasswordAuthentication(Ljavax/mail/URLName;Ljavax/mail/PasswordAuthentication;)V

    :cond_171
    invoke-virtual {v1, v3}, Ljavax/mail/Service;->setConnected(Z)V

    invoke-virtual {v1, v3}, Ljavax/mail/Service;->notifyConnectionListeners(I)V
    :try_end_177
    .catchall {:try_start_12e .. :try_end_177} :catchall_179

    monitor-exit p0

    return-void

    :catchall_179
    move-exception v0

    move-object v2, v0

    monitor-exit p0

    throw v2
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Ljavax/mail/Service;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2, p3}, Ljavax/mail/Service;->connect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-direct {p0}, Ljavax/mail/Service;->terminateQueue()V

    return-void
.end method

.method public declared-synchronized getURLName()Ljavax/mail/URLName;
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    if-eqz v0, :cond_37

    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v0}, Ljavax/mail/URLName;->getPassword()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v0}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_37

    :cond_15
    new-instance v0, Ljavax/mail/URLName;

    iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v1}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v1}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v1}, Ljavax/mail/URLName;->getPort()I

    move-result v4

    const/4 v5, 0x0

    iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v1}, Ljavax/mail/URLName;->getUsername()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_3b

    monitor-exit p0

    return-object v0

    :cond_37
    :try_start_37
    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;
    :try_end_39
    .catchall {:try_start_37 .. :try_end_39} :catchall_3b

    monitor-exit p0

    return-object v0

    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConnected()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljavax/mail/Service;->connected:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized notifyConnectionListeners(I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    if-eqz v0, :cond_f

    new-instance v0, Ljavax/mail/event/ConnectionEvent;

    invoke-direct {v0, p0, p1}, Ljavax/mail/event/ConnectionEvent;-><init>(Ljava/lang/Object;I)V

    iget-object v1, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Ljavax/mail/Service;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    :cond_f
    const/4 v0, 0x3

    if-ne p1, v0, :cond_15

    invoke-direct {p0}, Ljavax/mail/Service;->terminateQueue()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    :cond_15
    monitor-exit p0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method protected queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V
    .registers 5

    iget-object v0, p0, Ljavax/mail/Service;->qLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    if-nez v1, :cond_e

    new-instance v1, Ljavax/mail/EventQueue;

    invoke-direct {v1}, Ljavax/mail/EventQueue;-><init>()V

    iput-object v1, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1b

    invoke-virtual {p2}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Vector;

    iget-object v0, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

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

.method public declared-synchronized removeConnectionListener(Ljavax/mail/event/ConnectionListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    if-eqz v0, :cond_a

    iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

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

.method protected declared-synchronized setConnected(Z)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Ljavax/mail/Service;->connected:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized setURLName(Ljavax/mail/URLName;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljavax/mail/Service;->getURLName()Ljavax/mail/URLName;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljavax/mail/URLName;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
