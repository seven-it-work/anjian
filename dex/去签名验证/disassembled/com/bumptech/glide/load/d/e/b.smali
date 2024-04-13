.class public final Lcom/bumptech/glide/load/d/e/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/c/b$a;


# instance fields
.field private final a:Lcom/bumptech/glide/load/b/a/e;

.field private final b:Lcom/bumptech/glide/load/b/a/b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/load/b/a/e;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/d/e/b;-><init>(Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/b/a/b;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/b/a/b;)V
    .registers 3
    .param p2    # Lcom/bumptech/glide/load/b/a/b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/d/e/b;->a:Lcom/bumptech/glide/load/b/a/e;

    iput-object p2, p0, Lcom/bumptech/glide/load/d/e/b;->b:Lcom/bumptech/glide/load/b/a/b;

    return-void
.end method


# virtual methods
.method public final a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 5
    .param p3    # Landroid/graphics/Bitmap$Config;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/b;->a:Lcom/bumptech/glide/load/b/a/e;

    invoke-interface {v0, p1, p2, p3}, Lcom/bumptech/glide/load/b/a/e;->b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/b;->a:Lcom/bumptech/glide/load/b/a/e;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/b/a/e;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final a([B)V
    .registers 3
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/b;->b:Lcom/bumptech/glide/load/b/a/b;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/b;->b:Lcom/bumptech/glide/load/b/a/b;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/b/a/b;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final a([I)V
    .registers 3
    .param p1    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/b;->b:Lcom/bumptech/glide/load/b/a/b;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/b;->b:Lcom/bumptech/glide/load/b/a/b;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/b/a/b;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(I)[B
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/b;->b:Lcom/bumptech/glide/load/b/a/b;

    if-nez v0, :cond_7

    new-array p1, p1, [B

    return-object p1

    :cond_7
    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/b;->b:Lcom/bumptech/glide/load/b/a/b;

    const-class v1, [B

    invoke-interface {v0, p1, v1}, Lcom/bumptech/glide/load/b/a/b;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public final b(I)[I
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/b;->b:Lcom/bumptech/glide/load/b/a/b;

    if-nez v0, :cond_7

    new-array p1, p1, [I

    return-object p1

    :cond_7
    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/b;->b:Lcom/bumptech/glide/load/b/a/b;

    const-class v1, [I

    invoke-interface {v0, p1, v1}, Lcom/bumptech/glide/load/b/a/b;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    return-object p1
.end method
