.class abstract Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;
.super Lorg/apache/http/entity/HttpEntityWrapper;

# interfaces
.implements Lcom/lidroid/xutils/http/client/entity/UploadEntity;


# instance fields
.field private callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

.field private content:Ljava/io/InputStream;

.field private uncompressedLength:J

.field private uploadedSize:J


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .registers 4

    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->uploadedSize:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->uncompressedLength:J

    return-void
.end method

.method private getDecompressingStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_11

    :try_start_7
    invoke-virtual {p0, v1}, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->decorate(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_12

    :catch_11
    move-exception v1

    :goto_12
    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method


# virtual methods
.method abstract decorate(Ljava/io/InputStream;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->content:Ljava/io/InputStream;

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->getDecompressingStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->content:Ljava/io/InputStream;

    :cond_12
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->content:Ljava/io/InputStream;

    return-object v0

    :cond_15
    invoke-direct {p0}, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->getDecompressingStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public setCallBackHandler(Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

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
    invoke-virtual {p0}, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_55

    const/16 v0, 0x1000

    :try_start_11
    new-array v0, v0, [B

    :cond_13
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2f

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    iget-object p1, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    if-eqz p1, :cond_2b

    iget-object v2, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    iget-wide v3, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->uncompressedLength:J

    iget-wide v5, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->uploadedSize:J

    const/4 v7, 0x1

    invoke-interface/range {v2 .. v7}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_53

    :cond_2b
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :cond_2f
    const/4 v3, 0x0

    :try_start_30
    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iget-wide v3, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->uploadedSize:J

    int-to-long v5, v2

    add-long v7, v3, v5

    iput-wide v7, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->uploadedSize:J

    iget-object v2, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    if-eqz v2, :cond_13

    iget-object v3, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    iget-wide v4, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->uncompressedLength:J

    iget-wide v6, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->uploadedSize:J

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z

    move-result v2

    if-nez v2, :cond_13

    new-instance p1, Ljava/io/InterruptedIOException;

    const-string v0, "cancel"

    invoke-direct {p1, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_53
    .catchall {:try_start_30 .. :try_end_53} :catchall_53

    :catchall_53
    move-exception p1

    goto :goto_57

    :catchall_55
    move-exception p1

    move-object v1, v0

    :goto_57
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method
