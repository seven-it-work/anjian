.class public Lc/f;
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
        "Lc/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lc/f;

.field static final HEX_DIGITS:[C

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final data:[B

.field transient hashCode:I

.field transient utf8:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_14

    sput-object v0, Lc/f;->HEX_DIGITS:[C

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Lc/f;->of([B)Lc/f;

    move-result-object v0

    sput-object v0, Lc/f;->EMPTY:Lc/f;

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

    iput-object p1, p0, Lc/f;->data:[B

    return-void
.end method

.method static codePointIndexToCharIndex(Ljava/lang/String;I)I
    .registers 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v1, v0, :cond_2c

    if-ne v2, p1, :cond_b

    return v1

    :cond_b
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1d

    const/16 v4, 0xd

    if-ne v3, v4, :cond_22

    :cond_1d
    const v4, 0xfffd

    if-ne v3, v4, :cond_24

    :cond_22
    const/4 p0, -0x1

    return p0

    :cond_24
    add-int/lit8 v2, v2, 0x1

    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_6

    :cond_2c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public static decodeBase64(Ljava/lang/String;)Lc/f;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "base64 == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-static {p0}, Lc/b;->a(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_16

    new-instance v0, Lc/f;

    invoke-direct {v0, p0}, Lc/f;-><init>([B)V

    return-object v0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public static decodeHex(Ljava/lang/String;)Lc/f;
    .registers 5

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "hex == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected hex string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_2f
    array-length v2, v0

    if-ge v1, v2, :cond_4f

    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lc/f;->decodeHexDigit(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lc/f;->decodeHexDigit(C)I

    move-result v2

    add-int/2addr v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_4f
    invoke-static {v0}, Lc/f;->of([B)Lc/f;

    move-result-object p0

    return-object p0
.end method

.method private static decodeHexDigit(C)I
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

.method private digest(Ljava/lang/String;)Lc/f;
    .registers 3

    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iget-object v0, p0, Lc/f;->data:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-static {p1}, Lc/f;->of([B)Lc/f;

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

.method public static encodeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lc/f;
    .registers 3

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "s == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    if-nez p1, :cond_14

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "charset == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    new-instance v0, Lc/f;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lc/f;-><init>([B)V

    return-object v0
.end method

.method public static encodeUtf8(Ljava/lang/String;)Lc/f;
    .registers 3

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "s == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance v0, Lc/f;

    sget-object v1, Lc/ab;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lc/f;-><init>([B)V

    iput-object p0, v0, Lc/f;->utf8:Ljava/lang/String;

    return-object v0
.end method

.method private hmac(Ljava/lang/String;Lc/f;)Lc/f;
    .registers 5

    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lc/f;->toByteArray()[B

    move-result-object p2

    invoke-direct {v1, p2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    iget-object p1, p0, Lc/f;->data:[B

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    invoke-static {p1}, Lc/f;->of([B)Lc/f;

    move-result-object p1
    :try_end_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_1a} :catch_22
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object p1

    :catch_1b
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_22
    move-exception p1

    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public static of(Ljava/nio/ByteBuffer;)Lc/f;
    .registers 2

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "data == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance p0, Lc/f;

    invoke-direct {p0, v0}, Lc/f;-><init>([B)V

    return-object p0
.end method

.method public static varargs of([B)Lc/f;
    .registers 2

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "data == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance v0, Lc/f;

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-direct {v0, p0}, Lc/f;-><init>([B)V

    return-object v0
.end method

.method public static of([BII)Lc/f;
    .registers 10

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "data == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    array-length v0, p0

    int-to-long v1, v0

    int-to-long v3, p1

    int-to-long v5, p2

    invoke-static/range {v1 .. v6}, Lc/ab;->a(JJJ)V

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lc/f;

    invoke-direct {p0, v0}, Lc/f;-><init>([B)V

    return-object p0
.end method

.method public static read(Ljava/io/InputStream;I)Lc/f;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "in == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    if-gez p1, :cond_20

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "byteCount < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_23
    if-ge v1, p1, :cond_36

    sub-int v2, p1, v1

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_34

    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_34
    add-int/2addr v1, v2

    goto :goto_23

    :cond_36
    new-instance p0, Lc/f;

    invoke-direct {p0, v0}, Lc/f;-><init>([B)V

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    invoke-static {p1, v0}, Lc/f;->read(Ljava/io/InputStream;I)Lc/f;

    move-result-object p1

    :try_start_8
    const-class v0, Lc/f;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object p1, p1, Lc/f;->data:[B

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8 .. :try_end_19} :catch_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :catch_20
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lc/f;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v0, p0, Lc/f;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public asByteBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    iget-object v0, p0, Lc/f;->data:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public base64()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lc/f;->data:[B

    invoke-static {v0}, Lc/b;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lc/f;->data:[B

    invoke-static {v0}, Lc/b;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lc/f;)I
    .registers 11

    invoke-virtual {p0}, Lc/f;->size()I

    move-result v0

    invoke-virtual {p1}, Lc/f;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_e
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v4, v2, :cond_27

    invoke-virtual {p0, v4}, Lc/f;->getByte(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {p1, v4}, Lc/f;->getByte(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    if-eq v7, v8, :cond_24

    if-ge v7, v8, :cond_23

    return v5

    :cond_23
    return v6

    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_27
    if-ne v0, v1, :cond_2a

    return v3

    :cond_2a
    if-ge v0, v1, :cond_2d

    return v5

    :cond_2d
    return v6
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lc/f;

    invoke-virtual {p0, p1}, Lc/f;->compareTo(Lc/f;)I

    move-result p1

    return p1
.end method

.method public final endsWith(Lc/f;)Z
    .registers 5

    invoke-virtual {p0}, Lc/f;->size()I

    move-result v0

    invoke-virtual {p1}, Lc/f;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lc/f;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Lc/f;->rangeEquals(ILc/f;II)Z

    move-result p1

    return p1
.end method

.method public final endsWith([B)Z
    .registers 5

    invoke-virtual {p0}, Lc/f;->size()I

    move-result v0

    array-length v1, p1

    sub-int/2addr v0, v1

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Lc/f;->rangeEquals(I[BII)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lc/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    check-cast p1, Lc/f;

    invoke-virtual {p1}, Lc/f;->size()I

    move-result v1

    iget-object v3, p0, Lc/f;->data:[B

    array-length v3, v3

    if-ne v1, v3, :cond_20

    iget-object v1, p0, Lc/f;->data:[B

    iget-object v3, p0, Lc/f;->data:[B

    array-length v3, v3

    invoke-virtual {p1, v2, v1, v2, v3}, Lc/f;->rangeEquals(I[BII)Z

    move-result p1

    if-eqz p1, :cond_20

    return v0

    :cond_20
    return v2
.end method

.method public getByte(I)B
    .registers 3

    iget-object v0, p0, Lc/f;->data:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lc/f;->hashCode:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    iget-object v0, p0, Lc/f;->data:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lc/f;->hashCode:I

    return v0
.end method

.method public hex()Ljava/lang/String;
    .registers 10

    iget-object v0, p0, Lc/f;->data:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    iget-object v1, p0, Lc/f;->data:[B

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_c
    if-ge v3, v2, :cond_29

    aget-byte v5, v1, v3

    add-int/lit8 v6, v4, 0x1

    sget-object v7, Lc/f;->HEX_DIGITS:[C

    shr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v4

    add-int/lit8 v4, v6, 0x1

    sget-object v7, Lc/f;->HEX_DIGITS:[C

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

.method public hmacSha1(Lc/f;)Lc/f;
    .registers 3

    const-string v0, "HmacSHA1"

    invoke-direct {p0, v0, p1}, Lc/f;->hmac(Ljava/lang/String;Lc/f;)Lc/f;

    move-result-object p1

    return-object p1
.end method

.method public hmacSha256(Lc/f;)Lc/f;
    .registers 3

    const-string v0, "HmacSHA256"

    invoke-direct {p0, v0, p1}, Lc/f;->hmac(Ljava/lang/String;Lc/f;)Lc/f;

    move-result-object p1

    return-object p1
.end method

.method public hmacSha512(Lc/f;)Lc/f;
    .registers 3

    const-string v0, "HmacSHA512"

    invoke-direct {p0, v0, p1}, Lc/f;->hmac(Ljava/lang/String;Lc/f;)Lc/f;

    move-result-object p1

    return-object p1
.end method

.method public final indexOf(Lc/f;)I
    .registers 3

    invoke-virtual {p1}, Lc/f;->internalArray()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc/f;->indexOf([BI)I

    move-result p1

    return p1
.end method

.method public final indexOf(Lc/f;I)I
    .registers 3

    invoke-virtual {p1}, Lc/f;->internalArray()[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lc/f;->indexOf([BI)I

    move-result p1

    return p1
.end method

.method public final indexOf([B)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc/f;->indexOf([BI)I

    move-result p1

    return p1
.end method

.method public indexOf([BI)I
    .registers 7

    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v1, p0, Lc/f;->data:[B

    array-length v1, v1

    array-length v2, p1

    sub-int/2addr v1, v2

    :goto_a
    if-gt p2, v1, :cond_19

    iget-object v2, p0, Lc/f;->data:[B

    array-length v3, p1

    invoke-static {v2, p2, p1, v0, v3}, Lc/ab;->a([BI[BII)Z

    move-result v2

    if-eqz v2, :cond_16

    return p2

    :cond_16
    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_19
    const/4 p1, -0x1

    return p1
.end method

.method internalArray()[B
    .registers 2

    iget-object v0, p0, Lc/f;->data:[B

    return-object v0
.end method

.method public final lastIndexOf(Lc/f;)I
    .registers 3

    invoke-virtual {p1}, Lc/f;->internalArray()[B

    move-result-object p1

    invoke-virtual {p0}, Lc/f;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lc/f;->lastIndexOf([BI)I

    move-result p1

    return p1
.end method

.method public final lastIndexOf(Lc/f;I)I
    .registers 3

    invoke-virtual {p1}, Lc/f;->internalArray()[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lc/f;->lastIndexOf([BI)I

    move-result p1

    return p1
.end method

.method public final lastIndexOf([B)I
    .registers 3

    invoke-virtual {p0}, Lc/f;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lc/f;->lastIndexOf([BI)I

    move-result p1

    return p1
.end method

.method public lastIndexOf([BI)I
    .registers 6

    iget-object v0, p0, Lc/f;->data:[B

    array-length v0, v0

    array-length v1, p1

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_9
    if-ltz p2, :cond_19

    iget-object v0, p0, Lc/f;->data:[B

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {v0, p2, p1, v1, v2}, Lc/ab;->a([BI[BII)Z

    move-result v0

    if-eqz v0, :cond_16

    return p2

    :cond_16
    add-int/lit8 p2, p2, -0x1

    goto :goto_9

    :cond_19
    const/4 p1, -0x1

    return p1
.end method

.method public md5()Lc/f;
    .registers 2

    const-string v0, "MD5"

    invoke-direct {p0, v0}, Lc/f;->digest(Ljava/lang/String;)Lc/f;

    move-result-object v0

    return-object v0
.end method

.method public rangeEquals(ILc/f;II)Z
    .registers 6

    iget-object v0, p0, Lc/f;->data:[B

    invoke-virtual {p2, p3, v0, p1, p4}, Lc/f;->rangeEquals(I[BII)Z

    move-result p1

    return p1
.end method

.method public rangeEquals(I[BII)Z
    .registers 6

    if-ltz p1, :cond_18

    iget-object v0, p0, Lc/f;->data:[B

    array-length v0, v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_18

    if-ltz p3, :cond_18

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_18

    iget-object v0, p0, Lc/f;->data:[B

    invoke-static {v0, p1, p2, p3, p4}, Lc/ab;->a([BI[BII)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method public sha1()Lc/f;
    .registers 2

    const-string v0, "SHA-1"

    invoke-direct {p0, v0}, Lc/f;->digest(Ljava/lang/String;)Lc/f;

    move-result-object v0

    return-object v0
.end method

.method public sha256()Lc/f;
    .registers 2

    const-string v0, "SHA-256"

    invoke-direct {p0, v0}, Lc/f;->digest(Ljava/lang/String;)Lc/f;

    move-result-object v0

    return-object v0
.end method

.method public sha512()Lc/f;
    .registers 2

    const-string v0, "SHA-512"

    invoke-direct {p0, v0}, Lc/f;->digest(Ljava/lang/String;)Lc/f;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lc/f;->data:[B

    array-length v0, v0

    return v0
.end method

.method public final startsWith(Lc/f;)Z
    .registers 4

    invoke-virtual {p1}, Lc/f;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Lc/f;->rangeEquals(ILc/f;II)Z

    move-result p1

    return p1
.end method

.method public final startsWith([B)Z
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Lc/f;->rangeEquals(I[BII)Z

    move-result p1

    return p1
.end method

.method public string(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "charset == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lc/f;->data:[B

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public substring(I)Lc/f;
    .registers 3

    iget-object v0, p0, Lc/f;->data:[B

    array-length v0, v0

    invoke-virtual {p0, p1, v0}, Lc/f;->substring(II)Lc/f;

    move-result-object p1

    return-object p1
.end method

.method public substring(II)Lc/f;
    .registers 6

    if-gez p1, :cond_a

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "beginIndex < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iget-object v0, p0, Lc/f;->data:[B

    array-length v0, v0

    if-le p2, v0, :cond_2b

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "endIndex > length("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lc/f;->data:[B

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

    iget-object v1, p0, Lc/f;->data:[B

    array-length v1, v1

    if-ne p2, v1, :cond_3f

    return-object p0

    :cond_3f
    new-array p2, v0, [B

    iget-object v1, p0, Lc/f;->data:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lc/f;

    invoke-direct {p1, p2}, Lc/f;-><init>([B)V

    return-object p1
.end method

.method public toAsciiLowercase()Lc/f;
    .registers 7

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lc/f;->data:[B

    array-length v1, v1

    if-ge v0, v1, :cond_3b

    iget-object v1, p0, Lc/f;->data:[B

    aget-byte v1, v1, v0

    const/16 v2, 0x41

    if-lt v1, v2, :cond_38

    const/16 v3, 0x5a

    if-gt v1, v3, :cond_38

    iget-object v4, p0, Lc/f;->data:[B

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
    new-instance v0, Lc/f;

    invoke-direct {v0, v4}, Lc/f;-><init>([B)V

    return-object v0

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3b
    return-object p0
.end method

.method public toAsciiUppercase()Lc/f;
    .registers 7

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lc/f;->data:[B

    array-length v1, v1

    if-ge v0, v1, :cond_3b

    iget-object v1, p0, Lc/f;->data:[B

    aget-byte v1, v1, v0

    const/16 v2, 0x61

    if-lt v1, v2, :cond_38

    const/16 v3, 0x7a

    if-gt v1, v3, :cond_38

    iget-object v4, p0, Lc/f;->data:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v1, v1, -0x20

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    :goto_21
    array-length v0, v4

    if-ge v5, v0, :cond_32

    aget-byte v0, v4, v5

    if-lt v0, v2, :cond_2f

    if-gt v0, v3, :cond_2f

    add-int/lit8 v0, v0, -0x20

    int-to-byte v0, v0

    aput-byte v0, v4, v5

    :cond_2f
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_32
    new-instance v0, Lc/f;

    invoke-direct {v0, v4}, Lc/f;-><init>([B)V

    return-object v0

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3b
    return-object p0
.end method

.method public toByteArray()[B
    .registers 2

    iget-object v0, p0, Lc/f;->data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lc/f;->data:[B

    array-length v0, v0

    if-nez v0, :cond_8

    const-string v0, "[size=0]"

    return-object v0

    :cond_8
    invoke-virtual {p0}, Lc/f;->utf8()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lc/f;->codePointIndexToCharIndex(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_53

    iget-object v0, p0, Lc/f;->data:[B

    array-length v0, v0

    if-gt v0, v1, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[hex="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lc/f;->hex()Ljava/lang/String;

    move-result-object v1

    :goto_26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    :goto_2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[size="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lc/f;->data:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " hex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v1}, Lc/f;->substring(II)Lc/f;

    move-result-object v1

    invoke-virtual {v1}, Lc/f;->hex()Ljava/lang/String;

    move-result-object v1

    :goto_4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u2026]"

    goto :goto_2b

    :cond_53
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\"

    const-string v4, "\\\\"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\n"

    const-string v4, "\\n"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\r"

    const-string v4, "\\r"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_88

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[size="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lc/f;->data:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " text="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4d

    :cond_88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[text="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_26
.end method

.method public utf8()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lc/f;->utf8:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lc/f;->data:[B

    sget-object v2, Lc/ab;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lc/f;->utf8:Ljava/lang/String;

    return-object v0
.end method

.method write(Lc/c;)V
    .registers 5

    iget-object v0, p0, Lc/f;->data:[B

    iget-object v1, p0, Lc/f;->data:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lc/c;->b([BII)Lc/c;

    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "out == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iget-object v0, p0, Lc/f;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
