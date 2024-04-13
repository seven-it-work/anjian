.class Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;
.super Ljava/lang/Object;


# static fields
.field private static synthetic $SWITCH_TABLE$com$lidroid$xutils$http$client$multipart$HttpMultipartMode:[I

.field private static final CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

.field private static final FIELD_SEP:Lorg/apache/http/util/ByteArrayBuffer;

.field private static final TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;


# instance fields
.field private final boundary:Ljava/lang/String;

.field private final charset:Ljava/nio/charset/Charset;

.field private final mode:Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;",
            ">;"
        }
    .end annotation
.end field

.field private subType:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$lidroid$xutils$http$client$multipart$HttpMultipartMode()[I
    .registers 3

    sget-object v0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->$SWITCH_TABLE$com$lidroid$xutils$http$client$multipart$HttpMultipartMode:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;->values()[Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;->BROWSER_COMPATIBLE:Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;

    invoke-virtual {v1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_15

    :catch_15
    :try_start_15
    sget-object v1, Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;->STRICT:Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;

    invoke-virtual {v1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_1e

    :catch_1e
    sput-object v0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->$SWITCH_TABLE$com$lidroid$xutils$http$client$multipart$HttpMultipartMode:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lcom/lidroid/xutils/http/client/multipart/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, ": "

    invoke-static {v0, v1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->FIELD_SEP:Lorg/apache/http/util/ByteArrayBuffer;

    sget-object v0, Lcom/lidroid/xutils/http/client/multipart/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "\r\n"

    invoke-static {v0, v1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    sget-object v0, Lcom/lidroid/xutils/http/client/multipart/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "--"

    invoke-static {v0, v1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;->STRICT:Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Multipart subtype may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    if-nez p3, :cond_17

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Multipart boundary may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->subType:Ljava/lang/String;

    if-eqz p2, :cond_1c

    goto :goto_1e

    :cond_1c
    sget-object p2, Lcom/lidroid/xutils/http/client/multipart/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    :goto_1e
    iput-object p2, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    iput-object p3, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->boundary:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->parts:Ljava/util/List;

    iput-object p4, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->mode:Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;

    return-void
.end method

.method private doWriteTo(Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;Ljava/io/OutputStream;Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;Z)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p3, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->getBoundary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_63

    sget-object p1, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {p1, p2}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    iget-wide v1, p3, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    sget-object p1, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {p1}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result p1

    int-to-long v4, p1

    add-long v6, v1, v4

    iput-wide v6, p3, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    invoke-static {v0, p2}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    iget-wide v1, p3, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result p1

    int-to-long v4, p1

    add-long v6, v1, v4

    iput-wide v6, p3, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    sget-object p1, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {p1, p2}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    iget-wide v0, p3, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    sget-object p1, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {p1}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result p1

    int-to-long v4, p1

    add-long v6, v0, v4

    iput-wide v6, p3, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    sget-object p1, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {p1, p2}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    iget-wide p1, p3, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    sget-object p4, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {p4}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result p4

    int-to-long v0, p4

    add-long v4, p1, v0

    iput-wide v4, p3, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    invoke-virtual {p3, v3}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->doCallBack(Z)Z

    return-void

    :cond_63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;

    invoke-virtual {p3, v3}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->doCallBack(Z)Z

    move-result v3

    if-nez v3, :cond_77

    new-instance p1, Ljava/io/InterruptedIOException;

    const-string p2, "cancel"

    invoke-direct {p1, p2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_77
    sget-object v3, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v3, p2}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    iget-wide v3, p3, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    sget-object v5, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v5}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v5

    int-to-long v5, v5

    add-long v7, v3, v5

    iput-wide v7, p3, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    invoke-static {v0, p2}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    iget-wide v3, p3, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v5

    int-to-long v5, v5

    add-long v7, v3, v5

    iput-wide v7, p3, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    sget-object v3, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v3, p2}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    iget-wide v3, p3, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    sget-object v5, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v5}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v5

    int-to-long v5, v5

    add-long v7, v3, v5

    iput-wide v7, p3, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    invoke-virtual {v2}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->getHeader()Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;

    move-result-object v3

    invoke-static {}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->$SWITCH_TABLE$com$lidroid$xutils$http$client$multipart$HttpMultipartMode()[I

    move-result-object v4

    invoke-virtual {p1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1ca

    goto/16 :goto_197

    :pswitch_bc
    const-string v4, "Content-Disposition"

    invoke-virtual {v3, v4}, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;->getField(Ljava/lang/String;)Lcom/lidroid/xutils/http/client/multipart/MinimalField;

    move-result-object v4

    iget-object v5, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    invoke-static {v4, v5, p2}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeField(Lcom/lidroid/xutils/http/client/multipart/MinimalField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    iget-wide v5, p3, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    iget-object v7, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/lidroid/xutils/http/client/multipart/MinimalField;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/lidroid/xutils/http/client/multipart/MinimalField;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v4

    sget-object v7, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->FIELD_SEP:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v7}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v7

    add-int/2addr v4, v7

    sget-object v7, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v7}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v7

    add-int/2addr v4, v7

    int-to-long v7, v4

    add-long v9, v5, v7

    iput-wide v9, p3, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    invoke-virtual {v2}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->getBody()Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;

    move-result-object v4

    invoke-interface {v4}, Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_197

    const-string v4, "Content-Type"

    invoke-virtual {v3, v4}, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;->getField(Ljava/lang/String;)Lcom/lidroid/xutils/http/client/multipart/MinimalField;

    move-result-object v3

    iget-object v4, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    invoke-static {v3, v4, p2}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeField(Lcom/lidroid/xutils/http/client/multipart/MinimalField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    iget-wide v4, p3, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    iget-object v6, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/lidroid/xutils/http/client/multipart/MinimalField;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/lidroid/xutils/http/client/multipart/MinimalField;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v3

    sget-object v6, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->FIELD_SEP:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v6}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v6

    add-int/2addr v3, v6

    sget-object v6, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v6}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v6

    add-int/2addr v3, v6

    int-to-long v6, v3

    add-long v8, v4, v6

    iput-wide v8, p3, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    goto :goto_197

    :pswitch_14b
    invoke-virtual {v3}, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_156

    goto :goto_197

    :cond_156
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lidroid/xutils/http/client/multipart/MinimalField;

    invoke-static {v4, p2}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeField(Lcom/lidroid/xutils/http/client/multipart/MinimalField;Ljava/io/OutputStream;)V

    iget-wide v5, p3, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    sget-object v7, Lcom/lidroid/xutils/http/client/multipart/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/lidroid/xutils/http/client/multipart/MinimalField;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/lidroid/xutils/http/client/multipart/MinimalField;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v4

    sget-object v7, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->FIELD_SEP:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v7}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v7

    add-int/2addr v4, v7

    sget-object v7, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v7}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v7

    add-int/2addr v4, v7

    int-to-long v7, v4

    add-long v9, v5, v7

    iput-wide v9, p3, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    goto :goto_14f

    :cond_197
    :goto_197
    sget-object v3, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v3, p2}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    iget-wide v3, p3, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    sget-object v5, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v5}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v5

    int-to-long v5, v5

    add-long v7, v3, v5

    iput-wide v7, p3, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    if-eqz p4, :cond_1b5

    invoke-virtual {v2}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->getBody()Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;

    move-result-object v2

    invoke-interface {v2, p3}, Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;->setCallBackInfo(Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;)V

    invoke-interface {v2, p2}, Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;->writeTo(Ljava/io/OutputStream;)V

    :cond_1b5
    sget-object v2, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v2, p2}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    iget-wide v2, p3, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    sget-object v4, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v4}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v4

    int-to-long v4, v4

    add-long v6, v2, v4

    iput-wide v6, p3, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    goto/16 :goto_14

    nop

    :pswitch_data_1ca
    .packed-switch 0x1
        :pswitch_14b
        :pswitch_bc
    .end packed-switch
