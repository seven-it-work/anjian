.class public final Lcom/bumptech/glide/load/c/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/c/p$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/c/r;

.field private final b:Lcom/bumptech/glide/load/c/p$a;


# direct methods
.method public constructor <init>(Landroid/support/v4/util/Pools$Pool;)V
    .registers 3
    .param p1    # Landroid/support/v4/util/Pools$Pool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/c/r;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/c/r;-><init>(Landroid/support/v4/util/Pools$Pool;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/c/p;-><init>(Lcom/bumptech/glide/load/c/r;)V

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/load/c/r;)V
    .registers 3
    .param p1    # Lcom/bumptech/glide/load/c/r;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/c/p$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/c/p$a;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/c/p;->b:Lcom/bumptech/glide/load/c/p$a;

    iput-object p1, p0, Lcom/bumptech/glide/load/c/p;->a:Lcom/bumptech/glide/load/c/r;

    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/util/List;
    .registers 10
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;)",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/c/n<",
            "TA;*>;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/c/p;->b(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v4, v2

    const/4 v2, 0x0

    const/4 v5, 0x1

    :goto_15
    if-ge v2, v1, :cond_33

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bumptech/glide/load/c/n;

    invoke-interface {v6, p1}, Lcom/bumptech/glide/load/c/n;->a(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_30

    if-eqz v5, :cond_2d

    new-instance v4, Ljava/util/ArrayList;

    sub-int v5, v1, v2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :cond_2d
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_33
    return-object v4
.end method

.method private declared-synchronized a(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 4
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/c/p;->a:Lcom/bumptech/glide/load/c/r;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/c/r;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/load/c/p;->a(Ljava/util/List;)V

    iget-object p1, p0, Lcom/bumptech/glide/load/c/p;->b:Lcom/bumptech/glide/load/c/p$a;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/c/p$a;->a()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static a(Ljava/util/List;)V
    .registers 2
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/c/o<",
            "+TModel;+TData;>;>;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_4

    :cond_e
    return-void
.end method

.method private declared-synchronized b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/c/n;
    .registers 4
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;)",
            "Lcom/bumptech/glide/load/c/n<",
            "TModel;TData;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/c/p;->a:Lcom/bumptech/glide/load/c/r;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/c/r;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/c/n;

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

.method private static b(Ljava/lang/Object;)Ljava/lang/Class;
    .registers 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;)",
            "Ljava/lang/Class<",
            "TA;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Class;)Ljava/util/List;
    .registers 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/c/p;->a:Lcom/bumptech/glide/load/c/r;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/c/r;->b(Ljava/lang/Class;)Ljava/util/List;

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

.method public final declared-synchronized a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)V
    .registers 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/c/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/bumptech/glide/load/c/o<",
            "+TModel;+TData;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/c/p;->a:Lcom/bumptech/glide/load/c/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/c/r;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)V

    iget-object p1, p0, Lcom/bumptech/glide/load/c/p;->b:Lcom/bumptech/glide/load/c/p$a;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/c/p$a;->a()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/Class;)Ljava/util/List;
    .registers 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/c/n<",
            "TA;*>;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/c/p;->b:Lcom/bumptech/glide/load/c/p$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/c/p$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/c/p$a$a;

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_11

    :cond_f
    iget-object v0, v0, Lcom/bumptech/glide/load/c/p$a$a;->a:Ljava/util/List;

    :goto_11
    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/bumptech/glide/load/c/p;->a:Lcom/bumptech/glide/load/c/r;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/c/r;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/c/p;->b:Lcom/bumptech/glide/load/c/p$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/c/p$a;->a:Ljava/util/Map;

    new-instance v2, Lcom/bumptech/glide/load/c/p$a$a;

    invoke-direct {v2, v0}, Lcom/bumptech/glide/load/c/p$a$a;-><init>(Ljava/util/List;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/c/p$a$a;

    if-eqz v1, :cond_42

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Already cached loaders for model: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_44

    :cond_42
    monitor-exit p0

    return-object v0

    :catchall_44
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)V
    .registers 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/c/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/bumptech/glide/load/c/o<",
            "+TModel;+TData;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/c/p;->a:Lcom/bumptech/glide/load/c/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/c/r;->b(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)V

    iget-object p1, p0, Lcom/bumptech/glide/load/c/p;->b:Lcom/bumptech/glide/load/c/p$a;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/c/p$a;->a()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)V
    .registers 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/c/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/bumptech/glide/load/c/o<",
            "+TModel;+TData;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/c/p;->a:Lcom/bumptech/glide/load/c/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/c/r;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/load/c/p;->a(Ljava/util/List;)V

    iget-object p1, p0, Lcom/bumptech/glide/load/c/p;->b:Lcom/bumptech/glide/load/c/p$a;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/c/p$a;->a()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method
