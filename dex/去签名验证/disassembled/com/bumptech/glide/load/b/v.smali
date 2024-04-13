.class final Lcom/bumptech/glide/load/b/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/a/d$a;
.implements Lcom/bumptech/glide/load/b/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/a/d$a<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/bumptech/glide/load/b/e;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/b/e$a;

.field private final b:Lcom/bumptech/glide/load/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/f<",
            "*>;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:Lcom/bumptech/glide/load/g;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/c/n<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field private g:I

.field private volatile h:Lcom/bumptech/glide/load/c/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/c/n$a<",
            "*>;"
        }
    .end annotation
.end field

.field private i:Ljava/io/File;

.field private j:Lcom/bumptech/glide/load/b/w;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/b/f;Lcom/bumptech/glide/load/b/e$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/f<",
            "*>;",
            "Lcom/bumptech/glide/load/b/e$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/load/b/v;->d:I

    iput-object p1, p0, Lcom/bumptech/glide/load/b/v;->b:Lcom/bumptech/glide/load/b/f;

    iput-object p2, p0, Lcom/bumptech/glide/load/b/v;->a:Lcom/bumptech/glide/load/b/e$a;

    return-void
.end method

.method private c()Z
    .registers 3

    iget v0, p0, Lcom/bumptech/glide/load/b/v;->g:I

    iget-object v1, p0, Lcom/bumptech/glide/load/b/v;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .registers 6
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/load/b/v;->a:Lcom/bumptech/glide/load/b/e$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/v;->j:Lcom/bumptech/glide/load/b/w;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/v;->h:Lcom/bumptech/glide/load/c/n$a;

    iget-object v2, v2, Lcom/bumptech/glide/load/c/n$a;->c:Lcom/bumptech/glide/load/a/d;

    sget-object v3, Lcom/bumptech/glide/load/a;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/a;

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/bumptech/glide/load/b/e$a;->a(Lcom/bumptech/glide/load/g;Ljava/lang/Exception;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/a;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lcom/bumptech/glide/load/b/v;->a:Lcom/bumptech/glide/load/b/e$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/v;->e:Lcom/bumptech/glide/load/g;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/v;->h:Lcom/bumptech/glide/load/c/n$a;

    iget-object v3, v2, Lcom/bumptech/glide/load/c/n$a;->c:Lcom/bumptech/glide/load/a/d;

    sget-object v4, Lcom/bumptech/glide/load/a;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/a;

    iget-object v5, p0, Lcom/bumptech/glide/load/b/v;->j:Lcom/bumptech/glide/load/b/w;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/b/e$a;->a(Lcom/bumptech/glide/load/g;Ljava/lang/Object;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/g;)V

    return-void
.end method

.method public final a()Z
    .registers 15

    iget-object v0, p0, Lcom/bumptech/glide/load/b/v;->b:Lcom/bumptech/glide/load/b/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/bumptech/glide/load/b/v;->b:Lcom/bumptech/glide/load/b/f;

    iget-object v3, v1, Lcom/bumptech/glide/load/b/f;->c:Lcom/bumptech/glide/h;

    iget-object v3, v3, Lcom/bumptech/glide/h;->d:Lcom/bumptech/glide/m;

    iget-object v4, v1, Lcom/bumptech/glide/load/b/f;->d:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    iget-object v5, v1, Lcom/bumptech/glide/load/b/f;->g:Ljava/lang/Class;

    iget-object v1, v1, Lcom/bumptech/glide/load/b/f;->k:Ljava/lang/Class;

    invoke-virtual {v3, v4, v5, v1}, Lcom/bumptech/glide/m;->b(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_35

    const-class v3, Ljava/io/File;

    iget-object v4, p0, Lcom/bumptech/glide/load/b/v;->b:Lcom/bumptech/glide/load/b/f;

    iget-object v4, v4, Lcom/bumptech/glide/load/b/f;->k:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    return v2

    :cond_35
    :goto_35
    iget-object v3, p0, Lcom/bumptech/glide/load/b/v;->f:Ljava/util/List;

    const/4 v4, 0x1

    if-eqz v3, :cond_90

    invoke-direct {p0}, Lcom/bumptech/glide/load/b/v;->c()Z

    move-result v3

    if-nez v3, :cond_41

    goto :goto_90

    :cond_41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/v;->h:Lcom/bumptech/glide/load/c/n$a;

    :cond_44
    :goto_44
    if-nez v2, :cond_8f

    invoke-direct {p0}, Lcom/bumptech/glide/load/b/v;->c()Z

    move-result v0

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/bumptech/glide/load/b/v;->f:Ljava/util/List;

    iget v1, p0, Lcom/bumptech/glide/load/b/v;->g:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/bumptech/glide/load/b/v;->g:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/c/n;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/v;->i:Ljava/io/File;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/v;->b:Lcom/bumptech/glide/load/b/f;

    iget v3, v3, Lcom/bumptech/glide/load/b/f;->e:I

    iget-object v5, p0, Lcom/bumptech/glide/load/b/v;->b:Lcom/bumptech/glide/load/b/f;

    iget v5, v5, Lcom/bumptech/glide/load/b/f;->f:I

    iget-object v6, p0, Lcom/bumptech/glide/load/b/v;->b:Lcom/bumptech/glide/load/b/f;

    iget-object v6, v6, Lcom/bumptech/glide/load/b/f;->i:Lcom/bumptech/glide/load/j;

    invoke-interface {v0, v1, v3, v5, v6}, Lcom/bumptech/glide/load/c/n;->a(Ljava/lang/Object;IILcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/c/n$a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/v;->h:Lcom/bumptech/glide/load/c/n$a;

    iget-object v0, p0, Lcom/bumptech/glide/load/b/v;->h:Lcom/bumptech/glide/load/c/n$a;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/bumptech/glide/load/b/v;->b:Lcom/bumptech/glide/load/b/f;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/v;->h:Lcom/bumptech/glide/load/c/n$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/c/n$a;->c:Lcom/bumptech/glide/load/a/d;

    invoke-interface {v1}, Lcom/bumptech/glide/load/a/d;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/b/f;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/bumptech/glide/load/b/v;->h:Lcom/bumptech/glide/load/c/n$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/c/n$a;->c:Lcom/bumptech/glide/load/a/d;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/v;->b:Lcom/bumptech/glide/load/b/f;

    iget-object v1, v1, Lcom/bumptech/glide/load/b/f;->o:Lcom/bumptech/glide/l;

    invoke-interface {v0, v1, p0}, Lcom/bumptech/glide/load/a/d;->a(Lcom/bumptech/glide/l;Lcom/bumptech/glide/load/a/d$a;)V

    const/4 v2, 0x1

    goto :goto_44

    :cond_8f
    return v2

    :cond_90
    :goto_90
    iget v3, p0, Lcom/bumptech/glide/load/b/v;->d:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/bumptech/glide/load/b/v;->d:I

    iget v3, p0, Lcom/bumptech/glide/load/b/v;->d:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_ad

    iget v3, p0, Lcom/bumptech/glide/load/b/v;->c:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/bumptech/glide/load/b/v;->c:I

    iget v3, p0, Lcom/bumptech/glide/load/b/v;->c:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_ab

    return v2

    :cond_ab
    iput v2, p0, Lcom/bumptech/glide/load/b/v;->d:I

    :cond_ad
    iget v3, p0, Lcom/bumptech/glide/load/b/v;->c:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/g;

    iget v4, p0, Lcom/bumptech/glide/load/b/v;->d:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/Class;

    iget-object v4, p0, Lcom/bumptech/glide/load/b/v;->b:Lcom/bumptech/glide/load/b/f;

    invoke-virtual {v4, v11}, Lcom/bumptech/glide/load/b/f;->c(Ljava/lang/Class;)Lcom/bumptech/glide/load/m;

    move-result-object v10

    new-instance v13, Lcom/bumptech/glide/load/b/w;

    iget-object v4, p0, Lcom/bumptech/glide/load/b/v;->b:Lcom/bumptech/glide/load/b/f;

    iget-object v4, v4, Lcom/bumptech/glide/load/b/f;->c:Lcom/bumptech/glide/h;

    iget-object v5, v4, Lcom/bumptech/glide/h;->c:Lcom/bumptech/glide/load/b/a/b;

    iget-object v4, p0, Lcom/bumptech/glide/load/b/v;->b:Lcom/bumptech/glide/load/b/f;

    iget-object v7, v4, Lcom/bumptech/glide/load/b/f;->n:Lcom/bumptech/glide/load/g;

    iget-object v4, p0, Lcom/bumptech/glide/load/b/v;->b:Lcom/bumptech/glide/load/b/f;

    iget v8, v4, Lcom/bumptech/glide/load/b/f;->e:I

    iget-object v4, p0, Lcom/bumptech/glide/load/b/v;->b:Lcom/bumptech/glide/load/b/f;

    iget v9, v4, Lcom/bumptech/glide/load/b/f;->f:I

    iget-object v4, p0, Lcom/bumptech/glide/load/b/v;->b:Lcom/bumptech/glide/load/b/f;

    iget-object v12, v4, Lcom/bumptech/glide/load/b/f;->i:Lcom/bumptech/glide/load/j;

    move-object v4, v13

    move-object v6, v3

    invoke-direct/range {v4 .. v12}, Lcom/bumptech/glide/load/b/w;-><init>(Lcom/bumptech/glide/load/b/a/b;Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/g;IILcom/bumptech/glide/load/m;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)V

    iput-object v13, p0, Lcom/bumptech/glide/load/b/v;->j:Lcom/bumptech/glide/load/b/w;

    iget-object v4, p0, Lcom/bumptech/glide/load/b/v;->b:Lcom/bumptech/glide/load/b/f;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/b/f;->a()Lcom/bumptech/glide/load/b/b/a;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/load/b/v;->j:Lcom/bumptech/glide/load/b/w;

    invoke-interface {v4, v5}, Lcom/bumptech/glide/load/b/b/a;->a(Lcom/bumptech/glide/load/g;)Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lcom/bumptech/glide/load/b/v;->i:Ljava/io/File;

    iget-object v4, p0, Lcom/bumptech/glide/load/b/v;->i:Ljava/io/File;

    if-eqz v4, :cond_35

    iput-object v3, p0, Lcom/bumptech/glide/load/b/v;->e:Lcom/bumptech/glide/load/g;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/v;->b:Lcom/bumptech/glide/load/b/f;

    iget-object v4, p0, Lcom/bumptech/glide/load/b/v;->i:Ljava/io/File;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/load/b/f;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/bumptech/glide/load/b/v;->f:Ljava/util/List;

    iput v2, p0, Lcom/bumptech/glide/load/b/v;->g:I

    goto/16 :goto_35
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/b/v;->h:Lcom/bumptech/glide/load/c/n$a;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/bumptech/glide/load/c/n$a;->c:Lcom/bumptech/glide/load/a/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/a/d;->c()V

    :cond_9
    return-void
.end method
