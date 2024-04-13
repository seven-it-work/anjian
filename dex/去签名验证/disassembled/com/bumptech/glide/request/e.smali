.class public final Lcom/bumptech/glide/request/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/request/b;
.implements Lcom/bumptech/glide/request/f;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/b<",
        "TR;>;",
        "Lcom/bumptech/glide/request/f<",
        "TR;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/request/e$a;


# instance fields
.field private final b:Landroid/os/Handler;

.field private final c:I

.field private final d:I

.field private final e:Z

.field private final f:Lcom/bumptech/glide/request/e$a;

.field private g:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private h:Lcom/bumptech/glide/request/c;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Lcom/bumptech/glide/load/b/p;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bumptech/glide/request/e$a;

    invoke-direct {v0}, Lcom/bumptech/glide/request/e$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/request/e;->a:Lcom/bumptech/glide/request/e$a;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;II)V
    .registers 5

    sget-object v0, Lcom/bumptech/glide/request/e;->a:Lcom/bumptech/glide/request/e$a;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bumptech/glide/request/e;-><init>(Landroid/os/Handler;IILcom/bumptech/glide/request/e$a;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;IILcom/bumptech/glide/request/e$a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/request/e;->b:Landroid/os/Handler;

    iput p2, p0, Lcom/bumptech/glide/request/e;->c:I

    iput p3, p0, Lcom/bumptech/glide/request/e;->d:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bumptech/glide/request/e;->e:Z

    iput-object p4, p0, Lcom/bumptech/glide/request/e;->f:Lcom/bumptech/glide/request/e$a;

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/Long;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->e:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/bumptech/glide/request/e;->isDone()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/bumptech/glide/util/k;->b()V

    :cond_e
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->i:Z

    if-eqz v0, :cond_18

    new-instance p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw p1

    :cond_18
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->k:Z

    if-eqz v0, :cond_24

    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object v0, p0, Lcom/bumptech/glide/request/e;->l:Lcom/bumptech/glide/load/b/p;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_24
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->j:Z

    if-eqz v0, :cond_2c

    iget-object p1, p0, Lcom/bumptech/glide/request/e;->g:Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_8b

    monitor-exit p0

    return-object p1

    :cond_2c
    const-wide/16 v0, 0x0

    if-nez p1, :cond_34

    :try_start_30
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    goto :goto_5b

    :cond_34
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_5b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 p1, 0x0

    add-long v4, v0, v2

    :goto_47
    invoke-virtual {p0}, Lcom/bumptech/glide/request/e;->isDone()Z

    move-result p1

    if-nez p1, :cond_5b

    cmp-long p1, v0, v4

    if-gez p1, :cond_5b

    sub-long v2, v4, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_47

    :cond_5b
    :goto_5b
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p1

    if-eqz p1, :cond_67

    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    :cond_67
    iget-boolean p1, p0, Lcom/bumptech/glide/request/e;->k:Z

    if-eqz p1, :cond_73

    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object v0, p0, Lcom/bumptech/glide/request/e;->l:Lcom/bumptech/glide/load/b/p;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_73
    iget-boolean p1, p0, Lcom/bumptech/glide/request/e;->i:Z

    if-eqz p1, :cond_7d

    new-instance p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw p1

    :cond_7d
    iget-boolean p1, p0, Lcom/bumptech/glide/request/e;->j:Z

    if-nez p1, :cond_87

    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    :cond_87
    iget-object p1, p0, Lcom/bumptech/glide/request/e;->g:Ljava/lang/Object;
    :try_end_89
    .catchall {:try_start_30 .. :try_end_89} :catchall_8b

    monitor-exit p0

    return-object p1

    :catchall_8b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/request/e;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/bumptech/glide/load/b/p;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .registers 5
    .param p1    # Lcom/bumptech/glide/load/b/p;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/p;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "TR;>;Z)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 p2, 0x1

    :try_start_2
    iput-boolean p2, p0, Lcom/bumptech/glide/request/e;->k:Z

    iput-object p1, p0, Lcom/bumptech/glide/request/e;->l:Lcom/bumptech/glide/load/b/p;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_c

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/a;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "TR;>;",
            "Lcom/bumptech/glide/load/a;",
            "Z)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 p2, 0x1

    :try_start_2
    iput-boolean p2, p0, Lcom/bumptech/glide/request/e;->j:Z

    iput-object p1, p0, Lcom/bumptech/glide/request/e;->g:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_c

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized cancel(Z)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/bumptech/glide/request/e;->isDone()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_19

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_a
    const/4 v0, 0x1

    :try_start_b
    iput-boolean v0, p0, Lcom/bumptech/glide/request/e;->i:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/bumptech/glide/request/e;->b:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit p0

    return v0

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
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
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/e;->a(Ljava/lang/Long;)Ljava/lang/Object;

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
    .registers 4
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/e;->a(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getRequest()Lcom/bumptech/glide/request/c;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/e;->h:Lcom/bumptech/glide/request/c;

    return-object v0
.end method

.method public final getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .registers 4
    .param p1    # Lcom/bumptech/glide/request/target/SizeReadyCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/bumptech/glide/request/e;->c:I

    iget v1, p0, Lcom/bumptech/glide/request/e;->d:I

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    return-void
.end method

.method public final declared-synchronized isCancelled()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->i:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isDone()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->i:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->j:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->k:Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_13

    if-eqz v0, :cond_e

    goto :goto_11

    :cond_e
    const/4 v0, 0x0

    :goto_f
    monitor-exit p0

    return v0

    :cond_11
    :goto_11
    const/4 v0, 0x1

    goto :goto_f

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onDestroy()V
    .registers 1

    return-void
.end method

.method public final onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final declared-synchronized onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final declared-synchronized onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/a/f;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/a/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/bumptech/glide/request/a/f<",
            "-TR;>;)V"
        }
    .end annotation

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final onStart()V
    .registers 1

    return-void
.end method

.method public final onStop()V
    .registers 1

    return-void
.end method

.method public final removeCallback(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/target/SizeReadyCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/request/e;->h:Lcom/bumptech/glide/request/c;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bumptech/glide/request/e;->h:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/request/e;->h:Lcom/bumptech/glide/request/c;

    :cond_c
    return-void
.end method

.method public final setRequest(Lcom/bumptech/glide/request/c;)V
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/bumptech/glide/request/e;->h:Lcom/bumptech/glide/request/c;

    return-void
.end method
