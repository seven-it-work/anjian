.class public Lcom/lidroid/xutils/http/callback/FileDownloadHandler;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEntity(Lorg/apache/http/HttpEntity;Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;Ljava/lang/String;ZLjava/lang/String;)Ljava/io/File;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p3

    move-object/from16 v7, p5

    const/4 v2, 0x0

    if-eqz p1, :cond_fc

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    return-object v2

    :cond_e
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2c

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_29

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_2c

    :cond_29
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    :cond_2c
    const-wide/16 v4, 0x0

    if-eqz p4, :cond_40

    :try_start_30
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v4

    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v9, 0x1

    invoke-direct {v6, v1, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    goto :goto_45

    :catchall_3b
    move-exception v0

    move-object v1, v0

    move-object v13, v2

    goto/16 :goto_f5

    :cond_40
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    :goto_45
    move-wide v9, v4

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    const/4 v1, 0x0

    add-long v11, v4, v9

    new-instance v13, Ljava/io/BufferedInputStream;

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v13, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_56
    .catchall {:try_start_30 .. :try_end_56} :catchall_3b

    :try_start_56
    new-instance v14, Ljava/io/BufferedOutputStream;

    invoke-direct {v14, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5b
    .catchall {:try_start_56 .. :try_end_5b} :catchall_f3

    if-eqz p2, :cond_74

    const/4 v6, 0x1

    move-object/from16 v1, p2

    move-wide v2, v11

    move-wide v4, v9

    :try_start_62
    invoke-interface/range {v1 .. v6}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z

    move-result v1
    :try_end_66
    .catchall {:try_start_62 .. :try_end_66} :catchall_6f

    if-nez v1, :cond_74

    :goto_68
    invoke-static {v13}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v14}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v8

    :catchall_6f
    move-exception v0

    move-object v1, v0

    move-object v2, v14

    goto/16 :goto_f5

    :cond_74
    const/16 v1, 0x1000

    :try_start_76
    new-array v6, v1, [B

    move-wide v4, v9

    :goto_79
    invoke-virtual {v13, v6}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_d4

    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->flush()V

    if-eqz p2, :cond_8c

    const/4 v6, 0x1

    move-object/from16 v1, p2

    move-wide v2, v11

    invoke-interface/range {v1 .. v6}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z
    :try_end_8c
    .catchall {:try_start_76 .. :try_end_8c} :catchall_6f

    :cond_8c
    invoke-static {v13}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v14}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d3

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d3

    new-instance v1, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_b5

    invoke-virtual {v8, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_b4

    return-object v1

    :cond_b4
    return-object v8

    :cond_b5
    new-instance v1, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a7

    :cond_d3
    return-object v8

    :cond_d4
    const/4 v2, 0x0

    :try_start_d5
    invoke-virtual {v14, v6, v2, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    int-to-long v1, v1

    add-long v9, v4, v1

    if-eqz p2, :cond_ed

    const/4 v15, 0x0

    move-object/from16 v1, p2

    move-wide v2, v11

    move-wide v4, v9

    move-object/from16 v16, v6

    move v6, v15

    invoke-interface/range {v1 .. v6}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z

    move-result v1
    :try_end_e9
    .catchall {:try_start_d5 .. :try_end_e9} :catchall_6f

    if-nez v1, :cond_ef

    goto/16 :goto_68

    :cond_ed
    move-object/from16 v16, v6

    :cond_ef
    move-wide v4, v9

    move-object/from16 v6, v16

    goto :goto_79

    :catchall_f3
    move-exception v0

    move-object v1, v0

    :goto_f5
    invoke-static {v13}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    :cond_fc
    return-object v2
.end method
