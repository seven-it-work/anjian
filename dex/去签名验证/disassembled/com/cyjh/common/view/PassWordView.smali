.class public Lcom/cyjh/common/view/PassWordView;
.super Landroid/view/View;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/os/Handler;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:I

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Landroid/content/Context;

.field private q:Ljava/lang/String;

.field private r:I

.field private s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cyjh/common/view/PassWordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cyjh/common/view/PassWordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/cyjh/common/view/PassWordView;->d:Z

    iput p2, p0, Lcom/cyjh/common/view/PassWordView;->j:I

    iput p2, p0, Lcom/cyjh/common/view/PassWordView;->k:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/cyjh/common/view/PassWordView;->l:Z

    const/16 p3, 0x28

    iput p3, p0, Lcom/cyjh/common/view/PassWordView;->m:I

    iput p3, p0, Lcom/cyjh/common/view/PassWordView;->n:I

    const-string p3, ""

    iput-object p3, p0, Lcom/cyjh/common/view/PassWordView;->o:Ljava/lang/String;

    const-string p3, "*"

    iput-object p3, p0, Lcom/cyjh/common/view/PassWordView;->q:Ljava/lang/String;

    const/16 p3, 0x12

    iput p3, p0, Lcom/cyjh/common/view/PassWordView;->r:I

    const/4 p3, 0x4

    iput p3, p0, Lcom/cyjh/common/view/PassWordView;->s:I

    iput-object p1, p0, Lcom/cyjh/common/view/PassWordView;->p:Landroid/content/Context;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    iget p2, p0, Lcom/cyjh/common/view/PassWordView;->s:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/CornerPathEffect;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p2, p3}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .registers 7

    iget-boolean v0, p0, Lcom/cyjh/common/view/PassWordView;->c:Z

    if-eqz v0, :cond_b3

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/cyjh/common/view/PassWordView;->p:Landroid/content/Context;

    iget v2, p0, Lcom/cyjh/common/view/PassWordView;->i:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/cyjh/common/view/PassWordView;->k:I

    const/high16 v1, 0x40000000    # 2.0f

    packed-switch v0, :pswitch_data_b4

    return-void

    :pswitch_20
    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcom/cyjh/common/view/PassWordView;->r:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/cyjh/common/view/PassWordView;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    iget-object v4, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    div-float v3, v0, v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    div-float/2addr v0, v1

    sub-float/2addr v3, v0

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :pswitch_5c
    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/cyjh/common/view/PassWordView;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    iget-object v4, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    div-float v3, v0, v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    div-float/2addr v0, v1

    sub-float/2addr v3, v0

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->q:Ljava/lang/String;

    iget-object v1, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :pswitch_9e
    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x41000000    # 8.0f

    iget-object v3, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_b3
    return-void

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_9e
        :pswitch_5c
        :pswitch_20
    .end packed-switch
.end method

