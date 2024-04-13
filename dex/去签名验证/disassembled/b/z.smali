.class public Lb/z;
.super Ljava/lang/Object;

# interfaces
.implements Lb/ai$a;
.implements Lb/e$a;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/z$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/aa;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:I

.field public final B:I

.field public final C:I

.field final c:Lb/p;

.field public final d:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/aa;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/l;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/w;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/w;",
            ">;"
        }
    .end annotation
.end field

.field final i:Lb/r$a;

.field public final j:Ljava/net/ProxySelector;

.field public final k:Lb/n;

.field final l:Lb/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final m:Lb/a/a/f;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final n:Ljavax/net/SocketFactory;

.field public final o:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final p:Lb/a/j/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final q:Ljavax/net/ssl/HostnameVerifier;

.field public final r:Lb/g;

.field public final s:Lb/b;

.field public final t:Lb/b;

.field public final u:Lb/k;

.field public final v:Lb/q;

.field public final w:Z

.field public final x:Z

.field public final y:Z

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x2

    new-array v1, v0, [Lb/aa;

    sget-object v2, Lb/aa;->HTTP_2:Lb/aa;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lb/aa;->HTTP_1_1:Lb/aa;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lb/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lb/z;->a:Ljava/util/List;

    new-array v0, v0, [Lb/l;

    sget-object v1, Lb/l;->a:Lb/l;

    aput-object v1, v0, v3

    sget-object v1, Lb/l;->c:Lb/l;

    aput-object v1, v0, v4

    invoke-static {v0}, Lb/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lb/z;->b:Ljava/util/List;

    new-instance v0, Lb/z$1;

    invoke-direct {v0}, Lb/z$1;-><init>()V

    sput-object v0, Lb/a/a;->a:Lb/a/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    new-instance v0, Lb/z$a;

    invoke-direct {v0}, Lb/z$a;-><init>()V

    invoke-direct {p0, v0}, Lb/z;-><init>(Lb/z$a;)V

    return-void
.end method

.method constructor <init>(Lb/z$a;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lb/z$a;->a:Lb/p;

    iput-object v0, p0, Lb/z;->c:Lb/p;

    iget-object v0, p1, Lb/z$a;->b:Ljava/net/Proxy;

    iput-object v0, p0, Lb/z;->d:Ljava/net/Proxy;

    iget-object v0, p1, Lb/z$a;->c:Ljava/util/List;

    iput-object v0, p0, Lb/z;->e:Ljava/util/List;

    iget-object v0, p1, Lb/z$a;->d:Ljava/util/List;

    iput-object v0, p0, Lb/z;->f:Ljava/util/List;

    iget-object v0, p1, Lb/z$a;->e:Ljava/util/List;

    invoke-static {v0}, Lb/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lb/z;->g:Ljava/util/List;

    iget-object v0, p1, Lb/z$a;->f:Ljava/util/List;

    invoke-static {v0}, Lb/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lb/z;->h:Ljava/util/List;

    iget-object v0, p1, Lb/z$a;->g:Lb/r$a;

    iput-object v0, p0, Lb/z;->i:Lb/r$a;

    iget-object v0, p1, Lb/z$a;->h:Ljava/net/ProxySelector;

    iput-object v0, p0, Lb/z;->j:Ljava/net/ProxySelector;

    iget-object v0, p1, Lb/z$a;->i:Lb/n;

    iput-object v0, p0, Lb/z;->k:Lb/n;

    iget-object v0, p1, Lb/z$a;->j:Lb/c;

    iput-object v0, p0, Lb/z;->l:Lb/c;

    iget-object v0, p1, Lb/z$a;->k:Lb/a/a/f;

    iput-object v0, p0, Lb/z;->m:Lb/a/a/f;

    iget-object v0, p1, Lb/z$a;->l:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lb/z;->n:Ljavax/net/SocketFactory;

    iget-object v0, p0, Lb/z;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/l;

    if-nez v2, :cond_55

    iget-boolean v2, v3, Lb/l;->d:Z

    if-eqz v2, :cond_42

    :cond_55
    const/4 v2, 0x1

    goto :goto_43

    :cond_57
    iget-object v0, p1, Lb/z$a;->m:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_71

    if-nez v2, :cond_5e

    goto :goto_71

    :cond_5e
    invoke-static {}, Lb/z;->b()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-static {v0}, Lb/z;->a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lb/z;->o:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {}, Lb/a/h/e;->b()Lb/a/h/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/a/h/e;->a(Ljavax/net/ssl/X509TrustManager;)Lb/a/j/b;

    move-result-object v0

    goto :goto_77

    :cond_71
    :goto_71
    iget-object v0, p1, Lb/z$a;->m:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lb/z;->o:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, p1, Lb/z$a;->n:Lb/a/j/b;

    :goto_77
    iput-object v0, p0, Lb/z;->p:Lb/a/j/b;

    iget-object v0, p1, Lb/z$a;->o:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lb/z;->q:Ljavax/net/ssl/HostnameVerifier;

    iget-object v0, p1, Lb/z$a;->p:Lb/g;

    iget-object v1, p0, Lb/z;->p:Lb/a/j/b;

    iget-object v2, v0, Lb/g;->c:Lb/a/j/b;

    invoke-static {v2, v1}, Lb/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    goto :goto_92

    :cond_8a
    new-instance v2, Lb/g;

    iget-object v0, v0, Lb/g;->b:Ljava/util/Set;

    invoke-direct {v2, v0, v1}, Lb/g;-><init>(Ljava/util/Set;Lb/a/j/b;)V

    move-object v0, v2

    :goto_92
    iput-object v0, p0, Lb/z;->r:Lb/g;

    iget-object v0, p1, Lb/z$a;->q:Lb/b;

    iput-object v0, p0, Lb/z;->s:Lb/b;

    iget-object v0, p1, Lb/z$a;->r:Lb/b;

    iput-object v0, p0, Lb/z;->t:Lb/b;

    iget-object v0, p1, Lb/z$a;->s:Lb/k;

    iput-object v0, p0, Lb/z;->u:Lb/k;

    iget-object v0, p1, Lb/z$a;->t:Lb/q;

    iput-object v0, p0, Lb/z;->v:Lb/q;

    iget-boolean v0, p1, Lb/z$a;->u:Z

    iput-boolean v0, p0, Lb/z;->w:Z

    iget-boolean v0, p1, Lb/z$a;->v:Z

    iput-boolean v0, p0, Lb/z;->x:Z

    iget-boolean v0, p1, Lb/z$a;->w:Z

    iput-boolean v0, p0, Lb/z;->y:Z

    iget v0, p1, Lb/z$a;->x:I

    iput v0, p0, Lb/z;->z:I

    iget v0, p1, Lb/z$a;->y:I

    iput v0, p0, Lb/z;->A:I

    iget v0, p1, Lb/z$a;->z:I

    iput v0, p0, Lb/z;->B:I

    iget p1, p1, Lb/z$a;->A:I

    iput p1, p0, Lb/z;->C:I

    return-void
.end method

.method private A()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb/w;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/z;->h:Ljava/util/List;

    return-object v0
.end method

.method private B()Lb/r$a;
    .registers 2

    iget-object v0, p0, Lb/z;->i:Lb/r$a;

    return-object v0
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

.method private static b()Ljavax/net/ssl/X509TrustManager;
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

.method private c()I
    .registers 2

    iget v0, p0, Lb/z;->z:I

    return v0
.end method

.method private d()I
    .registers 2

    iget v0, p0, Lb/z;->A:I

    return v0
.end method

.method private e()I
    .registers 2

    iget v0, p0, Lb/z;->B:I

    return v0
.end method

.method private f()I
    .registers 2

    iget v0, p0, Lb/z;->C:I

    return v0
.end method

.method private g()Ljava/net/Proxy;
    .registers 2

    iget-object v0, p0, Lb/z;->d:Ljava/net/Proxy;

    return-object v0
.end method

.method private h()Ljava/net/ProxySelector;
    .registers 2

    iget-object v0, p0, Lb/z;->j:Ljava/net/ProxySelector;

    return-object v0
.end method

.method private i()Lb/n;
    .registers 2

    iget-object v0, p0, Lb/z;->k:Lb/n;

    return-object v0
.end method

.method private j()Lb/c;
    .registers 2

    iget-object v0, p0, Lb/z;->l:Lb/c;

    return-object v0
.end method

.method private k()Lb/a/a/f;
    .registers 2

    iget-object v0, p0, Lb/z;->l:Lb/c;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lb/z;->l:Lb/c;

    iget-object v0, v0, Lb/c;->a:Lb/a/a/f;

    return-object v0

    :cond_9
    iget-object v0, p0, Lb/z;->m:Lb/a/a/f;

    return-object v0
.end method

.method private l()Lb/q;
    .registers 2

    iget-object v0, p0, Lb/z;->v:Lb/q;

    return-object v0
.end method

.method private m()Ljavax/net/SocketFactory;
    .registers 2

    iget-object v0, p0, Lb/z;->n:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method private n()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    iget-object v0, p0, Lb/z;->o:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method private o()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    iget-object v0, p0, Lb/z;->q:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method private p()Lb/g;
    .registers 2

    iget-object v0, p0, Lb/z;->r:Lb/g;

    return-object v0
.end method

.method private q()Lb/b;
    .registers 2

    iget-object v0, p0, Lb/z;->t:Lb/b;

    return-object v0
.end method

.method private r()Lb/b;
    .registers 2

    iget-object v0, p0, Lb/z;->s:Lb/b;

    return-object v0
.end method

.method private s()Lb/k;
    .registers 2

    iget-object v0, p0, Lb/z;->u:Lb/k;

    return-object v0
.end method

.method private t()Z
    .registers 2

    iget-boolean v0, p0, Lb/z;->w:Z

    return v0
.end method

.method private u()Z
    .registers 2

    iget-boolean v0, p0, Lb/z;->x:Z

    return v0
.end method

.method private v()Z
    .registers 2

    iget-boolean v0, p0, Lb/z;->y:Z

    return v0
.end method

.method private w()Lb/p;
    .registers 2

    iget-object v0, p0, Lb/z;->c:Lb/p;

    return-object v0
.end method

.method private x()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb/aa;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/z;->e:Ljava/util/List;

    return-object v0
.end method

.method private y()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb/l;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/z;->f:Ljava/util/List;

    return-object v0
.end method

.method private z()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb/w;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/z;->g:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(Lb/ac;Lb/aj;)Lb/ai;
    .registers 7

    new-instance v0, Lb/a/k/a;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-direct {v0, p1, p2, v1}, Lb/a/k/a;-><init>(Lb/ac;Lb/aj;Ljava/util/Random;)V

    invoke-virtual {p0}, Lb/z;->a()Lb/z$a;

    move-result-object p1

    sget-object p2, Lb/a/k/a;->a:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object p2, Lb/aa;->HTTP_1_1:Lb/aa;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_31

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "protocols doesn\'t contain http/1.1: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    sget-object p2, Lb/aa;->HTTP_1_0:Lb/aa;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4d

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "protocols must not contain http/1.0: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4d
    const/4 p2, 0x0

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5c

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "protocols must not contain null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5c
    sget-object p2, Lb/aa;->SPDY_3:Lb/aa;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lb/z$a;->c:Ljava/util/List;

    invoke-virtual {p1}, Lb/z$a;->e()Lb/z;

    move-result-object p1

    iget p2, p1, Lb/z;->C:I

    iget-object v1, v0, Lb/a/k/a;->b:Lb/ac;

    invoke-virtual {v1}, Lb/ac;->c()Lb/ac$a;

    move-result-object v1

    const-string v2, "Upgrade"

    const-string v3, "websocket"

    invoke-virtual {v1, v2, v3}, Lb/ac$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/ac$a;

    move-result-object v1

    const-string v2, "Connection"

    const-string v3, "Upgrade"

    invoke-virtual {v1, v2, v3}, Lb/ac$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/ac$a;

    move-result-object v1

    const-string v2, "Sec-WebSocket-Key"

    iget-object v3, v0, Lb/a/k/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lb/ac$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/ac$a;

    move-result-object v1

    const-string v2, "Sec-WebSocket-Version"

    const-string v3, "13"

    invoke-virtual {v1, v2, v3}, Lb/ac$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/ac$a;

    move-result-object v1

    invoke-virtual {v1}, Lb/ac$a;->d()Lb/ac;

    move-result-object v1

    sget-object v2, Lb/a/a;->a:Lb/a/a;

    invoke-virtual {v2, p1, v1}, Lb/a/a;->a(Lb/z;Lb/ac;)Lb/e;

    move-result-object p1

    iput-object p1, v0, Lb/a/k/a;->f:Lb/e;

    iget-object p1, v0, Lb/a/k/a;->f:Lb/e;

    new-instance v2, Lb/a/k/a$2;

    invoke-direct {v2, v0, v1, p2}, Lb/a/k/a$2;-><init>(Lb/a/k/a;Lb/ac;I)V

    invoke-interface {p1, v2}, Lb/e;->a(Lb/f;)V

    return-object v0
.end method

.method public final a(Lb/ac;)Lb/e;
    .registers 4

    new-instance v0, Lb/ab;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lb/ab;-><init>(Lb/z;Lb/ac;Z)V

    return-object v0
.end method

.method public final a()Lb/z$a;
    .registers 2

    new-instance v0, Lb/z$a;

    invoke-direct {v0, p0}, Lb/z$a;-><init>(Lb/z;)V

    return-object v0
.end method
