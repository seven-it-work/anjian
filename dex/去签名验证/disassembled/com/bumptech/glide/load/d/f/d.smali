.class public final Lcom/bumptech/glide/load/d/f/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/d/f/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/d/f/e<",
        "Lcom/bumptech/glide/load/d/e/c;",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/b/u;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/b/u;
    .registers 3
    .param p1    # Lcom/bumptech/glide/load/b/u;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/u<",
            "Lcom/bumptech/glide/load/d/e/c;",
            ">;",
            "Lcom/bumptech/glide/load/j;",
            ")",
            "Lcom/bumptech/glide/load/b/u<",
            "[B>;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/u;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/d/e/c;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/d/e/c;->b()Ljava/nio/ByteBuffer;

    move-result-object p1

    new-instance p2, Lcom/bumptech/glide/load/d/b/b;

    invoke-static {p1}, Lcom/bumptech/glide/util/a;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/bumptech/glide/load/d/b/b;-><init>([B)V

    return-object p2
.end method
