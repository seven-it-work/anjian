.class public final Lcom/zbar/a/b/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zbar/a/b/e$a;
    }
.end annotation


# static fields
.field private static final b:I = 0x12c


# instance fields
.field public final a:Ljava/util/concurrent/ScheduledExecutorService;

.field private final c:Landroid/app/Activity;

.field private d:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zbar/a/b/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zbar/a/b/e$a;-><init>(B)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/zbar/a/b/e;->a:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zbar/a/b/e;->d:Ljava/util/concurrent/ScheduledFuture;

    iput-object p1, p0, Lcom/zbar/a/b/e;->c:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/zbar/a/b/e;->a()V

    return-void
.end method

.method private c()V
    .registers 2

    invoke-virtual {p0}, Lcom/zbar/a/b/e;->b()V

    iget-object v0, p0, Lcom/zbar/a/b/e;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    invoke-virtual {p0}, Lcom/zbar/a/b/e;->b()V

    iget-object v0, p0, Lcom/zbar/a/b/e;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/zbar/a/b/d;

    iget-object v2, p0, Lcom/zbar/a/b/e;->c:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/zbar/a/b/d;-><init>(Landroid/app/Activity;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x12c

    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/zbar/a/b/e;->d:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/zbar/a/b/e;->d:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/zbar/a/b/e;->d:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zbar/a/b/e;->d:Ljava/util/concurrent/ScheduledFuture;

    :cond_d
    return-void
.end method
