.class public final Lb/z$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field A:I

.field a:Lb/p;

.field b:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/aa;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/l;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/w;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/w;",
            ">;"
        }
    .end annotation
.end field

.field g:Lb/r$a;

.field h:Ljava/net/ProxySelector;

.field i:Lb/n;

.field j:Lb/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field k:Lb/a/a/f;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field l:Ljavax/net/SocketFactory;

.field m:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field n:Lb/a/j/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field o:Ljavax/net/ssl/HostnameVerifier;

.field p:Lb/g;

.field q:Lb/b;

.field r:Lb/b;

.field s:Lb/k;

.field t:Lb/q;

.field u:Z

.field v:Z

.field w:Z

.field x:I

.field y:I

.field z:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/z$a;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/z$a;->f:Ljava/util/List;

    new-instance v0, Lb/p;

    invoke-direct {v0}, Lb/p;-><init>()V

    iput-object v0, p0, Lb/z$a;->a:Lb/p;

    sget-object v0, Lb/z;->a:Ljava/util/List;

    iput-object v0, p0, Lb/z$a;->c:Ljava/util/List;

    sget-object v0, Lb/z;->b:Ljava/util/List;

    iput-object v0, p0, Lb/z$a;->d:Ljava/util/List;

    sget-object v0, Lb/r;->a:Lb/r;

    invoke-static {v0}, Lb/r;->a(Lb/r;)Lb/r$a;

    move-result-object v0

    iput-object v0, p0, Lb/z$a;->g:Lb/r$a;

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lb/z$a;->h:Ljava/net/ProxySelector;

    sget-object v0, Lb/n;->a:Lb/n;

    iput-object v0, p0, Lb/z$a;->i:Lb/n;

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lb/z$a;->l:Ljavax/net/SocketFactory;

    sget-object v0, Lb/a/j/d;->a:Lb/a/j/d;

    iput-object v0, p0, Lb/z$a;->o:Ljavax/net/ssl/HostnameVerifier;

    sget-object v0, Lb/g;->a:Lb/g;

    iput-object v0, p0, Lb/z$a;->p:Lb/g;

    sget-object v0, Lb/b;->a:Lb/b;

    iput-object v0, p0, Lb/z$a;->q:Lb/b;

    sget-object v0, Lb/b;->a:Lb/b;

    iput-object v0, p0, Lb/z$a;->r:Lb/b;

    new-instance v0, Lb/k;

    invoke-direct {v0}, Lb/k;-><init>()V

    iput-object v0, p0, Lb/z$a;->s:Lb/k;

    sget-object v0, Lb/q;->a:Lb/q;

    iput-object v0, p0, Lb/z$a;->t:Lb/q;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/z$a;->u:Z

    iput-boolean v0, p0, Lb/z$a;->v:Z

    iput-boolean v0, p0, Lb/z$a;->w:Z

    const/16 v0, 0x2710

    iput v0, p0, Lb/z$a;->x:I

    iput v0, p0, Lb/z$a;->y:I

    iput v0, p0, Lb/z$a;->z:I

    const/4 v0, 0x0

    iput v0, p0, Lb/z$a;->A:I

    return-void
.end method

