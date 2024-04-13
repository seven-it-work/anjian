.class public final Lcom/b/a/i;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/b/a/i;


# instance fields
.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/b/a/k;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/b/a/a/h/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/b/a/j;

    invoke-direct {v0}, Lcom/b/a/j;-><init>()V

    invoke-virtual {v0}, Lcom/b/a/j;->a()Lcom/b/a/i;

    move-result-object v0

    sput-object v0, Lcom/b/a/i;->a:Lcom/b/a/i;

    return-void
.end method

.method constructor <init>(Ljava/util/Set;Lcom/b/a/a/h/b;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/b/a/k;",
            ">;",
            "Lcom/b/a/a/h/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/i;->b:Ljava/util/Set;

    iput-object p2, p0, Lcom/b/a/i;->c:Lcom/b/a/a/h/b;

    return-void
.end method

.method private static a(Ljava/security/cert/X509Certificate;)Lcom/b/b/i;
    .registers 1

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lcom/b/b/i;->a([B)Lcom/b/b/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/b/b/i;->d()Lcom/b/b/i;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 3

    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_c

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Certificate pinning requires X509 certificates"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sha256/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-static {p0}, Lcom/b/a/i;->a(Ljava/security/cert/X509Certificate;)Lcom/b/b/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/b/b/i;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final a(Lcom/b/a/a/h/b;)Lcom/b/a/i;
    .registers 4

    iget-object v0, p0, Lcom/b/a/i;->c:Lcom/b/a/a/h/b;

    invoke-static {v0, p1}, Lcom/b/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    new-instance v0, Lcom/b/a/i;

    iget-object v1, p0, Lcom/b/a/i;->b:Ljava/util/Set;

    invoke-direct {v0, v1, p1}, Lcom/b/a/i;-><init>(Ljava/util/Set;Lcom/b/a/a/h/b;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/i;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/b/a/k;

    iget-object v3, v2, Lcom/b/a/k;->a:Ljava/lang/String;

    const-string v4, "*."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v5, 0x0

    add-int/lit8 v6, v3, 0x1

    iget-object v7, v2, Lcom/b/a/k;->b:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v3, v2, Lcom/b/a/k;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    goto :goto_3e

    :cond_38
    iget-object v3, v2, Lcom/b/a/k;->b:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_3e
    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_4b
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_4f
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_56

    return-void

    :cond_56
    iget-object v1, p0, Lcom/b/a/i;->c:Lcom/b/a/a/h/b;

    if-eqz v1, :cond_60

    iget-object v1, p0, Lcom/b/a/i;->c:Lcom/b/a/a/h/b;

    invoke-virtual {v1, p2, p1}, Lcom/b/a/a/h/b;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    :cond_60
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_66
    if-ge v3, v1, :cond_c8

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    move-object v7, v6

    move-object v8, v7

    const/4 v6, 0x0

    :goto_76
    if-ge v6, v5, :cond_c5

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/b/a/k;

    iget-object v10, v9, Lcom/b/a/k;->c:Ljava/lang/String;

    const-string v11, "sha256/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_97

    if-nez v7, :cond_8e

    invoke-static {v4}, Lcom/b/a/i;->a(Ljava/security/cert/X509Certificate;)Lcom/b/b/i;

    move-result-object v7

    :cond_8e
    iget-object v9, v9, Lcom/b/a/k;->d:Lcom/b/b/i;

    invoke-virtual {v9, v7}, Lcom/b/b/i;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_bc

    return-void

    :cond_97
    iget-object v10, v9, Lcom/b/a/k;->c:Ljava/lang/String;

    const-string v11, "sha1/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_bf

    if-nez v8, :cond_b3

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    invoke-interface {v8}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v8

    invoke-static {v8}, Lcom/b/b/i;->a([B)Lcom/b/b/i;

    move-result-object v8

    invoke-virtual {v8}, Lcom/b/b/i;->c()Lcom/b/b/i;

    move-result-object v8

    :cond_b3
    iget-object v9, v9, Lcom/b/a/k;->d:Lcom/b/b/i;

    invoke-virtual {v9, v8}, Lcom/b/b/i;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_bc

    return-void

    :cond_bc
    add-int/lit8 v6, v6, 0x1

    goto :goto_76

    :cond_bf
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_c5
    add-int/lit8 v3, v3, 0x1

    goto :goto_66

    :cond_c8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Certificate pinning failure!\n  Peer certificate chain:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_d4
    if-ge v4, v3, :cond_fb

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    const-string v6, "\n    "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/b/a/i;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_d4

    :cond_fb
    const-string p2, "\n  Pinned certificates for "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    :goto_10c
    if-ge v2, p1, :cond_11f

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/b/a/k;

    const-string v3, "\n    "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_10c

    :cond_11f
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/b/a/i;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/b/a/i;->c:Lcom/b/a/a/h/b;

    check-cast p1, Lcom/b/a/i;

    iget-object v2, p1, Lcom/b/a/i;->c:Lcom/b/a/a/h/b;

    invoke-static {v1, v2}, Lcom/b/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/b/a/i;->b:Ljava/util/Set;

    iget-object p1, p1, Lcom/b/a/i;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    return v0

    :cond_1f
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/b/a/i;->c:Lcom/b/a/a/h/b;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/b/a/i;->c:Lcom/b/a/a/h/b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/b/a/i;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
