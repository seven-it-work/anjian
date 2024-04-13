.class public abstract Lcom/android/volley/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/l$b;,
        Lcom/android/volley/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/volley/l<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final m:Ljava/lang/String; = "UTF-8"

.field private static final p:J = 0xbb8L


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field final c:I

.field final d:Lcom/android/volley/n$a;

.field e:Ljava/lang/Integer;

.field f:Lcom/android/volley/m;

.field protected g:Z

.field public h:Z

.field i:Z

.field public j:Lcom/android/volley/p;

.field public k:Lcom/android/volley/b$a;

.field public l:Ljava/lang/Object;

.field private final n:Lcom/android/volley/t$a;

.field private o:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/volley/n$a;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/volley/t$a;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/android/volley/t$a;

    invoke-direct {v0}, Lcom/android/volley/t$a;-><init>()V

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    iput-object v0, p0, Lcom/android/volley/l;->n:Lcom/android/volley/t$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/l;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/l;->h:Z

    iput-boolean v0, p0, Lcom/android/volley/l;->i:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/volley/l;->o:J

    iput-object v1, p0, Lcom/android/volley/l;->k:Lcom/android/volley/b$a;

    iput p1, p0, Lcom/android/volley/l;->a:I

    iput-object p2, p0, Lcom/android/volley/l;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/volley/l;->d:Lcom/android/volley/n$a;

    new-instance p1, Lcom/android/volley/d;

    invoke-direct {p1}, Lcom/android/volley/d;-><init>()V

    iput-object p1, p0, Lcom/android/volley/l;->j:Lcom/android/volley/p;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_42

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_42

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_42

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_42
    iput v0, p0, Lcom/android/volley/l;->c:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/android/volley/n$a;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/volley/l;-><init>(ILjava/lang/String;Lcom/android/volley/n$a;)V

    return-void
.end method

.method private a(I)Lcom/android/volley/l;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/volley/l<",
            "*>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/volley/l;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method private a(Lcom/android/volley/b$a;)Lcom/android/volley/l;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/b$a;",
            ")",
            "Lcom/android/volley/l<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/volley/l;->k:Lcom/android/volley/b$a;

    return-object p0
.end method

.method private a(Lcom/android/volley/m;)Lcom/android/volley/l;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/m;",
            ")",
            "Lcom/android/volley/l<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/volley/l;->f:Lcom/android/volley/m;

    return-object p0
.end method

.method private a(Lcom/android/volley/p;)Lcom/android/volley/l;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/p;",
            ")",
            "Lcom/android/volley/l<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/volley/l;->j:Lcom/android/volley/p;

    return-object p0
.end method

.method protected static a(Lcom/android/volley/s;)Lcom/android/volley/s;
    .registers 1

    return-object p0
.end method

