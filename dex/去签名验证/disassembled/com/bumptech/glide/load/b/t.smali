.class final Lcom/bumptech/glide/load/b/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/b/u;
.implements Lcom/bumptech/glide/util/a/a$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/b/u<",
        "TZ;>;",
        "Lcom/bumptech/glide/util/a/a$c;"
    }
.end annotation


# static fields
.field private static final a:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/b/t<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/bumptech/glide/util/a/c;

.field private c:Lcom/bumptech/glide/load/b/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/u<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bumptech/glide/load/b/t$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/t$1;-><init>()V

    const/16 v1, 0x14

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/a/a;->a(ILcom/bumptech/glide/util/a/a$a;)Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/b/t;->a:Landroid/support/v4/util/Pools$Pool;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/util/a/c$b;

    invoke-direct {v0}, Lcom/bumptech/glide/util/a/c$b;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/t;->b:Lcom/bumptech/glide/util/a/c;

    return-void
.end method

.method static a(Lcom/bumptech/glide/load/b/u;)Lcom/bumptech/glide/load/b/t;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/b/u<",
            "TZ;>;)",
            "Lcom/bumptech/glide/load/b/t<",
            "TZ;>;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/b/t;->a:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/b/t;

    const-string v1, "Argument must not be null"

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/b/t;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bumptech/glide/load/b/t;->e:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bumptech/glide/load/b/t;->d:Z

    iput-object p0, v0, Lcom/bumptech/glide/load/b/t;->c:Lcom/bumptech/glide/load/b/u;

    return-object v0
.end method

.method private b(Lcom/bumptech/glide/load/b/u;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/u<",
            "TZ;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/t;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/t;->d:Z

    iput-object p1, p0, Lcom/bumptech/glide/load/b/t;->c:Lcom/bumptech/glide/load/b/u;

    return-void
.end method

.method private f()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/t;->c:Lcom/bumptech/glide/load/b/u;

    sget-object v0, Lcom/bumptech/glide/load/b/t;->a:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/t;->c:Lcom/bumptech/glide/load/b/u;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/u;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/Object;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/t;->c:Lcom/bumptech/glide/load/b/u;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/u;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/b/t;->c:Lcom/bumptech/glide/load/b/u;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/u;->c()I

    move-result v0

    return v0
.end method

.method public final declared-synchronized d()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/b/t;->b:Lcom/bumptech/glide/util/a/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/a/c;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/t;->e:Z

    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/t;->d:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/bumptech/glide/load/b/t;->c:Lcom/bumptech/glide/load/b/u;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/u;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/t;->c:Lcom/bumptech/glide/load/b/u;

    sget-object v0, Lcom/bumptech/glide/load/b/t;->a:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    :cond_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized e()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/b/t;->b:Lcom/bumptech/glide/util/a/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/a/c;->a()V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/t;->d:Z

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already unlocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/t;->d:Z

    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/t;->e:Z

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/t;->d()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    :cond_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g_()Lcom/bumptech/glide/util/a/c;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/t;->b:Lcom/bumptech/glide/util/a/c;

    return-object v0
.end method
