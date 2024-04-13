.class public abstract Ljavax/mail/Transport;
.super Ljavax/mail/Service;


# instance fields
.field private transportListeners:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljavax/mail/Service;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V

    const/4 p1, 0x0

    iput-object p1, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    return-void
.end method

.method public static send(Ljavax/mail/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/mail/Message;->saveChanges()V

    invoke-virtual {p0}, Ljavax/mail/Message;->getAllRecipients()[Ljavax/mail/Address;

    move-result-object v0

    invoke-static {p0, v0}, Ljavax/mail/Transport;->send0(Ljavax/mail/Message;[Ljavax/mail/Address;)V

    return-void
.end method

.method public static send(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/mail/Message;->saveChanges()V

    invoke-static {p0, p1}, Ljavax/mail/Transport;->send0(Ljavax/mail/Message;[Ljavax/mail/Address;)V

    return-void
.end method

.method private static send0(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v2, :cond_173

    array-length v3, v2

    if-nez v3, :cond_b

    goto/16 :goto_173

    :cond_b
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_21
    array-length v9, v2

    if-lt v8, v9, :cond_13e

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v8

    if-nez v8, :cond_32

    new-instance v1, Ljavax/mail/SendFailedException;

    const-string v2, "No recipient addresses"

    invoke-direct {v1, v2}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_32
    iget-object v9, v1, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    const/4 v10, 0x0

    if-eqz v9, :cond_3a

    iget-object v9, v1, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    goto :goto_42

    :cond_3a
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v9

    invoke-static {v9, v10}, Ljavax/mail/Session;->getDefaultInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v9

    :goto_42
    const/4 v11, 0x1

    if-ne v8, v11, :cond_5b

    aget-object v3, v2, v7

    invoke-virtual {v9, v3}, Ljavax/mail/Session;->getTransport(Ljavax/mail/Address;)Ljavax/mail/Transport;

    move-result-object v3

    :try_start_4b
    invoke-virtual {v3}, Ljavax/mail/Transport;->connect()V

    invoke-virtual {v3, v1, v2}, Ljavax/mail/Transport;->sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_55

    invoke-virtual {v3}, Ljavax/mail/Transport;->close()V

    return-void

    :catchall_55
    move-exception v0

    move-object v1, v0

    invoke-virtual {v3}, Ljavax/mail/Transport;->close()V

    throw v1

    :cond_5b
    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    move-object v14, v10

    const/4 v3, 0x0

    :goto_61
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-nez v8, :cond_b7

    if-nez v3, :cond_77

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_77

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v1

    if-eqz v1, :cond_76

    goto :goto_77

    :cond_76
    return-void

    :cond_77
    :goto_77
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_88

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/mail/Address;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    move-object v15, v1

    goto :goto_89

    :cond_88
    move-object v15, v10

    :goto_89
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_9b

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/mail/Address;

    invoke-virtual {v6, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    move-object/from16 v16, v1

    goto :goto_9d

    :cond_9b
    move-object/from16 v16, v10

    :goto_9d
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_ac

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v10, v1, [Ljavax/mail/Address;

    invoke-virtual {v4, v10}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    :cond_ac
    move-object/from16 v17, v10

    new-instance v1, Ljavax/mail/SendFailedException;

    const-string v13, "Sending failed"

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;)V

    throw v1

    :cond_b7
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v12

    new-array v12, v12, [Ljavax/mail/Address;

    invoke-virtual {v8, v12}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    aget-object v8, v12, v7

    invoke-virtual {v9, v8}, Ljavax/mail/Session;->getTransport(Ljavax/mail/Address;)Ljavax/mail/Transport;

    move-result-object v8

    if-nez v8, :cond_db

    const/4 v8, 0x0

    :goto_cf
    array-length v13, v12

    if-lt v8, v13, :cond_d3

    goto :goto_61

    :cond_d3
    aget-object v13, v12, v8

    invoke-virtual {v4, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_cf

    :cond_db
    :try_start_db
    invoke-virtual {v8}, Ljavax/mail/Transport;->connect()V

    invoke-virtual {v8, v1, v12}, Ljavax/mail/Transport;->sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    :try_end_e1
    .catch Ljavax/mail/SendFailedException; {:try_start_db .. :try_end_e1} :catch_f8
    .catch Ljavax/mail/MessagingException; {:try_start_db .. :try_end_e1} :catch_e9
    .catchall {:try_start_db .. :try_end_e1} :catchall_e6

    invoke-virtual {v8}, Ljavax/mail/Transport;->close()V

    goto/16 :goto_61

    :catchall_e6
    move-exception v0

    move-object v1, v0

    goto :goto_13a

    :catch_e9
    move-exception v0

    move-object v3, v0

    if-nez v14, :cond_ef

    move-object v14, v3

    goto :goto_f2

    :cond_ef
    :try_start_ef
    invoke-virtual {v14, v3}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z
    :try_end_f2
    .catchall {:try_start_ef .. :try_end_f2} :catchall_e6

    :cond_f2
    :goto_f2
    invoke-virtual {v8}, Ljavax/mail/Transport;->close()V

    const/4 v3, 0x1

    goto/16 :goto_61

    :catch_f8
    move-exception v0

    move-object v3, v0

    if-nez v14, :cond_fe

    move-object v14, v3

    goto :goto_101

    :cond_fe
    :try_start_fe
    invoke-virtual {v14, v3}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    :goto_101
    invoke-virtual {v3}, Ljavax/mail/SendFailedException;->getInvalidAddresses()[Ljavax/mail/Address;

    move-result-object v12

    if-eqz v12, :cond_114

    const/4 v13, 0x0

    :goto_108
    array-length v15, v12

    if-lt v13, v15, :cond_10c

    goto :goto_114

    :cond_10c
    aget-object v15, v12, v13

    invoke-virtual {v4, v15}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_108

    :cond_114
    :goto_114
    invoke-virtual {v3}, Ljavax/mail/SendFailedException;->getValidSentAddresses()[Ljavax/mail/Address;

    move-result-object v12

    if-eqz v12, :cond_127

    const/4 v13, 0x0

    :goto_11b
    array-length v15, v12

    if-lt v13, v15, :cond_11f

    goto :goto_127

    :cond_11f
    aget-object v15, v12, v13

    invoke-virtual {v5, v15}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_11b

    :cond_127
    :goto_127
    invoke-virtual {v3}, Ljavax/mail/SendFailedException;->getValidUnsentAddresses()[Ljavax/mail/Address;

    move-result-object v3

    if-eqz v3, :cond_f2

    const/4 v12, 0x0

    :goto_12e
    array-length v13, v3

    if-lt v12, v13, :cond_132

    goto :goto_f2

    :cond_132
    aget-object v13, v3, v12

    invoke-virtual {v6, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_137
    .catchall {:try_start_fe .. :try_end_137} :catchall_e6

    add-int/lit8 v12, v12, 0x1

    goto :goto_12e

    :goto_13a
    invoke-virtual {v8}, Ljavax/mail/Transport;->close()V

    throw v1

    :cond_13e
    aget-object v9, v2, v8

    invoke-virtual {v9}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15c

    aget-object v9, v2, v8

    invoke-virtual {v9}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Vector;

    aget-object v10, v2, v8

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_16f

    :cond_15c
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    aget-object v10, v2, v8

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    aget-object v10, v2, v8

    invoke-virtual {v10}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_16f
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_21

    :cond_173
    :goto_173
    new-instance v1, Ljavax/mail/SendFailedException;

    const-string v2, "No recipient addresses"

    invoke-direct {v1, v2}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public declared-synchronized addTransportListener(Ljavax/mail/event/TransportListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    :cond_c
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

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

.method protected notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V
    .registers 14

    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljavax/mail/event/TransportEvent;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Ljavax/mail/event/TransportEvent;-><init>(Ljavax/mail/Transport;I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    iget-object p1, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    invoke-virtual {p0, v0, p1}, Ljavax/mail/Transport;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    return-void
.end method

.method public declared-synchronized removeTransportListener(Ljavax/mail/event/TransportListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    if-eqz v0, :cond_a

    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

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

.method public abstract sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method
