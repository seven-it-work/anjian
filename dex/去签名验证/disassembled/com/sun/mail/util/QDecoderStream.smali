.class public Lcom/sun/mail/util/QDecoderStream;
.super Lcom/sun/mail/util/QPDecoderStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sun/mail/util/QPDecoderStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/mail/util/QDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x5f

    if-ne v0, v1, :cond_d

    const/16 v0, 0x20

    return v0

    :cond_d
    const/16 v1, 0x3d

    if-ne v0, v1, :cond_4c

    iget-object v0, p0, Lcom/sun/mail/util/QDecoderStream;->ba:[B

    iget-object v1, p0, Lcom/sun/mail/util/QDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/sun/mail/util/QDecoderStream;->ba:[B

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/sun/mail/util/QDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    :try_start_29
    iget-object v0, p0, Lcom/sun/mail/util/QDecoderStream;->ba:[B

    const/4 v1, 0x2

    const/16 v3, 0x10

    invoke-static {v0, v2, v1, v3}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BIII)I

    move-result v0
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_32} :catch_33

    return v0

    :catch_33
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in QP stream "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4c
    return v0
.end method
