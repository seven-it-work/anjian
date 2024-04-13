.class public final Lcom/b/a/u;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/Runnable;

.field private d:Ljava/util/concurrent/ExecutorService;

.field private final e:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/b/a/an;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/b/a/an;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/b/a/am;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    iput v0, p0, Lcom/b/a/u;->a:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/b/a/u;->b:I

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/b/a/u;->e:Ljava/util/Deque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/b/a/u;->f:Ljava/util/Deque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/b/a/u;->g:Ljava/util/Deque;

    return-void
.end method

.method private declared-synchronized a()Ljava/util/concurrent/ExecutorService;
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/b/a/u;->d:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_21

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v1, "OkHttp Dispatcher"

    const/4 v8, 0x0

    invoke-static {v1, v8}, Lcom/b/a/a/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/b/a/u;->d:Ljava/util/concurrent/ExecutorService;

    :cond_21
    iget-object v0, p0, Lcom/b/a/u;->d:Ljava/util/concurrent/ExecutorService;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    monitor-exit p0

    return-object v0

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/util/Deque;Ljava/lang/Object;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque<",
            "TT;>;TT;Z)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-interface {p1, p2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Call wasn\'t in-flight!"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_f
    if-eqz p3, :cond_14

    invoke-direct {p0}, Lcom/b/a/u;->b()V

    :cond_14
    invoke-direct {p0}, Lcom/b/a/u;->c()I

    move-result p1

    iget-object p2, p0, Lcom/b/a/u;->c:Ljava/lang/Runnable;

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_23

    if-nez p1, :cond_22

    if-eqz p2, :cond_22

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_22
    return-void

    :catchall_23
    move-exception p1

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p1
.end method

.method private b()V
    .registers 5

    iget-object v0, p0, Lcom/b/a/u;->f:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Lcom/b/a/u;->a:I

    if-lt v0, v1, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcom/b/a/u;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    :cond_14
    iget-object v0, p0, Lcom/b/a/u;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/an;

    invoke-direct {p0, v1}, Lcom/b/a/u;->c(Lcom/b/a/an;)I

    move-result v2

    iget v3, p0, Lcom/b/a/u;->b:I

    if-ge v2, v3, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v2, p0, Lcom/b/a/u;->f:Ljava/util/Deque;

    invoke-interface {v2, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/b/a/u;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_3d
    iget-object v1, p0, Lcom/b/a/u;->f:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    iget v2, p0, Lcom/b/a/u;->a:I

    if-lt v1, v2, :cond_1a

    :cond_47
    return-void
.end method

.method private declared-synchronized c()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/b/a/u;->f:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget-object v1, p0, Lcom/b/a/u;->g:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Lcom/b/a/an;)I
    .registers 6

    iget-object v0, p0, Lcom/b/a/u;->f:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/b/a/an;

    invoke-virtual {v2}, Lcom/b/a/an;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/b/a/an;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_24
    return v1
.end method


# virtual methods
.method final declared-synchronized a(Lcom/b/a/am;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/b/a/u;->g:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized a(Lcom/b/a/an;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/b/a/u;->f:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Lcom/b/a/u;->a:I

    if-ge v0, v1, :cond_21

    invoke-direct {p0, p1}, Lcom/b/a/u;->c(Lcom/b/a/an;)I

    move-result v0

    iget v1, p0, Lcom/b/a/u;->b:I

    if-ge v0, v1, :cond_21

    iget-object v0, p0, Lcom/b/a/u;->f:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/b/a/u;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_28

    monitor-exit p0

    return-void

    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/b/a/u;->e:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_28

    monitor-exit p0

    return-void

    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final b(Lcom/b/a/am;)V
    .registers 4

    iget-object v0, p0, Lcom/b/a/u;->g:Ljava/util/Deque;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/b/a/u;->a(Ljava/util/Deque;Ljava/lang/Object;Z)V

    return-void
.end method

.method final b(Lcom/b/a/an;)V
    .registers 4

    iget-object v0, p0, Lcom/b/a/u;->f:Ljava/util/Deque;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/b/a/u;->a(Ljava/util/Deque;Ljava/lang/Object;Z)V

    return-void
.end method
