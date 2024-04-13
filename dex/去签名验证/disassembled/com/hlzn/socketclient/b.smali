.class public final Lcom/hlzn/socketclient/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized a()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/hlzn/socketclient/b;->c()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/hlzn/socketclient/b;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/hlzn/socketclient/b;->a()V

    :cond_7
    iget-object v0, p0, Lcom/hlzn/socketclient/b;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private declared-synchronized b()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/hlzn/socketclient/b;->d()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/hlzn/socketclient/b;->b:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/hlzn/socketclient/b;->b()V

    :cond_7
    iget-object v0, p0, Lcom/hlzn/socketclient/b;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private declared-synchronized c()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/hlzn/socketclient/b;->e()V

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/b;->a:Ljava/util/concurrent/ExecutorService;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/hlzn/socketclient/b;->f()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/b;->b:Ljava/util/concurrent/ExecutorService;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/hlzn/socketclient/b;->a:Ljava/util/concurrent/ExecutorService;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1e

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    :try_start_6
    iget-object v1, p0, Lcom/hlzn/socketclient/b;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_11
    .catchall {:try_start_6 .. :try_end_b} :catchall_f

    :try_start_b
    iput-object v0, p0, Lcom/hlzn/socketclient/b;->a:Ljava/util/concurrent/ExecutorService;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_1e

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v1

    goto :goto_19

    :catch_11
    move-exception v1

    :try_start_12
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_f

    :try_start_15
    iput-object v0, p0, Lcom/hlzn/socketclient/b;->a:Ljava/util/concurrent/ExecutorService;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_1e

    monitor-exit p0

    return-void

    :goto_19
    :try_start_19
    iput-object v0, p0, Lcom/hlzn/socketclient/b;->a:Ljava/util/concurrent/ExecutorService;

    throw v1
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1e

    :cond_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/hlzn/socketclient/b;->b:Ljava/util/concurrent/ExecutorService;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1e

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    :try_start_6
    iget-object v1, p0, Lcom/hlzn/socketclient/b;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_11
    .catchall {:try_start_6 .. :try_end_b} :catchall_f

    :try_start_b
    iput-object v0, p0, Lcom/hlzn/socketclient/b;->b:Ljava/util/concurrent/ExecutorService;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_1e

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v1

    goto :goto_19

    :catch_11
    move-exception v1

    :try_start_12
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_f

    :try_start_15
    iput-object v0, p0, Lcom/hlzn/socketclient/b;->b:Ljava/util/concurrent/ExecutorService;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_1e

    monitor-exit p0

    return-void

    :goto_19
    :try_start_19
    iput-object v0, p0, Lcom/hlzn/socketclient/b;->b:Ljava/util/concurrent/ExecutorService;

    throw v1
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1e

    :cond_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
