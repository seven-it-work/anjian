.class public final Lcom/android/volley/toolbox/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/n$a;
.implements Lcom/android/volley/n$b;
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/volley/n$a;",
        "Lcom/android/volley/n$b<",
        "TT;>;",
        "Ljava/util/concurrent/Future<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/android/volley/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/l<",
            "*>;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private d:Lcom/android/volley/s;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/toolbox/r;->b:Z

    return-void
.end method

.method private static a()Lcom/android/volley/toolbox/r;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/android/volley/toolbox/r<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/volley/toolbox/r;

    invoke-direct {v0}, Lcom/android/volley/toolbox/r;-><init>()V

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/Long;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/volley/toolbox/r;->d:Lcom/android/volley/s;

    if-eqz v0, :cond_d

    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object v0, p0, Lcom/android/volley/toolbox/r;->d:Lcom/android/volley/s;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_d
    iget-boolean v0, p0, Lcom/android/volley/toolbox/r;->b:Z

    if-eqz v0, :cond_15

    iget-object p1, p0, Lcom/android/volley/toolbox/r;->c:Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_44

    monitor-exit p0

    return-object p1

    :cond_15
    const-wide/16 v0, 0x0

    if-nez p1, :cond_1d

    :goto_19
    :try_start_19
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    goto :goto_2a

    :cond_1d
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_2a

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_19

    :cond_2a
    :goto_2a
    iget-object p1, p0, Lcom/android/volley/toolbox/r;->d:Lcom/android/volley/s;

    if-eqz p1, :cond_36

    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object v0, p0, Lcom/android/volley/toolbox/r;->d:Lcom/android/volley/s;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_36
    iget-boolean p1, p0, Lcom/android/volley/toolbox/r;->b:Z

    if-nez p1, :cond_40

    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    :cond_40
    iget-object p1, p0, Lcom/android/volley/toolbox/r;->c:Ljava/lang/Object;
    :try_end_42
    .catchall {:try_start_19 .. :try_end_42} :catchall_44

    monitor-exit p0

    return-object p1

    :catchall_44
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Lcom/android/volley/l;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/l<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/volley/toolbox/r;->a:Lcom/android/volley/l;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/android/volley/s;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/android/volley/toolbox/r;->d:Lcom/android/volley/s;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/volley/toolbox/r;->b:Z

    iput-object p1, p0, Lcom/android/volley/toolbox/r;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized cancel(Z)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lcom/android/volley/toolbox/r;->a:Lcom/android/volley/l;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17

    const/4 v0, 0x0

    if-nez p1, :cond_8

    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lcom/android/volley/toolbox/r;->isDone()Z

    move-result p1

    if-nez p1, :cond_15

    iget-object p1, p0, Lcom/android/volley/toolbox/r;->a:Lcom/android/volley/l;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/volley/l;->h:Z
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_17

    monitor-exit p0

    return v0

    :cond_15
    monitor-exit p0

    return v0

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/volley/toolbox/r;->a(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/r;->a(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isCancelled()Z
    .registers 2

    iget-object v0, p0, Lcom/android/volley/toolbox/r;->a:Lcom/android/volley/l;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/volley/toolbox/r;->a:Lcom/android/volley/l;

    invoke-virtual {v0}, Lcom/android/volley/l;->a()Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized isDone()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/volley/toolbox/r;->b:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/volley/toolbox/r;->d:Lcom/android/volley/s;

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/android/volley/toolbox/r;->isCancelled()Z

    move-result v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_15

    if-eqz v0, :cond_10

    goto :goto_13

    :cond_10
    const/4 v0, 0x0

    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :goto_13
    const/4 v0, 0x1

    goto :goto_11

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method
