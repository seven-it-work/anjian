.class final Lcom/bumptech/glide/load/b/a/c$b;
.super Lcom/bumptech/glide/load/b/a/d;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/b/a/d<",
        "Lcom/bumptech/glide/load/b/a/c$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bumptech/glide/load/b/a/d;-><init>()V

    return-void
.end method

.method private c()Lcom/bumptech/glide/load/b/a/c$a;
    .registers 2

    new-instance v0, Lcom/bumptech/glide/load/b/a/c$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/b/a/c$a;-><init>(Lcom/bumptech/glide/load/b/a/c$b;)V

    return-object v0
.end method


# virtual methods
.method final a(IILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/b/a/c$a;
    .registers 5

    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/a/c$b;->b()Lcom/bumptech/glide/load/b/a/m;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/b/a/c$a;

    iput p1, v0, Lcom/bumptech/glide/load/b/a/c$a;->a:I

    iput p2, v0, Lcom/bumptech/glide/load/b/a/c$a;->b:I

    iput-object p3, v0, Lcom/bumptech/glide/load/b/a/c$a;->c:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method protected final synthetic a()Lcom/bumptech/glide/load/b/a/m;
    .registers 2

    new-instance v0, Lcom/bumptech/glide/load/b/a/c$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/b/a/c$a;-><init>(Lcom/bumptech/glide/load/b/a/c$b;)V

    return-object v0
.end method
