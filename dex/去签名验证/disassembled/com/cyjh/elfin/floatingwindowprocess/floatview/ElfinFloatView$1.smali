.class final Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$1;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V
    .registers 6

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$1;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    const-wide/16 v0, 0x1b58

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .registers 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$1;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v2}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$1;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-virtual {v2}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$1;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v3}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->d(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpl-float v1, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-ltz v1, :cond_67

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v1

    iget v1, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    if-eq v1, v0, :cond_5d

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iget v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    if-ne v0, v3, :cond_3e

    goto :goto_5d

    :cond_3e
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iget v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    if-ne v0, v2, :cond_53

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$1;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200c3

    :goto_4f
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_53
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$1;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200b8

    goto :goto_4f

    :cond_5d
    :goto_5d
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$1;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200cc

    goto :goto_4f

    :cond_67
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v1

    iget v1, v1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    if-eq v1, v0, :cond_94

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iget v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    if-ne v0, v3, :cond_78

    goto :goto_94

    :cond_78
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iget v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    if-ne v0, v2, :cond_8a

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$1;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200c5

    goto :goto_4f

    :cond_8a
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$1;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200bc

    goto :goto_4f

    :cond_94
    :goto_94
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$1;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200ce

    goto :goto_4f
.end method

.method public final onTick(J)V
    .registers 6

    const-wide/16 v0, 0xbb8

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1d

    const-wide/16 v0, 0x7d0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1d

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$1;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Landroid/widget/ImageView;

    move-result-object p1

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$1;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a(Z)V

    :cond_1d
    return-void
.end method
