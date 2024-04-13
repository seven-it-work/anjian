.class public final Lcom/cyjh/common/util/h;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/security/spec/AlgorithmParameterSpec;

.field private static b:[B

.field private static c:[B

.field private static d:Ljava/security/Key;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_12

    sput-object v1, Lcom/cyjh/common/util/h;->b:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/cyjh/common/util/h;->c:[B

    return-void

    nop

    :array_12
    .array-data 1
        0xdt
        0x18t
        0x2et
        0x6et
        0x26t
        0x66t
        0xct
        0x24t
    .end array-data

    :array_1a
    .array-data 1
        0x20t
        0x2ft
        0xbt
        -0x80t
        0x1dt
        0x4dt
        0x69t
        0x15t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/common/util/h;->b:[B

    sget-object v1, Lcom/cyjh/common/util/h;->c:[B

    invoke-static {v0, v1}, Lcom/cyjh/common/util/h;->a([B[B)V

    const-string v0, "DES/ECB/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    sget-object v1, Lcom/cyjh/common/util/h;->d:Ljava/security/Key;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string v1, "utf-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    array-length v1, p0

    rem-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    array-length v1, p0

    add-int/lit8 v1, v1, 0x8

    array-length v3, p0

    rem-int/lit8 v3, v3, 0x8

    sub-int/2addr v1, v3

    new-array v1, v1, [B

    array-length v3, p0

    invoke-static {p0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v1

    :cond_2d
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    invoke-static {p0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/common/util/h;->c:[B

    invoke-static {p1, v0}, Lcom/cyjh/common/util/h;->a([B[B)V

    const-string p1, "DES/ECB/NoPadding"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    sget-object v0, Lcom/cyjh/common/util/h;->d:Ljava/security/Key;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2b

    array-length v0, p0

    add-int/lit8 v0, v0, 0x8

    array-length v1, p0

    rem-int/lit8 v1, v1, 0x8

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    :cond_2b
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a([B[B)V
    .registers 3

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v0, p0}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    new-instance p0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p0, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object p0, Lcom/cyjh/common/util/h;->a:Ljava/security/spec/AlgorithmParameterSpec;

    const-string p0, "DES"

    invoke-static {p0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    sput-object p0, Lcom/cyjh/common/util/h;->d:Ljava/security/Key;
    :try_end_18
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_18} :catch_23
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_18} :catch_1e
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p0

    invoke-virtual {p0}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    return-void

    :catch_1e
    move-exception p0

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    return-void

    :catch_23
    move-exception p0

    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/common/util/h;->b:[B

    sget-object v1, Lcom/cyjh/common/util/h;->c:[B

    invoke-static {v0, v1}, Lcom/cyjh/common/util/h;->a([B[B)V

    const-string v0, "DES/ECB/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    sget-object v1, Lcom/cyjh/common/util/h;->d:Ljava/security/Key;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/common/util/h;->c:[B

    invoke-static {p1, v0}, Lcom/cyjh/common/util/h;->a([B[B)V

    const-string p1, "DES/ECB/NoPadding"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    sget-object v0, Lcom/cyjh/common/util/h;->d:Ljava/security/Key;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/common/util/h;->c:[B

    invoke-static {p1, v0}, Lcom/cyjh/common/util/h;->a([B[B)V

    const-string p1, "DES/ECB/NoPadding"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    sget-object v0, Lcom/cyjh/common/util/h;->d:Ljava/security/Key;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2b

    array-length v0, p0

    add-int/lit8 v0, v0, 0x8

    array-length v1, p0

    rem-int/lit8 v1, v1, 0x8

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    :cond_2b
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