.method constructor <init>(Lb/z;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/z$a;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/z$a;->f:Ljava/util/List;

    iget-object v0, p1, Lb/z;->c:Lb/p;

    iput-object v0, p0, Lb/z$a;->a:Lb/p;

    iget-object v0, p1, Lb/z;->d:Ljava/net/Proxy;

    iput-object v0, p0, Lb/z$a;->b:Ljava/net/Proxy;

    iget-object v0, p1, Lb/z;->e:Ljava/util/List;

    iput-object v0, p0, Lb/z$a;->c:Ljava/util/List;

    iget-object v0, p1, Lb/z;->f:Ljava/util/List;

    iput-object v0, p0, Lb/z$a;->d:Ljava/util/List;

    iget-object v0, p0, Lb/z$a;->e:Ljava/util/List;

    iget-object v1, p1, Lb/z;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lb/z$a;->f:Ljava/util/List;

    iget-object v1, p1, Lb/z;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lb/z;->i:Lb/r$a;

    iput-object v0, p0, Lb/z$a;->g:Lb/r$a;

    iget-object v0, p1, Lb/z;->j:Ljava/net/ProxySelector;

    iput-object v0, p0, Lb/z$a;->h:Ljava/net/ProxySelector;

    iget-object v0, p1, Lb/z;->k:Lb/n;

    iput-object v0, p0, Lb/z$a;->i:Lb/n;

    iget-object v0, p1, Lb/z;->m:Lb/a/a/f;

    iput-object v0, p0, Lb/z$a;->k:Lb/a/a/f;

    iget-object v0, p1, Lb/z;->l:Lb/c;

    iput-object v0, p0, Lb/z$a;->j:Lb/c;

    iget-object v0, p1, Lb/z;->n:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lb/z$a;->l:Ljavax/net/SocketFactory;

    iget-object v0, p1, Lb/z;->o:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lb/z$a;->m:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, p1, Lb/z;->p:Lb/a/j/b;

    iput-object v0, p0, Lb/z$a;->n:Lb/a/j/b;

    iget-object v0, p1, Lb/z;->q:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lb/z$a;->o:Ljavax/net/ssl/HostnameVerifier;

    iget-object v0, p1, Lb/z;->r:Lb/g;

    iput-object v0, p0, Lb/z$a;->p:Lb/g;

    iget-object v0, p1, Lb/z;->s:Lb/b;

    iput-object v0, p0, Lb/z$a;->q:Lb/b;

    iget-object v0, p1, Lb/z;->t:Lb/b;

    iput-object v0, p0, Lb/z$a;->r:Lb/b;

    iget-object v0, p1, Lb/z;->u:Lb/k;

    iput-object v0, p0, Lb/z$a;->s:Lb/k;

    iget-object v0, p1, Lb/z;->v:Lb/q;

    iput-object v0, p0, Lb/z$a;->t:Lb/q;

    iget-boolean v0, p1, Lb/z;->w:Z

    iput-boolean v0, p0, Lb/z$a;->u:Z

    iget-boolean v0, p1, Lb/z;->x:Z

    iput-boolean v0, p0, Lb/z$a;->v:Z

    iget-boolean v0, p1, Lb/z;->y:Z

    iput-boolean v0, p0, Lb/z$a;->w:Z

    iget v0, p1, Lb/z;->z:I

    iput v0, p0, Lb/z$a;->x:I

    iget v0, p1, Lb/z;->A:I

    iput v0, p0, Lb/z$a;->y:I

    iget v0, p1, Lb/z;->B:I

    iput v0, p0, Lb/z$a;->z:I

    iget p1, p1, Lb/z;->C:I

    iput p1, p0, Lb/z$a;->A:I

    return-void
.end method

.method private static a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I
    .registers 10

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_1d

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d
    if-nez p3, :cond_27

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "unit == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_27
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long p3, v2, v4

    if-lez p3, :cond_49

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " too large."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_49
    cmp-long p3, v2, v0

    if-nez p3, :cond_68

    cmp-long p3, p1, v0

    if-lez p3, :cond_68

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " too small."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_68
    long-to-int p0, v2

    return p0
.end method

.method private a(Lb/b;)Lb/z$a;
    .registers 3

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "authenticator == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iput-object p1, p0, Lb/z$a;->r:Lb/b;

    return-object p0
.end method

.method private a(Lb/g;)Lb/z$a;
    .registers 3

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "certificatePinner == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iput-object p1, p0, Lb/z$a;->p:Lb/g;

    return-object p0
.end method

.method private a(Lb/k;)Lb/z$a;
    .registers 3

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "connectionPool == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iput-object p1, p0, Lb/z$a;->s:Lb/k;

    return-object p0
.end method

.method private a(Lb/n;)Lb/z$a;
    .registers 3

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cookieJar == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iput-object p1, p0, Lb/z$a;->i:Lb/n;

    return-object p0
.end method

.method private a(Lb/q;)Lb/z$a;
    .registers 3

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "dns == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iput-object p1, p0, Lb/z$a;->t:Lb/q;

    return-object p0
.end method

.method private a(Lb/r$a;)Lb/z$a;
    .registers 3

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "eventListenerFactory == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iput-object p1, p0, Lb/z$a;->g:Lb/r$a;

    return-object p0
.end method

.method private a(Lb/r;)Lb/z$a;
    .registers 3

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "eventListener == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    invoke-static {p1}, Lb/r;->a(Lb/r;)Lb/r$a;

    move-result-object p1

    iput-object p1, p0, Lb/z$a;->g:Lb/r$a;

    return-object p0
.end method

.method private a(Ljava/net/ProxySelector;)Lb/z$a;
    .registers 2

    iput-object p1, p0, Lb/z$a;->h:Ljava/net/ProxySelector;

    return-object p0
.end method

.method private a(Ljava/util/List;)Lb/z$a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/aa;",
            ">;)",
            "Lb/z$a;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object p1, Lb/aa;->HTTP_1_1:Lb/aa;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "protocols doesn\'t contain http/1.1: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    sget-object p1, Lb/aa;->HTTP_1_0:Lb/aa;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "protocols must not contain http/1.0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3d
    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4c

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "protocols must not contain null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4c
    sget-object p1, Lb/aa;->SPDY_3:Lb/aa;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lb/z$a;->c:Ljava/util/List;

    return-object p0
.end method

.method private a(Ljavax/net/SocketFactory;)Lb/z$a;
    .registers 3

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "socketFactory == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iput-object p1, p0, Lb/z$a;->l:Ljavax/net/SocketFactory;

    return-object p0
.end method

.method private a(Ljavax/net/ssl/SSLSocketFactory;)Lb/z$a;
    .registers 5

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "sslSocketFactory == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    invoke-static {}, Lb/a/h/e;->b()Lb/a/h/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/a/h/e;->a(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    if-nez v0, :cond_38

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to extract the trust manager on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lb/a/h/e;->b()Lb/a/h/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", sslSocketFactory is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    iput-object p1, p0, Lb/z$a;->m:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {}, Lb/a/h/e;->b()Lb/a/h/e;

    move-result-object p1

    invoke-virtual {p1, v0}, Lb/a/h/e;->a(Ljavax/net/ssl/X509TrustManager;)Lb/a/j/b;

    move-result-object p1

    iput-object p1, p0, Lb/z$a;->n:Lb/a/j/b;

    return-object p0
.end method

.method private a(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lb/z$a;
    .registers 3

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "sslSocketFactory == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    if-nez p2, :cond_14

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "trustManager == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    iput-object p1, p0, Lb/z$a;->m:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {}, Lb/a/h/e;->b()Lb/a/h/e;

    move-result-object p1

    invoke-virtual {p1, p2}, Lb/a/h/e;->a(Ljavax/net/ssl/X509TrustManager;)Lb/a/j/b;

    move-result-object p1

    iput-object p1, p0, Lb/z$a;->n:Lb/a/j/b;

    return-object p0
.end method

.method private a(Lb/a/a/f;)V
    .registers 2
    .param p1    # Lb/a/a/f;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lb/z$a;->k:Lb/a/a/f;

    const/4 p1, 0x0

    iput-object p1, p0, Lb/z$a;->j:Lb/c;

    return-void
.end method

.method private b(Lb/b;)Lb/z$a;
    .registers 3

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "proxyAuthenticator == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iput-object p1, p0, Lb/z$a;->q:Lb/b;

    return-object p0
.end method

.method private b(Lb/w;)Lb/z$a;
    .registers 3

    iget-object v0, p0, Lb/z$a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private b(Ljava/util/List;)Lb/z$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/l;",
            ">;)",
            "Lb/z$a;"
        }
    .end annotation

    invoke-static {p1}, Lb/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lb/z$a;->d:Ljava/util/List;

    return-object p0
.end method

.method private d(JLjava/util/concurrent/TimeUnit;)Lb/z$a;
    .registers 5

    const-string v0, "interval"

    invoke-static {v0, p1, p2, p3}, Lb/z$a;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lb/z$a;->A:I

    return-object p0
.end method

.method private f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb/w;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/z$a;->e:Ljava/util/List;

    return-object v0
.end method

.method private g()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb/w;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/z$a;->f:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a()Lb/z$a;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lb/z$a;->j:Lb/c;

    iput-object v0, p0, Lb/z$a;->k:Lb/a/a/f;

    return-object p0
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;)Lb/z$a;
    .registers 5

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lb/z$a;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lb/z$a;->x:I

    return-object p0
