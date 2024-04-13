.class public Lcom/sun/mail/iap/ResponseInputStream;
.super Ljava/lang/Object;


# static fields
.field private static final incrementSlop:I = 0x10

.field private static final maxIncrement:I = 0x40000

.field private static final minIncrement:I = 0x100


# instance fields
.field private bin:Ljava/io/BufferedInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x800

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/sun/mail/iap/ResponseInputStream;->bin:Ljava/io/BufferedInputStream;

    return-void
.end method


# virtual methods
.method public readResponse()Lcom/sun/mail/iap/ByteArray;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/mail/iap/ResponseInputStream;->readResponse(Lcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/iap/ByteArray;

    move-result-object v0

    return-object v0
.end method

.method public readResponse(Lcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/iap/ByteArray;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_c

    new-instance p1, Lcom/sun/mail/iap/ByteArray;

    const/16 v1, 0x80

    new-array v2, v1, [B

    invoke-direct {p1, v2, v0, v1}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V

    :cond_c
    invoke-virtual {p1}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    :goto_11
    move-object v4, v1

    move v3, v2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_15
    const/4 v5, -0x1

    if-nez v1, :cond_49

    iget-object v2, p0, Lcom/sun/mail/iap/ResponseInputStream;->bin:Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    if-ne v2, v5, :cond_21

    goto :goto_49

    :cond_21
    const/16 v5, 0xa

    if-eq v2, v5, :cond_26

    goto :goto_31

    :cond_26
    if-lez v3, :cond_31

    add-int/lit8 v5, v3, -0x1

    aget-byte v5, v4, v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_31

    const/4 v1, 0x1

    :cond_31
    :goto_31
    array-length v5, v4

    if-lt v3, v5, :cond_42

    array-length v4, v4

    const/high16 v5, 0x40000

    if-le v4, v5, :cond_3b

    const/high16 v4, 0x40000

    :cond_3b
    invoke-virtual {p1, v4}, Lcom/sun/mail/iap/ByteArray;->grow(I)V

    invoke-virtual {p1}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v4

    :cond_42
    add-int/lit8 v5, v3, 0x1

    int-to-byte v6, v2

    aput-byte v6, v4, v3

    move v3, v5

    goto :goto_15

    :cond_49
    :goto_49
    if-ne v2, v5, :cond_51

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_51
    const/4 v1, 0x5

    if-lt v3, v1, :cond_9c

    add-int/lit8 v1, v3, -0x3

    aget-byte v2, v4, v1

    const/16 v5, 0x7d

    if-ne v2, v5, :cond_9c

    add-int/lit8 v2, v3, -0x4

    :goto_5e
    if-gez v2, :cond_61

    goto :goto_6a

    :cond_61
    aget-byte v5, v4, v2

    const/16 v6, 0x7b

    if-eq v5, v6, :cond_6a

    add-int/lit8 v2, v2, -0x1

    goto :goto_5e

    :cond_6a
    :goto_6a
    if-ltz v2, :cond_9c

    add-int/lit8 v2, v2, 0x1

    :try_start_6e
    invoke-static {v4, v2, v1}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BII)I

    move-result v1
    :try_end_72
    .catch Ljava/lang/NumberFormatException; {:try_start_6e .. :try_end_72} :catch_9c

    if-lez v1, :cond_98

    array-length v2, v4

    sub-int/2addr v2, v3

    add-int/lit8 v5, v1, 0x10

    if-le v5, v2, :cond_89

    sub-int/2addr v5, v2

    const/16 v2, 0x100

    if-le v2, v5, :cond_80

    goto :goto_81

    :cond_80
    move v2, v5

    :goto_81
    invoke-virtual {p1, v2}, Lcom/sun/mail/iap/ByteArray;->grow(I)V

    invoke-virtual {p1}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v2

    goto :goto_8a

    :cond_89
    move-object v2, v4

    :goto_8a
    if-gtz v1, :cond_8f

    move-object v1, v2

    move v2, v3

    goto :goto_11

    :cond_8f
    iget-object v4, p0, Lcom/sun/mail/iap/ResponseInputStream;->bin:Ljava/io/BufferedInputStream;

    invoke-virtual {v4, v2, v3, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    sub-int/2addr v1, v4

    add-int/2addr v3, v4

    goto :goto_8a

    :cond_98
    move v2, v3

    move-object v1, v4

    goto/16 :goto_11

    :catch_9c
    :cond_9c
    invoke-virtual {p1, v3}, Lcom/sun/mail/iap/ByteArray;->setCount(I)V

    return-object p1
.end method
