.class public final Lcom/bumptech/glide/load/d/a/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/k<",
        "Landroid/net/Uri;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/d/c/e;

.field private final b:Lcom/bumptech/glide/load/b/a/e;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/d/c/e;Lcom/bumptech/glide/load/b/a/e;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/d/a/w;->a:Lcom/bumptech/glide/load/d/c/e;

    iput-object p2, p0, Lcom/bumptech/glide/load/d/a/w;->b:Lcom/bumptech/glide/load/b/a/e;

    return-void
.end method

.method private a(Landroid/net/Uri;II)Lcom/bumptech/glide/load/b/u;
    .registers 5
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II)",
            "Lcom/bumptech/glide/load/b/u<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/w;->a:Lcom/bumptech/glide/load/d/c/e;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/d/c/e;->a(Landroid/net/Uri;)Lcom/bumptech/glide/load/b/u;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return-object p1

    :cond_a
    invoke-interface {p1}, Lcom/bumptech/glide/load/b/u;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/w;->b:Lcom/bumptech/glide/load/b/a/e;

    invoke-static {v0, p1, p2, p3}, Lcom/bumptech/glide/load/d/a/p;->a(Lcom/bumptech/glide/load/b/a/e;Landroid/graphics/drawable/Drawable;II)Lcom/bumptech/glide/load/b/u;

    move-result-object p1

    return-object p1
.end method

.method private static a(Landroid/net/Uri;)Z
    .registers 2
    .param p0    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "android.resource"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;IILcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/b/u;
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Landroid/net/Uri;

    iget-object p4, p0, Lcom/bumptech/glide/load/d/a/w;->a:Lcom/bumptech/glide/load/d/c/e;

    invoke-virtual {p4, p1}, Lcom/bumptech/glide/load/d/c/e;->a(Landroid/net/Uri;)Lcom/bumptech/glide/load/b/u;

    move-result-object p1

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return-object p1

    :cond_c
    invoke-interface {p1}, Lcom/bumptech/glide/load/b/u;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    iget-object p4, p0, Lcom/bumptech/glide/load/d/a/w;->b:Lcom/bumptech/glide/load/b/a/e;

    invoke-static {p4, p1, p2, p3}, Lcom/bumptech/glide/load/d/a/p;->a(Lcom/bumptech/glide/load/b/a/e;Landroid/graphics/drawable/Drawable;II)Lcom/bumptech/glide/load/b/u;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/load/j;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Landroid/net/Uri;

    const-string p2, "android.resource"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
