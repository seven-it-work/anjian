.class public Lcom/sun/mail/util/UUDecoderStream;
.super Ljava/io/FilterInputStream;


# instance fields
.field private buffer:[B

.field private bufsize:I

.field private gotEnd:Z

.field private gotPrefix:Z

.field private index:I

.field private lin:Lcom/sun/mail/util/LineInputStream;

.field private mode:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    iput v0, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    iput-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->gotPrefix:Z

    iput-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    new-instance v0, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v0, p1}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->lin:Lcom/sun/mail/util/LineInputStream;

    const/16 p1, 0x2d

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    return-void
.end method

.method private decode()Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iput v1, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    :cond_8
    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->lin:Lcom/sun/mail/util/LineInputStream;

    invoke-virtual {v0}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing End"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "end"

    const/4 v6, 0x0

    const/4 v7, 0x3

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_28

    iput-boolean v3, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    return v1

    :cond_28
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x20

    if-ge v2, v4, :cond_3e

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Buffer format error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    sub-int/2addr v2, v4

    and-int/lit8 v2, v2, 0x3f

    if-nez v2, :cond_63

    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->lin:Lcom/sun/mail/util/LineInputStream;

    invoke-virtual {v0}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5b

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "end"

    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_58

    goto :goto_5b

    :cond_58
    iput-boolean v3, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    return v1

    :cond_5b
    :goto_5b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing End"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_63
    mul-int/lit8 v1, v2, 0x8

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0x6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v1, v3

    if-ge v5, v1, :cond_78

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Short buffer error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_78
    const/4 v1, 0x1

    :cond_79
    :goto_79
    iget v5, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    if-lt v5, v2, :cond_7e

    return v3

    :cond_7e
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v4

    and-int/lit8 v1, v1, 0x3f

    int-to-byte v1, v1

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sub-int/2addr v5, v4

    and-int/lit8 v5, v5, 0x3f

    int-to-byte v5, v5

    iget-object v7, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    iget v8, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    shl-int/lit8 v1, v1, 0x2

    and-int/lit16 v1, v1, 0xfc

    ushr-int/lit8 v9, v5, 0x4

    and-int/lit8 v9, v9, 0x3

    or-int/2addr v1, v9

    int-to-byte v1, v1

    aput-byte v1, v7, v8

    iget v1, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    if-ge v1, v2, :cond_ca

    add-int/lit8 v1, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sub-int/2addr v6, v4

    and-int/lit8 v6, v6, 0x3f

    int-to-byte v6, v6

    iget-object v7, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    iget v8, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    shl-int/lit8 v5, v5, 0x4

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v9, v6, 0x2

    and-int/lit8 v9, v9, 0xf

    or-int/2addr v5, v9

    int-to-byte v5, v5

    aput-byte v5, v7, v8

    move v5, v6

    goto :goto_cb

    :cond_ca
    move v1, v6

    :goto_cb
    iget v6, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    if-ge v6, v2, :cond_79

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v4

    and-int/lit8 v1, v1, 0x3f

    int-to-byte v1, v1

    iget-object v7, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    iget v8, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    shl-int/lit8 v5, v5, 0x6

    and-int/lit16 v5, v5, 0xc0

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, v7, v8

    move v1, v6

    goto :goto_79
.end method

.method private readPrefix()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->gotPrefix:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->lin:Lcom/sun/mail/util/LineInputStream;

    invoke-virtual {v0}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    new-instance v0, Ljava/io/IOException;

    const-string v1, "UUDecoder error: No Begin"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "begin"

    const/4 v5, 0x0

    const/4 v6, 0x5

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    const/16 v2, 0x9

    :try_start_25
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sun/mail/util/UUDecoderStream;->mode:I
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_2f} :catch_3b

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->name:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->gotPrefix:Z

    return-void

    :catch_3b
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UUDecoder error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public available()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    iget v2, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getMode()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/mail/util/UUDecoderStream;->readPrefix()V

    iget v0, p0, Lcom/sun/mail/util/UUDecoderStream;->mode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/mail/util/UUDecoderStream;->readPrefix()V

    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->name:Ljava/lang/String;

    return-object v0
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    iget v1, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    if-lt v0, v1, :cond_14

    invoke-direct {p0}, Lcom/sun/mail/util/UUDecoderStream;->readPrefix()V

    invoke-direct {p0}, Lcom/sun/mail/util/UUDecoderStream;->decode()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, -0x1

    return v0

    :cond_11
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    :cond_14
    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    iget v1, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/4 v1, -0x1

    if-lt v0, p3, :cond_5

    return v0

    :cond_5
    invoke-virtual {p0}, Lcom/sun/mail/util/UUDecoderStream;->read()I

    move-result v2

    if-ne v2, v1, :cond_f

    if-nez v0, :cond_e

    const/4 v0, -0x1

    :cond_e
    return v0

    :cond_f
    add-int v1, p2, v0

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
