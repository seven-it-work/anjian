.class public Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;
.super Lorg/apache/http/entity/FileEntity;

# interfaces
.implements Lcom/lidroid/xutils/http/client/entity/UploadEntity;


# instance fields
.field private callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

.field private fileSize:J

.field private uploadedSize:J


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lorg/apache/http/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->uploadedSize:J

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->fileSize:J

    return-void
.end method


# virtual methods
.method public setCallBackHandler(Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Output stream may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const/4 v0, 0x0

    :try_start_b
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_5d

    const/16 v0, 0x1000

    :try_start_19
    new-array v0, v0, [B

    :cond_1b
    invoke-virtual {v1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_37

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    iget-object p1, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    if-eqz p1, :cond_33

    iget-object v2, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    iget-wide v3, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->fileSize:J

    iget-wide v5, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->uploadedSize:J

    const/4 v7, 0x1

    invoke-interface/range {v2 .. v7}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z
    :try_end_33
    .catchall {:try_start_19 .. :try_end_33} :catchall_5b

    :cond_33
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :cond_37
    const/4 v3, 0x0

    :try_start_38
    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iget-wide v3, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->uploadedSize:J

    int-to-long v5, v2

    add-long v7, v3, v5

    iput-wide v7, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->uploadedSize:J

    iget-object v2, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    if-eqz v2, :cond_1b

    iget-object v3, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    iget-wide v4, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->fileSize:J

    iget-wide v6, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->uploadedSize:J

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z

    move-result v2

    if-nez v2, :cond_1b

    new-instance p1, Ljava/io/InterruptedIOException;

    const-string v0, "cancel"

    invoke-direct {p1, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5b
    .catchall {:try_start_38 .. :try_end_5b} :catchall_5b

    :catchall_5b
    move-exception p1

    goto :goto_5f

    :catchall_5d
    move-exception p1

    move-object v1, v0

    :goto_5f
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method
