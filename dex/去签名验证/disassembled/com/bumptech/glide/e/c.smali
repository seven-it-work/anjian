.class public final Lcom/bumptech/glide/e/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/bumptech/glide/load/b/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/s<",
            "***>;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Lcom/bumptech/glide/util/h;",
            "Lcom/bumptech/glide/load/b/s<",
            "***>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/bumptech/glide/util/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 14

    new-instance v6, Lcom/bumptech/glide/load/b/s;

    const-class v1, Ljava/lang/Object;

    const-class v2, Ljava/lang/Object;

    const-class v3, Ljava/lang/Object;

    new-instance v0, Lcom/bumptech/glide/load/b/h;

    const-class v8, Ljava/lang/Object;

    const-class v9, Ljava/lang/Object;

    const-class v10, Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lcom/bumptech/glide/load/d/f/g;

    invoke-direct {v12}, Lcom/bumptech/glide/load/d/f/g;-><init>()V

    const/4 v13, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lcom/bumptech/glide/load/b/h;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lcom/bumptech/glide/load/d/f/e;Landroid/support/v4/util/Pools$Pool;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/b/s;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Landroid/support/v4/util/Pools$Pool;)V

    sput-object v6, Lcom/bumptech/glide/e/c;->a:Lcom/bumptech/glide/load/b/s;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/e/c;->b:Landroid/support/v4/util/ArrayMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/e/c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/s;)V
    .registers 8
    .param p4    # Lcom/bumptech/glide/load/b/s;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/b/s<",
            "***>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/e/c;->b:Landroid/support/v4/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/e/c;->b:Landroid/support/v4/util/ArrayMap;

    new-instance v2, Lcom/bumptech/glide/util/h;

    invoke-direct {v2, p1, p2, p3}, Lcom/bumptech/glide/util/h;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    if-eqz p4, :cond_d

    goto :goto_f

    :cond_d
    sget-object p4, Lcom/bumptech/glide/e/c;->a:Lcom/bumptech/glide/load/b/s;

    :goto_f
    invoke-virtual {v1, v2, p4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public static a(Lcom/bumptech/glide/load/b/s;)Z
    .registers 2
    .param p0    # Lcom/bumptech/glide/load/b/s;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/s<",
            "***>;)Z"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/e/c;->a:Lcom/bumptech/glide/load/b/s;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private b(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/util/h;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/bumptech/glide/util/h;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/e/c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/util/h;

    if-nez v0, :cond_10

    new-instance v0, Lcom/bumptech/glide/util/h;

    invoke-direct {v0}, Lcom/bumptech/glide/util/h;-><init>()V

    :cond_10
    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/b/s;
    .registers 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;)",
            "Lcom/bumptech/glide/load/b/s<",
            "TData;TTResource;TTranscode;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/e/c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/util/h;

    if-nez v0, :cond_10

    new-instance v0, Lcom/bumptech/glide/util/h;

    invoke-direct {v0}, Lcom/bumptech/glide/util/h;-><init>()V

    :cond_10
    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    iget-object p1, p0, Lcom/bumptech/glide/e/c;->b:Landroid/support/v4/util/ArrayMap;

    monitor-enter p1

    :try_start_16
    iget-object p2, p0, Lcom/bumptech/glide/e/c;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p2, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/load/b/s;

    monitor-exit p1
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_25

    iget-object p1, p0, Lcom/bumptech/glide/e/c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object p2

    :catchall_25
    move-exception p2

    :try_start_26
    monitor-exit p1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p2
.end method
