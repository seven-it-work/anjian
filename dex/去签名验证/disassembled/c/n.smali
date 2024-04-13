.class public final Lc/n;
.super Lc/i;


# instance fields
.field private final a:Ljava/security/MessageDigest;

.field private final b:Ljavax/crypto/Mac;


# direct methods
.method private constructor <init>(Lc/y;Lc/f;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Lc/i;-><init>(Lc/y;)V

    :try_start_3
    invoke-static {p3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p1

    iput-object p1, p0, Lc/n;->b:Ljavax/crypto/Mac;

    iget-object p1, p0, Lc/n;->b:Ljavax/crypto/Mac;

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lc/f;->toByteArray()[B

    move-result-object p2

    invoke-direct {v0, p2, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lc/n;->a:Ljava/security/MessageDigest;
    :try_end_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_1a} :catch_22
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_22
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private constructor <init>(Lc/y;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lc/i;-><init>(Lc/y;)V

    :try_start_3
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lc/n;->a:Ljava/security/MessageDigest;

    const/4 p1, 0x0

    iput-object p1, p0, Lc/n;->b:Ljavax/crypto/Mac;
    :try_end_c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_c} :catch_d

    return-void

    :catch_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private a()Lc/f;
    .registers 2

    iget-object v0, p0, Lc/n;->a:Ljava/security/MessageDigest;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lc/n;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    goto :goto_11

    :cond_b
    iget-object v0, p0, Lc/n;->b:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    :goto_11
    invoke-static {v0}, Lc/f;->of([B)Lc/f;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lc/y;)Lc/n;
    .registers 3

    new-instance v0, Lc/n;

    const-string v1, "MD5"

    invoke-direct {v0, p0, v1}, Lc/n;-><init>(Lc/y;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Lc/y;Lc/f;)Lc/n;
    .registers 4

    new-instance v0, Lc/n;

    const-string v1, "HmacSHA1"

    invoke-direct {v0, p0, p1, v1}, Lc/n;-><init>(Lc/y;Lc/f;Ljava/lang/String;)V

    return-object v0
.end method

.method private static b(Lc/y;)Lc/n;
    .registers 3

    new-instance v0, Lc/n;

    const-string v1, "SHA-1"

    invoke-direct {v0, p0, v1}, Lc/n;-><init>(Lc/y;Ljava/lang/String;)V

    return-object v0
.end method

.method private static b(Lc/y;Lc/f;)Lc/n;
    .registers 4

    new-instance v0, Lc/n;

    const-string v1, "HmacSHA256"

    invoke-direct {v0, p0, p1, v1}, Lc/n;-><init>(Lc/y;Lc/f;Ljava/lang/String;)V

    return-object v0
.end method

.method private static c(Lc/y;)Lc/n;
    .registers 3

    new-instance v0, Lc/n;

    const-string v1, "SHA-256"

    invoke-direct {v0, p0, v1}, Lc/n;-><init>(Lc/y;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final read(Lc/c;J)J
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lc/i;->read(Lc/c;J)J

    move-result-wide p2

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-eqz v2, :cond_56

    iget-wide v0, p1, Lc/c;->c:J

    sub-long v2, v0, p2

    iget-wide v0, p1, Lc/c;->c:J

    iget-object v4, p1, Lc/c;->b:Lc/u;

    :goto_12
    cmp-long v5, v0, v2

    if-lez v5, :cond_22

    iget-object v4, v4, Lc/u;->i:Lc/u;

    iget v5, v4, Lc/u;->e:I

    iget v6, v4, Lc/u;->d:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    sub-long v7, v0, v5

    move-wide v0, v7

    goto :goto_12

    :cond_22
    :goto_22
    iget-wide v5, p1, Lc/c;->c:J

    cmp-long v7, v0, v5

    if-gez v7, :cond_56

    iget v5, v4, Lc/u;->d:I

    int-to-long v5, v5

    add-long v7, v5, v2

    sub-long v2, v7, v0

    long-to-int v2, v2

    iget-object v3, p0, Lc/n;->a:Ljava/security/MessageDigest;

    if-eqz v3, :cond_3f

    iget-object v3, p0, Lc/n;->a:Ljava/security/MessageDigest;

    iget-object v5, v4, Lc/u;->c:[B

    iget v6, v4, Lc/u;->e:I

    sub-int/2addr v6, v2

    invoke-virtual {v3, v5, v2, v6}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_49

    :cond_3f
    iget-object v3, p0, Lc/n;->b:Ljavax/crypto/Mac;

    iget-object v5, v4, Lc/u;->c:[B

    iget v6, v4, Lc/u;->e:I

    sub-int/2addr v6, v2

    invoke-virtual {v3, v5, v2, v6}, Ljavax/crypto/Mac;->update([BII)V

    :goto_49
    iget v2, v4, Lc/u;->e:I

    iget v3, v4, Lc/u;->d:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long v5, v0, v2

    iget-object v4, v4, Lc/u;->h:Lc/u;

    move-wide v0, v5

    move-wide v2, v0

    goto :goto_22

    :cond_56
    return-wide p2
.end method
