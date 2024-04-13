.class public Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/mail/imap/protocol/SaslAuthenticator;


# instance fields
.field private debug:Z

.field private host:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private out:Ljava/io/PrintStream;

.field private pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

.field private props:Ljava/util/Properties;


# direct methods
.method public constructor <init>(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/util/Properties;ZLjava/io/PrintStream;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iput-object p2, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->props:Ljava/util/Properties;

    iput-boolean p4, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    iput-object p5, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    iput-object p6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->host:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    return p0
.end method

.method static synthetic access$1(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;)Ljava/io/PrintStream;
    .registers 1

    iget-object p0, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    return-object p0
.end method


# virtual methods
.method public authenticate([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v8, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    monitor-enter v8

    :try_start_7
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    iget-boolean v3, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    const/4 v10, 0x0

    if-eqz v3, :cond_3a

    iget-object v3, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    const-string v4, "IMAP SASL DEBUG: Mechanisms:"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_19
    array-length v4, v2

    if-lt v3, v4, :cond_22

    iget-object v3, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    goto :goto_3a

    :cond_22
    iget-object v4, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_3a
    :goto_3a
    new-instance v7, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct {v7, v1, v4, v5, v3}, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;-><init>(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_7 .. :try_end_45} :catchall_213

    :try_start_45
    iget-object v4, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->name:Ljava/lang/String;

    iget-object v5, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->host:Ljava/lang/String;

    iget-object v6, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->props:Ljava/util/Properties;

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Ljavax/security/sasl/Sasl;->createSaslClient([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljavax/security/auth/callback/CallbackHandler;)Ljavax/security/sasl/SaslClient;

    move-result-object v2
    :try_end_51
    .catch Ljavax/security/sasl/SaslException; {:try_start_45 .. :try_end_51} :catch_1f7
    .catchall {:try_start_45 .. :try_end_51} :catchall_213

    if-nez v2, :cond_60

    :try_start_53
    iget-boolean v2, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v2, :cond_5e

    iget-object v2, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    const-string v3, "IMAP SASL DEBUG: No SASL support"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5e
    monitor-exit v8

    return v10

    :cond_60
    iget-boolean v3, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v3, :cond_7b

    iget-object v3, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IMAP SASL DEBUG: SASL client "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljavax/security/sasl/SaslClient;->getMechanismName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_53 .. :try_end_7b} :catchall_213

    :cond_7b
    :try_start_7b
    iget-object v3, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AUTHENTICATE "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljavax/security/sasl/SaslClient;->getMechanismName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;

    move-result-object v3
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_94} :catch_1db
    .catchall {:try_start_7b .. :try_end_94} :catchall_213

    :try_start_94
    iget-object v4, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getIMAPOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v7, 0x2

    new-array v7, v7, [B

    fill-array-data v7, :array_218

    invoke-interface {v2}, Ljavax/security/sasl/SaslClient;->getMechanismName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "XGWTRUSTEDAPP"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    move-object v14, v5

    const/4 v13, 0x0

    :goto_b2
    if-eqz v13, :cond_fb

    invoke-interface {v2}, Ljavax/security/sasl/SaslClient;->isComplete()Z

    move-result v3

    if-eqz v3, :cond_e1

    const-string v3, "javax.security.sasl.qop"

    invoke-interface {v2, v3}, Ljavax/security/sasl/SaslClient;->getNegotiatedProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_e1

    const-string v3, "auth-int"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d4

    const-string v3, "auth-conf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e1

    :cond_d4
    iget-boolean v2, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v2, :cond_df

    iget-object v2, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    const-string v3, "IMAP SASL DEBUG: Mechanism requires integrity or confidentiality"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_df
    monitor-exit v8

    return v10

    :cond_e1
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sun/mail/iap/Response;

    invoke-virtual {v9, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v3, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    iget-object v2, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2, v14}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    iget-object v2, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2, v14}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    monitor-exit v8
    :try_end_fa
    .catchall {:try_start_94 .. :try_end_fa} :catchall_213

    return v12

    :cond_fb
    :try_start_fb
    iget-object v14, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v14}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v15

    if-eqz v15, :cond_1a4

    invoke-interface {v2}, Ljavax/security/sasl/SaslClient;->isComplete()Z

    move-result v15

    if-nez v15, :cond_148

    invoke-virtual {v14}, Lcom/sun/mail/iap/Response;->readByteArray()Lcom/sun/mail/iap/ByteArray;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sun/mail/iap/ByteArray;->getNewBytes()[B

    move-result-object v15

    array-length v5, v15

    if-lez v5, :cond_11c

    invoke-static {v15}, Lcom/sun/mail/util/BASE64DecoderStream;->decode([B)[B

    move-result-object v15

    :cond_11c
    iget-boolean v5, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v5, :cond_141

    iget-object v5, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v10, "IMAP SASL DEBUG: challenge: "

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v10, v15

    move/from16 v16, v13

    const/4 v13, 0x0

    invoke-static {v15, v13, v10}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " :"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_143

    :cond_141
    move/from16 v16, v13

    :goto_143
    invoke-interface {v2, v15}, Ljavax/security/sasl/SaslClient;->evaluateChallenge([B)[B

    move-result-object v5

    goto :goto_14b

    :cond_148
    move/from16 v16, v13

    const/4 v5, 0x0

    :goto_14b
    if-nez v5, :cond_162

    iget-boolean v5, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v5, :cond_158

    iget-object v5, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    const-string v10, "IMAP SASL DEBUG: no response"

    invoke-virtual {v5, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_158
    invoke-virtual {v4, v7}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    :goto_15e
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_1c1

    :cond_162
    iget-boolean v10, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v10, :cond_184

    iget-object v10, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "IMAP SASL DEBUG: response: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v13, v5

    const/4 v15, 0x0

    invoke-static {v5, v15, v13}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_184
    invoke-static {v5}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([B)[B

    move-result-object v5

    if-eqz v11, :cond_193

    const-string v10, "XGWTRUSTEDAPP "

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_193
    invoke-virtual {v6, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v6, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    goto :goto_15e

    :cond_1a4
    move/from16 v16, v13

    invoke-virtual {v14}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v5

    if-eqz v5, :cond_1b7

    invoke-virtual {v14}, Lcom/sun/mail/iap/Response;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b7

    goto :goto_1d5

    :cond_1b7
    invoke-virtual {v14}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v5

    if-eqz v5, :cond_1be

    goto :goto_1d5

    :cond_1be
    invoke-virtual {v9, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1c1
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_1c1} :catch_1c8
    .catchall {:try_start_fb .. :try_end_1c1} :catchall_213

    :goto_1c1
    move/from16 v13, v16

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    goto/16 :goto_b2

    :catch_1c8
    move-exception v0

    move-object v5, v0

    :try_start_1ca
    iget-boolean v10, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v10, :cond_1d1

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1d1
    invoke-static {v5}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v14

    :goto_1d5
    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    goto/16 :goto_b2

    :catch_1db
    move-exception v0

    move-object v2, v0

    iget-boolean v3, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v3, :cond_1f4

    iget-object v3, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IMAP SASL DEBUG: AUTHENTICATE Exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1f4
    monitor-exit v8

    const/4 v2, 0x0

    return v2

    :catch_1f7
    move-exception v0

    move-object v2, v0

    iget-boolean v3, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v3, :cond_210

    iget-object v3, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IMAP SASL DEBUG: Failed to create SASL client: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_210
    monitor-exit v8

    const/4 v2, 0x0

    return v2

    :catchall_213
    move-exception v0

    move-object v2, v0

    monitor-exit v8
    :try_end_216
    .catchall {:try_start_1ca .. :try_end_216} :catchall_213

    throw v2

    nop

    :array_218
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method
