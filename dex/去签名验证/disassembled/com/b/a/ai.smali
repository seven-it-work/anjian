.class public Lcom/b/a/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/b/a/al;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/b/a/p;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final A:I

.field final B:I

.field final c:Lcom/b/a/u;

.field final d:Ljava/net/Proxy;

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/b/a/al;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/b/a/p;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/b/a/af;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/b/a/af;",
            ">;"
        }
    .end annotation
.end field

.field final i:Ljava/net/ProxySelector;

.field final j:Lcom/b/a/s;

.field final k:Lcom/b/a/d;

.field final l:Lcom/b/a/a/a/i;

.field final m:Ljavax/net/SocketFactory;

.field final n:Ljavax/net/ssl/SSLSocketFactory;

.field final o:Lcom/b/a/a/h/b;

.field final p:Ljavax/net/ssl/HostnameVerifier;

.field final q:Lcom/b/a/i;

.field final r:Lcom/b/a/b;

.field final s:Lcom/b/a/b;

.field final t:Lcom/b/a/n;

.field final u:Lcom/b/a/v;

.field final v:Z

.field final w:Z

.field final x:Z

.field final y:I

.field final z:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/b/a/al;

    sget-object v2, Lcom/b/a/al;->d:Lcom/b/a/al;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/b/a/al;->b:Lcom/b/a/al;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/b/a/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/b/a/ai;->a:Ljava/util/List;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/b/a/p;

    sget-object v2, Lcom/b/a/p;->a:Lcom/b/a/p;

    aput-object v2, v1, v3

    sget-object v2, Lcom/b/a/p;->b:Lcom/b/a/p;

    aput-object v2, v1, v4

    sget-object v2, Lcom/b/a/p;->c:Lcom/b/a/p;

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/b/a/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/b/a/ai;->b:Ljava/util/List;

    new-instance v0, Lcom/b/a/aj;

    invoke-direct {v0}, Lcom/b/a/aj;-><init>()V

    sput-object v0, Lcom/b/a/a/a;->a:Lcom/b/a/a/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    new-instance v0, Lcom/b/a/ak;

    invoke-direct {v0}, Lcom/b/a/ak;-><init>()V

    invoke-direct {p0, v0}, Lcom/b/a/ai;-><init>(Lcom/b/a/ak;)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/ak;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/b/a/ak;->a:Lcom/b/a/u;

    iput-object v0, p0, Lcom/b/a/ai;->c:Lcom/b/a/u;

    iget-object v0, p1, Lcom/b/a/ak;->b:Ljava/net/Proxy;

    iput-object v0, p0, Lcom/b/a/ai;->d:Ljava/net/Proxy;

    iget-object v0, p1, Lcom/b/a/ak;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/b/a/ai;->e:Ljava/util/List;

    iget-object v0, p1, Lcom/b/a/ak;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/b/a/ai;->f:Ljava/util/List;

    iget-object v0, p1, Lcom/b/a/ak;->e:Ljava/util/List;

    invoke-static {v0}, Lcom/b/a/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ai;->g:Ljava/util/List;

    iget-object v0, p1, Lcom/b/a/ak;->f:Ljava/util/List;

    invoke-static {v0}, Lcom/b/a/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ai;->h:Ljava/util/List;

    iget-object v0, p1, Lcom/b/a/ak;->g:Ljava/net/ProxySelector;

    iput-object v0, p0, Lcom/b/a/ai;->i:Ljava/net/ProxySelector;

    iget-object v0, p1, Lcom/b/a/ak;->h:Lcom/b/a/s;

    iput-object v0, p0, Lcom/b/a/ai;->j:Lcom/b/a/s;

    iget-object v0, p1, Lcom/b/a/ak;->i:Lcom/b/a/d;

    iput-object v0, p0, Lcom/b/a/ai;->k:Lcom/b/a/d;

    iget-object v0, p1, Lcom/b/a/ak;->j:Lcom/b/a/a/a/i;

    iput-object v0, p0, Lcom/b/a/ai;->l:Lcom/b/a/a/a/i;

    iget-object v0, p1, Lcom/b/a/ak;->k:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lcom/b/a/ai;->m:Ljavax/net/SocketFactory;

    iget-object v0, p0, Lcom/b/a/ai;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_3e
    const/4 v2, 0x0

    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/b/a/p;

    if-nez v2, :cond_51

    iget-boolean v2, v3, Lcom/b/a/p;->d:Z

    if-eqz v2, :cond_3e

    :cond_51
    const/4 v2, 0x1

    goto :goto_3f

    :cond_53
    iget-object v0, p1, Lcom/b/a/ak;->l:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_6d

    if-nez v2, :cond_5a

    goto :goto_6d

    :cond_5a
    invoke-static {}, Lcom/b/a/ai;->t()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/ai;->a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/ai;->n:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {}, Lcom/b/a/a/g/h;->b()Lcom/b/a/a/g/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/a/g/h;->a(Ljavax/net/ssl/X509TrustManager;)Lcom/b/a/a/h/b;

    move-result-object v0

    goto :goto_73

    :cond_6d
    :goto_6d
    iget-object v0, p1, Lcom/b/a/ak;->l:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcom/b/a/ai;->n:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, p1, Lcom/b/a/ak;->m:Lcom/b/a/a/h/b;

    :goto_73
    iput-object v0, p0, Lcom/b/a/ai;->o:Lcom/b/a/a/h/b;

    iget-object v0, p1, Lcom/b/a/ak;->n:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lcom/b/a/ai;->p:Ljavax/net/ssl/HostnameVerifier;

    iget-object v0, p1, Lcom/b/a/ak;->o:Lcom/b/a/i;

    iget-object v1, p0, Lcom/b/a/ai;->o:Lcom/b/a/a/h/b;

    invoke-virtual {v0, v1}, Lcom/b/a/i;->a(Lcom/b/a/a/h/b;)Lcom/b/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ai;->q:Lcom/b/a/i;

    iget-object v0, p1, Lcom/b/a/ak;->p:Lcom/b/a/b;

    iput-object v0, p0, Lcom/b/a/ai;->r:Lcom/b/a/b;

    iget-object v0, p1, Lcom/b/a/ak;->q:Lcom/b/a/b;

    iput-object v0, p0, Lcom/b/a/ai;->s:Lcom/b/a/b;

    iget-object v0, p1, Lcom/b/a/ak;->r:Lcom/b/a/n;

    iput-object v0, p0, Lcom/b/a/ai;->t:Lcom/b/a/n;

    iget-object v0, p1, Lcom/b/a/ak;->s:Lcom/b/a/v;

    iput-object v0, p0, Lcom/b/a/ai;->u:Lcom/b/a/v;

    iget-boolean v0, p1, Lcom/b/a/ak;->t:Z

    iput-boolean v0, p0, Lcom/b/a/ai;->v:Z

    iget-boolean v0, p1, Lcom/b/a/ak;->u:Z

    iput-boolean v0, p0, Lcom/b/a/ai;->w:Z

    iget-boolean v0, p1, Lcom/b/a/ak;->v:Z

    iput-boolean v0, p0, Lcom/b/a/ai;->x:Z

    iget v0, p1, Lcom/b/a/ak;->w:I

    iput v0, p0, Lcom/b/a/ai;->y:I

    iget v0, p1, Lcom/b/a/ak;->x:I

    iput v0, p0, Lcom/b/a/ai;->z:I

    iget v0, p1, Lcom/b/a/ak;->y:I

    iput v0, p0, Lcom/b/a/ai;->A:I

    iget p1, p1, Lcom/b/a/ak;->z:I

    iput p1, p0, Lcom/b/a/ai;->B:I

    return-void
