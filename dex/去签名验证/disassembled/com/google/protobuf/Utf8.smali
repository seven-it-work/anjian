.class final Lcom/google/protobuf/Utf8;
.super Ljava/lang/Object;


# static fields
.field public static final COMPLETE:I = 0x0

.field public static final MALFORMED:I = -0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static incompleteStateFor(I)I
    .registers 2

    const/16 v0, -0xc

    if-le p0, v0, :cond_5

    const/4 p0, -0x1

    :cond_5
    return p0
.end method

.method private static incompleteStateFor(II)I
    .registers 3

    const/16 v0, -0xc

    if-gt p0, v0, :cond_d

    const/16 v0, -0x41

    if-le p1, v0, :cond_9

    goto :goto_d

    :cond_9
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    return p0

    :cond_d
    :goto_d
    const/4 p0, -0x1

    return p0
.end method

.method private static incompleteStateFor(III)I
    .registers 4

    const/16 v0, -0xc

    if-gt p0, v0, :cond_12

    const/16 v0, -0x41

    if-gt p1, v0, :cond_12

    if-le p2, v0, :cond_b

    goto :goto_12

    :cond_b
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x10

    xor-int/2addr p0, p1

    return p0

    :cond_12
    :goto_12
    const/4 p0, -0x1

    return p0
.end method

