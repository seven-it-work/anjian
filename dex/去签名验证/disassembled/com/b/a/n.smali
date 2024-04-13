.class public final Lcom/b/a/n;
.super Ljava/lang/Object;


# static fields
.field static final synthetic c:Z = true

.field private static final d:Ljava/util/concurrent/Executor;


# instance fields
.field final a:Lcom/b/a/a/b/d;

.field b:Z

.field private final e:I

.field private final f:J

.field private final g:Ljava/lang/Runnable;

.field private final h:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/b/a/a/b/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp ConnectionPool"

    const/4 v7, 0x1

    invoke-static {v0, v7}, Lcom/b/a/a/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/b/a/n;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0}, Lcom/b/a/n;-><init>(Ljava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/TimeUnit;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/b/a/o;

    invoke-direct {v0, p0}, Lcom/b/a/o;-><init>(Lcom/b/a/n;)V

    iput-object v0, p0, Lcom/b/a/n;->g:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/b/a/n;->h:Ljava/util/Deque;

    new-instance v0, Lcom/b/a/a/b/d;

    invoke-direct {v0}, Lcom/b/a/a/b/d;-><init>()V

    iput-object v0, p0, Lcom/b/a/n;->a:Lcom/b/a/a/b/d;

    const/4 v0, 0x5

    iput v0, p0, Lcom/b/a/n;->e:I

    const-wide/16 v0, 0x5

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/n;->f:J

    return-void
.end method


# virtual methods
.method final a(J)J
    .registers 16

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/b/a/n;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    move-object v5, v2

    const/4 v2, 0x0

    const/4 v6, 0x0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_84

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/b/a/a/b/c;

    iget-object v8, v7, Lcom/b/a/a/b/c;->d:Ljava/util/List;

    const/4 v9, 0x0

    :cond_1d
    :goto_1d
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_6d

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/Reference;

    invoke-virtual {v10}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_32

    add-int/lit8 v9, v9, 0x1

    goto :goto_1d

    :cond_32
    check-cast v10, Lcom/b/a/a/b/h;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "A connection to "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/b/a/a/b/c;->a()Lcom/b/a/aw;

    move-result-object v12

    iget-object v12, v12, Lcom/b/a/aw;->a:Lcom/b/a/a;

    iget-object v12, v12, Lcom/b/a/a;->a:Lcom/b/a/ac;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/b/a/a/g/h;->b()Lcom/b/a/a/g/h;

    move-result-object v12

    iget-object v10, v10, Lcom/b/a/a/b/h;->a:Ljava/lang/Object;

    invoke-virtual {v12, v11, v10}, Lcom/b/a/a/g/h;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v10, 0x1

    iput-boolean v10, v7, Lcom/b/a/a/b/c;->a:Z

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1d

    iget-wide v8, p0, Lcom/b/a/n;->f:J

    const/4 v10, 0x0

    sub-long v10, p1, v8

    iput-wide v10, v7, Lcom/b/a/a/b/c;->e:J

    const/4 v8, 0x0

    goto :goto_71

    :cond_6d
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    :goto_71
    if-lez v8, :cond_76

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_76
    add-int/lit8 v2, v2, 0x1

    iget-wide v8, v7, Lcom/b/a/a/b/c;->e:J

    const/4 v10, 0x0

    sub-long v10, p1, v8

    cmp-long v8, v10, v3

    if-lez v8, :cond_e

    move-object v5, v7

    move-wide v3, v10

    goto :goto_e

    :cond_84
    iget-wide p1, p0, Lcom/b/a/n;->f:J

    cmp-long v0, v3, p1

    if-gez v0, :cond_a4

    iget p1, p0, Lcom/b/a/n;->e:I

    if-le v2, p1, :cond_8f

    goto :goto_a4

    :cond_8f
    if-lez v2, :cond_98

    iget-wide p1, p0, Lcom/b/a/n;->f:J

    const/4 v0, 0x0

    sub-long v0, p1, v3

    monitor-exit p0

    return-wide v0

    :cond_98
    if-lez v6, :cond_9e

    iget-wide p1, p0, Lcom/b/a/n;->f:J

    monitor-exit p0

    return-wide p1

    :cond_9e
    iput-boolean v1, p0, Lcom/b/a/n;->b:Z

    const-wide/16 p1, -0x1

    monitor-exit p0

    return-wide p1

    :cond_a4
    :goto_a4
    iget-object p1, p0, Lcom/b/a/n;->h:Ljava/util/Deque;

    invoke-interface {p1, v5}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_aa
    .catchall {:try_start_1 .. :try_end_aa} :catchall_b4

    invoke-virtual {v5}, Lcom/b/a/a/b/c;->b()Ljava/net/Socket;

    move-result-object p1

    invoke-static {p1}, Lcom/b/a/a/c;->a(Ljava/net/Socket;)V

    const-wide/16 p1, 0x0

    return-wide p1

    :catchall_b4
    move-exception p1

    :try_start_b5
    monitor-exit p0
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b4

    throw p1
.end method

.method final a(Lcom/b/a/a;Lcom/b/a/a/b/g;)Lcom/b/a/a/b/c;
    .registers 6

    sget-boolean v0, Lcom/b/a/n;->c:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_10
    iget-object v0, p0, Lcom/b/a/n;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/a/b/c;

    invoke-virtual {v1, p1}, Lcom/b/a/a/b/c;->a(Lcom/b/a/a;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {p2, v1}, Lcom/b/a/a/b/g;->a(Lcom/b/a/a/b/c;)V

    return-object v1

    :cond_2c
    const/4 p1, 0x0

    return-object p1
.end method

.method final a(Lcom/b/a/a/b/c;)V
    .registers 4

    sget-boolean v0, Lcom/b/a/n;->c:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_10
    iget-boolean v0, p0, Lcom/b/a/n;->b:Z

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/n;->b:Z

    sget-object v0, Lcom/b/a/n;->d:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/b/a/n;->g:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1e
    iget-object v0, p0, Lcom/b/a/n;->h:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final b(Lcom/b/a/a;Lcom/b/a/a/b/g;)Ljava/net/Socket;
    .registers 6

    sget-boolean v0, Lcom/b/a/n;->c:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_10
    iget-object v0, p0, Lcom/b/a/n;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/a/b/c;

    invoke-virtual {v1, p1}, Lcom/b/a/a/b/c;->a(Lcom/b/a/a;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v1}, Lcom/b/a/a/b/c;->d()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {p2}, Lcom/b/a/a/b/g;->b()Lcom/b/a/a/b/c;

    move-result-object v2

    if-eq v1, v2, :cond_16

    invoke-virtual {p2, v1}, Lcom/b/a/a/b/g;->b(Lcom/b/a/a/b/c;)Ljava/net/Socket;

    move-result-object p1

    return-object p1

    :cond_39
    const/4 p1, 0x0

    return-object p1
.end method

.method final b(Lcom/b/a/a/b/c;)Z
    .registers 3

    sget-boolean v0, Lcom/b/a/n;->c:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_10
    iget-boolean v0, p1, Lcom/b/a/a/b/c;->a:Z

    if-nez v0, :cond_1e

    iget v0, p0, Lcom/b/a/n;->e:I

    if-nez v0, :cond_19

    goto :goto_1e

    :cond_19
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const/4 p1, 0x0

    return p1

    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/b/a/n;->h:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method
