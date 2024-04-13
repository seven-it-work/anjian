.class final Lcom/bumptech/glide/load/b/k$a;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/bumptech/glide/load/b/u;Z)Lcom/bumptech/glide/load/b/o;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/b/u<",
            "TR;>;Z)",
            "Lcom/bumptech/glide/load/b/o<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/b/o;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/bumptech/glide/load/b/o;-><init>(Lcom/bumptech/glide/load/b/u;ZZ)V

    return-object v0
.end method
