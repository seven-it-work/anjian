.class public abstract Lcom/c/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/c/b/a<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method

.method protected final declared-synchronized a(ILjava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/c/a/a;->a:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/c/a/a;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_15

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/c/a/a;->a:Ljava/util/LinkedHashSet;

    goto :goto_1f

    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/b/a;

    invoke-virtual {v1, p1, p2}, Lcom/c/b/a;->a(ILjava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_21

    goto :goto_b

    :cond_1f
    :goto_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final declared-synchronized a(Landroid/content/Context;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/c/a/a;->a:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/c/a/a;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_15

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/c/a/a;->a:Ljava/util/LinkedHashSet;

    goto :goto_1f

    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/b/a;

    invoke-virtual {v1, p1}, Lcom/c/b/a;->a(Landroid/content/Context;)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_21

    goto :goto_b

    :cond_1f
    :goto_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/c/b/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/c/b/a<",
            "**>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/c/a/a;->a:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_16

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/c/a/a;->a:Ljava/util/LinkedHashSet;

    iget-object v0, p0, Lcom/c/a/a;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/c/a/a;->b()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1d

    monitor-exit p0

    return-void

    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/c/a/a;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/c/b/a;Ljava/net/HttpURLConnection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/c/b/a<",
            "**>;",
            "Ljava/net/HttpURLConnection;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public a(Lcom/c/b/a;Lorg/apache/http/HttpRequest;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/c/b/a<",
            "**>;",
            "Lorg/apache/http/HttpRequest;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public abstract a()Z
.end method

.method public abstract a(Lcom/c/b/a;Lcom/c/b/c;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/c/b/a<",
            "**>;",
            "Lcom/c/b/c;",
            ")Z"
        }
    .end annotation
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method

.method protected abstract b()V
.end method

.method public abstract b(Lcom/c/b/a;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/c/b/a<",
            "**>;)Z"
        }
    .end annotation
.end method

.method public c()V
    .registers 1

    return-void
.end method
