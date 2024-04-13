.class public final Lcom/bumptech/glide/load/d/a/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/m<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lcom/bumptech/glide/load/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/m;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/d/a/q;->c:Lcom/bumptech/glide/load/m;

    iput-boolean p2, p0, Lcom/bumptech/glide/load/d/a/q;->d:Z

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/bumptech/glide/load/b/u;)Lcom/bumptech/glide/load/b/u;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/b/u<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/load/b/u<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/bumptech/glide/load/d/a/u;->a(Landroid/content/res/Resources;Lcom/bumptech/glide/load/b/u;)Lcom/bumptech/glide/load/b/u;

    move-result-object p0

    return-object p0
.end method

.method private a()Lcom/bumptech/glide/load/m;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/bumptech/glide/load/b/u;II)Lcom/bumptech/glide/load/b/u;
    .registers 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/b/u;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/b/u<",
            "Landroid/graphics/drawable/Drawable;",
            ">;II)",
            "Lcom/bumptech/glide/load/b/u<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/bumptech/glide/f;->b(Landroid/content/Context;)Lcom/bumptech/glide/f;

    move-result-object v0

    iget-object v0, v0, Lcom/bumptech/glide/f;->a:Lcom/bumptech/glide/load/b/a/e;

    invoke-interface {p2}, Lcom/bumptech/glide/load/b/u;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, p3, p4}, Lcom/bumptech/glide/load/d/a/p;->a(Lcom/bumptech/glide/load/b/a/e;Landroid/graphics/drawable/Drawable;II)Lcom/bumptech/glide/load/b/u;

    move-result-object v0

    if-nez v0, :cond_30

    iget-boolean p1, p0, Lcom/bumptech/glide/load/d/a/q;->d:Z

    if-eqz p1, :cond_2f

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unable to convert "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " to a Bitmap"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2f
    return-object p2

    :cond_30
    iget-object v1, p0, Lcom/bumptech/glide/load/d/a/q;->c:Lcom/bumptech/glide/load/m;

    invoke-interface {v1, p1, v0, p3, p4}, Lcom/bumptech/glide/load/m;->a(Landroid/content/Context;Lcom/bumptech/glide/load/b/u;II)Lcom/bumptech/glide/load/b/u;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_40

    invoke-interface {p3}, Lcom/bumptech/glide/load/b/u;->d()V

    return-object p2

    :cond_40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/bumptech/glide/load/d/a/u;->a(Landroid/content/res/Resources;Lcom/bumptech/glide/load/b/u;)Lcom/bumptech/glide/load/b/u;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/security/MessageDigest;)V
    .registers 3
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/q;->c:Lcom/bumptech/glide/load/m;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/m;->a(Ljava/security/MessageDigest;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/bumptech/glide/load/d/a/q;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/bumptech/glide/load/d/a/q;

    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/q;->c:Lcom/bumptech/glide/load/m;

    iget-object p1, p1, Lcom/bumptech/glide/load/d/a/q;->c:Lcom/bumptech/glide/load/m;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/q;->c:Lcom/bumptech/glide/load/m;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
