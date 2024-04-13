.class Landroid/support/v7/widget/ActionBarBackgroundDrawableV21;
.super Landroid/support/v7/widget/ActionBarBackgroundDrawable;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionBarContainer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ActionBarBackgroundDrawable;-><init>(Landroid/support/v7/widget/ActionBarContainer;)V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/graphics/Outline;)V
    .registers 3
    .param p1    # Landroid/graphics/Outline;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarBackgroundDrawableV21;->mContainer:Landroid/support/v7/widget/ActionBarContainer;

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarBackgroundDrawableV21;->mContainer:Landroid/support/v7/widget/ActionBarContainer;

    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarBackgroundDrawableV21;->mContainer:Landroid/support/v7/widget/ActionBarContainer;

    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    return-void

    :cond_14
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarBackgroundDrawableV21;->mContainer:Landroid/support/v7/widget/ActionBarContainer;

    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarBackgroundDrawableV21;->mContainer:Landroid/support/v7/widget/ActionBarContainer;

    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    :cond_21
    return-void
.end method
