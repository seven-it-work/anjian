.class public final Lcom/bumptech/glide/load/d/f/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/d/f/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/d/f/e<",
        "Landroid/graphics/drawable/Drawable;",
        "[B>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/b/a/e;

.field private final b:Lcom/bumptech/glide/load/d/f/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d/f/e<",
            "Landroid/graphics/Bitmap;",
            "[B>;"
        }
    .end annotation
.end field

.field private final c:Lcom/bumptech/glide/load/d/f/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d/f/e<",
            "Lcom/bumptech/glide/load/d/e/c;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/d/f/e;Lcom/bumptech/glide/load/d/f/e;)V
    .registers 4
    .param p1    # Lcom/bumptech/glide/load/b/a/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/d/f/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/d/f/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/a/e;",
            "Lcom/bumptech/glide/load/d/f/e<",
            "Landroid/graphics/Bitmap;",
            "[B>;",
            "Lcom/bumptech/glide/load/d/f/e<",
            "Lcom/bumptech/glide/load/d/e/c;",
            "[B>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/d/f/c;->a:Lcom/bumptech/glide/load/b/a/e;

    iput-object p2, p0, Lcom/bumptech/glide/load/d/f/c;->b:Lcom/bumptech/glide/load/d/f/e;

    iput-object p3, p0, Lcom/bumptech/glide/load/d/f/c;->c:Lcom/bumptech/glide/load/d/f/e;

    return-void
.end method

.method private static a(Lcom/bumptech/glide/load/b/u;)Lcom/bumptech/glide/load/b/u;
    .registers 1
    .param p0    # Lcom/bumptech/glide/load/b/u;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/u<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/bumptech/glide/load/b/u<",
            "Lcom/bumptech/glide/load/d/e/c;",
            ">;"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/b/u;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/b/u;
    .registers 5
    .param p1    # Lcom/bumptech/glide/load/b/u;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/u<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/bumptech/glide/load/j;",
            ")",
            "Lcom/bumptech/glide/load/b/u<",
            "[B>;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/u;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1d

    iget-object p1, p0, Lcom/bumptech/glide/load/d/f/c;->b:Lcom/bumptech/glide/load/d/f/e;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/d/f/c;->a:Lcom/bumptech/glide/load/b/a/e;

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/d/a/f;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/b/a/e;)Lcom/bumptech/glide/load/d/a/f;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/bumptech/glide/load/d/f/e;->a(Lcom/bumptech/glide/load/b/u;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/b/u;

    move-result-object p1

    return-object p1

    :cond_1d
    instance-of v0, v0, Lcom/bumptech/glide/load/d/e/c;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/bumptech/glide/load/d/f/c;->c:Lcom/bumptech/glide/load/d/f/e;

    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/load/d/f/e;->a(Lcom/bumptech/glide/load/b/u;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/b/u;

    move-result-object p1

    return-object p1

    :cond_28
    const/4 p1, 0x0

    return-object p1
.end method
