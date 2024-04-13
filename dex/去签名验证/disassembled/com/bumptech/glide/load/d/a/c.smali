.class public final Lcom/bumptech/glide/load/d/a/c;
.super Lcom/bumptech/glide/load/d/c/b;

# interfaces
.implements Lcom/bumptech/glide/load/b/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/d/c/b<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;",
        "Lcom/bumptech/glide/load/b/q;"
    }
.end annotation


# instance fields
.field private final b:Lcom/bumptech/glide/load/b/a/e;


# direct methods
.method private constructor <init>(Landroid/graphics/drawable/BitmapDrawable;Lcom/bumptech/glide/load/b/a/e;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/d/c/b;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object p2, p0, Lcom/bumptech/glide/load/d/a/c;->b:Lcom/bumptech/glide/load/b/a/e;

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
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public final c()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/c;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/util/k;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public final d()V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/c;->b:Lcom/bumptech/glide/load/b/a/e;

    iget-object v1, p0, Lcom/bumptech/glide/load/d/a/c;->a:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/b/a/e;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final e()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/c;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method
