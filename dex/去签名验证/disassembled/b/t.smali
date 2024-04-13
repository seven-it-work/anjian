.class public final Lb/t;
.super Ljava/lang/Object;


# instance fields
.field final a:Lb/ah;

.field public final b:Lb/i;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lb/ah;Lb/i;Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/ah;",
            "Lb/i;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/t;->a:Lb/ah;

    iput-object p2, p0, Lb/t;->b:Lb/i;

    iput-object p3, p0, Lb/t;->c:Ljava/util/List;

    iput-object p4, p0, Lb/t;->d:Ljava/util/List;

    return-void
.end method

.method private a()Lb/ah;
    .registers 2

    iget-object v0, p0, Lb/t;->a:Lb/ah;

    return-object v0
.end method

.method private static a(Lb/ah;Lb/i;Ljava/util/List;Ljava/util/List;)Lb/t;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/ah;",
            "Lb/i;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Lb/t;"
        }
    .end annotation

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "tlsVersion == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    if-nez p1, :cond_14

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "cipherSuite == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    new-instance v0, Lb/t;

    invoke-static {p2}, Lb/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-static {p3}, Lb/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v0, p0, p1, p2, p3}, Lb/t;-><init>(Lb/ah;Lb/i;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static a(Ljavax/net/ssl/SSLSession;)Lb/t;
    .registers 5

    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cipherSuite == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    invoke-static {v0}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v0

    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_20

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "tlsVersion == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    invoke-static {v1}, Lb/ah;->forJavaName(Ljava/lang/String;)Lb/ah;

    move-result-object v1

    :try_start_24
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2
    :try_end_28
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_24 .. :try_end_28} :catch_29

    goto :goto_2a

    :catch_29
    const/4 v2, 0x0

    :goto_2a
    if-eqz v2, :cond_31

    invoke-static {v2}, Lb/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_35

    :cond_31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_35
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object p0

    if-eqz p0, :cond_40

    invoke-static {p0}, Lb/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_44

    :cond_40
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_44
    new-instance v3, Lb/t;

    invoke-direct {v3, v1, v0, v2, p0}, Lb/t;-><init>(Lb/ah;Lb/i;Ljava/util/List;Ljava/util/List;)V

    return-object v3
.end method

.method private b()Lb/i;
    .registers 2

    iget-object v0, p0, Lb/t;->b:Lb/i;

    return-object v0
.end method

.method private c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/t;->c:Ljava/util/List;

    return-object v0
.end method

.method private d()Ljava/security/Principal;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lb/t;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lb/t;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0

    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method private e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/t;->d:Ljava/util/List;

    return-object v0
.end method

.method private f()Ljava/security/Principal;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lb/t;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lb/t;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0

    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lb/t;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lb/t;

    iget-object v0, p0, Lb/t;->a:Lb/ah;

    iget-object v2, p1, Lb/t;->a:Lb/ah;

    invoke-virtual {v0, v2}, Lb/ah;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lb/t;->b:Lb/i;

    iget-object v2, p1, Lb/t;->b:Lb/i;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lb/t;->c:Ljava/util/List;

    iget-object v2, p1, Lb/t;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lb/t;->d:Ljava/util/List;

    iget-object p1, p1, Lb/t;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    const/4 p1, 0x1

    return p1

    :cond_32
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lb/t;->a:Lb/ah;

    invoke-virtual {v0}, Lb/ah;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lb/t;->b:Lb/i;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lb/t;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lb/t;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
