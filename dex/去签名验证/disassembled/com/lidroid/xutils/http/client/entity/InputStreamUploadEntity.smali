.class public Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;

# interfaces
.implements Lcom/lidroid/xutils/http/client/entity/UploadEntity;


# static fields
.field private static final BUFFER_SIZE:I = 0x800


# instance fields
.field private callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

.field private final content:Ljava/io/InputStream;

.field private final length:J

.field private uploadedSize:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .registers 6

    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    if-nez p1, :cond_14

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Source input stream may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->content:Ljava/io/InputStream;

    iput-wide p2, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->length:J

    return-void
.end method


# virtual methods
.method public consumeContent()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->content:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    iget-wide v0, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->length:J

    return-wide v0
.end method

.method public isRepeatable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public setCallBackHandler(Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez v2, :cond_e

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Output stream may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    iget-object v3, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->content:Ljava/io/InputStream;

    const/16 v4, 0x800

    :try_start_12
    new-array v4, v4, [B

    iget-wide v5, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->length:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-gez v9, :cond_4f

    :cond_1e
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-ne v7, v5, :cond_26

    goto/16 :goto_94

    :cond_26
    invoke-virtual {v2, v4, v6, v7}, Ljava/io/OutputStream;->write([BII)V

    iget-wide v8, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    int-to-long v10, v7

    add-long v12, v8, v10

    iput-wide v12, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    iget-object v7, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    if-eqz v7, :cond_1e

    iget-object v8, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    iget-wide v9, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    const-wide/16 v11, 0x1

    add-long v13, v9, v11

    iget-wide v11, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    const/4 v7, 0x0

    move-wide v9, v13

    move v13, v7

    invoke-interface/range {v8 .. v13}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z

    move-result v7

    if-nez v7, :cond_1e

    new-instance v2, Ljava/io/InterruptedIOException;

    const-string v4, "cancel"

    invoke-direct {v2, v4}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4f
    iget-wide v9, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->length:J

    :goto_51
    cmp-long v11, v9, v7

    if-gtz v11, :cond_56

    goto :goto_94

    :cond_56
    const-wide/16 v11, 0x800

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-virtual {v3, v4, v6, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    if-eq v11, v5, :cond_94

    invoke-virtual {v2, v4, v6, v11}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v11, v11

    sub-long v13, v9, v11

    iget-wide v9, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    const/4 v15, 0x0

    add-long v5, v9, v11

    iput-wide v5, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    iget-object v5, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    if-eqz v5, :cond_90

    iget-object v5, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    iget-wide v9, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->length:J

    iget-wide v11, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    const/16 v21, 0x0

    move-object/from16 v16, v5

    move-wide/from16 v17, v9

    move-wide/from16 v19, v11

    invoke-interface/range {v16 .. v21}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z

    move-result v5

    if-nez v5, :cond_90

    new-instance v2, Ljava/io/InterruptedIOException;

    const-string v4, "cancel"

    invoke-direct {v2, v4}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_90
    move-wide v9, v13

    const/4 v5, -0x1

    const/4 v6, 0x0

    goto :goto_51

    :cond_94
    :goto_94
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->flush()V

    iget-object v2, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    if-eqz v2, :cond_a5

    iget-object v4, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    iget-wide v5, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->length:J

    iget-wide v7, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    const/4 v9, 0x1

    invoke-interface/range {v4 .. v9}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z
    :try_end_a5
    .catchall {:try_start_12 .. :try_end_a5} :catchall_a9

    :cond_a5
    invoke-static {v3}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_a9
    move-exception v0

    move-object v2, v0

    invoke-static {v3}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method
