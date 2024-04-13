.class public final Lcom/cyjh/common/util/toast/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/common/util/toast/m$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(FI)F
    .registers 3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    packed-switch p1, :pswitch_data_2a

    const/4 p0, 0x0

    return p0

    :pswitch_d
    iget p1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float p0, p0, p1

    const p1, 0x3d214285

    :goto_14
    mul-float p0, p0, p1

    return p0

    :pswitch_17
    iget p1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    goto :goto_14

    :pswitch_1a
    iget p1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float p0, p0, p1

    const p1, 0x3c638e39

    goto :goto_14

    :pswitch_22
    iget p1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    goto :goto_14

    :pswitch_25
    iget p1, v0, Landroid/util/DisplayMetrics;->density:F

    goto :goto_14

    :pswitch_28
    return p0

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1a
        :pswitch_17
        :pswitch_d
    .end packed-switch
.end method

.method private static a(F)I
    .registers 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p0, p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private static a(Landroid/view/View;)I
    .registers 2

    invoke-static {p0}, Lcom/cyjh/common/util/toast/m;->c(Landroid/view/View;)[I

    move-result-object p0

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method private static a(Landroid/view/View;Lcom/cyjh/common/util/toast/m$a;)V
    .registers 3

    new-instance v0, Lcom/cyjh/common/util/toast/m$1;

    invoke-direct {v0, p1, p0}, Lcom/cyjh/common/util/toast/m$1;-><init>(Lcom/cyjh/common/util/toast/m$a;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static b(F)I
    .registers 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private static b(Landroid/view/View;)I
    .registers 2

    invoke-static {p0}, Lcom/cyjh/common/util/toast/m;->c(Landroid/view/View;)[I

    move-result-object p0

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method

.method private static c(F)I
    .registers 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float p0, p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private static c(Landroid/view/View;)[I
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_d

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_d
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x0

    invoke-static {v2, v2, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_1f

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_23

    :cond_1f
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_23
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->measure(II)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    aput v1, v0, v2

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    aput p0, v0, v1

    return-object v0
.end method

.method private static d(F)I
    .registers 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method
