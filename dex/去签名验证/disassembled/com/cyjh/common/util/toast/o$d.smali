.class public abstract Lcom/cyjh/common/util/toast/o$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/common/util/toast/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/common/util/toast/o$d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final d:I = 0x0

.field private static final e:I = 0x1

.field private static final f:I = 0x2

.field private static final g:I = 0x3

.field private static final h:I = 0x4

.field private static final i:I = 0x5

.field private static final j:I = 0x6


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field volatile b:Ljava/lang/Thread;

.field c:Lcom/cyjh/common/util/toast/o$d$a;

.field private volatile k:Z

.field private l:Ljava/util/Timer;

.field private m:J

.field private n:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/cyjh/common/util/toast/o$d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private a(JLcom/cyjh/common/util/toast/o$d$a;)Lcom/cyjh/common/util/toast/o$d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/cyjh/common/util/toast/o$d$a;",
            ")",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;"
        }
    .end annotation

    iput-wide p1, p0, Lcom/cyjh/common/util/toast/o$d;->m:J

    iput-object p3, p0, Lcom/cyjh/common/util/toast/o$d;->c:Lcom/cyjh/common/util/toast/o$d$a;

    return-object p0
.end method

.method private a(Ljava/util/concurrent/Executor;)Lcom/cyjh/common/util/toast/o$d;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/cyjh/common/util/toast/o$d<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/cyjh/common/util/toast/o$d;->n:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic a(Lcom/cyjh/common/util/toast/o$d;)V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/common/util/toast/o$d;->k:Z

    return-void
.end method

.method private a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/cyjh/common/util/toast/o$d;->k:Z

    return-void
.end method

.method private static synthetic b(Lcom/cyjh/common/util/toast/o$d;)Lcom/cyjh/common/util/toast/o$d$a;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/common/util/toast/o$d;->c:Lcom/cyjh/common/util/toast/o$d$a;

    return-object p0
.end method

.method private static synthetic c(Lcom/cyjh/common/util/toast/o$d;)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/common/util/toast/o$d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/cyjh/common/util/toast/o$d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_e

    monitor-exit v0

    return-void

    :cond_e
    iget-object v1, p0, Lcom/cyjh/common/util/toast/o$d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1f

    iget-object v0, p0, Lcom/cyjh/common/util/toast/o$d;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_1e

    iget-object p0, p0, Lcom/cyjh/common/util/toast/o$d;->b:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_1e
    return-void

    :catchall_1f
    move-exception p0

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method private f()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/common/util/toast/o$d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/cyjh/common/util/toast/o$d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_e

    monitor-exit v0

    return-void

    :cond_e
    iget-object v1, p0, Lcom/cyjh/common/util/toast/o$d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_2b

    iget-object v0, p0, Lcom/cyjh/common/util/toast/o$d;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/cyjh/common/util/toast/o$d;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1e
    invoke-direct {p0}, Lcom/cyjh/common/util/toast/o$d;->j()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/cyjh/common/util/toast/o$d$5;

    invoke-direct {v1, p0}, Lcom/cyjh/common/util/toast/o$d$5;-><init>(Lcom/cyjh/common/util/toast/o$d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method private g()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/common/util/toast/o$d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/cyjh/common/util/toast/o$d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_e

    monitor-exit v0

    return-void

    :cond_e
    iget-object v1, p0, Lcom/cyjh/common/util/toast/o$d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1f

    iget-object v0, p0, Lcom/cyjh/common/util/toast/o$d;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/cyjh/common/util/toast/o$d;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1e
    return-void

    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private h()Z
    .registers 3

    iget-object v0, p0, Lcom/cyjh/common/util/toast/o$d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private i()Z
    .registers 3

    iget-object v0, p0, Lcom/cyjh/common/util/toast/o$d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_a

    return v1

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private j()Ljava/util/concurrent/Executor;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/common/util/toast/o$d;->n:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_9

    invoke-static {}, Lcom/cyjh/common/util/toast/o;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/cyjh/common/util/toast/o$d;->n:Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Ljava/lang/Throwable;)V
.end method

.method public abstract b()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract c()V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation
.end method

