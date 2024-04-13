.class public final Lcom/cyjh/common/view/ActionProcessButton$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/common/view/ActionProcessButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field static final a:Landroid/view/animation/Interpolator;

.field private static final m:I = -0x4d000000

.field private static final n:I = -0x80000000

.field private static final o:I = 0x4d000000

.field private static final p:I = 0x1a000000

.field private static final q:I = 0x7d0

.field private static final r:I = 0x3e8


# instance fields
.field final b:Landroid/graphics/RectF;

.field c:F

.field d:J

.field e:J

.field f:Z

.field g:I

.field h:I

.field i:I

.field j:I

.field k:Landroid/view/View;

.field l:Landroid/graphics/Rect;

.field private final s:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/cyjh/common/view/ActionProcessButton$b;->a:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cyjh/common/view/ActionProcessButton$b;->s:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/cyjh/common/view/ActionProcessButton$b;->b:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/cyjh/common/view/ActionProcessButton$b;->l:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/cyjh/common/view/ActionProcessButton$b;->k:Landroid/view/View;

    const/high16 p1, -0x4d000000

    iput p1, p0, Lcom/cyjh/common/view/ActionProcessButton$b;->g:I

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/cyjh/common/view/ActionProcessButton$b;->h:I

    const/high16 p1, 0x4d000000    # 1.34217728E8f

    iput p1, p0, Lcom/cyjh/common/view/ActionProcessButton$b;->i:I

    const/high16 p1, 0x1a000000

    iput p1, p0, Lcom/cyjh/common/view/ActionProcessButton$b;->j:I

    return-void
.end method

.method private a()V
    .registers 3

    iget-boolean v0, p0, Lcom/cyjh/common/view/ActionProcessButton$b;->f:Z

    if-nez v0, :cond_15

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/common/view/ActionProcessButton$b;->c:F

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cyjh/common/view/ActionProcessButton$b;->d:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/common/view/ActionProcessButton$b;->f:Z

    iget-object v0, p0, Lcom/cyjh/common/view/ActionProcessButton$b;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_15
    return-void
.end method

