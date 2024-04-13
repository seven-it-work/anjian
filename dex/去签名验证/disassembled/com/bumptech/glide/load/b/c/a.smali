.class public final Lcom/bumptech/glide/load/b/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ExecutorService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/c/a$a;,
        Lcom/bumptech/glide/load/b/c/a$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "source"

.field private static final b:Ljava/lang/String; = "disk-cache"

.field private static final c:I = 0x1

.field private static final d:Ljava/lang/String; = "GlideExecutor"

.field private static final e:Ljava/lang/String; = "source-unlimited"

.field private static final f:Ljava/lang/String; = "animation"

.field private static final g:J

.field private static final h:I = 0x4

.field private static volatile i:I


# instance fields
.field private final j:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/bumptech/glide/load/b/c/a;->g:J

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/b/c/a;->j:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()Lcom/bumptech/glide/load/b/c/a;
    .registers 2

    const-string v0, "disk-cache"

    sget-object v1, Lcom/bumptech/glide/load/b/c/a$b;->d:Lcom/bumptech/glide/load/b/c/a$b;

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/b/c/a;->a(Ljava/lang/String;Lcom/bumptech/glide/load/b/c/a$b;)Lcom/bumptech/glide/load/b/c/a;

    move-result-object v0

    return-object v0
.end method

.method private static a(ILcom/bumptech/glide/load/b/c/a$b;)Lcom/bumptech/glide/load/b/c/a;
    .registers 12

    new-instance v0, Lcom/bumptech/glide/load/b/c/a;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-wide v4, Lcom/bumptech/glide/load/b/c/a;->g:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v8, Lcom/bumptech/glide/load/b/c/a$a;

    const-string v1, "animation"

    const/4 v2, 0x1

    invoke-direct {v8, v1, p1, v2}, Lcom/bumptech/glide/load/b/c/a$a;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/b/c/a$b;Z)V

    const/4 v2, 0x0

    move-object v1, v9

    move v3, p0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v0, v9}, Lcom/bumptech/glide/load/b/c/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method private static a(ILjava/lang/String;Lcom/bumptech/glide/load/b/c/a$b;)Lcom/bumptech/glide/load/b/c/a;
    .registers 13

    new-instance v0, Lcom/bumptech/glide/load/b/c/a;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v8, Lcom/bumptech/glide/load/b/c/a$a;

    const/4 v1, 0x0

    invoke-direct {v8, p1, p2, v1}, Lcom/bumptech/glide/load/b/c/a$a;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/b/c/a$b;Z)V

    const-wide/16 v4, 0x0

    move-object v1, v9

    move v2, p0

    move v3, p0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v0, v9}, Lcom/bumptech/glide/load/b/c/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method private static a(Lcom/bumptech/glide/load/b/c/a$b;)Lcom/bumptech/glide/load/b/c/a;
    .registers 2

    const-string v0, "disk-cache"

    invoke-static {v0, p0}, Lcom/bumptech/glide/load/b/c/a;->a(Ljava/lang/String;Lcom/bumptech/glide/load/b/c/a$b;)Lcom/bumptech/glide/load/b/c/a;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Lcom/bumptech/glide/load/b/c/a$b;)Lcom/bumptech/glide/load/b/c/a;
    .registers 12

    new-instance v0, Lcom/bumptech/glide/load/b/c/a;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v8, Lcom/bumptech/glide/load/b/c/a$a;

    const/4 v1, 0x1

    invoke-direct {v8, p0, p1, v1}, Lcom/bumptech/glide/load/b/c/a$a;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/b/c/a$b;Z)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v0, v9}, Lcom/bumptech/glide/load/b/c/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public static b()Lcom/bumptech/glide/load/b/c/a;
    .registers 3

    invoke-static {}, Lcom/bumptech/glide/load/b/c/a;->e()I

    move-result v0

    const-string v1, "source"

    sget-object v2, Lcom/bumptech/glide/load/b/c/a$b;->d:Lcom/bumptech/glide/load/b/c/a$b;

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/b/c/a;->a(ILjava/lang/String;Lcom/bumptech/glide/load/b/c/a$b;)Lcom/bumptech/glide/load/b/c/a;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/bumptech/glide/load/b/c/a$b;)Lcom/bumptech/glide/load/b/c/a;
    .registers 3

    invoke-static {}, Lcom/bumptech/glide/load/b/c/a;->e()I

    move-result v0

    const-string v1, "source"

    invoke-static {v0, v1, p0}, Lcom/bumptech/glide/load/b/c/a;->a(ILjava/lang/String;Lcom/bumptech/glide/load/b/c/a$b;)Lcom/bumptech/glide/load/b/c/a;

    move-result-object p0

    return-object p0
.end method

.method public static c()Lcom/bumptech/glide/load/b/c/a;
    .registers 10

    new-instance v0, Lcom/bumptech/glide/load/b/c/a;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-wide v4, Lcom/bumptech/glide/load/b/c/a;->g:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v8, Lcom/bumptech/glide/load/b/c/a$a;

    const-string v1, "source-unlimited"

    sget-object v2, Lcom/bumptech/glide/load/b/c/a$b;->d:Lcom/bumptech/glide/load/b/c/a$b;

    const/4 v3, 0x0

    invoke-direct {v8, v1, v2, v3}, Lcom/bumptech/glide/load/b/c/a$a;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/b/c/a$b;Z)V

    const/4 v2, 0x0

    const v3, 0x7fffffff

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v0, v9}, Lcom/bumptech/glide/load/b/c/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public static d()Lcom/bumptech/glide/load/b/c/a;
    .registers 12

    invoke-static {}, Lcom/bumptech/glide/load/b/c/a;->e()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-lt v0, v2, :cond_b

    const/4 v0, 0x2

    const/4 v4, 0x2

    goto :goto_c

    :cond_b
    const/4 v4, 0x1

    :goto_c
    sget-object v0, Lcom/bumptech/glide/load/b/c/a$b;->d:Lcom/bumptech/glide/load/b/c/a$b;

    new-instance v10, Lcom/bumptech/glide/load/b/c/a;

    new-instance v11, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x0

    sget-wide v5, Lcom/bumptech/glide/load/b/c/a;->g:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v9, Lcom/bumptech/glide/load/b/c/a$a;

    const-string v2, "animation"

    invoke-direct {v9, v2, v0, v1}, Lcom/bumptech/glide/load/b/c/a$a;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/b/c/a$b;Z)V

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v10, v11}, Lcom/bumptech/glide/load/b/c/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v10
.end method

.method private static e()I
    .registers 4

    sget v0, Lcom/bumptech/glide/load/b/c/a;->i:I

    if-nez v0, :cond_21

    const/4 v0, 0x4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_1b

    invoke-static {}, Lcom/bumptech/glide/load/b/c/b;->a()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_1b
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/bumptech/glide/load/b/c/a;->i:I

    :cond_21
    sget v0, Lcom/bumptech/glide/load/b/c/a;->i:I

    return v0
.end method


# virtual methods
.method public final awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .registers 5
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/c/a;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .registers 3
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/load/b/c/a;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .registers 3
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/c/a;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .registers 6
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/c/a;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/c/a;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 6
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
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

    iget-object v0, p0, Lcom/bumptech/glide/load/b/c/a;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isShutdown()Z
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/b/c/a;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public final isTerminated()Z
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/b/c/a;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    return v0
.end method

.method public final shutdown()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/b/c/a;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public final shutdownNow()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/c/a;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 3
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/c/a;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .registers 4
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/c/a;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 3
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/c/a;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/b/c/a;->j:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
