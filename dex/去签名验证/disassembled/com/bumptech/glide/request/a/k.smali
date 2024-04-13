.class public final Lcom/bumptech/glide/request/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/request/a/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/a/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/a/f<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/request/a/k$a;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/request/a/k$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/request/a/k;->a:Lcom/bumptech/glide/request/a/k$a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/bumptech/glide/request/a/f$a;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/bumptech/glide/request/a/f$a;",
            ")Z"
        }
    .end annotation

    invoke-interface {p2}, Lcom/bumptech/glide/request/a/f$a;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p2, p0, Lcom/bumptech/glide/request/a/k;->a:Lcom/bumptech/glide/request/a/k$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/bumptech/glide/request/a/k$a;->a(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_16
    const/4 p1, 0x0

    return p1
.end method
