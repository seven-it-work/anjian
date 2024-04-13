.class public final Lcom/bumptech/glide/load/d/e/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/m<",
        "Lcom/bumptech/glide/load/d/e/c;",
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


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/m;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/m;

    iput-object p1, p0, Lcom/bumptech/glide/load/d/e/f;->c:Lcom/bumptech/glide/load/m;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/bumptech/glide/load/b/u;II)Lcom/bumptech/glide/load/b/u;
    .registers 9
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
            "Lcom/bumptech/glide/load/d/e/c;",
            ">;II)",
            "Lcom/bumptech/glide/load/b/u<",
            "Lcom/bumptech/glide/load/d/e/c;",
            ">;"
        }
    .end annotation

    invoke-interface {p2}, Lcom/bumptech/glide/load/b/u;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/d/e/c;

    invoke-static {p1}, Lcom/bumptech/glide/f;->b(Landroid/content/Context;)Lcom/bumptech/glide/f;

    move-result-object v1

    iget-object v1, v1, Lcom/bumptech/glide/f;->a:Lcom/bumptech/glide/load/b/a/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/d/e/c;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Lcom/bumptech/glide/load/d/a/f;

    invoke-direct {v3, v2, v1}, Lcom/bumptech/glide/load/d/a/f;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/b/a/e;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/d/e/f;->c:Lcom/bumptech/glide/load/m;

    invoke-interface {v1, p1, v3, p3, p4}, Lcom/bumptech/glide/load/m;->a(Landroid/content/Context;Lcom/bumptech/glide/load/b/u;II)Lcom/bumptech/glide/load/b/u;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_24

    invoke-interface {v3}, Lcom/bumptech/glide/load/b/u;->d()V

    :cond_24
    invoke-interface {p1}, Lcom/bumptech/glide/load/b/u;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcom/bumptech/glide/load/d/e/f;->c:Lcom/bumptech/glide/load/m;

    iget-object p4, v0, Lcom/bumptech/glide/load/d/e/c;->c:Lcom/bumptech/glide/load/d/e/c$a;

    iget-object p4, p4, Lcom/bumptech/glide/load/d/e/c$a;->a:Lcom/bumptech/glide/load/d/e/g;

    invoke-virtual {p4, p3, p1}, Lcom/bumptech/glide/load/d/e/g;->a(Lcom/bumptech/glide/load/m;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public final a(Ljava/security/MessageDigest;)V
    .registers 3
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/f;->c:Lcom/bumptech/glide/load/m;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/m;->a(Ljava/security/MessageDigest;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/bumptech/glide/load/d/e/f;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/bumptech/glide/load/d/e/f;

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/f;->c:Lcom/bumptech/glide/load/m;

    iget-object p1, p1, Lcom/bumptech/glide/load/d/e/f;->c:Lcom/bumptech/glide/load/m;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/f;->c:Lcom/bumptech/glide/load/m;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
