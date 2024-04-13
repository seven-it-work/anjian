.class public Lcom/b/b/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/b/b/i;",
        ">;"
    }
.end annotation


# static fields
.field static final a:[C

.field public static final b:Lcom/b/b/i;


# instance fields
.field final c:[B

.field transient d:I

.field transient e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_14

    sput-object v0, Lcom/b/b/i;->a:[C

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/b/b/i;->a([B)Lcom/b/b/i;

    move-result-object v0

    sput-object v0, Lcom/b/b/i;->b:Lcom/b/b/i;

    return-void

    nop

    :array_14
    .array-data 2
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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/b/i;->c:[B

    return-void
.end method

.method private static a(C)I
    .registers 4

    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    sub-int/2addr p0, v0

    return p0

    :cond_a
    const/16 v0, 0x61

    if-lt p0, v0, :cond_16

    const/16 v1, 0x66

    if-gt p0, v1, :cond_16

    :goto_12
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_16
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1f

    const/16 v1, 0x46

    if-gt p0, v1, :cond_1f

    goto :goto_12

    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected hex digit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;)Lcom/b/b/i;
    .registers 3

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "s == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance v0, Lcom/b/b/i;

    sget-object v1, Lcom/b/b/aa;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/b/b/i;-><init>([B)V

    iput-object p0, v0, Lcom/b/b/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static varargs a([B)Lcom/b/b/i;
    .registers 2

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "data == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance v0, Lcom/b/b/i;

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-direct {v0, p0}, Lcom/b/b/i;-><init>([B)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/b/b/i;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected hex string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_25
    array-length v2, v0

    if-ge v1, v2, :cond_45

    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/b/b/i;->a(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/b/b/i;->a(C)I

    move-result v2

    add-int/2addr v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_45
    invoke-static {v0}, Lcom/b/b/i;->a([B)Lcom/b/b/i;

    move-result-object p0

    return-object p0
.end method

.method private c(Ljava/lang/String;)Lcom/b/b/i;
    .registers 3

    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iget-object v0, p0, Lcom/b/b/i;->c:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/b/b/i;->a([B)Lcom/b/b/i;

    move-result-object p1
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    move-exception p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public a(I)B
    .registers 3

    iget-object v0, p0, Lcom/b/b/i;->c:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public a(II)Lcom/b/b/i;
    .registers 6

    if-gez p1, :cond_a

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "beginIndex < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iget-object v0, p0, Lcom/b/b/i;->c:[B

    array-length v0, v0

    if-le p2, v0, :cond_2b

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "endIndex > length("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/b/b/i;->c:[B

    array-length v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2b
    sub-int v0, p2, p1

    if-gez v0, :cond_37

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "endIndex < beginIndex"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_37
    if-nez p1, :cond_3f

    iget-object v1, p0, Lcom/b/b/i;->c:[B

    array-length v1, v1

    if-ne p2, v1, :cond_3f

    return-object p0

    :cond_3f
    new-array p2, v0, [B

    iget-object v1, p0, Lcom/b/b/i;->c:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lcom/b/b/i;

    invoke-direct {p1, p2}, Lcom/b/b/i;-><init>([B)V

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/b/b/i;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/b/b/i;->c:[B

    sget-object v2, Lcom/b/b/aa;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/b/b/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method a(Lcom/b/b/f;)V
    .registers 5

    iget-object v0, p0, Lcom/b/b/i;->c:[B

    iget-object v1, p0, Lcom/b/b/i;->c:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/b/b/f;->a([BII)Lcom/b/b/f;

    return-void
.end method

.method public a(ILcom/b/b/i;II)Z
    .registers 5

    iget-object p1, p0, Lcom/b/b/i;->c:[B

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1, p3, p4}, Lcom/b/b/i;->a(I[BII)Z

    move-result p1

    return p1
.end method

.method public a(I[BII)Z
    .registers 6

    if-ltz p1, :cond_18

    iget-object v0, p0, Lcom/b/b/i;->c:[B

    array-length v0, v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_18

    if-ltz p3, :cond_18

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_18

    iget-object v0, p0, Lcom/b/b/i;->c:[B

    invoke-static {v0, p1, p2, p3, p4}, Lcom/b/b/aa;->a([BI[BII)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/b/b/i;->c:[B

    invoke-static {v0}, Lcom/b/b/e;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/b/b/i;
    .registers 2

    const-string v0, "SHA-1"

    invoke-direct {p0, v0}, Lcom/b/b/i;->c(Ljava/lang/String;)Lcom/b/b/i;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 11

    check-cast p1, Lcom/b/b/i;

    invoke-virtual {p0}, Lcom/b/b/i;->g()I

    move-result v0

    invoke-virtual {p1}, Lcom/b/b/i;->g()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_10
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v4, v2, :cond_29

    invoke-virtual {p0, v4}, Lcom/b/b/i;->a(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {p1, v4}, Lcom/b/b/i;->a(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    if-eq v7, v8, :cond_26

    if-ge v7, v8, :cond_25

    return v5

    :cond_25
    return v6

    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_29
    if-ne v0, v1, :cond_2c

    return v3

    :cond_2c
    if-ge v0, v1, :cond_2f

    return v5

    :cond_2f
    return v6
.end method

.method public d()Lcom/b/b/i;
    .registers 2

    const-string v0, "SHA-256"

    invoke-direct {p0, v0}, Lcom/b/b/i;->c(Ljava/lang/String;)Lcom/b/b/i;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 10

    iget-object v0, p0, Lcom/b/b/i;->c:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    iget-object v1, p0, Lcom/b/b/i;->c:[B

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_c
    if-ge v3, v2, :cond_29

    aget-byte v5, v1, v3

    add-int/lit8 v6, v4, 0x1

    sget-object v7, Lcom/b/b/i;->a:[C

    shr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v4

    add-int/lit8 v4, v6, 0x1

    sget-object v7, Lcom/b/b/i;->a:[C

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v7, v5

    aput-char v5, v0, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_29
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/b/b/i;

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    check-cast p1, Lcom/b/b/i;

    invoke-virtual {p1}, Lcom/b/b/i;->g()I

    move-result v1

    iget-object v3, p0, Lcom/b/b/i;->c:[B

    array-length v3, v3

    if-ne v1, v3, :cond_20

    iget-object v1, p0, Lcom/b/b/i;->c:[B

    iget-object v3, p0, Lcom/b/b/i;->c:[B

    array-length v3, v3

    invoke-virtual {p1, v2, v1, v2, v3}, Lcom/b/b/i;->a(I[BII)Z

    move-result p1

    if-eqz p1, :cond_20

    return v0

    :cond_20
    return v2
.end method

.method public f()Lcom/b/b/i;
    .registers 7

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/b/b/i;->c:[B

    array-length v1, v1

    if-ge v0, v1, :cond_3b

    iget-object v1, p0, Lcom/b/b/i;->c:[B

    aget-byte v1, v1, v0

    const/16 v2, 0x41

    if-lt v1, v2, :cond_38

    const/16 v3, 0x5a

    if-gt v1, v3, :cond_38

    iget-object v4, p0, Lcom/b/b/i;->c:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v1, v1, 0x20

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    :goto_21
    array-length v0, v4

    if-ge v5, v0, :cond_32

    aget-byte v0, v4, v5

    if-lt v0, v2, :cond_2f

    if-gt v0, v3, :cond_2f

    add-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    aput-byte v0, v4, v5

    :cond_2f
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_32
    new-instance v0, Lcom/b/b/i;

    invoke-direct {v0, v4}, Lcom/b/b/i;-><init>([B)V

    return-object v0

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3b
    return-object p0
.end method

.method public g()I
    .registers 2

    iget-object v0, p0, Lcom/b/b/i;->c:[B

    array-length v0, v0

    return v0
.end method

.method public h()[B
    .registers 2

    iget-object v0, p0, Lcom/b/b/i;->c:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/b/b/i;->d:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    iget-object v0, p0, Lcom/b/b/i;->c:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lcom/b/b/i;->d:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    iget-object v0, p0, Lcom/b/b/i;->c:[B

    array-length v0, v0

    if-nez v0, :cond_8

    const-string v0, "[size=0]"

    return-object v0

    :cond_8
    invoke-virtual {p0}, Lcom/b/b/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_13
    const/4 v5, -0x1

    const/16 v6, 0x40

    if-ge v3, v1, :cond_3c

    if-ne v4, v6, :cond_1b

    goto :goto_40

    :cond_1b
    invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v8

    if-eqz v8, :cond_2d

    const/16 v8, 0xa

    if-eq v7, v8, :cond_2d

    const/16 v8, 0xd

    if-ne v7, v8, :cond_32

    :cond_2d
    const v8, 0xfffd

    if-ne v7, v8, :cond_34

    :cond_32
    const/4 v3, -0x1

    goto :goto_40

    :cond_34
    add-int/lit8 v4, v4, 0x1

    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_13

    :cond_3c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    :goto_40
    if-ne v3, v5, :cond_7f

    iget-object v0, p0, Lcom/b/b/i;->c:[B

    array-length v0, v0

    if-gt v0, v6, :cond_5f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[hex="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/b/b/i;->e()Ljava/lang/String;

    move-result-object v1

    :goto_52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    :goto_57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/b/b/i;->c:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v6}, Lcom/b/b/i;->a(II)Lcom/b/b/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/b/i;->e()Ljava/lang/String;

    move-result-object v1

    :goto_79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u2026]"

    goto :goto_57

    :cond_7f
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\"

    const-string v4, "\\\\"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v4, "\\n"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\r"

    const-string v4, "\\r"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_b4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[size="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/b/b/i;->c:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " text="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_79

    :cond_b4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[text="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_52
.end method
