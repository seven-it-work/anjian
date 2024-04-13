.class public final Lcom/cyjh/common/util/v;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "RSA"

.field public static final b:Ljava/lang/String; = "RSA/ECB/NoPadding"

.field public static final c:Ljava/lang/String; = "1"

.field public static final d:Ljava/lang/String; = "2"

.field public static final e:I = 0x800

.field public static final f:Ljava/lang/String; = "MANUTD is the greatest club in the world"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/security/PrivateKey;[B)Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string v0, "RSA/ECB/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-instance p0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_13} :catch_14
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_13} :catch_14
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_13} :catch_14
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_13} :catch_14
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static a()Ljava/security/KeyPair;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(I)V

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Ljava/security/PublicKey;
    .registers 2

    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    :try_start_5
    const-string p0, "RSA"

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_f} :catch_10
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_5 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    move-exception p0

    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    check-cast p0, Ljava/security/interfaces/RSAPublicKey;
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_16} :catch_27
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_16} :catch_1f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "\u516c\u94a5\u6570\u636e\u4e3a\u7a7a"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1f
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "\u516c\u94a5\u975e\u6cd5"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_27
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "\u65e0\u6b64\u7b97\u6cd5"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Ljava/security/PublicKey;[B)[B
    .registers 4

    :try_start_0
    const-string v0, "RSA/ECB/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Ljava/security/PublicKey;[B)Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string v0, "RSA/ECB/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-instance p0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_13} :catch_14
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_13} :catch_14
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_13} :catch_14
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_13} :catch_14
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static b([B)Ljava/security/PublicKey;
    .registers 2

    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    :try_start_5
    const-string p0, "RSA"

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_f} :catch_10
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_5 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    move-exception p0

    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static b()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(I)V

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "1"

    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getEncoded()[B

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "2"

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getEncoded()[B

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ffff"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fuck.1...     "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getEncoded()[B

    move-result-object v1

    const/4 v5, 0x2

    invoke-static {v1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ffff"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fuck.2...     "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_69} :catch_6a

    return-object v2

    :catch_6a
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method
