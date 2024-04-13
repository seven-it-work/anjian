.class public final Lcom/bumptech/glide/load/b/b/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/b/b/j;


# instance fields
.field private a:Lcom/bumptech/glide/load/b/b/j$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final a(Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/b/u;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            ")",
            "Lcom/bumptech/glide/load/b/u<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/b/u;)Lcom/bumptech/glide/load/b/u;
    .registers 3
    .param p1    # Lcom/bumptech/glide/load/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/b/u;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Lcom/bumptech/glide/load/b/u<",
            "*>;)",
            "Lcom/bumptech/glide/load/b/u<",
            "*>;"
        }
    .end annotation

    if-eqz p2, :cond_7

    iget-object p1, p0, Lcom/bumptech/glide/load/b/b/k;->a:Lcom/bumptech/glide/load/b/b/j$a;

    invoke-interface {p1, p2}, Lcom/bumptech/glide/load/b/b/j$a;->b(Lcom/bumptech/glide/load/b/u;)V

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(F)V
    .registers 2

    return-void
.end method

.method public final a(I)V
    .registers 2

    return-void
.end method

.method public final a(Lcom/bumptech/glide/load/b/b/j$a;)V
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/b/b/j$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/bumptech/glide/load/b/b/k;->a:Lcom/bumptech/glide/load/b/b/j$a;

    return-void
.end method

.method public final b()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final c()V
    .registers 1

    return-void
.end method
