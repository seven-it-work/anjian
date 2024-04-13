.class public final Lcom/bumptech/glide/load/d/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/b/q;
.implements Lcom/bumptech/glide/load/b/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/b/q;",
        "Lcom/bumptech/glide/load/b/u<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:Lcom/bumptech/glide/load/b/a/e;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/b/a/e;)V
    .registers 4
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/b/a/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Bitmap must not be null"

    invoke-static {p1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/bumptech/glide/load/d/a/f;->a:Landroid/graphics/Bitmap;

    const-string p1, "BitmapPool must not be null"

    invoke-static {p2, p1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/b/a/e;

    iput-object p1, p0, Lcom/bumptech/glide/load/d/a/f;->b:Lcom/bumptech/glide/load/b/a/e;

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/b/a/e;)Lcom/bumptech/glide/load/d/a/f;
    .registers 3
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/bumptech/glide/load/b/a/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Lcom/bumptech/glide/load/d/a/f;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/d/a/f;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/b/a/e;)V

    return-object v0
.end method

.method private f()Landroid/graphics/Bitmap;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/f;->a:Landroid/graphics/Bitmap;

    return-object v0
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
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/f;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final c()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/f;->a:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/bumptech/glide/util/k;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public final d()V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/f;->b:Lcom/bumptech/glide/load/b/a/e;

    iget-object v1, p0, Lcom/bumptech/glide/load/d/a/f;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/b/a/e;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final e()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/f;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method
