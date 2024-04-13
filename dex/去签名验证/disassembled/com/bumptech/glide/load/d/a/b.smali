.class public final Lcom/bumptech/glide/load/d/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/l<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/b/a/e;

.field private final b:Lcom/bumptech/glide/load/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/l<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/l;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/a/e;",
            "Lcom/bumptech/glide/load/l<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/d/a/b;->a:Lcom/bumptech/glide/load/b/a/e;

    iput-object p2, p0, Lcom/bumptech/glide/load/d/a/b;->b:Lcom/bumptech/glide/load/l;

    return-void
.end method

.method private a(Lcom/bumptech/glide/load/b/u;Ljava/io/File;Lcom/bumptech/glide/load/j;)Z
    .registers 7
    .param p1    # Lcom/bumptech/glide/load/b/u;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/u<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/load/j;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/b;->b:Lcom/bumptech/glide/load/l;

    new-instance v1, Lcom/bumptech/glide/load/d/a/f;

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/u;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v2, p0, Lcom/bumptech/glide/load/d/a/b;->a:Lcom/bumptech/glide/load/b/a/e;

    invoke-direct {v1, p1, v2}, Lcom/bumptech/glide/load/d/a/f;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/b/a/e;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/bumptech/glide/load/l;->a(Ljava/lang/Object;Ljava/io/File;Lcom/bumptech/glide/load/j;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/c;
    .registers 3
    .param p1    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/b;->b:Lcom/bumptech/glide/load/l;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/l;->a(Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/io/File;Lcom/bumptech/glide/load/j;)Z
    .registers 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/bumptech/glide/load/b/u;

    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/b;->b:Lcom/bumptech/glide/load/l;

    new-instance v1, Lcom/bumptech/glide/load/d/a/f;

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/u;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v2, p0, Lcom/bumptech/glide/load/d/a/b;->a:Lcom/bumptech/glide/load/b/a/e;

    invoke-direct {v1, p1, v2}, Lcom/bumptech/glide/load/d/a/f;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/b/a/e;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/bumptech/glide/load/l;->a(Ljava/lang/Object;Ljava/io/File;Lcom/bumptech/glide/load/j;)Z

    move-result p1

    return p1
.end method
