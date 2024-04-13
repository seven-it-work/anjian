.class public Lcom/lidroid/xutils/http/client/multipart/content/ByteArrayBody;
.super Lcom/lidroid/xutils/http/client/multipart/content/AbstractContentBody;


# instance fields
.field private final data:[B

.field private final filename:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .registers 4

    const-string v0, "application/octet-stream"

    invoke-direct {p0, p1, v0, p2}, Lcom/lidroid/xutils/http/client/multipart/content/ByteArrayBody;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/lidroid/xutils/http/client/multipart/content/AbstractContentBody;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_d

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "byte[] may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/multipart/content/ByteArrayBody;->data:[B

    iput-object p3, p0, Lcom/lidroid/xutils/http/client/multipart/content/ByteArrayBody;->filename:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/content/ByteArrayBody;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getFilename()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/content/ByteArrayBody;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .registers 2

    const-string v0, "binary"

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/content/ByteArrayBody;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lcom/lidroid/xutils/http/client/multipart/content/ByteArrayBody;->callBackInfo:Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;

    iget-wide v0, p1, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    iget-object v2, p0, Lcom/lidroid/xutils/http/client/multipart/content/ByteArrayBody;->data:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long v4, v0, v2

    iput-wide v4, p1, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    iget-object p1, p0, Lcom/lidroid/xutils/http/client/multipart/content/ByteArrayBody;->callBackInfo:Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->doCallBack(Z)Z

    return-void
.end method
