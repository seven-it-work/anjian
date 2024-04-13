.class public final Lcom/c/d/g;
.super Landroid/graphics/drawable/BitmapDrawable;


# instance fields
.field private a:F

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Landroid/graphics/Matrix;

.field private e:I

.field private f:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/widget/ImageView;FF)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/c/d/g;->b:Ljava/lang/ref/WeakReference;

    iput p4, p0, Lcom/c/d/g;->a:F

    iput p5, p0, Lcom/c/d/g;->f:F

    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    const/4 p1, 0x0

    invoke-direct {p0, p3, p2, p1}, Lcom/c/d/g;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method private a(II)F
    .registers 6

    iget v0, p0, Lcom/c/d/g;->f:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_12

    iget p1, p0, Lcom/c/d/g;->f:F

    sub-float/2addr v2, p1

    div-float/2addr v2, v1

    return v2

    :cond_12
    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    const/high16 p1, 0x3fc00000    # 1.5f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    const/high16 v0, 0x3e800000    # 0.25f

    sub-float/2addr p1, p2

    div-float/2addr p1, v1

    add-float/2addr p1, v0

    return p1
.end method

.method private a(III)I
    .registers 7

    iget v0, p0, Lcom/c/d/g;->a:F

    iget v1, p0, Lcom/c/d/g;->a:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v1, v2

    if-nez v1, :cond_f

    int-to-float p2, p2

    int-to-float p1, p1

    div-float v0, p2, p1

    :cond_f
    int-to-float p1, p3

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private static a(Landroid/widget/ImageView;)I
    .registers 3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_9

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-gtz v0, :cond_10

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    :cond_10
    if-lez v0, :cond_1c

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    :cond_1c
    return v0
.end method

