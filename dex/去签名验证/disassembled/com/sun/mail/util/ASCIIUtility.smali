.class public Lcom/sun/mail/util/ASCIIUtility;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBytes(Ljava/io/InputStream;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v2, v0, [B

    invoke-virtual {p0, v2, v1, v0}, Ljava/io/InputStream;->read([BII)I

    return-object v2

    :cond_f
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    new-array v3, v2, [B

    :goto_18
    invoke-virtual {p0, v3, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_24

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    :cond_24
    invoke-virtual {v0, v3, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_18
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .registers 6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v0, p0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_8
    if-lt v2, v0, :cond_b

    return-object v1

    :cond_b
    add-int/lit8 v3, v2, 0x1

    aget-char v4, p0, v2

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    move v2, v3

    goto :goto_8
.end method

.method public static parseInt([BII)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-static {p0, p1, p2, v0}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BIII)I

    move-result p0

    return p0
.end method

.method public static parseInt([BIII)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "null"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    if-le p2, p1, :cond_8a

    aget-byte v0, p0, p1

    const/16 v1, 0x2d

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1a

    const/high16 v0, -0x80000000

    add-int/lit8 v1, p1, 0x1

    const/4 v4, 0x1

    goto :goto_1f

    :cond_1a
    const v0, -0x7fffffff

    move v1, p1

    const/4 v4, 0x0

    :goto_1f
    div-int v5, v0, p3

    if-ge v1, p2, :cond_4a

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    int-to-char v1, v1

    invoke-static {v1, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    if-gez v1, :cond_46

    new-instance p3, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "illegal number: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_46
    neg-int v1, v1

    move v8, v2

    move v2, v1

    move v1, v8

    :cond_4a
    :goto_4a
    if-lt v1, p2, :cond_5c

    if-eqz v4, :cond_5a

    add-int/2addr p1, v3

    if-le v1, p1, :cond_52

    return v2

    :cond_52
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "illegal number"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5a
    neg-int p0, v2

    return p0

    :cond_5c
    add-int/lit8 v6, v1, 0x1

    aget-byte v1, p0, v1

    int-to-char v1, v1

    invoke-static {v1, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    if-gez v1, :cond_6f

    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "illegal number"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6f
    if-ge v2, v5, :cond_79

    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "illegal number"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_79
    mul-int v2, v2, p3

    add-int v7, v0, v1

    if-ge v2, v7, :cond_87

    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "illegal number"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_87
    sub-int/2addr v2, v1

    move v1, v6

    goto :goto_4a

    :cond_8a
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "illegal number"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parseLong([BII)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-static {p0, p1, p2, v0}, Lcom/sun/mail/util/ASCIIUtility;->parseLong([BIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static parseLong([BIII)J
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    if-nez p0, :cond_10

    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "null"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-le v2, v1, :cond_a8

    aget-byte v7, p0, v1

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_21

    const-wide/high16 v6, -0x8000000000000000L

    add-int/lit8 v8, v1, 0x1

    const/4 v10, 0x1

    goto :goto_29

    :cond_21
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v6, v7

    const/4 v10, 0x0

    move v8, v1

    :goto_29
    int-to-long v11, v3

    div-long v13, v6, v11

    if-ge v8, v2, :cond_56

    add-int/lit8 v4, v8, 0x1

    aget-byte v5, p0, v8

    int-to-char v5, v5

    invoke-static {v5, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    if-gez v5, :cond_51

    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "illegal number: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p0 .. p2}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_51
    neg-int v5, v5

    move/from16 v16, v10

    int-to-long v9, v5

    goto :goto_5a

    :cond_56
    move/from16 v16, v10

    move-wide v9, v4

    move v4, v8

    :goto_5a
    if-lt v4, v2, :cond_6e

    if-eqz v16, :cond_6c

    const/4 v5, 0x1

    add-int/lit8 v0, v1, 0x1

    if-le v4, v0, :cond_64

    return-wide v9

    :cond_64
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "illegal number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6c
    neg-long v0, v9

    return-wide v0

    :cond_6e
    const/4 v5, 0x1

    add-int/lit8 v8, v4, 0x1

    aget-byte v4, p0, v4

    int-to-char v4, v4

    invoke-static {v4, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    if-gez v4, :cond_82

    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "illegal number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_82
    cmp-long v15, v9, v13

    if-gez v15, :cond_8e

    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "illegal number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8e
    mul-long v9, v9, v11

    int-to-long v0, v4

    add-long v17, v6, v0

    cmp-long v4, v9, v17

    if-gez v4, :cond_9f

    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "illegal number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9f
    const/4 v4, 0x0

    sub-long v17, v9, v0

    move v4, v8

    move-wide/from16 v9, v17

    move/from16 v1, p1

    goto :goto_5a

    :cond_a8
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "illegal number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toString(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    new-array v1, v0, [C

    new-array v2, v0, [B

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Ljava/io/ByteArrayInputStream;->read([BII)I

    :goto_c
    if-lt v3, v0, :cond_14

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_14
    add-int/lit8 p0, v3, 0x1

    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    aput-char v4, v1, v3

    move v3, p0

    goto :goto_c
.end method

.method public static toString([BII)Ljava/lang/String;
    .registers 7

    sub-int/2addr p2, p1

    new-array v0, p2, [C

    const/4 v1, 0x0

    :goto_4
    if-lt v1, p2, :cond_c

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_c
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, p1, 0x1

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    aput-char p1, v0, v1

    move v1, v2

    move p1, v3

    goto :goto_4
.end method
