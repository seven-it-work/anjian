.class final Lcom/bumptech/glide/load/b/b;
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
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/g;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/load/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/f<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Lcom/bumptech/glide/load/b/e$a;

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

    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/bumptech/glide/load/b/b;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/b/f;Lcom/bumptech/glide/load/b/e$a;)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;Lcom/bumptech/glide/load/b/f;Lcom/bumptech/glide/load/b/e$a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/g;",
            ">;",
            "Lcom/bumptech/glide/load/b/f<",
            "*>;",
            "Lcom/bumptech/glide/load/b/e$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/load/b/b;->d:I

    iput-object p1, p0, Lcom/bumptech/glide/load/b/b;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/bumptech/glide/load/b/b;->b:Lcom/bumptech/glide/load/b/f;

    iput-object p3, p0, Lcom/bumptech/glide/load/b/b;->c:Lcom/bumptech/glide/load/b/e$a;

    return-void
.end method

.method private c()Z
    .registers 3

    iget v0, p0, Lcom/bumptech/glide/load/b/b;->g:I

    iget-object v1, p0, Lcom/bumptech/glide/load/b/b;->f:Ljava/util/List;

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

    iget-object v0, p0, Lcom/bumptech/glide/load/b/b;->c:Lcom/bumptech/glide/load/b/e$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/b;->e:Lcom/bumptech/glide/load/g;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/b;->h:Lcom/bumptech/glide/load/c/n$a;

    iget-object v2, v2, Lcom/bumptech/glide/load/c/n$a;->c:Lcom/bumptech/glide/load/a/d;

    sget-object v3, Lcom/bumptech/glide/load/a;->DATA_DISK_CACHE:Lcom/bumptech/glide/load/a;

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/bumptech/glide/load/b/e$a;->a(Lcom/bumptech/glide/load/g;Ljava/lang/Exception;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/a;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lcom/bumptech/glide/load/b/b;->c:Lcom/bumptech/glide/load/b/e$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/b;->e:Lcom/bumptech/glide/load/g;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/b;->h:Lcom/bumptech/glide/load/c/n$a;

    iget-object v3, v2, Lcom/bumptech/glide/load/c/n$a;->c:Lcom/bumptech/glide/load/a/d;

    sget-object v4, Lcom/bumptech/glide/load/a;->DATA_DISK_CACHE:Lcom/bumptech/glide/load/a;

    iget-object v5, p0, Lcom/bumptech/glide/load/b/b;->e:Lcom/bumptech/glide/load/g;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/b/e$a;->a(Lcom/bumptech/glide/load/g;Ljava/lang/Object;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/g;)V

    return-void
.end method

.method public final a()Z
    .registers 8

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/load/b/b;->f:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5c

    invoke-direct {p0}, Lcom/bumptech/glide/load/b/b;->c()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_5c

    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/b;->h:Lcom/bumptech/glide/load/c/n$a;

    :cond_10
    :goto_10
    if-nez v2, :cond_5b

    invoke-direct {p0}, Lcom/bumptech/glide/load/b/b;->c()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/bumptech/glide/load/b/b;->f:Ljava/util/List;

    iget v3, p0, Lcom/bumptech/glide/load/b/b;->g:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/bumptech/glide/load/b/b;->g:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/c/n;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/b;->i:Ljava/io/File;

    iget-object v4, p0, Lcom/bumptech/glide/load/b/b;->b:Lcom/bumptech/glide/load/b/f;

    iget v4, v4, Lcom/bumptech/glide/load/b/f;->e:I

    iget-object v5, p0, Lcom/bumptech/glide/load/b/b;->b:Lcom/bumptech/glide/load/b/f;

    iget v5, v5, Lcom/bumptech/glide/load/b/f;->f:I

    iget-object v6, p0, Lcom/bumptech/glide/load/b/b;->b:Lcom/bumptech/glide/load/b/f;

    iget-object v6, v6, Lcom/bumptech/glide/load/b/f;->i:Lcom/bumptech/glide/load/j;

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/bumptech/glide/load/c/n;->a(Ljava/lang/Object;IILcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/c/n$a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/b;->h:Lcom/bumptech/glide/load/c/n$a;

    iget-object v0, p0, Lcom/bumptech/glide/load/b/b;->h:Lcom/bumptech/glide/load/c/n$a;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bumptech/glide/load/b/b;->b:Lcom/bumptech/glide/load/b/f;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/b;->h:Lcom/bumptech/glide/load/c/n$a;

    iget-object v3, v3, Lcom/bumptech/glide/load/c/n$a;->c:Lcom/bumptech/glide/load/a/d;

    invoke-interface {v3}, Lcom/bumptech/glide/load/a/d;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/load/b/f;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bumptech/glide/load/b/b;->h:Lcom/bumptech/glide/load/c/n$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/c/n$a;->c:Lcom/bumptech/glide/load/a/d;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/b;->b:Lcom/bumptech/glide/load/b/f;

    iget-object v2, v2, Lcom/bumptech/glide/load/b/f;->o:Lcom/bumptech/glide/l;

    invoke-interface {v0, v2, p0}, Lcom/bumptech/glide/load/a/d;->a(Lcom/bumptech/glide/l;Lcom/bumptech/glide/load/a/d$a;)V

    const/4 v2, 0x1

    goto :goto_10

    :cond_5b
    return v2

    :cond_5c
    :goto_5c
    iget v0, p0, Lcom/bumptech/glide/load/b/b;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/load/b/b;->d:I

    iget v0, p0, Lcom/bumptech/glide/load/b/b;->d:I

    iget-object v1, p0, Lcom/bumptech/glide/load/b/b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_6c

    return v2

    :cond_6c
    iget-object v0, p0, Lcom/bumptech/glide/load/b/b;->a:Ljava/util/List;

    iget v1, p0, Lcom/bumptech/glide/load/b/b;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/g;

    new-instance v1, Lcom/bumptech/glide/load/b/c;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/b;->b:Lcom/bumptech/glide/load/b/f;

    iget-object v3, v3, Lcom/bumptech/glide/load/b/f;->n:Lcom/bumptech/glide/load/g;

    invoke-direct {v1, v0, v3}, Lcom/bumptech/glide/load/b/c;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/g;)V

    iget-object v3, p0, Lcom/bumptech/glide/load/b/b;->b:Lcom/bumptech/glide/load/b/f;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/b/f;->a()Lcom/bumptech/glide/load/b/b/a;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/bumptech/glide/load/b/b/a;->a(Lcom/bumptech/glide/load/g;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/b/b;->i:Ljava/io/File;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/b;->i:Ljava/io/File;

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/b;->e:Lcom/bumptech/glide/load/g;

    iget-object v0, p0, Lcom/bumptech/glide/load/b/b;->b:Lcom/bumptech/glide/load/b/f;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/b;->i:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/b/f;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/b;->f:Ljava/util/List;

    iput v2, p0, Lcom/bumptech/glide/load/b/b;->g:I

    goto/16 :goto_0
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/b/b;->h:Lcom/bumptech/glide/load/c/n$a;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/bumptech/glide/load/c/n$a;->c:Lcom/bumptech/glide/load/a/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/a/d;->c()V

    :cond_9
    return-void
.end method
