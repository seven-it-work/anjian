.class public final Lcom/bumptech/glide/load/b/j$b;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/bumptech/glide/load/b/c/a;

.field public final b:Lcom/bumptech/glide/load/b/c/a;

.field public final c:Lcom/bumptech/glide/load/b/c/a;

.field public final d:Lcom/bumptech/glide/load/b/c/a;

.field final e:Lcom/bumptech/glide/load/b/l;

.field public final f:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/b/k<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/l;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/b/j$b$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/b/j$b$1;-><init>(Lcom/bumptech/glide/load/b/j$b;)V

    invoke-static {v0}, Lcom/bumptech/glide/util/a/a;->a(Lcom/bumptech/glide/util/a/a$a;)Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/j$b;->f:Landroid/support/v4/util/Pools$Pool;

    iput-object p1, p0, Lcom/bumptech/glide/load/b/j$b;->a:Lcom/bumptech/glide/load/b/c/a;

    iput-object p2, p0, Lcom/bumptech/glide/load/b/j$b;->b:Lcom/bumptech/glide/load/b/c/a;

    iput-object p3, p0, Lcom/bumptech/glide/load/b/j$b;->c:Lcom/bumptech/glide/load/b/c/a;

    iput-object p4, p0, Lcom/bumptech/glide/load/b/j$b;->d:Lcom/bumptech/glide/load/b/c/a;

    iput-object p5, p0, Lcom/bumptech/glide/load/b/j$b;->e:Lcom/bumptech/glide/load/b/l;

    return-void
.end method

.method private a(Lcom/bumptech/glide/load/g;ZZZZ)Lcom/bumptech/glide/load/b/k;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/g;",
            "ZZZZ)",
            "Lcom/bumptech/glide/load/b/k<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/j$b;->f:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/b/k;

    const-string v1, "Argument must not be null"

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/b/k;

    iput-object p1, v0, Lcom/bumptech/glide/load/b/k;->e:Lcom/bumptech/glide/load/g;

    iput-boolean p2, v0, Lcom/bumptech/glide/load/b/k;->f:Z

    iput-boolean p3, v0, Lcom/bumptech/glide/load/b/k;->g:Z

    iput-boolean p4, v0, Lcom/bumptech/glide/load/b/k;->h:Z

    iput-boolean p5, v0, Lcom/bumptech/glide/load/b/k;->i:Z

    return-object v0
.end method

.method private a()V
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/j$b;->a:Lcom/bumptech/glide/load/b/c/a;

    invoke-static {v0}, Lcom/bumptech/glide/load/b/j$b;->a(Ljava/util/concurrent/ExecutorService;)V

    iget-object v0, p0, Lcom/bumptech/glide/load/b/j$b;->b:Lcom/bumptech/glide/load/b/c/a;

    invoke-static {v0}, Lcom/bumptech/glide/load/b/j$b;->a(Ljava/util/concurrent/ExecutorService;)V

    iget-object v0, p0, Lcom/bumptech/glide/load/b/j$b;->c:Lcom/bumptech/glide/load/b/c/a;

    invoke-static {v0}, Lcom/bumptech/glide/load/b/j$b;->a(Ljava/util/concurrent/ExecutorService;)V

    iget-object v0, p0, Lcom/bumptech/glide/load/b/j$b;->d:Lcom/bumptech/glide/load/b/c/a;

    invoke-static {v0}, Lcom/bumptech/glide/load/b/j$b;->a(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static a(Ljava/util/concurrent/ExecutorService;)V
    .registers 4

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :try_start_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-interface {p0, v1, v2, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1, v2, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-nez p0, :cond_20

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to shutdown"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_20} :catch_21

    :cond_20
    return-void

    :catch_21
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
