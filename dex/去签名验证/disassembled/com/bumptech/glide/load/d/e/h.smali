.class public final Lcom/bumptech/glide/load/d/e/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/k<",
        "Lcom/bumptech/glide/c/b;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/b/a/e;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/b/a/e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/d/e/h;->a:Lcom/bumptech/glide/load/b/a/e;

    return-void
.end method

.method private a(Lcom/bumptech/glide/c/b;)Lcom/bumptech/glide/load/b/u;
    .registers 3
    .param p1    # Lcom/bumptech/glide/c/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/c/b;",
            ")",
            "Lcom/bumptech/glide/load/b/u<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/bumptech/glide/c/b;->n()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/h;->a:Lcom/bumptech/glide/load/b/a/e;

    invoke-static {p1, v0}, Lcom/bumptech/glide/load/d/a/f;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/b/a/e;)Lcom/bumptech/glide/load/d/a/f;

    move-result-object p1

    return-object p1
.end method

.method private static a()Z
    .registers 1

    const/4 v0, 0x1

    return v0
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/bumptech/glide/c/b;

    invoke-interface {p1}, Lcom/bumptech/glide/c/b;->n()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lcom/bumptech/glide/load/d/e/h;->a:Lcom/bumptech/glide/load/b/a/e;

    invoke-static {p1, p2}, Lcom/bumptech/glide/load/d/a/f;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/b/a/e;)Lcom/bumptech/glide/load/d/a/f;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/load/j;)Z
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

    const/4 p1, 0x1

    return p1
.end method
