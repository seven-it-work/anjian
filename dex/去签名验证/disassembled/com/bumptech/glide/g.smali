.class public final Lcom/bumptech/glide/g;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/p<",
            "**>;>;"
        }
    .end annotation
.end field

.field b:Lcom/bumptech/glide/load/b/j;

.field c:Lcom/bumptech/glide/load/b/a/e;

.field d:Lcom/bumptech/glide/load/b/a/b;

.field public e:Lcom/bumptech/glide/load/b/b/j;

.field f:Lcom/bumptech/glide/load/b/c/a;

.field g:Lcom/bumptech/glide/load/b/c/a;

.field public h:Lcom/bumptech/glide/load/b/b/a$a;

.field i:Lcom/bumptech/glide/load/b/b/l;

.field j:Lcom/bumptech/glide/manager/d;

.field k:I

.field l:Lcom/bumptech/glide/request/g;

.field m:Lcom/bumptech/glide/manager/k$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field n:Lcom/bumptech/glide/load/b/c/a;

.field o:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/g;->a:Ljava/util/Map;

    const/4 v0, 0x4

    iput v0, p0, Lcom/bumptech/glide/g;->k:I

    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/g;->l:Lcom/bumptech/glide/request/g;

    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/bumptech/glide/f;
    .registers 14
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/load/b/c/a;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/bumptech/glide/load/b/c/a;->b()Lcom/bumptech/glide/load/b/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/load/b/c/a;

    :cond_a
    iget-object v0, p0, Lcom/bumptech/glide/g;->g:Lcom/bumptech/glide/load/b/c/a;

    if-nez v0, :cond_14

    invoke-static {}, Lcom/bumptech/glide/load/b/c/a;->a()Lcom/bumptech/glide/load/b/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/g;->g:Lcom/bumptech/glide/load/b/c/a;

    :cond_14
    iget-object v0, p0, Lcom/bumptech/glide/g;->n:Lcom/bumptech/glide/load/b/c/a;

    if-nez v0, :cond_1e

    invoke-static {}, Lcom/bumptech/glide/load/b/c/a;->d()Lcom/bumptech/glide/load/b/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/g;->n:Lcom/bumptech/glide/load/b/c/a;

    :cond_1e
    iget-object v0, p0, Lcom/bumptech/glide/g;->i:Lcom/bumptech/glide/load/b/b/l;

    if-nez v0, :cond_2d

    new-instance v0, Lcom/bumptech/glide/load/b/b/l$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/b/b/l$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/b/l$a;->a()Lcom/bumptech/glide/load/b/b/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/g;->i:Lcom/bumptech/glide/load/b/b/l;

    :cond_2d
    iget-object v0, p0, Lcom/bumptech/glide/g;->j:Lcom/bumptech/glide/manager/d;

    if-nez v0, :cond_38

    new-instance v0, Lcom/bumptech/glide/manager/f;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/g;->j:Lcom/bumptech/glide/manager/d;

    :cond_38
    iget-object v0, p0, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/load/b/a/e;

    if-nez v0, :cond_52

    iget-object v0, p0, Lcom/bumptech/glide/g;->i:Lcom/bumptech/glide/load/b/b/l;

    iget v0, v0, Lcom/bumptech/glide/load/b/b/l;->b:I

    if-lez v0, :cond_4b

    new-instance v2, Lcom/bumptech/glide/load/b/a/k;

    int-to-long v3, v0

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/b/a/k;-><init>(J)V

    iput-object v2, p0, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/load/b/a/e;

    goto :goto_52

    :cond_4b
    new-instance v0, Lcom/bumptech/glide/load/b/a/f;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/a/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/load/b/a/e;

    :cond_52
    :goto_52
    iget-object v0, p0, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/load/b/a/b;

    if-nez v0, :cond_61

    new-instance v0, Lcom/bumptech/glide/load/b/a/j;

    iget-object v2, p0, Lcom/bumptech/glide/g;->i:Lcom/bumptech/glide/load/b/b/l;

    iget v2, v2, Lcom/bumptech/glide/load/b/b/l;->d:I

    invoke-direct {v0, v2}, Lcom/bumptech/glide/load/b/a/j;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/load/b/a/b;

    :cond_61
    iget-object v0, p0, Lcom/bumptech/glide/g;->e:Lcom/bumptech/glide/load/b/b/j;

    if-nez v0, :cond_71

    new-instance v0, Lcom/bumptech/glide/load/b/b/i;

    iget-object v2, p0, Lcom/bumptech/glide/g;->i:Lcom/bumptech/glide/load/b/b/l;

    iget v2, v2, Lcom/bumptech/glide/load/b/b/l;->c:I

    int-to-long v2, v2

    invoke-direct {v0, v2, v3}, Lcom/bumptech/glide/load/b/b/i;-><init>(J)V

    iput-object v0, p0, Lcom/bumptech/glide/g;->e:Lcom/bumptech/glide/load/b/b/j;

    :cond_71
    iget-object v0, p0, Lcom/bumptech/glide/g;->h:Lcom/bumptech/glide/load/b/b/a$a;

    if-nez v0, :cond_7c

    new-instance v0, Lcom/bumptech/glide/load/b/b/h;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/b/b/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bumptech/glide/g;->h:Lcom/bumptech/glide/load/b/b/a$a;

    :cond_7c
    iget-object v0, p0, Lcom/bumptech/glide/g;->b:Lcom/bumptech/glide/load/b/j;

    if-nez v0, :cond_9a

    new-instance v0, Lcom/bumptech/glide/load/b/j;

    iget-object v3, p0, Lcom/bumptech/glide/g;->e:Lcom/bumptech/glide/load/b/b/j;

    iget-object v4, p0, Lcom/bumptech/glide/g;->h:Lcom/bumptech/glide/load/b/b/a$a;

    iget-object v5, p0, Lcom/bumptech/glide/g;->g:Lcom/bumptech/glide/load/b/c/a;

    iget-object v6, p0, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/load/b/c/a;

    invoke-static {}, Lcom/bumptech/glide/load/b/c/a;->c()Lcom/bumptech/glide/load/b/c/a;

    move-result-object v7

    invoke-static {}, Lcom/bumptech/glide/load/b/c/a;->d()Lcom/bumptech/glide/load/b/c/a;

    move-result-object v8

    iget-boolean v9, p0, Lcom/bumptech/glide/g;->o:Z

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/bumptech/glide/load/b/j;-><init>(Lcom/bumptech/glide/load/b/b/j;Lcom/bumptech/glide/load/b/b/a$a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Z)V

    iput-object v0, p0, Lcom/bumptech/glide/g;->b:Lcom/bumptech/glide/load/b/j;

    :cond_9a
    new-instance v6, Lcom/bumptech/glide/manager/k;

    iget-object v0, p0, Lcom/bumptech/glide/g;->m:Lcom/bumptech/glide/manager/k$a;

    invoke-direct {v6, v0}, Lcom/bumptech/glide/manager/k;-><init>(Lcom/bumptech/glide/manager/k$a;)V

    new-instance v11, Lcom/bumptech/glide/f;

    iget-object v2, p0, Lcom/bumptech/glide/g;->b:Lcom/bumptech/glide/load/b/j;

    iget-object v3, p0, Lcom/bumptech/glide/g;->e:Lcom/bumptech/glide/load/b/b/j;

    iget-object v4, p0, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/load/b/a/e;

    iget-object v5, p0, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/load/b/a/b;

    iget-object v7, p0, Lcom/bumptech/glide/g;->j:Lcom/bumptech/glide/manager/d;

    iget v8, p0, Lcom/bumptech/glide/g;->k:I

    iget-object v0, p0, Lcom/bumptech/glide/g;->l:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->n()Lcom/bumptech/glide/request/g;

    move-result-object v9

    iget-object v10, p0, Lcom/bumptech/glide/g;->a:Ljava/util/Map;

    move-object v0, v11

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/f;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/b/j;Lcom/bumptech/glide/load/b/b/j;Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/b/a/b;Lcom/bumptech/glide/manager/k;Lcom/bumptech/glide/manager/d;ILcom/bumptech/glide/request/g;Ljava/util/Map;)V

    return-object v11