.method private a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Matrix;
    .registers 10

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/c/d/g;->d:Landroid/graphics/Matrix;

    if-eqz v1, :cond_f

    iget v1, p0, Lcom/c/d/g;->e:I

    if-ne v0, v1, :cond_f

    iget-object p1, p0, Lcom/c/d/g;->d:Landroid/graphics/Matrix;

    return-object p1

    :cond_f
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-static {p1}, Lcom/c/d/g;->a(Landroid/widget/ImageView;)I

    move-result p1

    invoke-direct {p0, v0, p2, p1}, Lcom/c/d/g;->a(III)I

    move-result v1

    if-lez v0, :cond_86

    if-lez p2, :cond_86

    if-lez p1, :cond_86

    if-gtz v1, :cond_24

    goto :goto_86

    :cond_24
    iget-object v2, p0, Lcom/c/d/g;->d:Landroid/graphics/Matrix;

    if-eqz v2, :cond_2c

    iget v2, p0, Lcom/c/d/g;->e:I

    if-eq v0, v2, :cond_83

    :cond_2c
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/c/d/g;->d:Landroid/graphics/Matrix;

    mul-int v2, v0, v1

    mul-int v3, p1, p2

    const/4 v4, 0x0

    if-lt v2, v3, :cond_4a

    int-to-float v1, v1

    int-to-float p2, p2

    div-float/2addr v1, p2

    int-to-float p1, p1

    int-to-float p2, v0

    mul-float p2, p2, v1

    sub-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float p1, p1, p2

    move v4, p1

    move p1, v1

    const/4 p2, 0x0

    goto :goto_77

    :cond_4a
    int-to-float p1, p1

    int-to-float v2, v0

    div-float/2addr p1, v2

    iget v3, p0, Lcom/c/d/g;->f:F

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v3, v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v3, :cond_5f

    iget v2, p0, Lcom/c/d/g;->f:F

    sub-float/2addr v6, v2

    div-float/2addr v6, v5

    goto :goto_70

    :cond_5f
    int-to-float v3, p2

    div-float/2addr v3, v2

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v6, 0x3e800000    # 0.25f

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v6, v2

    :goto_70
    int-to-float v1, v1

    int-to-float p2, p2

    mul-float p2, p2, p1

    sub-float/2addr v1, p2

    mul-float p2, v1, v6

    :goto_77
    iget-object v1, p0, Lcom/c/d/g;->d:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object p1, p0, Lcom/c/d/g;->d:Landroid/graphics/Matrix;

    invoke-virtual {p1, v4, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iput v0, p0, Lcom/c/d/g;->e:I

    :cond_83
    iget-object p1, p0, Lcom/c/d/g;->d:Landroid/graphics/Matrix;

    return-object p1

    :cond_86
    :goto_86
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/graphics/Canvas;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .registers 13

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/c/d/g;->d:Landroid/graphics/Matrix;

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/c/d/g;->e:I

    if-eq v0, v1, :cond_80

    :cond_c
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p2}, Lcom/c/d/g;->a(Landroid/widget/ImageView;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/c/d/g;->a(III)I

    move-result v3

    if-lez v0, :cond_83

    if-lez v1, :cond_83

    if-lez v2, :cond_83

    if-gtz v3, :cond_21

    goto :goto_83

    :cond_21
    iget-object v4, p0, Lcom/c/d/g;->d:Landroid/graphics/Matrix;

    if-eqz v4, :cond_29

    iget v4, p0, Lcom/c/d/g;->e:I

    if-eq v0, v4, :cond_80

    :cond_29
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Lcom/c/d/g;->d:Landroid/graphics/Matrix;

    mul-int v4, v0, v3

    mul-int v5, v2, v1

    const/4 v6, 0x0

    if-lt v4, v5, :cond_45

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    int-to-float v1, v2

    int-to-float v2, v0

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    move v2, v3

    goto :goto_74

    :cond_45
    int-to-float v2, v2

    int-to-float v4, v0

    div-float/2addr v2, v4

    iget v5, p0, Lcom/c/d/g;->f:F

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v5, v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v5, :cond_5a

    iget v4, p0, Lcom/c/d/g;->f:F

    sub-float/2addr v8, v4

    div-float/2addr v8, v7

    goto :goto_6b

    :cond_5a
    int-to-float v5, v1

    div-float/2addr v5, v4

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const/high16 v8, 0x3e800000    # 0.25f

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v8, v4

    :goto_6b
    int-to-float v3, v3

    int-to-float v1, v1

    mul-float v1, v1, v2

    sub-float/2addr v3, v1

    mul-float v1, v3, v8

    move v6, v1

    const/4 v1, 0x0

    :goto_74
    iget-object v3, p0, Lcom/c/d/g;->d:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v2, p0, Lcom/c/d/g;->d:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iput v0, p0, Lcom/c/d/g;->e:I

    :cond_80
    iget-object v0, p0, Lcom/c/d/g;->d:Landroid/graphics/Matrix;

    goto :goto_84

    :cond_83
    :goto_83
    const/4 v0, 0x0

    :goto_84
    if-eqz v0, :cond_b1

    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    if-gtz v1, :cond_9c

    if-lez v2, :cond_aa

    :cond_9c
    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v3, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_aa
    invoke-virtual {p0}, Lcom/c/d/g;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, p3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_b1
    iget-boolean p1, p0, Lcom/c/d/g;->c:Z

    if-nez p1, :cond_b9

    const/4 p1, 0x1

    invoke-direct {p0, p2, p3, p1}, Lcom/c/d/g;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    :cond_b9
    return-void
.end method

.method private a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V
    .registers 6

    invoke-static {p1}, Lcom/c/d/g;->a(Landroid/widget/ImageView;)I

    move-result v0

    if-gtz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-direct {p0, v1, p2, v0}, Lcom/c/d/g;->a(III)I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_24

    return-void

    :cond_24
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p2, v1, :cond_2d

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2d
    if-eqz p3, :cond_32

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/c/d/g;->c:Z

    :cond_32
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .registers 13

    iget-object v0, p0, Lcom/c/d/g;->b:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/c/d/g;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    iget v2, p0, Lcom/c/d/g;->a:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_d4

    if-nez v0, :cond_1a

    goto/16 :goto_d4

    :cond_1a
    invoke-virtual {p0}, Lcom/c/d/g;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/c/d/g;->d:Landroid/graphics/Matrix;

    if-eqz v5, :cond_2a

    iget v5, p0, Lcom/c/d/g;->e:I

    if-eq v4, v5, :cond_9c

    :cond_2a
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v0}, Lcom/c/d/g;->a(Landroid/widget/ImageView;)I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/c/d/g;->a(III)I

    move-result v7

    if-lez v4, :cond_9e

    if-lez v5, :cond_9e

    if-lez v6, :cond_9e

    if-gtz v7, :cond_3f

    goto :goto_9e

    :cond_3f
    iget-object v1, p0, Lcom/c/d/g;->d:Landroid/graphics/Matrix;

    if-eqz v1, :cond_47

    iget v1, p0, Lcom/c/d/g;->e:I

    if-eq v4, v1, :cond_9c

    :cond_47
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/c/d/g;->d:Landroid/graphics/Matrix;

    mul-int v1, v4, v7

    mul-int v8, v6, v5

    if-lt v1, v8, :cond_63

    int-to-float v1, v7

    int-to-float v5, v5

    div-float/2addr v1, v5

    int-to-float v5, v6

    int-to-float v6, v4

    mul-float v6, v6, v1

    sub-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v5, v5, v6

    move v3, v5

    const/4 v5, 0x0

    goto :goto_90

    :cond_63
    int-to-float v1, v6

    int-to-float v6, v4

    div-float/2addr v1, v6

    iget v8, p0, Lcom/c/d/g;->f:F

    const v9, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v8, v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v8, :cond_78

    iget v6, p0, Lcom/c/d/g;->f:F

    sub-float/2addr v10, v6

    div-float/2addr v10, v9

    goto :goto_89

    :cond_78
    int-to-float v8, v5

    div-float/2addr v8, v6

    const/high16 v6, 0x3fc00000    # 1.5f

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v10, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    const/high16 v10, 0x3e800000    # 0.25f

    sub-float/2addr v6, v8

    div-float/2addr v6, v9

    add-float/2addr v10, v6

    :goto_89
    int-to-float v6, v7

    int-to-float v5, v5

    mul-float v5, v5, v1

    sub-float/2addr v6, v5

    mul-float v5, v6, v10

    :goto_90
    iget-object v6, p0, Lcom/c/d/g;->d:Landroid/graphics/Matrix;

    invoke-virtual {v6, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v1, p0, Lcom/c/d/g;->d:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iput v4, p0, Lcom/c/d/g;->e:I

    :cond_9c
    iget-object v1, p0, Lcom/c/d/g;->d:Landroid/graphics/Matrix;

    :cond_9e
    :goto_9e
    if-eqz v1, :cond_cb

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    if-gtz v3, :cond_b6

    if-lez v4, :cond_c4

    :cond_b6
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v5, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_c4
    invoke-virtual {p0}, Lcom/c/d/g;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_cb
    iget-boolean p1, p0, Lcom/c/d/g;->c:Z

    if-nez p1, :cond_d3

    const/4 p1, 0x1

    invoke-direct {p0, v0, v2, p1}, Lcom/c/d/g;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    :cond_d3
    return-void

    :cond_d4
    :goto_d4
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
