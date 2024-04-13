.class public Lcom/cyjh/feedback/lib/d/a;
.super Ljava/lang/Object;


# static fields
.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I = 0x1e

.field private static final f:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/cyjh/feedback/lib/d/a;->b:I

    sget v0, Lcom/cyjh/feedback/lib/d/a;->b:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/cyjh/feedback/lib/d/a;->c:I

    sget v0, Lcom/cyjh/feedback/lib/d/a;->b:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/cyjh/feedback/lib/d/a;->d:I

    new-instance v0, Lcom/cyjh/feedback/lib/d/a$1;

    invoke-direct {v0}, Lcom/cyjh/feedback/lib/d/a$1;-><init>()V

    sput-object v0, Lcom/cyjh/feedback/lib/d/a;->f:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method protected constructor <init>()V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/cyjh/feedback/lib/d/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/cyjh/feedback/lib/d/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/cyjh/feedback/lib/d/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    return-void

    :cond_19
    :goto_19
    const-class v0, Lcom/cyjh/feedback/lib/d/a;

    monitor-enter v0

    :try_start_1c
    iget-object v1, p0, Lcom/cyjh/feedback/lib/d/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/cyjh/feedback/lib/d/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, p0, Lcom/cyjh/feedback/lib/d/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v1

    if-eqz v1, :cond_4e

    :cond_30
    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v8, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v10}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v3, Lcom/cyjh/feedback/lib/d/a;->c:I

    sget v4, Lcom/cyjh/feedback/lib/d/a;->d:I

    const-wide/16 v5, 0x1e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v9, Lcom/cyjh/feedback/lib/d/a;->f:Ljava/util/concurrent/ThreadFactory;

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/cyjh/feedback/lib/d/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_4e
    monitor-exit v0

    return-void

    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_1c .. :try_end_52} :catchall_50

    throw v1
.end method

.method private a()V
    .registers 12

    iget-object v0, p0, Lcom/cyjh/feedback/lib/d/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/cyjh/feedback/lib/d/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/cyjh/feedback/lib/d/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_16

    :cond_15
    return-void

    :cond_16
    :goto_16
    const-class v0, Lcom/cyjh/feedback/lib/d/a;

    monitor-enter v0

    :try_start_19
    iget-object v1, p0, Lcom/cyjh/feedback/lib/d/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/cyjh/feedback/lib/d/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Lcom/cyjh/feedback/lib/d/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v1

    if-eqz v1, :cond_4b

    :cond_2d
    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v8, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v10}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v3, Lcom/cyjh/feedback/lib/d/a;->c:I

    sget v4, Lcom/cyjh/feedback/lib/d/a;->d:I

    const-wide/16 v5, 0x1e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v9, Lcom/cyjh/feedback/lib/d/a;->f:Ljava/util/concurrent/ThreadFactory;

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/cyjh/feedback/lib/d/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_4b
    monitor-exit v0

    return-void

    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_19 .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method private b(Ljava/lang/Runnable;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/cyjh/feedback/lib/d/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/cyjh/feedback/lib/d/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
