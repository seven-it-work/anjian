.class final Lcom/bumptech/glide/load/b/b/c$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final b:I = 0xa


# instance fields
.field final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bumptech/glide/load/b/b/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/b/c$b;->a:Ljava/util/Queue;

    return-void
.end method

.method private a(Lcom/bumptech/glide/load/b/b/c$a;)V
    .registers 5

    iget-object v0, p0, Lcom/bumptech/glide/load/b/b/c$b;->a:Ljava/util/Queue;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/load/b/b/c$b;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_12

    iget-object v1, p0, Lcom/bumptech/glide/load/b/b/c$b;->a:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method


# virtual methods
.method final a()Lcom/bumptech/glide/load/b/b/c$a;
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/b/b/c$b;->a:Ljava/util/Queue;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/load/b/b/c$b;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/b/b/c$a;

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_14

    if-nez v1, :cond_13

    new-instance v1, Lcom/bumptech/glide/load/b/b/c$a;

    invoke-direct {v1}, Lcom/bumptech/glide/load/b/b/c$a;-><init>()V

    :cond_13
    return-object v1

    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method