.method public final d()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/common/util/toast/o$d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/cyjh/common/util/toast/o$d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_e

    monitor-exit v0

    return-void

    :cond_e
    iget-object v1, p0, Lcom/cyjh/common/util/toast/o$d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_2b

    iget-object v0, p0, Lcom/cyjh/common/util/toast/o$d;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/cyjh/common/util/toast/o$d;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1e
    invoke-direct {p0}, Lcom/cyjh/common/util/toast/o$d;->j()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/cyjh/common/util/toast/o$d$5;

    invoke-direct {v1, p0}, Lcom/cyjh/common/util/toast/o$d$5;-><init>(Lcom/cyjh/common/util/toast/o$d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method protected final e()V
    .registers 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    invoke-static {}, Lcom/cyjh/common/util/toast/o;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/cyjh/common/util/toast/o$d;->l:Ljava/util/Timer;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/cyjh/common/util/toast/o$d;->l:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/common/util/toast/o$d;->l:Ljava/util/Timer;

    iput-object v0, p0, Lcom/cyjh/common/util/toast/o$d;->c:Lcom/cyjh/common/util/toast/o$d$a;

    :cond_15
    return-void
.end method

.method public run()V
    .registers 6

    iget-boolean v0, p0, Lcom/cyjh/common/util/toast/o$d;->k:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/cyjh/common/util/toast/o$d;->b:Ljava/lang/Thread;

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/cyjh/common/util/toast/o$d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/common/util/toast/o$d;->b:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/cyjh/common/util/toast/o$d;->c:Lcom/cyjh/common/util/toast/o$d$a;

    if-eqz v0, :cond_54

    const-string v0, "ThreadUtils"

    const-string v1, "Scheduled task doesn\'t support timeout."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    :cond_25
    iget-object v0, p0, Lcom/cyjh/common/util/toast/o$d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v0, v2, :cond_54

    return-void

    :cond_2e
    iget-object v0, p0, Lcom/cyjh/common/util/toast/o$d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_37

    return-void

    :cond_37
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/common/util/toast/o$d;->b:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/cyjh/common/util/toast/o$d;->c:Lcom/cyjh/common/util/toast/o$d$a;

    if-eqz v0, :cond_54

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/cyjh/common/util/toast/o$d;->l:Ljava/util/Timer;

    iget-object v0, p0, Lcom/cyjh/common/util/toast/o$d;->l:Ljava/util/Timer;

    new-instance v1, Lcom/cyjh/common/util/toast/o$d$1;

    invoke-direct {v1, p0}, Lcom/cyjh/common/util/toast/o$d$1;-><init>(Lcom/cyjh/common/util/toast/o$d;)V

    iget-wide v3, p0, Lcom/cyjh/common/util/toast/o$d;->m:J

    invoke-virtual {v0, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_54
    :goto_54
    :try_start_54
    invoke-virtual {p0}, Lcom/cyjh/common/util/toast/o$d;->b()Ljava/lang/Object;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cyjh/common/util/toast/o$d;->k:Z

    if-eqz v1, :cond_72

    iget-object v1, p0, Lcom/cyjh/common/util/toast/o$d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v1, v2, :cond_65

    return-void

    :cond_65
    invoke-direct {p0}, Lcom/cyjh/common/util/toast/o$d;->j()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v3, Lcom/cyjh/common/util/toast/o$d$2;

    invoke-direct {v3, p0, v0}, Lcom/cyjh/common/util/toast/o$d$2;-><init>(Lcom/cyjh/common/util/toast/o$d;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_72
    iget-object v1, p0, Lcom/cyjh/common/util/toast/o$d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_7c

    return-void

    :cond_7c
    invoke-direct {p0}, Lcom/cyjh/common/util/toast/o$d;->j()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v3, Lcom/cyjh/common/util/toast/o$d$3;

    invoke-direct {v3, p0, v0}, Lcom/cyjh/common/util/toast/o$d$3;-><init>(Lcom/cyjh/common/util/toast/o$d;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_88
    .catch Ljava/lang/InterruptedException; {:try_start_54 .. :try_end_88} :catch_a1
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_88} :catch_89

    return-void

    :catch_89
    move-exception v0

    iget-object v1, p0, Lcom/cyjh/common/util/toast/o$d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_94

    return-void

    :cond_94
    invoke-direct {p0}, Lcom/cyjh/common/util/toast/o$d;->j()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/cyjh/common/util/toast/o$d$4;

    invoke-direct {v2, p0, v0}, Lcom/cyjh/common/util/toast/o$d$4;-><init>(Lcom/cyjh/common/util/toast/o$d;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catch_a1
    iget-object v0, p0, Lcom/cyjh/common/util/toast/o$d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x4

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    return-void
.end method
