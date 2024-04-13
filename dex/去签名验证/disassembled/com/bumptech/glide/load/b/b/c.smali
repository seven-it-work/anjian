.class final Lcom/bumptech/glide/load/b/b/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/b/c$b;,
        Lcom/bumptech/glide/load/b/b/c$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/load/b/b/c$a;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/bumptech/glide/load/b/b/c$b;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/b/c;->a:Ljava/util/Map;

    new-instance v0, Lcom/bumptech/glide/load/b/b/c$b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/b/c$b;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/b/c;->b:Lcom/bumptech/glide/load/b/b/c$b;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/b/b/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/b/b/c$a;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/bumptech/glide/load/b/b/c;->b:Lcom/bumptech/glide/load/b/b/c$b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/b/c$b;->a()Lcom/bumptech/glide/load/b/b/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/b/b/c;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    iget p1, v0, Lcom/bumptech/glide/load/b/b/c$a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/bumptech/glide/load/b/b/c$a;->b:I

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_23

    iget-object p1, v0, Lcom/bumptech/glide/load/b/b/c$a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    return-void

    :catchall_23
    move-exception p1

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p1
.end method


# virtual methods
.method final a(Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/b/b/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Argument must not be null"

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/b/b/c$a;

    iget v1, v0, Lcom/bumptech/glide/load/b/b/c$a;->b:I

    if-gtz v1, :cond_31

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot release a lock that is not held, safeKey: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", interestedThreads: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/bumptech/glide/load/b/b/c$a;->b:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_31
    iget v1, v0, Lcom/bumptech/glide/load/b/b/c$a;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/bumptech/glide/load/b/b/c$a;->b:I

    iget v1, v0, Lcom/bumptech/glide/load/b/b/c$a;->b:I

    if-nez v1, :cond_86

    iget-object v1, p0, Lcom/bumptech/glide/load/b/b/c;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/b/b/c$a;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6d

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Removed the wrong lock, expected to remove: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", but actually removed: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", safeKey: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6d
    iget-object p1, p0, Lcom/bumptech/glide/load/b/b/c;->b:Lcom/bumptech/glide/load/b/b/c$b;

    iget-object v2, p1, Lcom/bumptech/glide/load/b/b/c$b;->a:Ljava/util/Queue;

    monitor-enter v2
    :try_end_72
    .catchall {:try_start_1 .. :try_end_72} :catchall_8d

    :try_start_72
    iget-object v3, p1, Lcom/bumptech/glide/load/b/b/c$b;->a:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_81

    iget-object p1, p1, Lcom/bumptech/glide/load/b/b/c$b;->a:Ljava/util/Queue;

    invoke-interface {p1, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_81
    monitor-exit v2

    goto :goto_86

    :catchall_83
    move-exception p1

    monitor-exit v2
    :try_end_85
    .catchall {:try_start_72 .. :try_end_85} :catchall_83

    :try_start_85
    throw p1

    :cond_86
    :goto_86
    monitor-exit p0
    :try_end_87
    .catchall {:try_start_85 .. :try_end_87} :catchall_8d

    iget-object p1, v0, Lcom/bumptech/glide/load/b/b/c$a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_8d
    move-exception p1

    :try_start_8e
    monitor-exit p0
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw p1
.end method
