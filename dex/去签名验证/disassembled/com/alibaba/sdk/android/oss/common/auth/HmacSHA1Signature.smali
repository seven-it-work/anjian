.class public Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;
.super Ljava/lang/Object;


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "HmacSHA1"

.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final LOCK:Ljava/lang/Object;

.field private static final VERSION:Ljava/lang/String; = "1"

.field private static macInstance:Ljavax/crypto/Mac;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private sign([B[B)[B
    .registers 6

    :try_start_0
    sget-object v0, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->macInstance:Ljavax/crypto/Mac;

    if-nez v0, :cond_1a

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_7} :catch_44
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_7} :catch_3c

    :try_start_7
    sget-object v1, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->macInstance:Ljavax/crypto/Mac;

    if-nez v1, :cond_15

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    sput-object v1, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->macInstance:Ljavax/crypto/Mac;

    :cond_15
    monitor-exit v0

    goto :goto_1a

    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    :try_start_19
    throw p1
    :try_end_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_19 .. :try_end_1a} :catch_44
    .catch Ljava/security/InvalidKeyException; {:try_start_19 .. :try_end_1a} :catch_3c

    :cond_1a
    :goto_1a
    :try_start_1a
    sget-object v0, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->macInstance:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;
    :try_end_22
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1a .. :try_end_22} :catch_23
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1a .. :try_end_22} :catch_44
    .catch Ljava/security/InvalidKeyException; {:try_start_1a .. :try_end_22} :catch_3c

    goto :goto_2b

    :catch_23
    :try_start_23
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    :goto_2b
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1
    :try_end_3b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_23 .. :try_end_3b} :catch_44
    .catch Ljava/security/InvalidKeyException; {:try_start_23 .. :try_end_3b} :catch_3c

    return-object p1

    :catch_3c
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "key must not be null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_44
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unsupported algorithm: HmacSHA1"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public computeSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    :try_start_f
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->sign([B[B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->toBase64String([B)Ljava/lang/String;

    move-result-object p1
    :try_end_23
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_23} :catch_24

    return-object p1

    :catch_24
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unsupported algorithm: UTF-8"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    const-string v0, "HmacSHA1"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "1"

    return-object v0
.end method
