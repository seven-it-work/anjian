.class final Lcom/bumptech/glide/load/b/a/o$b;
.super Lcom/bumptech/glide/load/b/a/d;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/b/a/d<",
        "Lcom/bumptech/glide/load/b/a/o$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bumptech/glide/load/b/a/d;-><init>()V

    return-void
.end method

.method private c()Lcom/bumptech/glide/load/b/a/o$a;
    .registers 2

    new-instance v0, Lcom/bumptech/glide/load/b/a/o$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/b/a/o$a;-><init>(Lcom/bumptech/glide/load/b/a/o$b;)V

    return-object v0
.end method


# virtual methods
.method protected final synthetic a()Lcom/bumptech/glide/load/b/a/m;
    .registers 2

    new-instance v0, Lcom/bumptech/glide/load/b/a/o$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/b/a/o$a;-><init>(Lcom/bumptech/glide/load/b/a/o$b;)V

    return-object v0
.end method

.method public final a(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/b/a/o$a;
    .registers 4

    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/a/o$b;->b()Lcom/bumptech/glide/load/b/a/m;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/b/a/o$a;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/b/a/o$a;->a(ILandroid/graphics/Bitmap$Config;)V

    return-object v0
.end method