.end method

.method private static a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 4

    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1, p0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0
    :try_end_14
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method private static t()Ljavax/net/ssl/X509TrustManager;
    .registers 4

    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_21

    const/4 v1, 0x0

    aget-object v2, v0, v1

    instance-of v2, v2, Ljavax/net/ssl/X509TrustManager;

    if-nez v2, :cond_1c

    goto :goto_21

    :cond_1c
    aget-object v0, v0, v1

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    return-object v0

    :cond_21
    :goto_21
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected default trust managers:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_39
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_39} :catch_39

    :catch_39
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/b/a/ai;->y:I

    return v0
.end method

.method public final a(Lcom/b/a/ao;)Lcom/b/a/g;
    .registers 4

    new-instance v0, Lcom/b/a/am;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/b/a/am;-><init>(Lcom/b/a/ai;Lcom/b/a/ao;Z)V

    return-object v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/b/a/ai;->z:I

    return v0
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lcom/b/a/ai;->A:I

    return v0
.end method

.method public final d()Ljava/net/Proxy;
    .registers 2

    iget-object v0, p0, Lcom/b/a/ai;->d:Ljava/net/Proxy;

    return-object v0
.end method

.method public final e()Ljava/net/ProxySelector;
    .registers 2

    iget-object v0, p0, Lcom/b/a/ai;->i:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public final f()Lcom/b/a/s;
    .registers 2

    iget-object v0, p0, Lcom/b/a/ai;->j:Lcom/b/a/s;

    return-object v0
.end method

.method public final g()Lcom/b/a/v;
    .registers 2

    iget-object v0, p0, Lcom/b/a/ai;->u:Lcom/b/a/v;

    return-object v0
.end method

.method public final h()Ljavax/net/SocketFactory;
    .registers 2

    iget-object v0, p0, Lcom/b/a/ai;->m:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public final i()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    iget-object v0, p0, Lcom/b/a/ai;->n:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public final j()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    iget-object v0, p0, Lcom/b/a/ai;->p:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public final k()Lcom/b/a/i;
    .registers 2

    iget-object v0, p0, Lcom/b/a/ai;->q:Lcom/b/a/i;

    return-object v0
.end method

.method public final l()Lcom/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/b/a/ai;->s:Lcom/b/a/b;

    return-object v0
.end method

.method public final m()Lcom/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/b/a/ai;->r:Lcom/b/a/b;

    return-object v0
.end method

.method public final n()Lcom/b/a/n;
    .registers 2

    iget-object v0, p0, Lcom/b/a/ai;->t:Lcom/b/a/n;

    return-object v0
.end method

.method public final o()Z
    .registers 2

    iget-boolean v0, p0, Lcom/b/a/ai;->v:Z

    return v0
.end method

.method public final p()Z
    .registers 2

    iget-boolean v0, p0, Lcom/b/a/ai;->w:Z

    return v0
.end method

.method public final q()Z
    .registers 2

    iget-boolean v0, p0, Lcom/b/a/ai;->x:Z

    return v0
.end method

.method public final r()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/b/a/al;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/ai;->e:Ljava/util/List;

    return-object v0
.end method

.method public final s()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/b/a/p;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/ai;->f:Ljava/util/List;

    return-object v0
.end method
