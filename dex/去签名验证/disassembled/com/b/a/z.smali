.class public final Lcom/b/a/z;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/b/a/ax;

.field private final b:Lcom/b/a/l;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/b/a/ax;Lcom/b/a/l;Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/ax;",
            "Lcom/b/a/l;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/z;->a:Lcom/b/a/ax;

    iput-object p2, p0, Lcom/b/a/z;->b:Lcom/b/a/l;

    iput-object p3, p0, Lcom/b/a/z;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/b/a/z;->d:Ljava/util/List;

    return-void
.end method

.method public static a(Ljavax/net/ssl/SSLSession;)Lcom/b/a/z;
    .registers 5

    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cipherSuite == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    invoke-static {v0}, Lcom/b/a/l;->a(Ljava/lang/String;)Lcom/b/a/l;

    move-result-object v0

    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_20

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "tlsVersion == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    invoke-static {v1}, Lcom/b/a/ax;->a(Ljava/lang/String;)Lcom/b/a/ax;

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

    invoke-static {v2}, Lcom/b/a/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_35

    :cond_31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_35
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object p0

    if-eqz p0, :cond_40

    invoke-static {p0}, Lcom/b/a/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_44

    :cond_40
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_44
    new-instance v3, Lcom/b/a/z;

    invoke-direct {v3, v1, v0, v2, p0}, Lcom/b/a/z;-><init>(Lcom/b/a/ax;Lcom/b/a/l;Ljava/util/List;Ljava/util/List;)V

    return-object v3
.end method


# virtual methods
.method public final a()Lcom/b/a/l;
    .registers 2

    iget-object v0, p0, Lcom/b/a/z;->b:Lcom/b/a/l;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/z;->c:Ljava/util/List;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/b/a/z;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lcom/b/a/z;

    iget-object v0, p0, Lcom/b/a/z;->b:Lcom/b/a/l;

    iget-object v2, p1, Lcom/b/a/z;->b:Lcom/b/a/l;

    invoke-static {v0, v2}, Lcom/b/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/b/a/z;->b:Lcom/b/a/l;

    iget-object v2, p1, Lcom/b/a/z;->b:Lcom/b/a/l;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/b/a/z;->c:Ljava/util/List;

    iget-object v2, p1, Lcom/b/a/z;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/b/a/z;->d:Ljava/util/List;

    iget-object p1, p1, Lcom/b/a/z;->d:Ljava/util/List;

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

    iget-object v0, p0, Lcom/b/a/z;->a:Lcom/b/a/ax;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/b/a/z;->a:Lcom/b/a/ax;

    invoke-virtual {v0}, Lcom/b/a/ax;->hashCode()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/b/a/z;->b:Lcom/b/a/l;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/b/a/z;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/b/a/z;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