.method private static incompleteStateFor([BII)I
    .registers 4

    add-int/lit8 v0, p1, -0x1

    aget-byte v0, p0, v0

    sub-int/2addr p2, p1

    packed-switch p2, :pswitch_data_26

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_e
    aget-byte p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    invoke-static {v0, p2, p0}, Lcom/google/protobuf/Utf8;->incompleteStateFor(III)I

    move-result p0

    return p0

    :pswitch_19
    aget-byte p0, p0, p1

    invoke-static {v0, p0}, Lcom/google/protobuf/Utf8;->incompleteStateFor(II)I

    move-result p0

    return p0

    :pswitch_20
    invoke-static {v0}, Lcom/google/protobuf/Utf8;->incompleteStateFor(I)I

    move-result p0

    return p0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_20
        :pswitch_19
        :pswitch_e
    .end packed-switch
.end method

.method public static isValidUtf8([B)Z
    .registers 3

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result p0

    return p0
.end method

.method public static isValidUtf8([BII)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/Utf8;->partialIsValidUtf8([BII)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static partialIsValidUtf8(I[BII)I
    .registers 10

    if-eqz p0, :cond_7d

    if-lt p2, p3, :cond_5

    return p0

    :cond_5
    int-to-byte v0, p0

    const/16 v1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge v0, v1, :cond_18

    const/16 p0, -0x3e

    if-lt v0, p0, :cond_17

    add-int/lit8 p0, p2, 0x1

    aget-byte p2, p1, p2

    if-le p2, v3, :cond_7e

    :cond_17
    return v2

    :cond_18
    const/16 v4, -0x10

    if-ge v0, v4, :cond_45

    shr-int/lit8 p0, p0, 0x8

    xor-int/2addr p0, v2

    int-to-byte p0, p0

    if-nez p0, :cond_30

    add-int/lit8 p0, p2, 0x1

    aget-byte p2, p1, p2

    if-lt p0, p3, :cond_2d

    invoke-static {v0, p2}, Lcom/google/protobuf/Utf8;->incompleteStateFor(II)I

    move-result p0

    return p0

    :cond_2d
    move v5, p2

    move p2, p0

    move p0, v5

    :cond_30
    if-gt p0, v3, :cond_44

    const/16 v4, -0x60

    if-ne v0, v1, :cond_38

    if-lt p0, v4, :cond_44

    :cond_38
    const/16 v1, -0x13

    if-ne v0, v1, :cond_3e

    if-ge p0, v4, :cond_44

    :cond_3e
    add-int/lit8 p0, p2, 0x1

    aget-byte p2, p1, p2

    if-le p2, v3, :cond_7e

    :cond_44
    return v2

    :cond_45
    shr-int/lit8 v1, p0, 0x8

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v4, 0x0

    if-nez v1, :cond_57

    add-int/lit8 p0, p2, 0x1

    aget-byte v1, p1, p2

    if-lt p0, p3, :cond_5b

    invoke-static {v0, v1}, Lcom/google/protobuf/Utf8;->incompleteStateFor(II)I

    move-result p0

    return p0

    :cond_57
    shr-int/lit8 p0, p0, 0x10

    int-to-byte v4, p0

    move p0, p2

    :cond_5b
    if-nez v4, :cond_69

    add-int/lit8 p2, p0, 0x1

    aget-byte v4, p1, p0

    if-lt p2, p3, :cond_68

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/Utf8;->incompleteStateFor(III)I

    move-result p0

    return p0

    :cond_68
    move p0, p2

    :cond_69
    if-gt v1, v3, :cond_7c

    shl-int/lit8 p2, v0, 0x1c

    add-int/lit8 v1, v1, 0x70

    add-int/2addr p2, v1

    shr-int/lit8 p2, p2, 0x1e

    if-nez p2, :cond_7c

    if-gt v4, v3, :cond_7c

    add-int/lit8 p2, p0, 0x1

    aget-byte p0, p1, p0

    if-le p0, v3, :cond_7d

    :cond_7c
    return v2

    :cond_7d
    move p0, p2

    :cond_7e
    invoke-static {p1, p0, p3}, Lcom/google/protobuf/Utf8;->partialIsValidUtf8([BII)I

    move-result p0

    return p0
.end method

.method public static partialIsValidUtf8([BII)I
    .registers 4

    :goto_0
    if-ge p1, p2, :cond_a

    aget-byte v0, p0, p1

    if-gez v0, :cond_7

    goto :goto_a

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_a
    :goto_a
    if-lt p1, p2, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/Utf8;->partialIsValidUtf8NonAscii([BII)I

    move-result p0

    return p0
.end method

.method private static partialIsValidUtf8NonAscii([BII)I
    .registers 9

    :cond_0
    :goto_0
    if-lt p1, p2, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-gez p1, :cond_6a

    const/16 v1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge p1, v1, :cond_1f

    if-lt v0, p2, :cond_14

    return p1

    :cond_14
    const/16 v1, -0x3e

    if-lt p1, v1, :cond_1e

    add-int/lit8 p1, v0, 0x1

    aget-byte v0, p0, v0

    if-le v0, v3, :cond_0

    :cond_1e
    return v2

    :cond_1f
    const/16 v4, -0x10

    if-ge p1, v4, :cond_45

    add-int/lit8 v4, p2, -0x1

    if-lt v0, v4, :cond_2c

    invoke-static {p0, v0, p2}, Lcom/google/protobuf/Utf8;->incompleteStateFor([BII)I

    move-result p0

    return p0

    :cond_2c
    add-int/lit8 v4, v0, 0x1

    aget-byte v0, p0, v0

    if-gt v0, v3, :cond_44

    const/16 v5, -0x60

    if-ne p1, v1, :cond_38

    if-lt v0, v5, :cond_44

    :cond_38
    const/16 v1, -0x13

    if-ne p1, v1, :cond_3e

    if-ge v0, v5, :cond_44

    :cond_3e
    add-int/lit8 p1, v4, 0x1

    aget-byte v0, p0, v4

    if-le v0, v3, :cond_0

    :cond_44
    return v2

    :cond_45
    add-int/lit8 v1, p2, -0x2

    if-lt v0, v1, :cond_4e

    invoke-static {p0, v0, p2}, Lcom/google/protobuf/Utf8;->incompleteStateFor([BII)I

    move-result p0

    return p0

    :cond_4e
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    if-gt v0, v3, :cond_69

    shl-int/lit8 p1, p1, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_69

    add-int/lit8 p1, v1, 0x1

    aget-byte v0, p0, v1

    if-gt v0, v3, :cond_69

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-le p1, v3, :cond_6a

    :cond_69
    return v2

    :cond_6a
    move p1, v0

    goto :goto_0
.end method
