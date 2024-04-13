.class public Lcom/sun/mail/util/QPDecoderStream;
.super Ljava/io/FilterInputStream;


# instance fields
.field protected ba:[B

.field protected spaces:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    new-instance v0, Ljava/io/PushbackInputStream;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    new-array p1, v1, [B

    iput-object p1, p0, Lcom/sun/mail/util/QPDecoderStream;->ba:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    const/4 v1, 0x1

    const/16 v2, 0x20

    if-lez v0, :cond_d

    iget v0, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    return v2

    :cond_d
    iget-object v0, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v3, 0xd

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/16 v6, 0xa

    if-ne v0, v2, :cond_3d

    :goto_1b
    iget-object v0, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v2, :cond_37

    if-eq v0, v3, :cond_34

    if-eq v0, v6, :cond_34

    if-ne v0, v5, :cond_2a

    goto :goto_34

    :cond_2a
    iget-object v1, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    check-cast v1, Ljava/io/PushbackInputStream;

    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    const/16 v0, 0x20

    return v0

    :cond_34
    :goto_34
    iput v4, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    return v0

    :cond_37
    iget v0, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    goto :goto_1b

    :cond_3d
    const/16 v2, 0x3d

    if-ne v0, v2, :cond_8a

    iget-object v2, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ne v2, v6, :cond_4e

    invoke-virtual {p0}, Lcom/sun/mail/util/QPDecoderStream;->read()I

    move-result v0

    return v0

    :cond_4e
    if-ne v2, v3, :cond_64

    iget-object v0, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v6, :cond_5f

    iget-object v1, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    check-cast v1, Ljava/io/PushbackInputStream;

    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    :cond_5f
    invoke-virtual {p0}, Lcom/sun/mail/util/QPDecoderStream;->read()I

    move-result v0

    return v0

    :cond_64
    if-ne v2, v5, :cond_67

    return v5

    :cond_67
    iget-object v3, p0, Lcom/sun/mail/util/QPDecoderStream;->ba:[B

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    iget-object v2, p0, Lcom/sun/mail/util/QPDecoderStream;->ba:[B

    iget-object v3, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    :try_start_77
    iget-object v1, p0, Lcom/sun/mail/util/QPDecoderStream;->ba:[B

    const/4 v2, 0x2

    const/16 v3, 0x10

    invoke-static {v1, v4, v2, v3}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BIII)I

    move-result v1
    :try_end_80
    .catch Ljava/lang/NumberFormatException; {:try_start_77 .. :try_end_80} :catch_81

    return v1

    :catch_81
    iget-object v1, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    check-cast v1, Ljava/io/PushbackInputStream;

    iget-object v2, p0, Lcom/sun/mail/util/QPDecoderStream;->ba:[B

    invoke-virtual {v1, v2}, Ljava/io/PushbackInputStream;->unread([B)V

    :cond_8a
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
    invoke-virtual {p0}, Lcom/sun/mail/util/QPDecoderStream;->read()I

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
