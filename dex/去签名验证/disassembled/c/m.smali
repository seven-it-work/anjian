.class public final Lc/m;
.super Lc/h;


# instance fields
.field private final a:Ljava/security/MessageDigest;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final b:Ljavax/crypto/Mac;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lc/x;Lc/f;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Lc/h;-><init>(Lc/x;)V

    :try_start_3
    invoke-static {p3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p1

    iput-object p1, p0, Lc/m;->b:Ljavax/crypto/Mac;

    iget-object p1, p0, Lc/m;->b:Ljavax/crypto/Mac;

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lc/f;->toByteArray()[B

    move-result-object p2

    invoke-direct {v0, p2, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lc/m;->a:Ljava/security/MessageDigest;
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

.method private constructor <init>(Lc/x;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lc/h;-><init>(Lc/x;)V

    :try_start_3
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lc/m;->a:Ljava/security/MessageDigest;

    const/4 p1, 0x0

    iput-object p1, p0, Lc/m;->b:Ljavax/crypto/Mac;
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

    iget-object v0, p0, Lc/m;->a:Ljava/security/MessageDigest;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lc/m;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    goto :goto_11

    :cond_b
    iget-object v0, p0, Lc/m;->b:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    :goto_11
    invoke-static {v0}, Lc/f;->of([B)Lc/f;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lc/x;)Lc/m;
    .registers 3

    new-instance v0, Lc/m;

    const-string v1, "MD5"

    invoke-direct {v0, p0, v1}, Lc/m;-><init>(Lc/x;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Lc/x;Lc/f;)Lc/m;
    .registers 4

    new-instance v0, Lc/m;

    const-string v1, "HmacSHA1"

    invoke-direct {v0, p0, p1, v1}, Lc/m;-><init>(Lc/x;Lc/f;Ljava/lang/String;)V

    return-object v0
.end method

.method private static b(Lc/x;)Lc/m;
    .registers 3

    new-instance v0, Lc/m;

    const-string v1, "SHA-1"

    invoke-direct {v0, p0, v1}, Lc/m;-><init>(Lc/x;Ljava/lang/String;)V

    return-object v0
.end method

.method private static b(Lc/x;Lc/f;)Lc/m;
    .registers 4

    new-instance v0, Lc/m;

    const-string v1, "HmacSHA256"

    invoke-direct {v0, p0, p1, v1}, Lc/m;-><init>(Lc/x;Lc/f;Ljava/lang/String;)V

    return-object v0
.end method

.method private static c(Lc/x;)Lc/m;
    .registers 3

    new-instance v0, Lc/m;

    const-string v1, "SHA-256"

    invoke-direct {v0, p0, v1}, Lc/m;-><init>(Lc/x;Ljava/lang/String;)V

    return-object v0
.end method

.method private static c(Lc/x;Lc/f;)Lc/m;
    .registers 4

    new-instance v0, Lc/m;

    const-string v1, "HmacSHA512"

    invoke-direct {v0, p0, p1, v1}, Lc/m;-><init>(Lc/x;Lc/f;Ljava/lang/String;)V

    return-object v0
.end method

.method private static d(Lc/x;)Lc/m;
    .registers 3

    new-instance v0, Lc/m;

    const-string v1, "SHA-512"

    invoke-direct {v0, p0, v1}, Lc/m;-><init>(Lc/x;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lc/c;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p1, Lc/c;->c:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lc/ab;->a(JJJ)V

    iget-object v0, p1, Lc/c;->b:Lc/u;

    const-wide/16 v1, 0x0

    :goto_c
    cmp-long v3, v1, p2

    if-gez v3, :cond_3b

    sub-long v3, p2, v1

    iget v5, v0, Lc/u;->e:I

    iget v6, v0, Lc/u;->d:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    iget-object v4, p0, Lc/m;->a:Ljava/security/MessageDigest;

    if-eqz v4, :cond_2b

    iget-object v4, p0, Lc/m;->a:Ljava/security/MessageDigest;

    iget-object v5, v0, Lc/u;->c:[B

    iget v6, v0, Lc/u;->d:I

    invoke-virtual {v4, v5, v6, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_34

    :cond_2b
    iget-object v4, p0, Lc/m;->b:Ljavax/crypto/Mac;

    iget-object v5, v0, Lc/u;->c:[B

    iget v6, v0, Lc/u;->d:I

    invoke-virtual {v4, v5, v6, v3}, Ljavax/crypto/Mac;->update([BII)V

    :goto_34
    int-to-long v3, v3

    add-long v5, v1, v3

    iget-object v0, v0, Lc/u;->h:Lc/u;

    move-wide v1, v5

    goto :goto_c

    :cond_3b
    invoke-super {p0, p1, p2, p3}, Lc/h;->a(Lc/c;J)V

    return-void
.end method
