.class public final Lcom/bumptech/glide/load/b/a$b;
.super Ljava/lang/ref/WeakReference;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lcom/bumptech/glide/load/b/o<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/bumptech/glide/load/g;

.field final b:Z

.field c:Lcom/bumptech/glide/load/b/u;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/u<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/b/o;Ljava/lang/ref/ReferenceQueue;Z)V
    .registers 5
    .param p1    # Lcom/bumptech/glide/load/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/b/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/ref/ReferenceQueue;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Lcom/bumptech/glide/load/b/o<",
            "*>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Lcom/bumptech/glide/load/b/o<",
            "*>;>;Z)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    const-string p3, "Argument must not be null"

    invoke-static {p1, p3}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/g;

    iput-object p1, p0, Lcom/bumptech/glide/load/b/a$b;->a:Lcom/bumptech/glide/load/g;

    iget-boolean p1, p2, Lcom/bumptech/glide/load/b/o;->a:Z

    if-eqz p1, :cond_1e

    if-eqz p4, :cond_1e

    iget-object p1, p2, Lcom/bumptech/glide/load/b/o;->b:Lcom/bumptech/glide/load/b/u;

    const-string p3, "Argument must not be null"

    invoke-static {p1, p3}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/b/u;

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    iput-object p1, p0, Lcom/bumptech/glide/load/b/a$b;->c:Lcom/bumptech/glide/load/b/u;

    iget-boolean p1, p2, Lcom/bumptech/glide/load/b/o;->a:Z

    iput-boolean p1, p0, Lcom/bumptech/glide/load/b/a$b;->b:Z

    return-void
.end method


# virtual methods
.method final a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/a$b;->c:Lcom/bumptech/glide/load/b/u;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/a$b;->clear()V

    return-void
.end method
