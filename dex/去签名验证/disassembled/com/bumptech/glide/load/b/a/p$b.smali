.class final Lcom/bumptech/glide/load/b/a/p$b;
.super Lcom/bumptech/glide/load/b/a/d;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/b/a/d<",
        "Lcom/bumptech/glide/load/b/a/p$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bumptech/glide/load/b/a/d;-><init>()V

    return-void
.end method

.method private c()Lcom/bumptech/glide/load/b/a/p$a;
    .registers 2

    new-instance v0, Lcom/bumptech/glide/load/b/a/p$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/b/a/p$a;-><init>(Lcom/bumptech/glide/load/b/a/p$b;)V

    return-object v0
.end method


# virtual methods
.method protected final synthetic a()Lcom/bumptech/glide/load/b/a/m;
    .registers 2

    new-instance v0, Lcom/bumptech/glide/load/b/a/p$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/b/a/p$a;-><init>(Lcom/bumptech/glide/load/b/a/p$b;)V

    return-object v0
.end method

.method public final a(I)Lcom/bumptech/glide/load/b/a/p$a;
    .registers 3

    invoke-super {p0}, Lcom/bumptech/glide/load/b/a/d;->b()Lcom/bumptech/glide/load/b/a/m;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/b/a/p$a;

    iput p1, v0, Lcom/bumptech/glide/load/b/a/p$a;->a:I

    return-object v0
.end method
