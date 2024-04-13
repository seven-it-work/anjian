.class public Lcom/sun/mail/util/BASE64DecoderStream;
.super Ljava/io/FilterInputStream;


# static fields
.field private static final pem_array:[C

.field private static final pem_convert_array:[B


# instance fields
.field private buffer:[B

.field private bufsize:I

.field private ignoreErrors:Z

.field private index:I

.field private input_buffer:[B

.field private input_len:I

.field private input_pos:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_30

    sput-object v0, Lcom/sun/mail/util/BASE64DecoderStream;->pem_array:[C

    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_11
    const/16 v2, 0xff

    if-lt v1, v2, :cond_27

    :goto_15
    sget-object v1, Lcom/sun/mail/util/BASE64DecoderStream;->pem_array:[C

    array-length v1, v1

    if-lt v0, v1, :cond_1b

    return-void

    :cond_1b
    sget-object v1, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    sget-object v2, Lcom/sun/mail/util/BASE64DecoderStream;->pem_array:[C

    aget-char v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_27
    sget-object v2, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    nop

    :array_30
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x3

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    iput p1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    const/16 v0, 0x1ffe

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    iput p1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    iput p1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_len:I

    iput-boolean p1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    :try_start_19
    const-string v0, "mail.mime.base64.ignoreerrors"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 p1, 0x1

    :cond_2a
    iput-boolean p1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z
    :try_end_2c
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_2c} :catch_2c

    :catch_2c
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .registers 4

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x3

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    iput p1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    const/16 v0, 0x1ffe

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    iput p1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    iput p1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_len:I

    iput-boolean p1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    iput-boolean p2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    return-void
.end method

.method private decode([BII)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move v0, p2

    :goto_1
    const/4 v1, 0x3

    if-ge p3, v1, :cond_6

    sub-int/2addr v0, p2

    return v0

    :cond_6
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    const/4 v4, 0x4

    if-lt v2, v4, :cond_28

    add-int/lit8 v1, v0, 0x2

    and-int/lit16 v2, v3, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    shr-int/lit8 v1, v3, 0x8

    add-int/lit8 v2, v0, 0x1

    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 p3, p3, -0x3

    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    :cond_28
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->getByte()I

    move-result v5

    const/4 v6, -0x2

    const/4 v7, -0x1

    if-eq v5, v7, :cond_39

    if-ne v5, v6, :cond_33

    goto :goto_39

    :cond_33
    shl-int/lit8 v3, v3, 0x6

    add-int/lit8 v2, v2, 0x1

    or-int/2addr v3, v5

    goto :goto_9

    :cond_39
    :goto_39
    const/4 p3, 0x2

    const/4 v8, 0x1

    if-ne v5, v7, :cond_67

    if-nez v2, :cond_41

    sub-int/2addr v0, p2

    return v0

    :cond_41
    iget-boolean v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    if-nez v1, :cond_65

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error in encoded stream: needed 4 valid base64 characters but only got "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " before EOF"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->recentChars()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_65
    const/4 v1, 0x1

    goto :goto_91

    :cond_67
    if-ge v2, p3, :cond_8d

    iget-boolean v5, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    if-nez v5, :cond_8d

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error in encoded stream: needed at least 2 valid base64 characters, but only got "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " before padding character (=)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->recentChars()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8d
    if-nez v2, :cond_91

    sub-int/2addr v0, p2

    return v0

    :cond_91
    :goto_91
    add-int/lit8 v5, v2, -0x1

    if-nez v5, :cond_96

    const/4 v5, 0x1

    :cond_96
    add-int/2addr v2, v8

    shl-int/lit8 v3, v3, 0x6

    :goto_99
    if-lt v2, v4, :cond_b0

    shr-int/lit8 v1, v3, 0x8

    if-ne v5, p3, :cond_a6

    add-int/lit8 p3, v0, 0x1

    and-int/lit16 v2, v1, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, p3

    :cond_a6
    shr-int/lit8 p3, v1, 0x8

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    aput-byte p3, p1, v0

    add-int/2addr v0, v5

    sub-int/2addr v0, p2

    return v0

    :cond_b0
    if-nez v1, :cond_f2

    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->getByte()I

    move-result v8

    if-ne v8, v7, :cond_d4

    iget-boolean v8, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    if-nez v8, :cond_f2

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error in encoded stream: hit EOF while looking for padding characters (=)"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->recentChars()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d4
    if-eq v8, v6, :cond_f2

    iget-boolean v8, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    if-nez v8, :cond_f2

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error in encoded stream: found valid base64 character after a padding character (=)"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->recentChars()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f2
    shl-int/lit8 v3, v3, 0x6

    add-int/lit8 v2, v2, 0x1

    goto :goto_99
.end method

.method public static decode([B)[B
    .registers 13

    array-length v0, p0

    div-int/lit8 v0, v0, 0x4

    const/4 v1, 0x3

    mul-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_9

    return-object p0

    :cond_9
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-byte v2, p0, v2

    const/4 v4, 0x2

    const/16 v5, 0x3d

    if-ne v2, v5, :cond_1d

    add-int/lit8 v0, v0, -0x1

    array-length v2, p0

    sub-int/2addr v2, v4

    aget-byte v2, p0, v2

    if-ne v2, v5, :cond_1d

    add-int/lit8 v0, v0, -0x1

    :cond_1d
    new-array v0, v0, [B

    array-length v2, p0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_22
    if-gtz v2, :cond_25

    return-object v0

    :cond_25
    sget-object v8, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    add-int/lit8 v9, v6, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    aget-byte v6, v8, v6

    shl-int/lit8 v6, v6, 0x6

    sget-object v8, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    add-int/lit8 v10, v9, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    aget-byte v8, v8, v9

    or-int/2addr v6, v8

    shl-int/lit8 v6, v6, 0x6

    aget-byte v8, p0, v10

    if-eq v8, v5, :cond_4f

    sget-object v8, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    add-int/lit8 v9, v10, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    aget-byte v8, v8, v10

    or-int/2addr v6, v8

    const/4 v8, 0x3

    goto :goto_51

    :cond_4f
    move v9, v10

    const/4 v8, 0x2

    :goto_51
    shl-int/lit8 v6, v6, 0x6

    aget-byte v10, p0, v9

    if-eq v10, v5, :cond_64

    sget-object v10, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    add-int/lit8 v11, v9, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    aget-byte v9, v10, v9

    or-int/2addr v6, v9

    move v9, v11

    goto :goto_66

    :cond_64
    add-int/lit8 v8, v8, -0x1

    :goto_66
    if-le v8, v4, :cond_6f

    add-int/lit8 v10, v7, 0x2

    and-int/lit16 v11, v6, 0xff

    int-to-byte v11, v11

    aput-byte v11, v0, v10

    :cond_6f
    shr-int/lit8 v6, v6, 0x8

    if-le v8, v3, :cond_7a

    add-int/lit8 v10, v7, 0x1

    and-int/lit16 v11, v6, 0xff

    int-to-byte v11, v11

    aput-byte v11, v0, v10

    :cond_7a
    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v7

    add-int/2addr v7, v8

    add-int/lit8 v2, v2, -0x4

    move v6, v9

    goto :goto_22
.end method

.method private getByte()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    iget v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_len:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_1b

    :try_start_7
    iget-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_len:I
    :try_end_11
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_11} :catch_1a

    iget v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_len:I

    if-gtz v0, :cond_16

    return v2

    :cond_16
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    goto :goto_1b

    :catch_1a
    return v2

    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_2d

    const/4 v0, -0x2

    return v0

    :cond_2d
    sget-object v1, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    aget-byte v0, v1, v0

    if-eq v0, v2, :cond_0

    return v0
.end method

.method private recentChars()Ljava/lang/String;
    .registers 5

    const-string v0, ""

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_9

    goto :goto_b

    :cond_9
    iget v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    :goto_b
    if-lez v2, :cond_a8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ", the "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " most recent characters were: \""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    sub-int/2addr v1, v2

    :goto_2a
    iget v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    if-lt v1, v2, :cond_41

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_41
    iget-object v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_99

    packed-switch v2, :pswitch_data_aa

    const/16 v3, 0x20

    if-lt v2, v3, :cond_64

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_64

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_75

    :cond_64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\\"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a5

    :pswitch_7a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\\n"

    goto :goto_91

    :pswitch_86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\\t"

    :goto_91
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a5

    :cond_99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\\r"

    goto :goto_91

    :goto_a5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_a8
    return-object v0

    nop

    :pswitch_data_aa
    .packed-switch 0x9
        :pswitch_86
        :pswitch_7a
    .end packed-switch
.end method


# virtual methods
.method public available()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    iget v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
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

    iget v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    if-lt v0, v1, :cond_1a

    iget-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    iget-object v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/sun/mail/util/BASE64DecoderStream;->decode([BII)I

    move-result v0

    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    iget v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    if-gtz v0, :cond_18

    const/4 v0, -0x1

    return v0

    :cond_18
    iput v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    :cond_1a
    iget-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move v0, p2

    :goto_1
    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    iget v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    if-ge v1, v2, :cond_1c

    if-gtz p3, :cond_a

    goto :goto_1c

    :cond_a
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    iget v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    aget-byte v2, v2, v3

    aput-byte v2, p1, v0

    add-int/lit8 p3, p3, -0x1

    move v0, v1

    goto :goto_1

    :cond_1c
    :goto_1c
    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    iget v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    if-lt v1, v2, :cond_27

    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    :cond_27
    div-int/lit8 v1, p3, 0x3

    mul-int/lit8 v1, v1, 0x3

    const/4 v2, -0x1

    if-lez v1, :cond_3b

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/mail/util/BASE64DecoderStream;->decode([BII)I

    move-result v3

    add-int/2addr v0, v3

    sub-int/2addr p3, v3

    if-eq v3, v1, :cond_3b

    if-ne v0, p2, :cond_39

    return v2

    :cond_39
    sub-int/2addr v0, p2

    return v0

    :cond_3b
    :goto_3b
    if-gtz p3, :cond_3e

    goto :goto_4d

    :cond_3e
    invoke-virtual {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->read()I

    move-result v1

    if-eq v1, v2, :cond_4d

    add-int/lit8 v3, v0, 0x1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 p3, p3, -0x1

    move v0, v3

    goto :goto_3b

    :cond_4d
    :goto_4d
    if-ne v0, p2, :cond_50

    return v2

    :cond_50
    sub-int/2addr v0, p2

    return v0
.end method
