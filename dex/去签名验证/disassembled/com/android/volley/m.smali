.class public final Lcom/android/volley/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/m$a;,
        Lcom/android/volley/m$b;
    }
.end annotation


# static fields
.field private static final g:I = 0x4


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Queue<",
            "Lcom/android/volley/l<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/volley/l<",
            "*>;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/android/volley/l<",
            "*>;>;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/volley/m$b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final f:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/android/volley/l<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final h:Lcom/android/volley/b;

.field private final i:Lcom/android/volley/f;

.field private final j:Lcom/android/volley/o;

.field private k:[Lcom/android/volley/g;

.field private l:Lcom/android/volley/c;


# direct methods
.method private constructor <init>(Lcom/android/volley/b;Lcom/android/volley/f;)V
    .registers 6

    new-instance v0, Lcom/android/volley/e;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/android/volley/e;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/volley/m;-><init>(Lcom/android/volley/b;Lcom/android/volley/f;Lcom/android/volley/o;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/b;Lcom/android/volley/f;B)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/volley/m;-><init>(Lcom/android/volley/b;Lcom/android/volley/f;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/volley/b;Lcom/android/volley/f;Lcom/android/volley/o;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/volley/m;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/volley/m;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/volley/m;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/volley/m;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/volley/m;->f:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/volley/m;->d:Ljava/util/List;

    iput-object p1, p0, Lcom/android/volley/m;->h:Lcom/android/volley/b;

    iput-object p2, p0, Lcom/android/volley/m;->i:Lcom/android/volley/f;

    const/4 p1, 0x4

    new-array p1, p1, [Lcom/android/volley/g;

    iput-object p1, p0, Lcom/android/volley/m;->k:[Lcom/android/volley/g;

    iput-object p3, p0, Lcom/android/volley/m;->j:Lcom/android/volley/o;

    return-void
.end method

.method private a(Lcom/android/volley/m$a;)V
    .registers 6

    iget-object v0, p0, Lcom/android/volley/m;->b:Ljava/util/Set;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/volley/m;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/l;

    invoke-interface {p1, v2}, Lcom/android/volley/m$a;->a(Lcom/android/volley/l;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/volley/l;->h:Z

    goto :goto_9

    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p1
.end method

.method private a(Lcom/android/volley/m$b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/m$b<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/volley/m;->d:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/volley/m;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method private b()V
    .registers 4

    iget-object v0, p0, Lcom/android/volley/m;->l:Lcom/android/volley/c;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/volley/m;->l:Lcom/android/volley/c;

    iput-boolean v1, v0, Lcom/android/volley/c;->a:Z

    invoke-virtual {v0}, Lcom/android/volley/c;->interrupt()V

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iget-object v2, p0, Lcom/android/volley/m;->k:[Lcom/android/volley/g;

    array-length v2, v2

    if-ge v0, v2, :cond_24

    iget-object v2, p0, Lcom/android/volley/m;->k:[Lcom/android/volley/g;

    aget-object v2, v2, v0

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/android/volley/m;->k:[Lcom/android/volley/g;

    aget-object v2, v2, v0

    iput-boolean v1, v2, Lcom/android/volley/g;->a:Z

    invoke-virtual {v2}, Lcom/android/volley/g;->interrupt()V

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_24
    return-void
.end method

.method private b(Lcom/android/volley/l;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/l<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/volley/m;->b:Ljava/util/Set;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/volley/m;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_58

    iget-object v1, p0, Lcom/android/volley/m;->d:Ljava/util/List;

    monitor-enter v1

    :try_start_c
    iget-object v0, p0, Lcom/android/volley/m;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_12

    :cond_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_55

    iget-boolean v0, p1, Lcom/android/volley/l;->g:Z

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/volley/m;->a:Ljava/util/Map;

    monitor-enter v0

    :try_start_24
    iget-object p1, p1, Lcom/android/volley/l;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/volley/m;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    if-eqz v1, :cond_4f

    sget-boolean v2, Lcom/android/volley/t;->b:Z

    if-eqz v2, :cond_4a

    const-string v2, "Releasing %d waiting requests for cacheKey=%s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/android/volley/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4a
    iget-object p1, p0, Lcom/android/volley/m;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->addAll(Ljava/util/Collection;)Z

    :cond_4f
    monitor-exit v0

    return-void

    :catchall_51
    move-exception p1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_24 .. :try_end_53} :catchall_51

    throw p1

    :cond_54
    return-void

    :catchall_55
    move-exception p1

    :try_start_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw p1

    :catchall_58
    move-exception p1

    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw p1
.end method

.method private b(Lcom/android/volley/m$b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/m$b<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/volley/m;->d:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/volley/m;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method private c()I
    .registers 2

    iget-object v0, p0, Lcom/android/volley/m;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method private d()Lcom/android/volley/b;
    .registers 2

    iget-object v0, p0, Lcom/android/volley/m;->h:Lcom/android/volley/b;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/volley/l;)Lcom/android/volley/l;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/l<",
            "TT;>;)",
            "Lcom/android/volley/l<",
            "TT;>;"
        }
    .end annotation

    iput-object p0, p1, Lcom/android/volley/l;->f:Lcom/android/volley/m;

    iget-object v0, p0, Lcom/android/volley/m;->b:Ljava/util/Set;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/android/volley/m;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_6a

    iget-object v0, p0, Lcom/android/volley/m;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/android/volley/l;->e:Ljava/lang/Integer;

    const-string v0, "add-to-queue"

    invoke-virtual {p1, v0}, Lcom/android/volley/l;->a(Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/android/volley/l;->g:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/volley/m;->f:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_26
    iget-object v1, p0, Lcom/android/volley/m;->a:Ljava/util/Map;

    monitor-enter v1

    :try_start_29
    iget-object v0, p1, Lcom/android/volley/l;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/volley/m;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    iget-object v2, p0, Lcom/android/volley/m;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Queue;

    if-nez v2, :cond_42

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    :cond_42
    invoke-interface {v2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/volley/m;->a:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Lcom/android/volley/t;->b:Z

    if-eqz v2, :cond_65

    const-string v2, "Request for cacheKey=%s is in flight, putting on hold."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/android/volley/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_65

    :cond_5a
    iget-object v2, p0, Lcom/android/volley/m;->a:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/volley/m;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_65
    :goto_65
    monitor-exit v1

    return-object p1

    :catchall_67
    move-exception p1

    monitor-exit v1
    :try_end_69
    .catchall {:try_start_29 .. :try_end_69} :catchall_67

    throw p1

    :catchall_6a
    move-exception p1

    :try_start_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw p1
.end method

.method public final a()V
    .registers 7

    iget-object v0, p0, Lcom/android/volley/m;->l:Lcom/android/volley/c;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/volley/m;->l:Lcom/android/volley/c;

    iput-boolean v1, v0, Lcom/android/volley/c;->a:Z

    invoke-virtual {v0}, Lcom/android/volley/c;->interrupt()V

    :cond_c
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_e
    iget-object v3, p0, Lcom/android/volley/m;->k:[Lcom/android/volley/g;

    array-length v3, v3

    if-ge v2, v3, :cond_25

    iget-object v3, p0, Lcom/android/volley/m;->k:[Lcom/android/volley/g;

    aget-object v3, v3, v2

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/android/volley/m;->k:[Lcom/android/volley/g;

    aget-object v3, v3, v2

    iput-boolean v1, v3, Lcom/android/volley/g;->a:Z

    invoke-virtual {v3}, Lcom/android/volley/g;->interrupt()V

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_25
    new-instance v1, Lcom/android/volley/c;

    iget-object v2, p0, Lcom/android/volley/m;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/android/volley/m;->f:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v4, p0, Lcom/android/volley/m;->h:Lcom/android/volley/b;

    iget-object v5, p0, Lcom/android/volley/m;->j:Lcom/android/volley/o;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/volley/c;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/b;Lcom/android/volley/o;)V

    iput-object v1, p0, Lcom/android/volley/m;->l:Lcom/android/volley/c;

    iget-object v1, p0, Lcom/android/volley/m;->l:Lcom/android/volley/c;

    invoke-virtual {v1}, Lcom/android/volley/c;->start()V

    :goto_39
    iget-object v1, p0, Lcom/android/volley/m;->k:[Lcom/android/volley/g;

    array-length v1, v1

    if-ge v0, v1, :cond_55

    new-instance v1, Lcom/android/volley/g;

    iget-object v2, p0, Lcom/android/volley/m;->f:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/android/volley/m;->i:Lcom/android/volley/f;

    iget-object v4, p0, Lcom/android/volley/m;->h:Lcom/android/volley/b;

    iget-object v5, p0, Lcom/android/volley/m;->j:Lcom/android/volley/o;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/volley/g;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/f;Lcom/android/volley/b;Lcom/android/volley/o;)V

    iget-object v2, p0, Lcom/android/volley/m;->k:[Lcom/android/volley/g;

    aput-object v1, v2, v0

    invoke-virtual {v1}, Lcom/android/volley/g;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_55
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 3

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot cancelAll with a null tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance v0, Lcom/android/volley/m$1;

    invoke-direct {v0, p0, p1}, Lcom/android/volley/m$1;-><init>(Lcom/android/volley/m;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/volley/m;->a(Lcom/android/volley/m$a;)V

    return-void
.end method
