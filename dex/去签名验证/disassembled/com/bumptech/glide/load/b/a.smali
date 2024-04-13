.class public final Lcom/bumptech/glide/load/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/a$b;,
        Lcom/bumptech/glide/load/b/a$a;
    }
.end annotation


# static fields
.field private static final h:I = 0x1


# instance fields
.field final a:Landroid/os/Handler;

.field public final b:Ljava/util/Map;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bumptech/glide/load/g;",
            "Lcom/bumptech/glide/load/b/a$b;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/bumptech/glide/load/b/o$a;

.field d:Ljava/lang/ref/ReferenceQueue;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/bumptech/glide/load/b/o<",
            "*>;>;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/Thread;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public volatile f:Z

.field volatile g:Lcom/bumptech/glide/load/b/a$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final i:Z


# direct methods
.method constructor <init>(Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/b/a$1;

    invoke-direct {v2, p0}, Lcom/bumptech/glide/load/b/a$1;-><init>(Lcom/bumptech/glide/load/b/a;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/a;->a:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/a;->b:Ljava/util/Map;

    iput-boolean p1, p0, Lcom/bumptech/glide/load/b/a;->i:Z

    return-void
.end method

.method private a()Ljava/lang/ref/ReferenceQueue;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/bumptech/glide/load/b/o<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a;->d:Ljava/lang/ref/ReferenceQueue;

    if-nez v0, :cond_1e

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/a;->d:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bumptech/glide/load/b/a$2;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/load/b/a$2;-><init>(Lcom/bumptech/glide/load/b/a;)V

    const-string v2, "glide-active-resources"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/a;->e:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1e
    iget-object v0, p0, Lcom/bumptech/glide/load/b/a;->d:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method private a(Lcom/bumptech/glide/load/b/a$a;)V
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/b/a;->g:Lcom/bumptech/glide/load/b/a$a;

    return-void
.end method

.method private a(Lcom/bumptech/glide/load/b/o$a;)V
    .registers 2

    iput-object p1, p0, Lcom/bumptech/glide/load/b/a;->c:Lcom/bumptech/glide/load/b/o$a;

    return-void
.end method

.method private a(Lcom/bumptech/glide/load/g;)V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/b/a$b;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/a$b;->a()V

    :cond_d
    return-void
.end method

.method private b(Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/b/o;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            ")",
            "Lcom/bumptech/glide/load/b/o<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/b/a$b;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return-object p1

    :cond_c
    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/a$b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/b/o;

    if-nez v0, :cond_17

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/b/a;->a(Lcom/bumptech/glide/load/b/a$b;)V

    :cond_17
    return-object v0
.end method

.method private b()V
    .registers 4

    :goto_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/a;->f:Z

    if-nez v0, :cond_21

    :try_start_4
    iget-object v0, p0, Lcom/bumptech/glide/load/b/a;->d:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/b/a$b;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a;->a:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a;->g:Lcom/bumptech/glide/load/b/a$a;
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_18} :catch_19

    goto :goto_0

    :catch_19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_21
    return-void
.end method

.method private c()V
    .registers 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/a;->f:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a;->e:Ljava/lang/Thread;

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/bumptech/glide/load/b/a;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :try_start_d
    iget-object v0, p0, Lcom/bumptech/glide/load/b/a;->e:Ljava/lang/Thread;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to join in time"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_2a} :catch_2b

    :cond_2a
    return-void

    :catch_2b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/b/a$b;)V
    .registers 6
    .param p1    # Lcom/bumptech/glide/load/b/a$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/bumptech/glide/util/k;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a;->b:Ljava/util/Map;

    iget-object v1, p1, Lcom/bumptech/glide/load/b/a$b;->a:Lcom/bumptech/glide/load/g;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p1, Lcom/bumptech/glide/load/b/a$b;->b:Z

    if-eqz v0, :cond_2a

    iget-object v0, p1, Lcom/bumptech/glide/load/b/a$b;->c:Lcom/bumptech/glide/load/b/u;

    if-nez v0, :cond_13

    return-void

    :cond_13
    new-instance v0, Lcom/bumptech/glide/load/b/o;

    iget-object v1, p1, Lcom/bumptech/glide/load/b/a$b;->c:Lcom/bumptech/glide/load/b/u;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/bumptech/glide/load/b/o;-><init>(Lcom/bumptech/glide/load/b/u;ZZ)V

    iget-object v1, p1, Lcom/bumptech/glide/load/b/a$b;->a:Lcom/bumptech/glide/load/g;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/a;->c:Lcom/bumptech/glide/load/b/o$a;

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/load/b/o;->a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/b/o$a;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a;->c:Lcom/bumptech/glide/load/b/o$a;

    iget-object p1, p1, Lcom/bumptech/glide/load/b/a$b;->a:Lcom/bumptech/glide/load/g;

    invoke-interface {v1, p1, v0}, Lcom/bumptech/glide/load/b/o$a;->a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/b/o;)V

    :cond_2a
    return-void
.end method

.method public final a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/b/o;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Lcom/bumptech/glide/load/b/o<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/b/a$b;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a;->d:Ljava/lang/ref/ReferenceQueue;

    if-nez v1, :cond_20

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/load/b/a;->d:Ljava/lang/ref/ReferenceQueue;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/bumptech/glide/load/b/a$2;

    invoke-direct {v2, p0}, Lcom/bumptech/glide/load/b/a$2;-><init>(Lcom/bumptech/glide/load/b/a;)V

    const-string v3, "glide-active-resources"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bumptech/glide/load/b/a;->e:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a;->e:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_20
    iget-object v1, p0, Lcom/bumptech/glide/load/b/a;->d:Ljava/lang/ref/ReferenceQueue;

    iget-boolean v2, p0, Lcom/bumptech/glide/load/b/a;->i:Z

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/bumptech/glide/load/b/a$b;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/b/o;Ljava/lang/ref/ReferenceQueue;Z)V

    iget-object p2, p0, Lcom/bumptech/glide/load/b/a;->b:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/b/a$b;

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/a$b;->a()V

    :cond_34
    return-void
.end method
