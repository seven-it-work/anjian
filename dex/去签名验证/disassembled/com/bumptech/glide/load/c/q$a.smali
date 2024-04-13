.class final Lcom/bumptech/glide/load/c/q$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/a/d;
.implements Lcom/bumptech/glide/load/a/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/c/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/a/d<",
        "TData;>;",
        "Lcom/bumptech/glide/load/a/d$a<",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/a/d<",
            "TData;>;>;"
        }
    .end annotation
.end field

.field private final b:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Lcom/bumptech/glide/l;

.field private e:Lcom/bumptech/glide/load/a/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/a/d$a<",
            "-TData;>;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/support/v4/util/Pools$Pool;)V
    .registers 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/util/Pools$Pool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/a/d<",
            "TData;>;>;",
            "Landroid/support/v4/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/load/c/q$a;->b:Landroid/support/v4/util/Pools$Pool;

    invoke-static {p1}, Lcom/bumptech/glide/util/i;->a(Ljava/util/Collection;)Ljava/util/Collection;

    iput-object p1, p0, Lcom/bumptech/glide/load/c/q$a;->a:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Lcom/bumptech/glide/load/c/q$a;->c:I

    return-void
.end method

.method private e()V
    .registers 6

    iget v0, p0, Lcom/bumptech/glide/load/c/q$a;->c:I

    iget-object v1, p0, Lcom/bumptech/glide/load/c/q$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1a

    iget v0, p0, Lcom/bumptech/glide/load/c/q$a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/load/c/q$a;->c:I

    iget-object v0, p0, Lcom/bumptech/glide/load/c/q$a;->d:Lcom/bumptech/glide/l;

    iget-object v1, p0, Lcom/bumptech/glide/load/c/q$a;->e:Lcom/bumptech/glide/load/a/d$a;

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/load/c/q$a;->a(Lcom/bumptech/glide/l;Lcom/bumptech/glide/load/a/d$a;)V

    return-void

    :cond_1a
    iget-object v0, p0, Lcom/bumptech/glide/load/c/q$a;->f:Ljava/util/List;

    const-string v1, "Argument must not be null"

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bumptech/glide/load/c/q$a;->e:Lcom/bumptech/glide/load/a/d$a;

    new-instance v1, Lcom/bumptech/glide/load/b/p;

    const-string v2, "Fetch failed"

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/bumptech/glide/load/c/q$a;->f:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/b/p;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/a/d$a;->a(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/c/q$a;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/a/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/a/d;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/bumptech/glide/l;Lcom/bumptech/glide/load/a/d$a;)V
    .registers 4
    .param p1    # Lcom/bumptech/glide/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/a/d$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/l;",
            "Lcom/bumptech/glide/load/a/d$a<",
            "-TData;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/c/q$a;->d:Lcom/bumptech/glide/l;

    iput-object p2, p0, Lcom/bumptech/glide/load/c/q$a;->e:Lcom/bumptech/glide/load/a/d$a;

    iget-object p2, p0, Lcom/bumptech/glide/load/c/q$a;->b:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {p2}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/bumptech/glide/load/c/q$a;->f:Ljava/util/List;

    iget-object p2, p0, Lcom/bumptech/glide/load/c/q$a;->a:Ljava/util/List;

    iget v0, p0, Lcom/bumptech/glide/load/c/q$a;->c:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/load/a/d;

    invoke-interface {p2, p1, p0}, Lcom/bumptech/glide/load/a/d;->a(Lcom/bumptech/glide/l;Lcom/bumptech/glide/load/a/d$a;)V

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 4
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/load/c/q$a;->f:Ljava/util/List;

    const-string v1, "Argument must not be null"

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/bumptech/glide/load/c/q$a;->e()V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TData;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/bumptech/glide/load/c/q$a;->e:Lcom/bumptech/glide/load/a/d$a;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/a/d$a;->a(Ljava/lang/Object;)V

    return-void

    :cond_8
    invoke-direct {p0}, Lcom/bumptech/glide/load/c/q$a;->e()V

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/c/q$a;->f:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bumptech/glide/load/c/q$a;->b:Landroid/support/v4/util/Pools$Pool;

    iget-object v1, p0, Lcom/bumptech/glide/load/c/q$a;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/c/q$a;->f:Ljava/util/List;

    iget-object v0, p0, Lcom/bumptech/glide/load/c/q$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/a/d;

    invoke-interface {v1}, Lcom/bumptech/glide/load/a/d;->b()V

    goto :goto_14

    :cond_24
    return-void
.end method

.method public final c()V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/c/q$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/a/d;

    invoke-interface {v1}, Lcom/bumptech/glide/load/a/d;->c()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final d()Lcom/bumptech/glide/load/a;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/c/q$a;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/a/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/a/d;->d()Lcom/bumptech/glide/load/a;

    move-result-object v0

    return-object v0
.end method
