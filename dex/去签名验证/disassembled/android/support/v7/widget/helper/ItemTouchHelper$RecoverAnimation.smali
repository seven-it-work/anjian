.class Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecoverAnimation"
.end annotation


# instance fields
.field final mActionState:I

.field final mAnimationType:I

.field mEnded:Z

.field private mFraction:F

.field public mIsPendingCleanup:Z

.field mOverridden:Z

.field final mStartDx:F

.field final mStartDy:F

.field final mTargetX:F

.field final mTargetY:F

.field private final mValueAnimator:Landroid/animation/ValueAnimator;

.field final mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field mX:F

.field mY:F


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIFFFF)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    iput p3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    iput p2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mAnimationType:I

    iput-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput p4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    iput p5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    iput p6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetX:F

    iput p7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetY:F

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_3e

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation$1;

    invoke-direct {p3, p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation$1;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->setFraction(F)V

    return-void

    nop

    :array_3e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public cancel()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->setFraction(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-boolean p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    const/4 v0, 0x1

    if-nez p1, :cond_a

    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    :cond_a
    iput-boolean v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public setDuration(J)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public setFraction(F)V
    .registers 2

    iput p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mFraction:F

    return-void
.end method

.method public start()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public update()V
    .registers 5

    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    iget v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    :goto_10
    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    goto :goto_20

    :cond_13
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    iget v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mFraction:F

    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetX:F

    iget v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    sub-float/2addr v2, v3

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    goto :goto_10

    :goto_20
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    iget v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_33

    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    :goto_30
    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    return-void

    :cond_33
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    iget v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mFraction:F

    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetY:F

    iget v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    sub-float/2addr v2, v3

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    goto :goto_30
.end method