.method private a(III)V
    .registers 6

    iget-object v0, p0, Lcom/cyjh/common/view/ActionProcessButton$b;->l:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/cyjh/common/view/ActionProcessButton$b;->l:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->top:I

    iget-object p1, p0, Lcom/cyjh/common/view/ActionProcessButton$b;->l:Landroid/graphics/Rect;

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lcom/cyjh/common/view/ActionProcessButton$b;->l:Landroid/graphics/Rect;

    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private a(IIII)V
    .registers 5

    iput p1, p0, Lcom/cyjh/common/view/ActionProcessButton$b;->g:I

    iput p2, p0, Lcom/cyjh/common/view/ActionProcessButton$b;->h:I

    iput p3, p0, Lcom/cyjh/common/view/ActionProcessButton$b;->i:I

    iput p4, p0, Lcom/cyjh/common/view/ActionProcessButton$b;->j:I

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .registers 25

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lcom/cyjh/common/view/ActionProcessButton$b;->l:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, v6, Lcom/cyjh/common/view/ActionProcessButton$b;->l:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v8, v0, 0x2

    div-int/lit8 v9, v1, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    iget-object v0, v6, Lcom/cyjh/common/view/ActionProcessButton$b;->l:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget-boolean v0, v6, Lcom/cyjh/common/view/ActionProcessButton$b;->f:Z

    const-wide/16 v2, 0x0

    const/4 v11, 0x0

    if-nez v0, :cond_3f

    iget-wide v4, v6, Lcom/cyjh/common/view/ActionProcessButton$b;->e:J

    cmp-long v0, v4, v2

    if-lez v0, :cond_2b

    goto :goto_3f

    :cond_2b
    iget v0, v6, Lcom/cyjh/common/view/ActionProcessButton$b;->c:F

    cmpl-float v0, v0, v11

    if-lez v0, :cond_157

    iget v0, v6, Lcom/cyjh/common/view/ActionProcessButton$b;->c:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_157

    invoke-virtual {v6, v7, v8, v9}, Lcom/cyjh/common/view/ActionProcessButton$b;->a(Landroid/graphics/Canvas;II)V

    goto/16 :goto_157

    :cond_3f
    :goto_3f
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-wide v12, v6, Lcom/cyjh/common/view/ActionProcessButton$b;->d:J

    sub-long v14, v4, v12

    const-wide/16 v12, 0x7d0

    rem-long/2addr v14, v12

    iget-wide v2, v6, Lcom/cyjh/common/view/ActionProcessButton$b;->d:J

    sub-long v18, v4, v2

    div-long v18, v18, v12

    long-to-float v0, v14

    const/high16 v2, 0x41a00000    # 20.0f

    div-float v12, v0, v2

    iget-boolean v0, v6, Lcom/cyjh/common/view/ActionProcessButton$b;->f:Z

    const/high16 v13, 0x42c80000    # 100.0f

    if-nez v0, :cond_92

    iget-wide v14, v6, Lcom/cyjh/common/view/ActionProcessButton$b;->e:J

    sub-long v20, v4, v14

    const-wide/16 v14, 0x3e8

    cmp-long v0, v20, v14

    if-ltz v0, :cond_6a

    const-wide/16 v2, 0x0

    iput-wide v2, v6, Lcom/cyjh/common/view/ActionProcessButton$b;->e:J

    return-void

    :cond_6a
    iget-wide v2, v6, Lcom/cyjh/common/view/ActionProcessButton$b;->e:J

    sub-long v20, v4, v2

    rem-long v2, v20, v14

    long-to-float v0, v2

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v0, v2

    div-float/2addr v0, v13

    int-to-float v2, v8

    sget-object v3, Lcom/cyjh/common/view/ActionProcessButton$b;->a:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float v0, v0, v2

    iget-object v3, v6, Lcom/cyjh/common/view/ActionProcessButton$b;->b:Landroid/graphics/RectF;

    sub-float v4, v2, v0

    add-float/2addr v2, v0

    int-to-float v0, v1

    invoke-virtual {v3, v4, v11, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, v6, Lcom/cyjh/common/view/ActionProcessButton$b;->b:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1, v1}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    const/4 v2, 0x1

    const-wide/16 v0, 0x0

    const/4 v14, 0x1

    goto :goto_96

    :cond_92
    const/4 v1, 0x0

    const-wide/16 v0, 0x0

    const/4 v14, 0x0

    :goto_96
    cmp-long v2, v18, v0

    const/high16 v15, 0x42960000    # 75.0f

    const/high16 v16, 0x42480000    # 50.0f

    const/high16 v17, 0x41c80000    # 25.0f

    if-nez v2, :cond_a6

    :goto_a0
    iget v0, v6, Lcom/cyjh/common/view/ActionProcessButton$b;->g:I

    :goto_a2
    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_c8

    :cond_a6
    cmpl-float v0, v12, v11

    if-ltz v0, :cond_b1

    cmpg-float v0, v12, v17

    if-gez v0, :cond_b1

    iget v0, v6, Lcom/cyjh/common/view/ActionProcessButton$b;->j:I

    goto :goto_a2

    :cond_b1
    cmpl-float v0, v12, v17

    if-ltz v0, :cond_ba

    cmpg-float v0, v12, v16

    if-gez v0, :cond_ba

    goto :goto_a0

    :cond_ba
    cmpl-float v0, v12, v16

    if-ltz v0, :cond_c5

    cmpg-float v0, v12, v15

    if-gez v0, :cond_c5

    iget v0, v6, Lcom/cyjh/common/view/ActionProcessButton$b;->h:I

    goto :goto_a2

    :cond_c5
    iget v0, v6, Lcom/cyjh/common/view/ActionProcessButton$b;->i:I

    goto :goto_a2

    :goto_c8
    cmpl-float v0, v12, v11

    const/high16 v18, 0x40000000    # 2.0f

    if-ltz v0, :cond_e1

    cmpg-float v0, v12, v17

    if-gtz v0, :cond_e1

    add-float v0, v12, v17

    mul-float v0, v0, v18

    div-float v5, v0, v13

    int-to-float v2, v8

    int-to-float v3, v9

    iget v4, v6, Lcom/cyjh/common/view/ActionProcessButton$b;->g:I

    move-object v0, v6

    move-object v1, v7

    invoke-virtual/range {v0 .. v5}, Lcom/cyjh/common/view/ActionProcessButton$b;->a(Landroid/graphics/Canvas;FFIF)V

    :cond_e1
    cmpl-float v0, v12, v11

    if-ltz v0, :cond_f6

    cmpg-float v0, v12, v16

    if-gtz v0, :cond_f6

    mul-float v0, v12, v18

    div-float v5, v0, v13

    int-to-float v2, v8

    int-to-float v3, v9

    iget v4, v6, Lcom/cyjh/common/view/ActionProcessButton$b;->h:I

    move-object v0, v6

    move-object v1, v7

    invoke-virtual/range {v0 .. v5}, Lcom/cyjh/common/view/ActionProcessButton$b;->a(Landroid/graphics/Canvas;FFIF)V

    :cond_f6
    cmpl-float v0, v12, v17

    if-ltz v0, :cond_10d

    cmpg-float v0, v12, v15

    if-gtz v0, :cond_10d

    sub-float v0, v12, v17

    mul-float v0, v0, v18

    div-float v5, v0, v13

    int-to-float v2, v8

    int-to-float v3, v9

    iget v4, v6, Lcom/cyjh/common/view/ActionProcessButton$b;->i:I

    move-object v0, v6

    move-object v1, v7

    invoke-virtual/range {v0 .. v5}, Lcom/cyjh/common/view/ActionProcessButton$b;->a(Landroid/graphics/Canvas;FFIF)V

    :cond_10d
    cmpl-float v0, v12, v16

    if-ltz v0, :cond_124

    cmpg-float v0, v12, v13

    if-gtz v0, :cond_124

    sub-float v0, v12, v16

    mul-float v0, v0, v18

    div-float v5, v0, v13

    int-to-float v2, v8

    int-to-float v3, v9

    iget v4, v6, Lcom/cyjh/common/view/ActionProcessButton$b;->j:I

    move-object v0, v6

    move-object v1, v7

    invoke-virtual/range {v0 .. v5}, Lcom/cyjh/common/view/ActionProcessButton$b;->a(Landroid/graphics/Canvas;FFIF)V

    :cond_124
    cmpl-float v0, v12, v15

    if-ltz v0, :cond_13a

    cmpg-float v0, v12, v13

    if-gtz v0, :cond_13a

    sub-float/2addr v12, v15

    mul-float v12, v12, v18

    div-float v5, v12, v13

    int-to-float v2, v8

    int-to-float v3, v9

    iget v4, v6, Lcom/cyjh/common/view/ActionProcessButton$b;->g:I

    move-object v0, v6

    move-object v1, v7

    invoke-virtual/range {v0 .. v5}, Lcom/cyjh/common/view/ActionProcessButton$b;->a(Landroid/graphics/Canvas;FFIF)V

    :cond_13a
    iget v0, v6, Lcom/cyjh/common/view/ActionProcessButton$b;->c:F

    cmpl-float v0, v0, v11

    if-lez v0, :cond_152

    if-eqz v14, :cond_152

    invoke-virtual {v7, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, v6, Lcom/cyjh/common/view/ActionProcessButton$b;->l:Landroid/graphics/Rect;

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v6, v7, v8, v9}, Lcom/cyjh/common/view/ActionProcessButton$b;->a(Landroid/graphics/Canvas;II)V

    move v10, v0

    :cond_152
    iget-object v0, v6, Lcom/cyjh/common/view/ActionProcessButton$b;->k:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_157
    :goto_157
    invoke-virtual {v7, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method


# virtual methods
.method final a(Landroid/graphics/Canvas;FFIF)V
    .registers 7

    iget-object v0, p0, Lcom/cyjh/common/view/ActionProcessButton$b;->s:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object p3, Lcom/cyjh/common/view/ActionProcessButton$b;->a:Landroid/view/animation/Interpolator;

    invoke-interface {p3, p5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p3

    invoke-virtual {p1, p3, p3}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object p3, p0, Lcom/cyjh/common/view/ActionProcessButton$b;->s:Landroid/graphics/Paint;

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method final a(Landroid/graphics/Canvas;II)V
    .registers 6

    iget-object v0, p0, Lcom/cyjh/common/view/ActionProcessButton$b;->s:Landroid/graphics/Paint;

    iget v1, p0, Lcom/cyjh/common/view/ActionProcessButton$b;->g:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p2, p2

    int-to-float p3, p3

    iget v0, p0, Lcom/cyjh/common/view/ActionProcessButton$b;->c:F

    mul-float v0, v0, p2

    iget-object v1, p0, Lcom/cyjh/common/view/ActionProcessButton$b;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method