.end method

.method private a(I)Lcom/bumptech/glide/g;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x2

    if-lt p1, v0, :cond_a

    const/4 v0, 0x6

    if-le p1, v0, :cond_7

    goto :goto_a

    :cond_7
    iput p1, p0, Lcom/bumptech/glide/g;->k:I

    return-object p0

    :cond_a
    :goto_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Log level must be one of Log.VERBOSE, Log.DEBUG, Log.INFO, Log.WARN, or Log.ERROR"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/bumptech/glide/load/b/a/b;)Lcom/bumptech/glide/g;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/b/a/b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/load/b/a/b;

    return-object p0
.end method

.method private a(Lcom/bumptech/glide/load/b/a/e;)Lcom/bumptech/glide/g;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/b/a/e;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/load/b/a/e;

    return-object p0
.end method

.method private a(Lcom/bumptech/glide/load/b/b/a$a;)Lcom/bumptech/glide/g;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/b/b/a$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/g;->h:Lcom/bumptech/glide/load/b/b/a$a;

    return-object p0
.end method

.method private a(Lcom/bumptech/glide/load/b/b/j;)Lcom/bumptech/glide/g;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/b/b/j;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/g;->e:Lcom/bumptech/glide/load/b/b/j;

    return-object p0
.end method

.method private a(Lcom/bumptech/glide/load/b/b/l$a;)Lcom/bumptech/glide/g;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/b/b/l$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/b/l$a;->a()Lcom/bumptech/glide/load/b/b/l;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/g;->i:Lcom/bumptech/glide/load/b/b/l;

    return-object p0
