.class public Lcom/bumptech/glide/util/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;TY;>;"
        }
    .end annotation
.end field

.field private final b:J

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(J)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x64

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/bumptech/glide/util/f;->a:Ljava/util/Map;

    iput-wide p1, p0, Lcom/bumptech/glide/util/f;->b:J

    iput-wide p1, p0, Lcom/bumptech/glide/util/f;->c:J

    return-void
.end method

.method private declared-synchronized d()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/util/f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/util/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private e()V
    .registers 3

    iget-wide v0, p0, Lcom/bumptech/glide/util/f;->c:J

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/util/f;->a(J)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)I
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TY;)I"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public final declared-synchronized a()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/bumptech/glide/util/f;->d:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(F)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_10

    :try_start_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Multiplier must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_e
    move-exception p1

    goto :goto_21

    :cond_10
    iget-wide v0, p0, Lcom/bumptech/glide/util/f;->b:J

    long-to-float v0, v0

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/bumptech/glide/util/f;->c:J

    invoke-direct {p0}, Lcom/bumptech/glide/util/f;->e()V
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_e

    monitor-exit p0

    return-void

    :goto_21
    monitor-exit p0

    throw p1
.end method

.method protected final declared-synchronized a(J)V
    .registers 12

    monitor-enter p0

    :goto_1
    :try_start_1
    iget-wide v0, p0, Lcom/bumptech/glide/util/f;->d:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_31

    iget-object v0, p0, Lcom/bumptech/glide/util/f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-wide v3, p0, Lcom/bumptech/glide/util/f;->d:J

    invoke-virtual {p0, v2}, Lcom/bumptech/glide/util/f;->a(Ljava/lang/Object;)I

    move-result v5

    int-to-long v5, v5

    sub-long v7, v3, v5

    iput-wide v7, p0, Lcom/bumptech/glide/util/f;->d:J

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-virtual {p0, v1, v2}, Lcom/bumptech/glide/util/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_33

    goto :goto_1

    :cond_31
    monitor-exit p0

    return-void

    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TY;)V"
        }
    .end annotation

    return-void
.end method

.method public final declared-synchronized b()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/bumptech/glide/util/f;->c:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TY;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/util/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TY;)TY;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/util/f;->a(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/bumptech/glide/util/f;->c:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_12

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/util/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_3c

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_12
    if-eqz p2, :cond_1b

    :try_start_14
    iget-wide v2, p0, Lcom/bumptech/glide/util/f;->d:J

    const/4 v4, 0x0

    add-long v4, v2, v0

    iput-wide v4, p0, Lcom/bumptech/glide/util/f;->d:J

    :cond_1b
    iget-object v0, p0, Lcom/bumptech/glide/util/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-wide v1, p0, Lcom/bumptech/glide/util/f;->d:J

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/util/f;->a(Ljava/lang/Object;)I

    move-result v3

    int-to-long v3, v3

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/bumptech/glide/util/f;->d:J

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_37

    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/util/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    invoke-direct {p0}, Lcom/bumptech/glide/util/f;->e()V
    :try_end_3a
    .catchall {:try_start_14 .. :try_end_3a} :catchall_3c

    monitor-exit p0

    return-object v0

    :catchall_3c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TY;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/util/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-wide v0, p0, Lcom/bumptech/glide/util/f;->d:J

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/util/f;->a(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/bumptech/glide/util/f;->d:J
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    :cond_14
    monitor-exit p0

    return-object p1

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c()V
    .registers 3

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/util/f;->a(J)V

    return-void
.end method