.method static synthetic a(Lcom/android/volley/l;)Lcom/android/volley/t$a;
    .registers 1

    iget-object p0, p0, Lcom/android/volley/l;->n:Lcom/android/volley/t$a;

    return-object p0
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_5
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_46
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_46} :catch_47

    return-object p0

    :catch_47
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encoding not supported: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private b(Lcom/android/volley/l;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/l<",
            "TT;>;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/volley/l;->h()Lcom/android/volley/l$b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/l;->h()Lcom/android/volley/l$b;

    move-result-object v1

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/android/volley/l;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lcom/android/volley/l;->e:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    :cond_18
    invoke-virtual {v1}, Lcom/android/volley/l$b;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Lcom/android/volley/l$b;->ordinal()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method private b(Ljava/lang/Object;)Lcom/android/volley/l;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/volley/l<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/volley/l;->l:Ljava/lang/Object;

    return-object p0
.end method

.method private b(Lcom/android/volley/s;)V
    .registers 3

    iget-object v0, p0, Lcom/android/volley/l;->d:Lcom/android/volley/n$a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/volley/l;->d:Lcom/android/volley/n$a;

    invoke-interface {v0, p1}, Lcom/android/volley/n$a;->a(Lcom/android/volley/s;)V

    :cond_9
    return-void
.end method

.method private static c(Ljava/lang/String;)I
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method private j()I
    .registers 2

    iget v0, p0, Lcom/android/volley/l;->a:I

    return v0
.end method

.method private k()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/volley/l;->l:Ljava/lang/Object;

    return-object v0
.end method

.method private l()Lcom/android/volley/n$a;
    .registers 2

    iget-object v0, p0, Lcom/android/volley/l;->d:Lcom/android/volley/n$a;

    return-object v0
.end method

.method private m()I
    .registers 2

    iget v0, p0, Lcom/android/volley/l;->c:I

    return v0
.end method

.method private n()I
    .registers 3

    iget-object v0, p0, Lcom/android/volley/l;->e:Ljava/lang/Integer;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getSequence called before setSequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/android/volley/l;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private o()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/volley/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method private p()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/volley/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method private q()Lcom/android/volley/b$a;
    .registers 2

    iget-object v0, p0, Lcom/android/volley/l;->k:Lcom/android/volley/b$a;

    return-object v0
.end method

.method private r()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/l;->h:Z

    return-void
.end method

.method private s()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/a;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/android/volley/l;->e()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static t()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "UTF-8"

    return-object v0
.end method

.method private static u()Ljava/lang/String;
    .registers 1

    const-string v0, "UTF-8"

    return-object v0
.end method

.method private v()Lcom/android/volley/l;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/volley/l<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/l;->g:Z

    return-object p0
.end method

.method private w()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/volley/l;->g:Z

    return v0
.end method

.method private x()Lcom/android/volley/p;
    .registers 2

    iget-object v0, p0, Lcom/android/volley/l;->j:Lcom/android/volley/p;

    return-object v0
.end method

.method private y()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/l;->i:Z

    return-void
.end method

.method private z()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/volley/l;->i:Z

    return v0
.end method


# virtual methods
.method public abstract a(Lcom/android/volley/i;)Lcom/android/volley/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/i;",
            ")",
            "Lcom/android/volley/n<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final a(Ljava/lang/String;)V
    .registers 6

    sget-boolean v0, Lcom/android/volley/t$a;->a:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/volley/l;->n:Lcom/android/volley/t$a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/volley/t$a;->a(Ljava/lang/String;J)V

    return-void

    :cond_12
    iget-wide v0, p0, Lcom/android/volley/l;->o:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_20

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/volley/l;->o:J

    :cond_20
    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/volley/l;->h:Z

    return v0
.end method

.method public b()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/a;
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method final b(Ljava/lang/String;)V
    .registers 12

    iget-object v0, p0, Lcom/android/volley/l;->f:Lcom/android/volley/m;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/volley/l;->f:Lcom/android/volley/m;

    iget-object v4, v0, Lcom/android/volley/m;->b:Ljava/util/Set;

    monitor-enter v4

    :try_start_c
    iget-object v5, v0, Lcom/android/volley/m;->b:Ljava/util/Set;

    invoke-interface {v5, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_5d

    iget-object v5, v0, Lcom/android/volley/m;->d:Ljava/util/List;

    monitor-enter v5

    :try_start_15
    iget-object v4, v0, Lcom/android/volley/m;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1b

    :cond_25
    monitor-exit v5
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_5a

    iget-boolean v4, p0, Lcom/android/volley/l;->g:Z

    if-eqz v4, :cond_60

    iget-object v4, v0, Lcom/android/volley/m;->a:Ljava/util/Map;

    monitor-enter v4

    :try_start_2d
    iget-object v5, p0, Lcom/android/volley/l;->b:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/volley/m;->a:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Queue;

    if-eqz v6, :cond_55

    sget-boolean v7, Lcom/android/volley/t;->b:Z

    if-eqz v7, :cond_50

    const-string v7, "Releasing %d waiting requests for cacheKey=%s."

    new-array v8, v3, [Ljava/lang/Object;

    invoke-interface {v6}, Ljava/util/Queue;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    aput-object v5, v8, v1

    invoke-static {v7, v8}, Lcom/android/volley/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_50
    iget-object v0, v0, Lcom/android/volley/m;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/PriorityBlockingQueue;->addAll(Ljava/util/Collection;)Z

    :cond_55
    monitor-exit v4

    goto :goto_60

    :catchall_57
    move-exception p1

    monitor-exit v4
    :try_end_59
    .catchall {:try_start_2d .. :try_end_59} :catchall_57

    throw p1

    :catchall_5a
    move-exception p1

    :try_start_5b
    monitor-exit v5
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw p1

    :catchall_5d
    move-exception p1

    :try_start_5e
    monitor-exit v4
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw p1

    :cond_60
    :goto_60
    sget-boolean v0, Lcom/android/volley/t$a;->a:Z

    if-eqz v0, :cond_97

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_88

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/android/volley/l$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/volley/l$1;-><init>(Lcom/android/volley/l;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_88
    iget-object v2, p0, Lcom/android/volley/l;->n:Lcom/android/volley/t$a;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/volley/t$a;->a(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/android/volley/l;->n:Lcom/android/volley/t$a;

    invoke-virtual {p0}, Lcom/android/volley/l;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/volley/t$a;->a(Ljava/lang/String;)V

    return-void

    :cond_97
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/volley/l;->o:J

    sub-long v8, v4, v6

    const-wide/16 v4, 0xbb8

    cmp-long p1, v8, v4

    if-ltz p1, :cond_b8

    const-string p1, "%d ms: %s"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0}, Lcom/android/volley/l;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/android/volley/t;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b8
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/android/volley/l;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/android/volley/l;

    invoke-virtual {p0}, Lcom/android/volley/l;->h()Lcom/android/volley/l$b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/l;->h()Lcom/android/volley/l$b;

    move-result-object v1

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/android/volley/l;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lcom/android/volley/l;->e:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    :cond_1a
    invoke-virtual {v1}, Lcom/android/volley/l$b;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Lcom/android/volley/l$b;->ordinal()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public d()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/a;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/android/volley/l;->e()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_13

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lcom/android/volley/l;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method protected e()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/a;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    const-string v0, "application/x-www-form-urlencoded; charset=UTF-8"

    return-object v0
.end method

.method public g()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/a;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/volley/l;->e()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_13

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lcom/android/volley/l;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Lcom/android/volley/l$b;
    .registers 2

    sget-object v0, Lcom/android/volley/l$b;->NORMAL:Lcom/android/volley/l$b;

    return-object v0
.end method

.method public final i()I
    .registers 2

    iget-object v0, p0, Lcom/android/volley/l;->j:Lcom/android/volley/p;

    invoke-interface {v0}, Lcom/android/volley/p;->a()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/volley/l;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lcom/android/volley/l;->h:Z

    if-eqz v2, :cond_20

    const-string v2, "[X] "

    goto :goto_22

    :cond_20
    const-string v2, "[ ] "

    :goto_22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/volley/l;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/volley/l;->h()Lcom/android/volley/l$b;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/volley/l;->e:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
