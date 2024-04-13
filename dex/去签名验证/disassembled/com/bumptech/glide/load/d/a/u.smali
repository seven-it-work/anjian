.class public final Lcom/bumptech/glide/load/d/a/u;
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
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private final b:Lcom/bumptech/glide/load/b/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/u<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/b/u;)V
    .registers 4
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/b/u;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/bumptech/glide/load/b/u<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Resources;

    iput-object p1, p0, Lcom/bumptech/glide/load/d/a/u;->a:Landroid/content/res/Resources;

    const-string p1, "Argument must not be null"

    invoke-static {p2, p1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/b/u;

    iput-object p1, p0, Lcom/bumptech/glide/load/d/a/u;->b:Lcom/bumptech/glide/load/b/u;

    return-void
.end method

.method public static a(Landroid/content/res/Resources;Lcom/bumptech/glide/load/b/u;)Lcom/bumptech/glide/load/b/u;
    .registers 3
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bumptech/glide/load/b/u;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/bumptech/glide/load/b/u<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/load/b/u<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Lcom/bumptech/glide/load/d/a/u;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/d/a/u;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/b/u;)V

    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/bumptech/glide/load/d/a/u;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0}, Lcom/bumptech/glide/f;->b(Landroid/content/Context;)Lcom/bumptech/glide/f;

    move-result-object p0

    iget-object p0, p0, Lcom/bumptech/glide/f;->a:Lcom/bumptech/glide/load/b/a/e;

    invoke-static {p1, p0}, Lcom/bumptech/glide/load/d/a/f;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/b/a/e;)Lcom/bumptech/glide/load/d/a/f;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/bumptech/glide/load/d/a/u;->a(Landroid/content/res/Resources;Lcom/bumptech/glide/load/b/u;)Lcom/bumptech/glide/load/b/u;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/d/a/u;

    return-object p0
.end method

.method private static a(Landroid/content/res/Resources;Lcom/bumptech/glide/load/b/a/e;Landroid/graphics/Bitmap;)Lcom/bumptech/glide/load/d/a/u;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2, p1}, Lcom/bumptech/glide/load/d/a/f;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/b/a/e;)Lcom/bumptech/glide/load/d/a/f;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/bumptech/glide/load/d/a/u;->a(Landroid/content/res/Resources;Lcom/bumptech/glide/load/b/u;)Lcom/bumptech/glide/load/b/u;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/d/a/u;

    return-object p0
.end method

.method private f()Landroid/graphics/drawable/BitmapDrawable;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/bumptech/glide/load/d/a/u;->a:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/bumptech/glide/load/d/a/u;->b:Lcom/bumptech/glide/load/b/u;

    invoke-interface {v2}, Lcom/bumptech/glide/load/b/u;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

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
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public final synthetic b()Ljava/lang/Object;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/bumptech/glide/load/d/a/u;->a:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/bumptech/glide/load/d/a/u;->b:Lcom/bumptech/glide/load/b/u;

    invoke-interface {v2}, Lcom/bumptech/glide/load/b/u;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public final c()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/u;->b:Lcom/bumptech/glide/load/b/u;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/u;->c()I

    move-result v0

    return v0
.end method

.method public final d()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/u;->b:Lcom/bumptech/glide/load/b/u;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/u;->d()V

    return-void
.end method

.method public final e()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/u;->b:Lcom/bumptech/glide/load/b/u;

    instance-of v0, v0, Lcom/bumptech/glide/load/b/q;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/u;->b:Lcom/bumptech/glide/load/b/u;

    check-cast v0, Lcom/bumptech/glide/load/b/q;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/q;->e()V

    :cond_d
    return-void
.end method
