.class public final Lcom/bumptech/glide/load/d/a/ab;
.super Lcom/bumptech/glide/load/d/a/ac;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/d/a/ac<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-static {p1}, Lcom/bumptech/glide/f;->b(Landroid/content/Context;)Lcom/bumptech/glide/f;

    move-result-object p1

    iget-object p1, p1, Lcom/bumptech/glide/f;->a:Lcom/bumptech/glide/load/b/a/e;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/d/a/ab;-><init>(Lcom/bumptech/glide/load/b/a/e;)V

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/load/b/a/e;)V
    .registers 3

    new-instance v0, Lcom/bumptech/glide/load/d/a/ac$d;

    invoke-direct {v0}, Lcom/bumptech/glide/load/d/a/ac$d;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/d/a/ac;-><init>(Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/d/a/ac$c;)V

    return-void
.end method
