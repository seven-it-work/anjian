.class public abstract Lcom/bumptech/glide/request/target/ImageViewTarget;
.super Lcom/bumptech/glide/request/target/ViewTarget;

# interfaces
.implements Lcom/bumptech/glide/request/a/f$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/target/ViewTarget<",
        "Landroid/widget/ImageView;",
        "TZ;>;",
        "Lcom/bumptech/glide/request/a/f$a;"
    }
.end annotation


# instance fields
.field private animatable:Landroid/graphics/drawable/Animatable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/ViewTarget;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/request/target/ViewTarget;-><init>(Landroid/view/View;Z)V

    return-void
.end method

.method private maybeUpdateAnimatable(Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation

    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_e

    check-cast p1, Landroid/graphics/drawable/Animatable;

    iput-object p1, p0, Lcom/bumptech/glide/request/target/ImageViewTarget;->animatable:Landroid/graphics/drawable/Animatable;

    iget-object p1, p0, Lcom/bumptech/glide/request/target/ImageViewTarget;->animatable:Landroid/graphics/drawable/Animatable;

    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    return-void

    :cond_e
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bumptech/glide/request/target/ImageViewTarget;->animatable:Landroid/graphics/drawable/Animatable;

    return-void
.end method

.method private setResourceInternal(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/target/ImageViewTarget;->setResource(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/ImageViewTarget;->maybeUpdateAnimatable(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/target/ImageViewTarget;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/target/ViewTarget;->onLoadCleared(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/bumptech/glide/request/target/ImageViewTarget;->animatable:Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bumptech/glide/request/target/ImageViewTarget;->animatable:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/target/ImageViewTarget;->setResourceInternal(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/target/ImageViewTarget;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/target/ViewTarget;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/target/ImageViewTarget;->setResourceInternal(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/target/ImageViewTarget;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/target/ViewTarget;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/target/ImageViewTarget;->setResourceInternal(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/target/ImageViewTarget;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/a/f;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/a/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;",
            "Lcom/bumptech/glide/request/a/f<",
            "-TZ;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_d

    invoke-interface {p2, p1, p0}, Lcom/bumptech/glide/request/a/f;->a(Ljava/lang/Object;Lcom/bumptech/glide/request/a/f$a;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_d

    :cond_9
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/ImageViewTarget;->maybeUpdateAnimatable(Ljava/lang/Object;)V

    return-void

    :cond_d
    :goto_d
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/ImageViewTarget;->setResourceInternal(Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/request/target/ImageViewTarget;->animatable:Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bumptech/glide/request/target/ImageViewTarget;->animatable:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_9
    return-void
.end method

.method public onStop()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/request/target/ImageViewTarget;->animatable:Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bumptech/glide/request/target/ImageViewTarget;->animatable:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_9
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/request/target/ImageViewTarget;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected abstract setResource(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation
.end method