.end method

.method private a(Lcom/bumptech/glide/load/b/b/l;)Lcom/bumptech/glide/g;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/b/b/l;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/g;->i:Lcom/bumptech/glide/load/b/b/l;

    return-object p0
.end method

.method private a(Lcom/bumptech/glide/load/b/c/a;)Lcom/bumptech/glide/g;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/b/c/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/load/b/c/a;

    return-object p0
.end method

.method private a(Lcom/bumptech/glide/load/b/j;)Lcom/bumptech/glide/g;
    .registers 2

    iput-object p1, p0, Lcom/bumptech/glide/g;->b:Lcom/bumptech/glide/load/b/j;

    return-object p0
.end method

.method private a(Lcom/bumptech/glide/manager/d;)Lcom/bumptech/glide/g;
    .registers 2
    .param p1    # Lcom/bumptech/glide/manager/d;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/g;->j:Lcom/bumptech/glide/manager/d;

    return-object p0
.end method

.method private a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/g;
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/g;->l:Lcom/bumptech/glide/request/g;

    return-object p0
.end method

.method private a(Ljava/lang/Class;Lcom/bumptech/glide/p;)Lcom/bumptech/glide/g;
    .registers 4
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/p;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/p<",
            "*TT;>;)",
            "Lcom/bumptech/glide/g;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/g;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private a(Z)Lcom/bumptech/glide/g;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/bumptech/glide/g;->o:Z

    return-object p0
.end method

.method private a(Lcom/bumptech/glide/manager/k$a;)V
    .registers 2
    .param p1    # Lcom/bumptech/glide/manager/k$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/bumptech/glide/g;->m:Lcom/bumptech/glide/manager/k$a;

    return-void
.end method

.method private b(Lcom/bumptech/glide/load/b/c/a;)Lcom/bumptech/glide/g;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/b/c/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/load/b/c/a;

    return-object p0
.end method

.method private c(Lcom/bumptech/glide/load/b/c/a;)Lcom/bumptech/glide/g;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/b/c/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/g;->g:Lcom/bumptech/glide/load/b/c/a;

    return-object p0
.end method

.method private d(Lcom/bumptech/glide/load/b/c/a;)Lcom/bumptech/glide/g;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/b/c/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/g;->n:Lcom/bumptech/glide/load/b/c/a;

    return-object p0
.end method
