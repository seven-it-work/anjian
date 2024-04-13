.class public Lcom/lidroid/xutils/http/callback/StringDownloadHandler;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEntity(Lorg/apache/http/HttpEntity;Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;Ljava/lang/String;)Ljava/lang/String;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p3

    const/4 v8, 0x0

    if-nez p1, :cond_6

    return-object v8

    :cond_6
    const-wide/16 v10, 0x0

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v12

    if-eqz p2, :cond_1b

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v1, p2

    move-wide v2, v12

    invoke-interface/range {v1 .. v6}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z

    move-result v1

    if-nez v1, :cond_1b

    return-object v8

    :cond_1b
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_20
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_6e

    :try_start_24
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v9, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_2e
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_36

    move-wide v4, v10

    goto :goto_54

    :cond_36
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1, v7}, Lcom/lidroid/xutils/util/OtherUtils;->sizeOfString(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x0

    add-long v15, v10, v1

    if-eqz p2, :cond_69

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move-wide v2, v12

    move-wide v4, v15

    invoke-interface/range {v1 .. v6}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z

    move-result v1

    if-eqz v1, :cond_53

    goto :goto_69

    :cond_53
    move-wide v4, v15

    :goto_54
    if-eqz p2, :cond_5d

    const/4 v6, 0x1

    move-object/from16 v1, p2

    move-wide v2, v12

    invoke-interface/range {v1 .. v6}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z
    :try_end_5d
    .catchall {:try_start_24 .. :try_end_5d} :catchall_6b

    :cond_5d
    invoke-static {v9}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_69
    :goto_69
    move-wide v10, v15

    goto :goto_2e

    :catchall_6b
    move-exception v0

    move-object v1, v0

    goto :goto_71

    :catchall_6e
    move-exception v0

    move-object v1, v0

    move-object v9, v8

    :goto_71
    invoke-static {v9}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method
