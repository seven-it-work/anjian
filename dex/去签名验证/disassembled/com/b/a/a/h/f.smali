.class final Lcom/b/a/a/h/f;
.super Lcom/b/a/a/h/e;


# instance fields
.field private final a:Ljavax/net/ssl/X509TrustManager;

.field private final b:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    .registers 3

    invoke-direct {p0}, Lcom/b/a/a/h/e;-><init>()V

    iput-object p2, p0, Lcom/b/a/a/h/f;->b:Ljava/lang/reflect/Method;

    iput-object p1, p0, Lcom/b/a/a/h/f;->a:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method


# virtual methods
.method public final a(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/b/a/a/h/f;->b:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/b/a/a/h/f;->a:Ljavax/net/ssl/X509TrustManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/TrustAnchor;

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object p1
    :try_end_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_17} :catch_18

    return-object p1

    :catch_18
    :cond_18
    return-object v0

    :catch_19
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/b/a/a/h/f;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/b/a/a/h/f;

    iget-object v1, p0, Lcom/b/a/a/h/f;->a:Ljavax/net/ssl/X509TrustManager;

    iget-object v3, p1, Lcom/b/a/a/h/f;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/b/a/a/h/f;->b:Ljava/lang/reflect/Method;

    iget-object p1, p1, Lcom/b/a/a/h/f;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    return v0

    :cond_21
    return v2
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/b/a/a/h/f;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/b/a/a/h/f;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
