.class public final Lcom/bumptech/glide/load/b/b/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/b/m$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/util/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/util/f<",
            "Lcom/bumptech/glide/load/g;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/b/b/m$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/util/f;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/util/f;-><init>(J)V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/b/m;->a:Lcom/bumptech/glide/util/f;

    new-instance v0, Lcom/bumptech/glide/load/b/b/m$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/b/b/m$1;-><init>(Lcom/bumptech/glide/load/b/b/m;)V

    const/16 v1, 0xa

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/a/a;->a(ILcom/bumptech/glide/util/a/a$a;)Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/b/m;->b:Landroid/support/v4/util/Pools$Pool;

    return-void
.end method

.method private b(Lcom/bumptech/glide/load/g;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/bumptech/glide/load/b/b/m;->b:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Argument must not be null"

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/b/b/m$a;

    :try_start_e
    iget-object v1, v0, Lcom/bumptech/glide/load/b/b/m$a;->a:Ljava/security/MessageDigest;

    invoke-interface {p1, v1}, Lcom/bumptech/glide/load/g;->a(Ljava/security/MessageDigest;)V

    iget-object p1, v0, Lcom/bumptech/glide/load/b/b/m$a;->a:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/util/k;->a([B)Ljava/lang/String;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_23

    iget-object v1, p0, Lcom/bumptech/glide/load/b/b/m;->b:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v1, v0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-object p1

    :catchall_23
    move-exception p1

    iget-object v1, p0, Lcom/bumptech/glide/load/b/b/m;->b:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v1, v0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    throw p1
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/g;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/bumptech/glide/load/b/b/m;->a:Lcom/bumptech/glide/util/f;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/load/b/b/m;->a:Lcom/bumptech/glide/util/f;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/util/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1f

    if-nez v1, :cond_12

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/b/b/m;->b(Lcom/bumptech/glide/load/g;)Ljava/lang/String;

    move-result-object v1

    :cond_12
    iget-object v2, p0, Lcom/bumptech/glide/load/b/b/m;->a:Lcom/bumptech/glide/util/f;

    monitor-enter v2

    :try_start_15
    iget-object v0, p0, Lcom/bumptech/glide/load/b/b/m;->a:Lcom/bumptech/glide/util/f;

    invoke-virtual {v0, p1, v1}, Lcom/bumptech/glide/util/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    return-object v1

    :catchall_1c
    move-exception p1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw p1

    :catchall_1f
    move-exception p1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p1
.end method