.end method

.method private doWriteTo(Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;Ljava/io/OutputStream;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->DEFAULT:Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->doWriteTo(Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;Ljava/io/OutputStream;Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;Z)V

    return-void
.end method

.method private static encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;
    .registers 4

    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    new-instance p1, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p1, v0}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    return-object p1
.end method

.method private static writeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/lidroid/xutils/http/client/multipart/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    return-void
.end method

.method private static writeBytes(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p0}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    return-void
.end method

.method private static writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private static writeField(Lcom/lidroid/xutils/http/client/multipart/MinimalField;Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/lidroid/xutils/http/client/multipart/MinimalField;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V

    sget-object v0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->FIELD_SEP:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/lidroid/xutils/http/client/multipart/MinimalField;->getBody()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V

    sget-object p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {p0, p1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    return-void
.end method

.method private static writeField(Lcom/lidroid/xutils/http/client/multipart/MinimalField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/lidroid/xutils/http/client/multipart/MinimalField;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    sget-object v0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->FIELD_SEP:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/lidroid/xutils/http/client/multipart/MinimalField;->getBody()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    sget-object p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {p0, p2}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public addBodyPart(Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBodyParts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->parts:Ljava/util/List;

    return-object v0
.end method

.method public getBoundary()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getMode()Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->mode:Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalLength()J
    .registers 11

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-wide/16 v6, -0x1

    if-nez v5, :cond_26

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_16
    iget-object v1, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->mode:Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->doWriteTo(Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;Ljava/io/OutputStream;Z)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v0, v0
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_21} :catch_25

    int-to-long v0, v0

    add-long v5, v3, v0

    return-wide v5

    :catch_25
    return-wide v6

    :cond_26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;

    invoke-virtual {v5}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->getBody()Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;

    move-result-object v5

    invoke-interface {v5}, Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;->getContentLength()J

    move-result-wide v8

    cmp-long v5, v8, v1

    if-ltz v5, :cond_3c

    add-long v5, v3, v8

    move-wide v3, v5

    goto :goto_9

    :cond_3c
    return-wide v6
.end method

.method public setSubType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->subType:Ljava/lang/String;

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->mode:Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->doWriteTo(Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;Ljava/io/OutputStream;Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;Z)V

    return-void
.end method
