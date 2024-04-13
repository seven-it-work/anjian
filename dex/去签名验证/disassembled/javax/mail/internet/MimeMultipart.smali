.class public Ljavax/mail/internet/MimeMultipart;
.super Ljavax/mail/Multipart;


# static fields
.field private static bmparse:Z = true

.field private static ignoreMissingBoundaryParameter:Z = true

.field private static ignoreMissingEndBoundary:Z = true


# instance fields
.field private complete:Z

.field protected ds:Ljavax/activation/DataSource;

.field protected parsed:Z

.field private preamble:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    :try_start_0
    const-string v0, "mail.mime.multipart.ignoremissingendboundary"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    const-string v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    const/4 v0, 0x1

    :goto_15
    sput-boolean v0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    const-string v0, "mail.mime.multipart.ignoremissingboundaryparameter"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    const-string v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    goto :goto_2a

    :cond_29
    const/4 v0, 0x1

    :goto_2a
    sput-boolean v0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    const-string v0, "mail.mime.multipart.bmparse"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3d

    const-string v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v1, 0x0

    :cond_3d
    sput-boolean v1, Ljavax/mail/internet/MimeMultipart;->bmparse:Z
    :try_end_3f
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3f} :catch_3f

    :catch_3f
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-string v0, "mixed"

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    invoke-static {}, Ljavax/mail/internet/UniqueValue;->getUniqueBoundaryValue()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljavax/mail/internet/ContentType;

    const-string v3, "multipart"

    invoke-direct {v2, v3, p1, v0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    const-string p1, "boundary"

    invoke-virtual {v2, p1, v1}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/activation/DataSource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    instance-of v0, p1, Ljavax/mail/MessageAware;

    if-eqz v0, :cond_1f

    move-object v0, p1

    check-cast v0, Ljavax/mail/MessageAware;

    invoke-interface {v0}, Ljavax/mail/MessageAware;->getMessageContext()Ljavax/mail/MessageContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/mail/MessageContext;->getPart()Ljavax/mail/Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMultipart;->setParent(Ljavax/mail/Part;)V

    :cond_1f
    instance-of v0, p1, Ljavax/mail/MultipartDataSource;

    if-eqz v0, :cond_29

    check-cast p1, Ljavax/mail/MultipartDataSource;

    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMultipart;->setMultipartDataSource(Ljavax/mail/MultipartDataSource;)V

    return-void

    :cond_29
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    invoke-interface {p1}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized parsebm()V
    .registers 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_3
    iget-boolean v2, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_383

    if-eqz v2, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    iget-object v2, v1, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    invoke-interface {v2}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    instance-of v3, v2, Ljava/io/ByteArrayInputStream;

    if-nez v3, :cond_21

    instance-of v3, v2, Ljava/io/BufferedInputStream;

    if-nez v3, :cond_21

    instance-of v3, v2, Ljavax/mail/internet/SharedInputStream;

    if-nez v3, :cond_21

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_20} :catch_379
    .catchall {:try_start_9 .. :try_end_20} :catchall_383

    move-object v2, v3

    :cond_21
    :try_start_21
    instance-of v3, v2, Ljavax/mail/internet/SharedInputStream;

    if-eqz v3, :cond_29

    move-object v3, v2

    check-cast v3, Ljavax/mail/internet/SharedInputStream;

    goto :goto_2a

    :cond_29
    const/4 v3, 0x0

    :goto_2a
    new-instance v5, Ljavax/mail/internet/ContentType;

    iget-object v6, v1, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v6, "boundary"

    invoke-virtual {v5, v6}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_48

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "--"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_55

    :cond_48
    sget-boolean v5, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    if-nez v5, :cond_54

    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "Missing boundary parameter"

    invoke-direct {v2, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_54
    .catchall {:try_start_21 .. :try_end_54} :catchall_383

    :cond_54
    const/4 v5, 0x0

    :goto_55
    :try_start_55
    new-instance v6, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v6, v2}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_5c
    invoke-virtual {v6}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x9

    const/16 v11, 0x20

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-nez v9, :cond_6a

    move-object v4, v9

    goto :goto_98

    :cond_6a
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v15, v14

    :goto_6f
    if-gez v15, :cond_72

    goto :goto_7c

    :cond_72
    invoke-virtual {v9, v15}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v11, :cond_355

    if-ne v4, v10, :cond_7c

    goto/16 :goto_355

    :cond_7c
    :goto_7c
    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v9, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_8f

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8b

    goto :goto_98

    :cond_8b
    move-object/from16 v24, v6

    goto/16 :goto_329

    :cond_8f
    const-string v9, "--"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8b

    move-object v5, v4

    :goto_98
    if-nez v4, :cond_a2

    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "Missing start boundary"

    invoke-direct {v3, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a2
    if-eqz v7, :cond_aa

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    :cond_aa
    invoke-static {v5}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v5, v4

    const/16 v7, 0x100

    new-array v7, v7, [I

    const/4 v8, 0x0

    :goto_b4
    if-lt v8, v5, :cond_30b

    new-array v8, v5, [I

    move v9, v5

    :goto_b9
    if-gtz v9, :cond_2d3

    add-int/lit8 v9, v5, -0x1

    aput v14, v8, v9

    const-wide/16 v16, 0x0

    move-wide/from16 v18, v16

    const/4 v15, 0x0

    :goto_c4
    if-eqz v15, :cond_c7

    goto :goto_e9

    :cond_c7
    if-eqz v3, :cond_f4

    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v16

    :cond_cd
    invoke-virtual {v6}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_d9

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v20

    if-gtz v20, :cond_cd

    :cond_d9
    if-nez v10, :cond_f0

    sget-boolean v3, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-nez v3, :cond_e7

    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "missing multipart end boundary"

    invoke-direct {v3, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_e7
    iput-boolean v13, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_e9} :catch_36b
    .catchall {:try_start_55 .. :try_end_e9} :catchall_368

    :goto_e9
    :try_start_e9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_ec} :catch_ec
    .catchall {:try_start_e9 .. :try_end_ec} :catchall_383

    :catch_ec
    :try_start_ec
    iput-boolean v14, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_ee
    .catchall {:try_start_ec .. :try_end_ee} :catchall_383

    monitor-exit p0

    return-void

    :cond_f0
    move-wide/from16 v21, v16

    const/4 v10, 0x0

    goto :goto_fa

    :cond_f4
    :try_start_f4
    invoke-virtual {v1, v2}, Ljavax/mail/internet/MimeMultipart;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v10

    move-wide/from16 v21, v16

    :goto_fa
    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    move-result v16

    if-nez v16, :cond_108

    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "Stream doesn\'t support mark"

    invoke-direct {v3, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_108
    if-nez v3, :cond_110

    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    goto :goto_115

    :cond_110
    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v18

    const/4 v11, 0x0

    :goto_115
    new-array v14, v5, [B

    new-array v12, v5, [B

    const/16 v16, 0x1

    const/16 v23, 0x0

    :goto_11d
    add-int/lit8 v13, v5, 0x4

    add-int/lit16 v13, v13, 0x3e8

    invoke-virtual {v2, v13}, Ljava/io/InputStream;->mark(I)V

    move-object/from16 v24, v6

    const/4 v13, 0x0

    invoke-static {v2, v14, v13, v5}, Ljavax/mail/internet/MimeMultipart;->readFully(Ljava/io/InputStream;[BII)I

    move-result v6

    if-ge v6, v5, :cond_14f

    sget-boolean v13, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-nez v13, :cond_139

    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "missing multipart end boundary"

    invoke-direct {v3, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_139
    if-eqz v3, :cond_13f

    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v18

    :cond_13f
    const/4 v13, 0x0

    iput-boolean v13, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    move-object/from16 v27, v8

    move/from16 v25, v9

    move-wide/from16 v8, v18

    move/from16 v15, v23

    const/4 v13, 0x0

    :goto_14b
    const/16 v26, 0x1

    goto/16 :goto_1f3

    :cond_14f
    move v13, v9

    :goto_150
    if-gez v13, :cond_157

    move/from16 v25, v9

    move/from16 v26, v15

    goto :goto_168

    :cond_157
    move/from16 v25, v9

    aget-byte v9, v14, v13

    move/from16 v26, v15

    aget-byte v15, v4, v13

    if-ne v9, v15, :cond_168

    add-int/lit8 v13, v13, -0x1

    move/from16 v9, v25

    move/from16 v15, v26

    goto :goto_150

    :cond_168
    :goto_168
    if-gez v13, :cond_25e

    const/16 v9, 0xd

    if-nez v16, :cond_18e

    move/from16 v15, v23

    add-int/lit8 v23, v15, -0x1

    aget-byte v13, v12, v23

    if-eq v13, v9, :cond_17b

    const/16 v9, 0xa

    if-ne v13, v9, :cond_190

    goto :goto_17d

    :cond_17b
    const/16 v9, 0xa

    :goto_17d
    if-ne v13, v9, :cond_18c

    const/4 v9, 0x2

    if-lt v15, v9, :cond_18c

    add-int/lit8 v23, v15, -0x2

    aget-byte v9, v12, v23

    const/16 v13, 0xd

    if-ne v9, v13, :cond_18c

    const/4 v13, 0x2

    goto :goto_191

    :cond_18c
    const/4 v13, 0x1

    goto :goto_191

    :cond_18e
    move/from16 v15, v23

    :cond_190
    const/4 v13, 0x0

    :goto_191
    if-nez v16, :cond_199

    if-lez v13, :cond_196

    goto :goto_199

    :cond_196
    move-object/from16 v27, v8

    goto :goto_1e6

    :cond_199
    :goto_199
    if-eqz v3, :cond_1aa

    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v16

    move-object/from16 v27, v8

    int-to-long v8, v5

    sub-long v18, v16, v8

    int-to-long v8, v13

    sub-long v16, v18, v8

    move-wide/from16 v18, v16

    goto :goto_1ac

    :cond_1aa
    move-object/from16 v27, v8

    :goto_1ac
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_1c2

    move/from16 v28, v8

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v8

    if-ne v8, v9, :cond_1c4

    const/4 v8, 0x1

    iput-boolean v8, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    move-wide/from16 v8, v18

    goto :goto_14b

    :cond_1c2
    move/from16 v28, v8

    :cond_1c4
    move/from16 v8, v28

    :goto_1c6
    const/16 v9, 0x20

    if-eq v8, v9, :cond_244

    move/from16 v29, v13

    const/16 v13, 0x9

    if-eq v8, v13, :cond_23f

    const/16 v9, 0xa

    if-eq v8, v9, :cond_1ef

    const/16 v13, 0xd

    if-ne v8, v13, :cond_1e6

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/io/InputStream;->mark(I)V

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v8

    if-eq v8, v9, :cond_1ef

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    goto :goto_1ef

    :cond_1e6
    :goto_1e6
    move-object/from16 v30, v4

    move/from16 v31, v5

    move-wide/from16 v4, v21

    const/4 v13, 0x0

    goto/16 :goto_268

    :cond_1ef
    :goto_1ef
    move-wide/from16 v8, v18

    move/from16 v13, v29

    :goto_1f3
    if-eqz v3, :cond_204

    move-object/from16 v30, v4

    move/from16 v31, v5

    move-wide/from16 v4, v21

    invoke-interface {v3, v4, v5, v8, v9}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v6

    goto :goto_224

    :cond_204
    move-object/from16 v30, v4

    move/from16 v31, v5

    move-wide/from16 v4, v21

    sub-int v13, v15, v13

    if-lez v13, :cond_212

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v15, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_212
    iget-boolean v12, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    if-nez v12, :cond_21c

    if-lez v6, :cond_21c

    const/4 v12, 0x0

    invoke-virtual {v11, v14, v12, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_21c
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v1, v10, v6}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v6

    :goto_224
    invoke-super {v1, v6}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    move-wide/from16 v16, v4

    move-wide/from16 v18, v8

    move-object/from16 v6, v24

    move/from16 v9, v25

    move/from16 v15, v26

    move-object/from16 v8, v27

    move-object/from16 v4, v30

    move/from16 v5, v31

    const/16 v10, 0x9

    const/16 v11, 0x20

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_c4

    :cond_23f
    move-object/from16 v30, v4

    move/from16 v31, v5

    goto :goto_24a

    :cond_244
    move-object/from16 v30, v4

    move/from16 v31, v5

    move/from16 v29, v13

    :goto_24a
    move-wide/from16 v4, v21

    const/16 v9, 0xa

    const/16 v13, 0xd

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v8

    move-wide/from16 v21, v4

    move/from16 v13, v29

    move-object/from16 v4, v30

    move/from16 v5, v31

    goto/16 :goto_1c6

    :cond_25e
    move-object/from16 v30, v4

    move/from16 v31, v5

    move-object/from16 v27, v8

    move-wide/from16 v4, v21

    move/from16 v15, v23

    :goto_268
    add-int/lit8 v6, v13, 0x1

    aget-byte v8, v14, v13

    and-int/lit8 v8, v8, 0x7f

    aget v8, v7, v8

    sub-int/2addr v6, v8

    aget v8, v27, v13

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v8, 0x2

    if-ge v6, v8, :cond_2a7

    if-nez v3, :cond_285

    const/4 v6, 0x1

    if-le v15, v6, :cond_285

    add-int/lit8 v6, v15, -0x1

    const/4 v8, 0x0

    invoke-virtual {v11, v12, v8, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_285
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    const-wide/16 v8, 0x1

    invoke-direct {v1, v2, v8, v9}, Ljavax/mail/internet/MimeMultipart;->skipFully(Ljava/io/InputStream;J)V

    if-lez v15, :cond_29e

    add-int/lit8 v23, v15, -0x1

    aget-byte v6, v12, v23

    const/4 v8, 0x0

    aput-byte v6, v12, v8

    aget-byte v6, v14, v8

    const/4 v13, 0x1

    aput-byte v6, v12, v13

    const/16 v23, 0x2

    goto :goto_2c0

    :cond_29e
    const/4 v6, 0x0

    const/4 v13, 0x1

    aget-byte v8, v14, v6

    aput-byte v8, v12, v6

    const/16 v23, 0x1

    goto :goto_2c0

    :cond_2a7
    const/4 v13, 0x1

    if-lez v15, :cond_2b1

    if-nez v3, :cond_2b1

    const/4 v8, 0x0

    invoke-virtual {v11, v12, v8, v15}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2b2

    :cond_2b1
    const/4 v8, 0x0

    :goto_2b2
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    int-to-long v8, v6

    invoke-direct {v1, v2, v8, v9}, Ljavax/mail/internet/MimeMultipart;->skipFully(Ljava/io/InputStream;J)V

    move/from16 v23, v6

    move-object/from16 v32, v14

    move-object v14, v12

    move-object/from16 v12, v32

    :goto_2c0
    move-wide/from16 v21, v4

    move-object/from16 v6, v24

    move/from16 v9, v25

    move/from16 v15, v26

    move-object/from16 v8, v27

    move-object/from16 v4, v30

    move/from16 v5, v31

    const/4 v13, 0x0

    const/16 v16, 0x0

    goto/16 :goto_11d

    :cond_2d3
    move-object/from16 v30, v4

    move/from16 v31, v5

    move-object/from16 v24, v6

    move-object/from16 v27, v8

    const/16 v4, 0x20

    const/4 v13, 0x1

    add-int/lit8 v5, v31, -0x1

    :goto_2e0
    if-ge v5, v9, :cond_2ea

    :goto_2e2
    if-gtz v5, :cond_2e5

    goto :goto_2f9

    :cond_2e5
    add-int/lit8 v5, v5, -0x1

    aput v9, v27, v5

    goto :goto_2e2

    :cond_2ea
    aget-byte v6, v30, v5

    sub-int v8, v5, v9

    aget-byte v8, v30, v8

    if-ne v6, v8, :cond_2f9

    add-int/lit8 v6, v5, -0x1

    aput v9, v27, v6

    add-int/lit8 v5, v5, -0x1

    goto :goto_2e0

    :cond_2f9
    :goto_2f9
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v6, v24

    move-object/from16 v8, v27

    move-object/from16 v4, v30

    move/from16 v5, v31

    const/16 v10, 0x9

    const/16 v11, 0x20

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_b9

    :cond_30b
    move-object/from16 v30, v4

    move/from16 v31, v5

    move-object/from16 v24, v6

    const/16 v4, 0x20

    const/4 v6, 0x0

    const/4 v13, 0x1

    aget-byte v5, v30, v8

    add-int/lit8 v8, v8, 0x1

    aput v8, v7, v5

    move-object/from16 v6, v24

    move-object/from16 v4, v30

    move/from16 v5, v31

    const/16 v10, 0x9

    const/16 v11, 0x20

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_b4

    :goto_329
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6
    :try_end_32d
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_32d} :catch_36b
    .catchall {:try_start_f4 .. :try_end_32d} :catchall_368

    if-lez v6, :cond_351

    if-nez v8, :cond_33d

    :try_start_331
    const-string v6, "line.separator"

    const-string v8, "\n"

    invoke-static {v6, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_339
    .catch Ljava/lang/SecurityException; {:try_start_331 .. :try_end_339} :catch_33a
    .catch Ljava/io/IOException; {:try_start_331 .. :try_end_339} :catch_36b
    .catchall {:try_start_331 .. :try_end_339} :catchall_368

    goto :goto_33c

    :catch_33a
    :try_start_33a
    const-string v6, "\n"

    :goto_33c
    move-object v8, v6

    :cond_33d
    if-nez v7, :cond_34b

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v10, 0x2

    add-int/2addr v7, v10

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v7, v6

    :cond_34b
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_351
    .catch Ljava/io/IOException; {:try_start_33a .. :try_end_351} :catch_36b
    .catchall {:try_start_33a .. :try_end_351} :catchall_368

    :cond_351
    move-object/from16 v6, v24

    goto/16 :goto_5c

    :cond_355
    :goto_355
    move-object/from16 v24, v6

    const/16 v4, 0x20

    const/4 v6, 0x0

    const/4 v10, 0x2

    const/4 v13, 0x1

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v6, v24

    const/16 v10, 0x9

    const/16 v11, 0x20

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_6f

    :catchall_368
    move-exception v0

    move-object v3, v0

    goto :goto_375

    :catch_36b
    move-exception v0

    move-object v3, v0

    :try_start_36d
    new-instance v4, Ljavax/mail/MessagingException;

    const-string v5, "IO Error"

    invoke-direct {v4, v5, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_375
    .catchall {:try_start_36d .. :try_end_375} :catchall_368

    :goto_375
    :try_start_375
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_378
    .catch Ljava/io/IOException; {:try_start_375 .. :try_end_378} :catch_378
    .catchall {:try_start_375 .. :try_end_378} :catchall_383

    :catch_378
    :try_start_378
    throw v3

    :catch_379
    move-exception v0

    move-object v2, v0

    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "No inputstream from datasource"

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
    :try_end_383
    .catchall {:try_start_378 .. :try_end_383} :catchall_383

    :catchall_383
    move-exception v0

    move-object v2, v0

    monitor-exit p0

    throw v2
.end method

.method private static readFully(Ljava/io/InputStream;[BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return v0

    :cond_4
    :goto_4
    if-gtz p3, :cond_7

    goto :goto_11

    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_11

    add-int/2addr p2, v1

    add-int/2addr v0, v1

    sub-int/2addr p3, v1

    goto :goto_4

    :cond_11
    :goto_11
    if-lez v0, :cond_14

    return v0

    :cond_14
    const/4 p0, -0x1

    return p0
.end method

.method private skipFully(Ljava/io/InputStream;J)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1, p2, p3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gtz v4, :cond_17

    new-instance p1, Ljava/io/EOFException;

    const-string p2, "can\'t skip"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    const/4 v0, 0x0

    sub-long v0, p2, v2

    move-wide p2, v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    invoke-super {p0, p1}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    invoke-super {p0, p1, p2}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;I)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0, p1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0, p1}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0, p1, p2}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljavax/mail/internet/InternetHeaders;[B)V

    return-object v0
.end method

.method public declared-synchronized getBodyPart(I)Ljavax/mail/BodyPart;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    invoke-super {p0, p1}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object p1

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getBodyPart(Ljava/lang/String;)Ljavax/mail/BodyPart;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->getCount()I

    move-result v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_25

    const/4 v1, 0x0

    :goto_9
    if-lt v1, v0, :cond_e

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_e
    :try_start_e
    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v2

    check-cast v2, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v2}, Ljavax/mail/internet/MimeBodyPart;->getContentID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_22

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_25

    if-eqz v3, :cond_22

    monitor-exit p0

    return-object v2

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCount()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    invoke-super {p0}, Ljavax/mail/Multipart;->getCount()I

    move-result v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPreamble()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    iget-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isComplete()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    iget-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized parse()V
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_3
    iget-boolean v2, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_257

    if-eqz v2, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    sget-boolean v2, Ljavax/mail/internet/MimeMultipart;->bmparse:Z

    if-eqz v2, :cond_12

    invoke-direct/range {p0 .. p0}, Ljavax/mail/internet/MimeMultipart;->parsebm()V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_257

    monitor-exit p0

    return-void

    :cond_12
    :try_start_12
    iget-object v2, v1, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    invoke-interface {v2}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    instance-of v3, v2, Ljava/io/ByteArrayInputStream;

    if-nez v3, :cond_2a

    instance-of v3, v2, Ljava/io/BufferedInputStream;

    if-nez v3, :cond_2a

    instance-of v3, v2, Ljavax/mail/internet/SharedInputStream;

    if-nez v3, :cond_2a

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_29} :catch_24d
    .catchall {:try_start_12 .. :try_end_29} :catchall_257

    move-object v2, v3

    :cond_2a
    :try_start_2a
    instance-of v3, v2, Ljavax/mail/internet/SharedInputStream;

    if-eqz v3, :cond_32

    move-object v3, v2

    check-cast v3, Ljavax/mail/internet/SharedInputStream;

    goto :goto_33

    :cond_32
    const/4 v3, 0x0

    :goto_33
    new-instance v5, Ljavax/mail/internet/ContentType;

    iget-object v6, v1, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v6, "boundary"

    invoke-virtual {v5, v6}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_51

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "--"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5e

    :cond_51
    sget-boolean v5, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    if-nez v5, :cond_5d

    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "Missing boundary parameter"

    invoke-direct {v2, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5d
    .catchall {:try_start_2a .. :try_end_5d} :catchall_257

    :cond_5d
    const/4 v5, 0x0

    :goto_5e
    :try_start_5e
    new-instance v6, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v6, v2}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_65
    :goto_65
    invoke-virtual {v6}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x9

    const/16 v11, 0x20

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v9, :cond_72

    goto :goto_9c

    :cond_72
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v13

    :goto_77
    if-gez v14, :cond_7a

    goto :goto_84

    :cond_7a
    invoke-virtual {v9, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-eq v15, v11, :cond_231

    if-ne v15, v10, :cond_84

    goto/16 :goto_231

    :cond_84
    :goto_84
    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v9, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    if-eqz v5, :cond_93

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_207

    goto :goto_9c

    :cond_93
    const-string v14, "--"

    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_207

    move-object v5, v9

    :goto_9c
    if-nez v9, :cond_a6

    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "Missing start boundary"

    invoke-direct {v3, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a6
    if-eqz v7, :cond_ae

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    :cond_ae
    invoke-static {v5}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v7, v5

    const-wide/16 v8, 0x0

    move-wide v14, v8

    move-wide/from16 v16, v14

    const/4 v8, 0x0

    :goto_b9
    if-eqz v8, :cond_bc

    goto :goto_de

    :cond_bc
    if-eqz v3, :cond_e7

    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v14

    :cond_c2
    invoke-virtual {v6}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_ce

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v18

    if-gtz v18, :cond_c2

    :cond_ce
    if-nez v9, :cond_e5

    sget-boolean v3, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-nez v3, :cond_dc

    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "missing multipart end boundary"

    invoke-direct {v3, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_dc
    iput-boolean v12, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_de} :catch_23f
    .catchall {:try_start_5e .. :try_end_de} :catchall_23c

    :goto_de
    :try_start_de
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e1} :catch_e1
    .catchall {:try_start_de .. :try_end_e1} :catchall_257

    :catch_e1
    :try_start_e1
    iput-boolean v13, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_e3
    .catchall {:try_start_e1 .. :try_end_e3} :catchall_257

    monitor-exit p0

    return-void

    :cond_e5
    const/4 v9, 0x0

    goto :goto_eb

    :cond_e7
    :try_start_e7
    invoke-virtual {v1, v2}, Ljavax/mail/internet/MimeMultipart;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v9

    :goto_eb
    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    move-result v18

    if-nez v18, :cond_f9

    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "Stream doesn\'t support mark"

    invoke-direct {v3, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_f9
    if-nez v3, :cond_101

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    goto :goto_106

    :cond_101
    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v16

    const/4 v4, 0x0

    :goto_106
    move-wide/from16 v22, v16

    const/4 v12, -0x1

    const/16 v16, 0x1

    const/16 v21, -0x1

    :goto_10d
    if-eqz v16, :cond_17c

    add-int/lit8 v10, v7, 0x4

    add-int/lit16 v10, v10, 0x3e8

    invoke-virtual {v2, v10}, Ljava/io/InputStream;->mark(I)V

    const/4 v10, 0x0

    :goto_117
    if-lt v10, v7, :cond_11a

    goto :goto_12a

    :cond_11a
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v11

    aget-byte v13, v5, v10

    and-int/lit16 v13, v13, 0xff

    if-ne v11, v13, :cond_12a

    add-int/lit8 v10, v10, 0x1

    const/16 v11, 0x20

    const/4 v13, 0x1

    goto :goto_117

    :cond_12a
    :goto_12a
    if-ne v10, v7, :cond_163

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_13f

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v13

    if-ne v13, v11, :cond_13f

    const/4 v11, 0x1

    iput-boolean v11, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    const/4 v8, 0x1

    goto :goto_15c

    :cond_13f
    :goto_13f
    const/16 v11, 0x20

    if-eq v10, v11, :cond_15e

    const/16 v13, 0x9

    if-eq v10, v13, :cond_15e

    const/16 v11, 0xa

    if-eq v10, v11, :cond_15c

    const/16 v13, 0xd

    if-ne v10, v13, :cond_163

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/io/InputStream;->mark(I)V

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v10

    if-eq v10, v11, :cond_15c

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    :cond_15c
    :goto_15c
    const/4 v13, 0x0

    goto :goto_197

    :cond_15e
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v10

    goto :goto_13f

    :cond_163
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    if-eqz v4, :cond_17c

    const/4 v10, -0x1

    if-eq v12, v10, :cond_179

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move/from16 v11, v21

    if-eq v11, v10, :cond_175

    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_175
    const/4 v12, -0x1

    const/16 v21, -0x1

    goto :goto_181

    :cond_179
    move/from16 v11, v21

    goto :goto_17f

    :cond_17c
    move/from16 v11, v21

    const/4 v10, -0x1

    :goto_17f
    move/from16 v21, v11

    :goto_181
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v11

    if-gez v11, :cond_1bb

    sget-boolean v8, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-nez v8, :cond_193

    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "missing multipart end boundary"

    invoke-direct {v3, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_193
    const/4 v13, 0x0

    iput-boolean v13, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    const/4 v8, 0x1

    :goto_197
    if-eqz v3, :cond_1a4

    move-wide/from16 v10, v22

    invoke-interface {v3, v14, v15, v10, v11}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v4

    goto :goto_1ae

    :cond_1a4
    move-wide/from16 v10, v22

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v1, v9, v4}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v4

    :goto_1ae
    invoke-super {v1, v4}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    move-wide/from16 v16, v10

    const/16 v10, 0x9

    const/16 v11, 0x20

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_b9

    :cond_1bb
    move-wide/from16 v16, v22

    const/16 v10, 0xd

    const/4 v13, 0x0

    if-eq v11, v10, :cond_1d5

    const/16 v10, 0xa

    if-ne v11, v10, :cond_1c7

    goto :goto_1d5

    :cond_1c7
    if-eqz v4, :cond_1cc

    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_1cc
    move-wide/from16 v22, v16

    const/16 v11, 0x20

    const/4 v13, 0x1

    const/16 v16, 0x0

    goto/16 :goto_10d

    :cond_1d5
    :goto_1d5
    if-eqz v3, :cond_1e0

    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v16

    const-wide/16 v19, 0x1

    sub-long v22, v16, v19

    goto :goto_1e2

    :cond_1e0
    move-wide/from16 v22, v16

    :goto_1e2
    const/16 v10, 0xd

    if-ne v11, v10, :cond_1ff

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/io/InputStream;->mark(I)V

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v12

    const/16 v10, 0xa

    if-ne v12, v10, :cond_1fc

    move/from16 v21, v12

    const/4 v13, 0x1

    const/16 v16, 0x1

    move v12, v11

    const/16 v11, 0x20

    goto/16 :goto_10d

    :cond_1fc
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    :cond_1ff
    move v12, v11

    const/16 v11, 0x20

    const/4 v13, 0x1

    const/16 v16, 0x1

    goto/16 :goto_10d

    :cond_207
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_20b
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_20b} :catch_23f
    .catchall {:try_start_e7 .. :try_end_20b} :catchall_23c

    if-lez v4, :cond_65

    if-nez v8, :cond_21b

    :try_start_20f
    const-string v4, "line.separator"

    const-string v8, "\n"

    invoke-static {v4, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_217
    .catch Ljava/lang/SecurityException; {:try_start_20f .. :try_end_217} :catch_218
    .catch Ljava/io/IOException; {:try_start_20f .. :try_end_217} :catch_23f
    .catchall {:try_start_20f .. :try_end_217} :catchall_23c

    goto :goto_21a

    :catch_218
    :try_start_218
    const-string v4, "\n"

    :goto_21a
    move-object v8, v4

    :cond_21b
    if-nez v7, :cond_229

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v7, v4

    :cond_229
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_22f
    .catch Ljava/io/IOException; {:try_start_218 .. :try_end_22f} :catch_23f
    .catchall {:try_start_218 .. :try_end_22f} :catchall_23c

    goto/16 :goto_65

    :cond_231
    :goto_231
    const/4 v13, 0x0

    add-int/lit8 v14, v14, -0x1

    const/16 v10, 0x9

    const/16 v11, 0x20

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_77

    :catchall_23c
    move-exception v0

    move-object v3, v0

    goto :goto_249

    :catch_23f
    move-exception v0

    move-object v3, v0

    :try_start_241
    new-instance v4, Ljavax/mail/MessagingException;

    const-string v5, "IO Error"

    invoke-direct {v4, v5, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_249
    .catchall {:try_start_241 .. :try_end_249} :catchall_23c

    :goto_249
    :try_start_249
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_24c
    .catch Ljava/io/IOException; {:try_start_249 .. :try_end_24c} :catch_24c
    .catchall {:try_start_249 .. :try_end_24c} :catchall_257

    :catch_24c
    :try_start_24c
    throw v3

    :catch_24d
    move-exception v0

    move-object v2, v0

    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "No inputstream from datasource"

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
    :try_end_257
    .catchall {:try_start_24c .. :try_end_257} :catchall_257

    :catchall_257
    move-exception v0

    move-object v2, v0

    monitor-exit p0

    throw v2
.end method

.method public removeBodyPart(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    invoke-super {p0, p1}, Ljavax/mail/Multipart;->removeBodyPart(I)V

    return-void
.end method

.method public removeBodyPart(Ljavax/mail/BodyPart;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    invoke-super {p0, p1}, Ljavax/mail/Multipart;->removeBodyPart(Ljavax/mail/BodyPart;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized setPreamble(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSubType(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v1, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljavax/mail/internet/ContentType;->setSubType(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected updateHeaders()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_a

    return-void

    :cond_a
    iget-object v1, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v1}, Ljavax/mail/internet/MimeBodyPart;->updateHeaders()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public declared-synchronized writeTo(Ljava/io/OutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljavax/mail/internet/ContentType;

    iget-object v2, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v2, "boundary"

    invoke-virtual {v1, v2}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sun/mail/util/LineOutputStream;

    invoke-direct {v1, p1}, Lcom/sun/mail/util/LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    if-eqz v2, :cond_49

    iget-object v2, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    invoke-static {v2}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/LineOutputStream;->write([B)V

    array-length v3, v2

    if-lez v3, :cond_49

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v2, v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_49

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-byte v2, v2, v3

    const/16 v3, 0xa

    if-eq v2, v3, :cond_49

    invoke-virtual {v1}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    :cond_49
    const/4 v2, 0x0

    :goto_4a
    iget-object v3, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_69

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "--"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_1 .. :try_end_67} :catchall_7d

    monitor-exit p0

    return-void

    :cond_69
    :try_start_69
    invoke-virtual {v1, v0}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V

    iget-object v3, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v3, p1}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Lcom/sun/mail/util/LineOutputStream;->writeln()V
    :try_end_7a
    .catchall {:try_start_69 .. :try_end_7a} :catchall_7d

    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    :catchall_7d
    move-exception p1

    monitor-exit p0

    throw p1
.end method
