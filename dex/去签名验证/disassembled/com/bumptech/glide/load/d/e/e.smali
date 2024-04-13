.class public final Lcom/bumptech/glide/load/d/e/e;
.super Lcom/bumptech/glide/load/d/c/b;

# interfaces
.implements Lcom/bumptech/glide/load/b/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/d/c/b<",
        "Lcom/bumptech/glide/load/d/e/c;",
        ">;",
        "Lcom/bumptech/glide/load/b/q;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/d/e/c;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/d/c/b;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/bumptech/glide/load/d/e/c;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/bumptech/glide/load/d/e/c;

    return-object v0
.end method

.method public final c()I
    .registers 5

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/e;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/load/d/e/c;

    iget-object v0, v0, Lcom/bumptech/glide/load/d/e/c;->c:Lcom/bumptech/glide/load/d/e/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/d/e/c$a;->a:Lcom/bumptech/glide/load/d/e/g;

    iget-object v1, v0, Lcom/bumptech/glide/load/d/e/g;->a:Lcom/bumptech/glide/c/b;

    invoke-interface {v1}, Lcom/bumptech/glide/c/b;->m()I

    move-result v1

    invoke-virtual {v0}, Lcom/bumptech/glide/load/d/e/g;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/bumptech/glide/load/d/e/g;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Lcom/bumptech/glide/load/d/e/g;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/bumptech/glide/util/k;->a(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final d()V
    .registers 6

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/e;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/load/d/e/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/d/e/c;->stop()V

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/e;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/load/d/e/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bumptech/glide/load/d/e/c;->d:Z

    iget-object v0, v0, Lcom/bumptech/glide/load/d/e/c;->c:Lcom/bumptech/glide/load/d/e/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/d/e/c$a;->a:Lcom/bumptech/glide/load/d/e/g;

    iget-object v2, v0, Lcom/bumptech/glide/load/d/e/g;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/d/e/g;->d()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/bumptech/glide/load/d/e/g;->d:Z

    iget-object v2, v0, Lcom/bumptech/glide/load/d/e/g;->f:Lcom/bumptech/glide/load/d/e/g$a;

    const/4 v3, 0x0

    if-eqz v2, :cond_2b

    iget-object v2, v0, Lcom/bumptech/glide/load/d/e/g;->c:Lcom/bumptech/glide/o;

    iget-object v4, v0, Lcom/bumptech/glide/load/d/e/g;->f:Lcom/bumptech/glide/load/d/e/g$a;

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/o;->a(Lcom/bumptech/glide/request/target/Target;)V

    iput-object v3, v0, Lcom/bumptech/glide/load/d/e/g;->f:Lcom/bumptech/glide/load/d/e/g$a;

    :cond_2b
    iget-object v2, v0, Lcom/bumptech/glide/load/d/e/g;->h:Lcom/bumptech/glide/load/d/e/g$a;

    if-eqz v2, :cond_38

    iget-object v2, v0, Lcom/bumptech/glide/load/d/e/g;->c:Lcom/bumptech/glide/o;

    iget-object v4, v0, Lcom/bumptech/glide/load/d/e/g;->h:Lcom/bumptech/glide/load/d/e/g$a;

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/o;->a(Lcom/bumptech/glide/request/target/Target;)V

    iput-object v3, v0, Lcom/bumptech/glide/load/d/e/g;->h:Lcom/bumptech/glide/load/d/e/g$a;

    :cond_38
    iget-object v2, v0, Lcom/bumptech/glide/load/d/e/g;->k:Lcom/bumptech/glide/load/d/e/g$a;

    if-eqz v2, :cond_45

    iget-object v2, v0, Lcom/bumptech/glide/load/d/e/g;->c:Lcom/bumptech/glide/o;

    iget-object v4, v0, Lcom/bumptech/glide/load/d/e/g;->k:Lcom/bumptech/glide/load/d/e/g$a;

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/o;->a(Lcom/bumptech/glide/request/target/Target;)V

    iput-object v3, v0, Lcom/bumptech/glide/load/d/e/g;->k:Lcom/bumptech/glide/load/d/e/g$a;

    :cond_45
    iget-object v2, v0, Lcom/bumptech/glide/load/d/e/g;->a:Lcom/bumptech/glide/c/b;

    invoke-interface {v2}, Lcom/bumptech/glide/c/b;->o()V

    iput-boolean v1, v0, Lcom/bumptech/glide/load/d/e/g;->g:Z

    return-void
.end method

.method public final e()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/e;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/load/d/e/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/d/e/c;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method
