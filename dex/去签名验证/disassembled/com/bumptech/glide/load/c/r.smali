.class public final Lcom/bumptech/glide/load/c/r;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/c/r$a;,
        Lcom/bumptech/glide/load/c/r$c;,
        Lcom/bumptech/glide/load/c/r$b;
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/c/r$c;

.field private static final b:Lcom/bumptech/glide/load/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/c/n<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/c/r$b<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/bumptech/glide/load/c/r$c;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/load/c/r$b<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final f:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bumptech/glide/load/c/r$c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/c/r$c;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/c/r;->a:Lcom/bumptech/glide/load/c/r$c;

    new-instance v0, Lcom/bumptech/glide/load/c/r$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/c/r$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/c/r;->b:Lcom/bumptech/glide/load/c/n;

    return-void
.end method

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

    sget-object v0, Lcom/bumptech/glide/load/c/r;->a:Lcom/bumptech/glide/load/c/r$c;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/c/r;-><init>(Landroid/support/v4/util/Pools$Pool;Lcom/bumptech/glide/load/c/r$c;)V

    return-void
.end method

.method private constructor <init>(Landroid/support/v4/util/Pools$Pool;Lcom/bumptech/glide/load/c/r$c;)V
    .registers 4
    .param p1    # Landroid/support/v4/util/Pools$Pool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/c/r$c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;",
            "Lcom/bumptech/glide/load/c/r$c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/c/r;->c:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/c/r;->e:Ljava/util/Set;

    iput-object p1, p0, Lcom/bumptech/glide/load/c/r;->f:Landroid/support/v4/util/Pools$Pool;

    iput-object p2, p0, Lcom/bumptech/glide/load/c/r;->d:Lcom/bumptech/glide/load/c/r$c;

    return-void
.end method

.method private static a()Lcom/bumptech/glide/load/c/n;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/load/c/n<",
            "TModel;TData;>;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/c/r;->b:Lcom/bumptech/glide/load/c/n;

    return-object v0
.end method

.method private static a(Lcom/bumptech/glide/load/c/r$b;)Lcom/bumptech/glide/load/c/o;
    .registers 1
    .param p0    # Lcom/bumptech/glide/load/c/r$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/c/r$b<",
            "**>;)",
            "Lcom/bumptech/glide/load/c/o<",
            "TModel;TData;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/load/c/r$b;->b:Lcom/bumptech/glide/load/c/o;

    return-object p0
.end method

.method private a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;Z)V
    .registers 6
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
            "+TModel;+TData;>;Z)V"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/c/r$b;

    invoke-direct {v0, p1, p2, p3}, Lcom/bumptech/glide/load/c/r$b;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)V

    iget-object p1, p0, Lcom/bumptech/glide/load/c/r;->c:Ljava/util/List;

    if-eqz p4, :cond_10

    iget-object p2, p0, Lcom/bumptech/glide/load/c/r;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    goto :goto_11

    :cond_10
    const/4 p2, 0x0

    :goto_11
    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private b(Lcom/bumptech/glide/load/c/r$b;)Lcom/bumptech/glide/load/c/n;
    .registers 3
    .param p1    # Lcom/bumptech/glide/load/c/r$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/c/r$b<",
            "**>;)",
            "Lcom/bumptech/glide/load/c/n<",
            "TModel;TData;>;"
        }
    .end annotation

    iget-object p1, p1, Lcom/bumptech/glide/load/c/r$b;->b:Lcom/bumptech/glide/load/c/o;

    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/c/o;->a(Lcom/bumptech/glide/load/c/r;)Lcom/bumptech/glide/load/c/n;

    move-result-object p1

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/c/n;

    return-object p1
.end method