.end method

.method public final a(Lb/p;)Lb/z$a;
    .registers 2

    iput-object p1, p0, Lb/z$a;->a:Lb/p;

    return-object p0
.end method

.method public final a(Lb/w;)Lb/z$a;
    .registers 3

    iget-object v0, p0, Lb/z$a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a(Ljava/net/Proxy;)Lb/z$a;
    .registers 2
    .param p1    # Ljava/net/Proxy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lb/z$a;->b:Ljava/net/Proxy;

    return-object p0
.end method

.method public final a(Ljavax/net/ssl/HostnameVerifier;)Lb/z$a;
    .registers 2

    iput-object p1, p0, Lb/z$a;->o:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public final b()Lb/z$a;
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/z$a;->u:Z

    return-object p0
.end method

.method public final b(JLjava/util/concurrent/TimeUnit;)Lb/z$a;
    .registers 5

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lb/z$a;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lb/z$a;->y:I

    return-object p0
.end method

.method public final c()Lb/z$a;
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/z$a;->v:Z

    return-object p0
.end method

.method public final c(JLjava/util/concurrent/TimeUnit;)Lb/z$a;
    .registers 5

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lb/z$a;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lb/z$a;->z:I

    return-object p0
.end method

.method public final d()Lb/z$a;
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/z$a;->w:Z

    return-object p0
.end method

.method public final e()Lb/z;
    .registers 2

    new-instance v0, Lb/z;

    invoke-direct {v0, p0}, Lb/z;-><init>(Lb/z$a;)V

    return-object v0
.end method
