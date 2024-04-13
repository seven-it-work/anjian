.class public abstract Lcom/bumptech/glide/request/target/ViewTarget;
.super Lcom/bumptech/glide/request/target/BaseTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/target/BaseTarget<",
        "TZ;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewTarget"

.field private static isTagUsedAtLeastOnce:Z

.field private static tagId:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private attachStateListener:Landroid/view/View$OnAttachStateChangeListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private isAttachStateListenerAdded:Z

.field private isClearedByUs:Z

.field private final sizeDeterminer:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

.field protected final view:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/BaseTarget;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    new-instance v0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->sizeDeterminer:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .registers 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/ViewTarget;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lcom/bumptech/glide/request/target/ViewTarget;->waitForLayout()Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_8
    return-void
.end method

.method private getTag()Ljava/lang/Object;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/request/target/ViewTarget;->tagId:Ljava/lang/Integer;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    sget-object v1, Lcom/bumptech/glide/request/target/ViewTarget;->tagId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private maybeAddAttachStateListener()V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->isAttachStateListenerAdded:Z

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->isAttachStateListenerAdded:Z

    :cond_13
    return-void
.end method

.method private maybeRemoveAttachStateListener()V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->isAttachStateListenerAdded:Z

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->isAttachStateListenerAdded:Z

    :cond_13
    return-void
.end method

.method private setTag(Ljava/lang/Object;)V
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/bumptech/glide/request/target/ViewTarget;->tagId:Ljava/lang/Integer;

    if-nez v0, :cond_d

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bumptech/glide/request/target/ViewTarget;->isTagUsedAtLeastOnce:Z

    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    :cond_d
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    sget-object v1, Lcom/bumptech/glide/request/target/ViewTarget;->tagId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static setTagId(I)V
    .registers 2

    sget-object v0, Lcom/bumptech/glide/request/target/ViewTarget;->tagId:Ljava/lang/Integer;

    if-nez v0, :cond_10

    sget-boolean v0, Lcom/bumptech/glide/request/target/ViewTarget;->isTagUsedAtLeastOnce:Z

    if-eqz v0, :cond_9

    goto :goto_10

    :cond_9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lcom/bumptech/glide/request/target/ViewTarget;->tagId:Ljava/lang/Integer;

    return-void

    :cond_10
    :goto_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot set the tag id more than once or change the tag id after the first request has been made"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final clearOnDetach()Lcom/bumptech/glide/request/target/ViewTarget;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/target/ViewTarget<",
            "TT;TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    new-instance v0, Lcom/bumptech/glide/request/target/ViewTarget$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/request/target/ViewTarget$1;-><init>(Lcom/bumptech/glide/request/target/ViewTarget;)V

    iput-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/ViewTarget;->maybeAddAttachStateListener()V

    return-object p0
.end method

.method public getRequest()Lcom/bumptech/glide/request/c;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/ViewTarget;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    instance-of v1, v0, Lcom/bumptech/glide/request/c;

    if-eqz v1, :cond_d

    check-cast v0, Lcom/bumptech/glide/request/c;

    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must not call setTag() on a view Glide is targeting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .registers 3
    .param p1    # Lcom/bumptech/glide/request/target/SizeReadyCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->sizeDeterminer:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    return-object v0
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/target/BaseTarget;->onLoadCleared(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/bumptech/glide/request/target/ViewTarget;->sizeDeterminer:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

    invoke-virtual {p1}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->clearCallbacksAndListener()V

    iget-boolean p1, p0, Lcom/bumptech/glide/request/target/ViewTarget;->isClearedByUs:Z

    if-nez p1, :cond_f

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/ViewTarget;->maybeRemoveAttachStateListener()V

    :cond_f
    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/target/BaseTarget;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/ViewTarget;->maybeAddAttachStateListener()V

    return-void
.end method

.method pauseMyRequest()V
    .registers 3

    invoke-virtual {p0}, Lcom/bumptech/glide/request/target/ViewTarget;->getRequest()Lcom/bumptech/glide/request/c;

    move-result-object v0

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bumptech/glide/request/target/ViewTarget;->isClearedByUs:Z

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->isClearedByUs:Z

    :cond_f
    return-void
.end method

.method public removeCallback(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .registers 3
    .param p1    # Lcom/bumptech/glide/request/target/SizeReadyCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->sizeDeterminer:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->removeCallback(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    return-void
.end method

.method resumeMyRequest()V
    .registers 3

    invoke-virtual {p0}, Lcom/bumptech/glide/request/target/ViewTarget;->getRequest()Lcom/bumptech/glide/request/c;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->f()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->a()V

    :cond_f
    return-void
.end method

.method public setRequest(Lcom/bumptech/glide/request/c;)V
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/ViewTarget;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Target for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final waitForLayout()Lcom/bumptech/glide/request/target/ViewTarget;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/target/ViewTarget<",
            "TT;TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->sizeDeterminer:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->waitForLayout:Z

    return-object p0
.end method