# virtual methods
.method final declared-synchronized a(Ljava/lang/Class;)Ljava/util/List;
    .registers 6
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;)",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/c/n<",
            "TModel;*>;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/load/c/r;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/c/r$b;

    iget-object v3, p0, Lcom/bumptech/glide/load/c/r;->e:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/load/c/r$b;->a(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/bumptech/glide/load/c/r;->e:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/c/r;->b(Lcom/bumptech/glide/load/c/r$b;)Lcom/bumptech/glide/load/c/n;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/bumptech/glide/load/c/r;->e:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_37} :catch_3c
    .catchall {:try_start_1 .. :try_end_37} :catchall_3a

    goto :goto_c

    :cond_38
    monitor-exit p0

    return-object v0

    :catchall_3a
    move-exception p1

    goto :goto_43

    :catch_3c
    move-exception p1

    :try_start_3d
    iget-object v0, p0, Lcom/bumptech/glide/load/c/r;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    throw p1
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_3a

    :goto_43
    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .registers 7
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

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
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/c/o<",
            "+TModel;+TData;>;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/load/c/r;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/c/r$b;

    invoke-virtual {v2, p1, p2}, Lcom/bumptech/glide/load/c/r$b;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-object v2, v2, Lcom/bumptech/glide/load/c/r$b;->b:Lcom/bumptech/glide/load/c/o;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_29

    goto :goto_c

    :cond_27
    monitor-exit p0

    return-object v0

    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)V
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

    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bumptech/glide/load/c/r;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/c/n;
    .registers 10
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/load/c/r;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/load/c/r$b;

    iget-object v6, p0, Lcom/bumptech/glide/load/c/r;->e:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    const/4 v4, 0x1

    goto :goto_f

    :cond_25
    invoke-virtual {v5, p1, p2}, Lcom/bumptech/glide/load/c/r$b;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/bumptech/glide/load/c/r;->e:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v5}, Lcom/bumptech/glide/load/c/r;->b(Lcom/bumptech/glide/load/c/r$b;)Lcom/bumptech/glide/load/c/n;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/bumptech/glide/load/c/r;->e:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_3d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_4c

    iget-object p1, p0, Lcom/bumptech/glide/load/c/r;->f:Landroid/support/v4/util/Pools$Pool;

    new-instance p2, Lcom/bumptech/glide/load/c/q;

    invoke-direct {p2, v0, p1}, Lcom/bumptech/glide/load/c/q;-><init>(Ljava/util/List;Landroid/support/v4/util/Pools$Pool;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4a} :catch_68
    .catchall {:try_start_1 .. :try_end_4a} :catchall_66

    monitor-exit p0

    return-object p2

    :cond_4c
    :try_start_4c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_5a

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/c/n;
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_58} :catch_68
    .catchall {:try_start_4c .. :try_end_58} :catchall_66

    monitor-exit p0

    return-object p1

    :cond_5a
    if-eqz v4, :cond_60

    :try_start_5c
    sget-object p1, Lcom/bumptech/glide/load/c/r;->b:Lcom/bumptech/glide/load/c/n;
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5e} :catch_68
    .catchall {:try_start_5c .. :try_end_5e} :catchall_66

    monitor-exit p0

    return-object p1

    :cond_60
    :try_start_60
    new-instance v0, Lcom/bumptech/glide/m$c;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/m$c;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    throw v0
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_66} :catch_68
    .catchall {:try_start_60 .. :try_end_66} :catchall_66

    :catchall_66
    move-exception p1

    goto :goto_6f

    :catch_68
    move-exception p1

    :try_start_69
    iget-object p2, p0, Lcom/bumptech/glide/load/c/r;->e:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    throw p1
    :try_end_6f
    .catchall {:try_start_69 .. :try_end_6f} :catchall_66

    :goto_6f
    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized b(Ljava/lang/Class;)Ljava/util/List;
    .registers 6
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/load/c/r;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/c/r$b;

    iget-object v3, v2, Lcom/bumptech/glide/load/c/r$b;->a:Ljava/lang/Class;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/load/c/r$b;->a(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v2, v2, Lcom/bumptech/glide/load/c/r$b;->a:Ljava/lang/Class;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2e

    goto :goto_c

    :cond_2c
    monitor-exit p0

    return-object v0

    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized b(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)V
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

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bumptech/glide/load/c/r;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized c(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Ljava/util/List;
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
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

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
            "+TModel;+TData;>;)",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/c/o<",
            "+TModel;+TData;>;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/c/r;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/c/r;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method