.method static synthetic a(Lcom/cyjh/common/view/PassWordView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/cyjh/common/view/PassWordView;->e:Z

    return p0
.end method

.method static synthetic a(Lcom/cyjh/common/view/PassWordView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/cyjh/common/view/PassWordView;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/cyjh/common/view/PassWordView;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/common/view/PassWordView;->b:Landroid/os/Handler;

    return-object p0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .registers 10

    iget-boolean v0, p0, Lcom/cyjh/common/view/PassWordView;->e:Z

    if-eqz v0, :cond_52

    iget-boolean v0, p0, Lcom/cyjh/common/view/PassWordView;->l:Z

    if-eqz v0, :cond_52

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0xa

    if-gez v0, :cond_18

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :cond_18
    iget-object v1, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/cyjh/common/view/PassWordView;->p:Landroid/content/Context;

    iget v3, p0, Lcom/cyjh/common/view/PassWordView;->h:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v3, v1

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    int-to-float v4, v1

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    int-to-float v6, v1

    iget-object v7, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_52
    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .registers 9

    iget-boolean v0, p0, Lcom/cyjh/common/view/PassWordView;->d:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/cyjh/common/view/PassWordView;->p:Landroid/content/Context;

    iget v2, p0, Lcom/cyjh/common/view/PassWordView;->f:I

    :goto_a
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_19

    :cond_12
    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/cyjh/common/view/PassWordView;->p:Landroid/content/Context;

    iget v2, p0, Lcom/cyjh/common/view/PassWordView;->g:I

    goto :goto_a

    :goto_19
    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/cyjh/common/view/PassWordView;->j:I

    packed-switch v0, :pswitch_data_72

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    :pswitch_3d
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredHeight()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    :pswitch_54
    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x5

    int-to-float v2, v2

    iget-object v3, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_54
        :pswitch_3d
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/common/view/PassWordView;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/common/view/PassWordView;->c:Z

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->b:Landroid/os/Handler;

    if-nez v0, :cond_11

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cyjh/common/view/PassWordView;->b:Landroid/os/Handler;

    :cond_11
    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/cyjh/common/view/PassWordView;->l:Z

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->invalidate()V

    return-void

    :cond_1f
    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->b:Landroid/os/Handler;

    new-instance v1, Lcom/cyjh/common/view/PassWordView$1;

    invoke-direct {v1, p0}, Lcom/cyjh/common/view/PassWordView$1;-><init>(Lcom/cyjh/common/view/PassWordView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->b:Landroid/os/Handler;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_a
    const/4 v0, 0x0

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cyjh/common/view/PassWordView;->d:Z

    iput-boolean p1, p0, Lcom/cyjh/common/view/PassWordView;->c:Z

    goto :goto_17

    :cond_13
    iput-boolean v0, p0, Lcom/cyjh/common/view/PassWordView;->d:Z

    iput-boolean v0, p0, Lcom/cyjh/common/view/PassWordView;->c:Z

    :goto_17
    iput-boolean v0, p0, Lcom/cyjh/common/view/PassWordView;->e:Z

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->b:Landroid/os/Handler;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    iget-boolean v0, p0, Lcom/cyjh/common/view/PassWordView;->d:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/cyjh/common/view/PassWordView;->p:Landroid/content/Context;

    iget v2, p0, Lcom/cyjh/common/view/PassWordView;->f:I

    :goto_a
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_19

    :cond_12
    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/cyjh/common/view/PassWordView;->p:Landroid/content/Context;

    iget v2, p0, Lcom/cyjh/common/view/PassWordView;->g:I

    goto :goto_a

    :goto_19
    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/cyjh/common/view/PassWordView;->j:I

    packed-switch v0, :pswitch_data_176

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_70

    :pswitch_3d
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredHeight()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_70

    :pswitch_54
    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x5

    int-to-float v2, v2

    iget-object v3, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_70
    iget-boolean v0, p0, Lcom/cyjh/common/view/PassWordView;->e:Z

    if-eqz v0, :cond_c2

    iget-boolean v0, p0, Lcom/cyjh/common/view/PassWordView;->l:Z

    if-eqz v0, :cond_c2

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0xa

    if-gez v0, :cond_88

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :cond_88
    iget-object v1, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/cyjh/common/view/PassWordView;->p:Landroid/content/Context;

    iget v3, p0, Lcom/cyjh/common/view/PassWordView;->h:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v3, v1

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    int-to-float v4, v1

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    int-to-float v6, v1

    iget-object v7, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_c2
    iget-boolean v0, p0, Lcom/cyjh/common/view/PassWordView;->c:Z

    if-eqz v0, :cond_175

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/cyjh/common/view/PassWordView;->p:Landroid/content/Context;

    iget v2, p0, Lcom/cyjh/common/view/PassWordView;->i:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/cyjh/common/view/PassWordView;->k:I

    const/high16 v1, 0x40000000    # 2.0f

    packed-switch v0, :pswitch_data_17e

    return-void

    :pswitch_e2
    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcom/cyjh/common/view/PassWordView;->r:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/cyjh/common/view/PassWordView;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    iget-object v4, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    div-float v3, v0, v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    div-float/2addr v0, v1

    sub-float/2addr v3, v0

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :pswitch_11e
    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/cyjh/common/view/PassWordView;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    iget-object v4, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    div-float v3, v0, v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    div-float/2addr v0, v1

    sub-float/2addr v3, v0

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView;->q:Ljava/lang/String;

    iget-object v1, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :pswitch_160
    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x41000000    # 8.0f

    iget-object v3, p0, Lcom/cyjh/common/view/PassWordView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_175
    return-void

    :pswitch_data_176
    .packed-switch 0x1
        :pswitch_54
        :pswitch_3d
    .end packed-switch

    :pswitch_data_17e
    .packed-switch 0x0
        :pswitch_160
        :pswitch_11e
        :pswitch_e2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .registers 8

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-ne p1, v3, :cond_1a

    goto :goto_24

    :cond_1a
    iget v4, p0, Lcom/cyjh/common/view/PassWordView;->m:I

    if-ne p1, v2, :cond_23

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_24

    :cond_23
    move v0, v4

    :goto_24
    if-ne p2, v3, :cond_27

    goto :goto_31

    :cond_27
    iget p1, p0, Lcom/cyjh/common/view/PassWordView;->n:I

    if-ne p2, v2, :cond_30

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_31

    :cond_30
    move v1, p1

    :goto_31
    invoke-virtual {p0, v0, v1}, Lcom/cyjh/common/view/PassWordView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setDrawTxtContent(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/common/view/PassWordView;->q:Ljava/lang/String;

    return-void
.end method

.method public setInputState(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/cyjh/common/view/PassWordView;->d:Z

    return-void
.end method

.method public setInputStateColor(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/common/view/PassWordView;->f:I

    return-void
.end method

.method public setInputStateTextColor(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/common/view/PassWordView;->i:I

    return-void
.end method

.method public setNoinputColor(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/common/view/PassWordView;->g:I

    return-void
.end method

.method public setRemindLineColor(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/common/view/PassWordView;->h:I

    return-void
.end method

.method public setmBoxDrawType(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/common/view/PassWordView;->j:I

    return-void
.end method

.method public setmDrawBoxLineSize(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/common/view/PassWordView;->s:I

    return-void
.end method

.method public setmDrawTxtSize(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/common/view/PassWordView;->r:I

    return-void
.end method

.method public setmIsShowRemindLine(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/cyjh/common/view/PassWordView;->l:Z

    return-void
.end method

.method public setmPassText(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/common/view/PassWordView;->o:Ljava/lang/String;

    return-void
.end method

.method public setmShowPassType(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/common/view/PassWordView;->k:I

    return-void
.end method
