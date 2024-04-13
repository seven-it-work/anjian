.class public final Lcom/cyjh/common/util/toast/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/common/util/toast/e$a;
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

.method private static a(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 5

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, 0x1

    :goto_5
    if-gt v0, p2, :cond_b

    if-le p0, p1, :cond_a

    goto :goto_b

    :cond_a
    return v1

    :cond_b
    :goto_b
    shr-int/lit8 v0, v0, 0x1

    shr-int/lit8 p0, p0, 0x1

    shl-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method private static a(I)Landroid/graphics/Bitmap;
    .registers 6
    .param p0    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v1
.end method

.method private static a(III)Landroid/graphics/Bitmap;
    .registers 6
    .param p0    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v1, p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v0, p1, p2}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v1, p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v0}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/Bitmap;FFIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/graphics/Bitmap;FFFF)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/Bitmap;FFFFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/graphics/Bitmap;FFFFZ)Landroid/graphics/Bitmap;
    .registers 13

    invoke-static {p0}, Lcom/cyjh/common/util/toast/e;->g(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, p1, p2, p3, p4}, Landroid/graphics/Matrix;->setSkew(FFFF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p5, :cond_2d

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_2d

    if-eq p1, p0, :cond_2d

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2d
    return-object p1
.end method

.method private static a(Landroid/graphics/Bitmap;FFI)Landroid/graphics/Bitmap;
    .registers 5
    .param p2    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/Bitmap;FFIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/graphics/Bitmap;FFIZ)Landroid/graphics/Bitmap;
    .registers 7
    .param p2    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    const/4 v1, 0x5

    aput p1, v0, v1

    const/4 v1, 0x6

    aput p1, v0, v1

    const/4 v1, 0x7

    aput p1, v0, v1

    invoke-static {p0, v0, p2, p3, p4}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/Bitmap;[FFIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;
    .registers 11

    invoke-static {p0}, Lcom/cyjh/common/util/toast/e;->g(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p3, :cond_2d

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_2d

    if-eq p1, p0, :cond_2d

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2d
    return-object p1
.end method

.method private static a(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .registers 9
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 1.0
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/Bitmap;FIZFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/graphics/Bitmap;FIF)Landroid/graphics/Bitmap;
    .registers 10
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 1.0
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p3    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/Bitmap;FIZFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/graphics/Bitmap;FIFZ)Landroid/graphics/Bitmap;
    .registers 11
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 1.0
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p3    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/Bitmap;FIZFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/graphics/Bitmap;FIZ)Landroid/graphics/Bitmap;
    .registers 10
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 1.0
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/Bitmap;FIZFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/graphics/Bitmap;FIZFZ)Landroid/graphics/Bitmap;
    .registers 13
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 1.0
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/16 v0, 0x8

    new-array v5, v0, [F

    const/4 v0, 0x0

    aput p4, v5, v0

    const/4 v0, 0x1

    aput p4, v5, v0

    const/4 v0, 0x2

    aput p4, v5, v0

    const/4 v0, 0x3

    aput p4, v5, v0

    const/4 v0, 0x4

    aput p4, v5, v0

    const/4 v0, 0x5

    aput p4, v5, v0

    const/4 v0, 0x6

    aput p4, v5, v0

    const/4 v0, 0x7

    aput p4, v5, v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/Bitmap;FIZ[FZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/graphics/Bitmap;FIZ[FZ)Landroid/graphics/Bitmap;
    .registers 10
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 1.0
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/cyjh/common/util/toast/e;->g(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/4 v0, 0x1

    if-eqz p5, :cond_c

    goto :goto_14

    :cond_c
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p5

    invoke-virtual {p0, p5, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_14
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 p2, 0x40000000    # 2.0f

    if-eqz p3, :cond_45

    invoke-static {p5, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, p2

    div-float/2addr p1, p2

    sub-float/2addr p3, p1

    int-to-float p1, p5

    div-float/2addr p1, p2

    int-to-float p4, v1

    div-float/2addr p4, p2

    invoke-virtual {v2, p1, p4, p3, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-object p0

    :cond_45
    new-instance p3, Landroid/graphics/RectF;

    int-to-float p5, p5

    int-to-float v0, v1

    const/4 v1, 0x0

    invoke-direct {p3, v1, v1, p5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    div-float/2addr p1, p2

    invoke-virtual {p3, p1, p1}, Landroid/graphics/RectF;->inset(FF)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    sget-object p2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p3, p4, p2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    invoke-virtual {v2, p1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-object p0
.end method

.method private static a(Landroid/graphics/Bitmap;FI[F)Landroid/graphics/Bitmap;
    .registers 10
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 1.0
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/Bitmap;FIZ[FZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/graphics/Bitmap;FI[FZ)Landroid/graphics/Bitmap;
    .registers 11
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 1.0
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/Bitmap;FIZ[FZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/Bitmap;FFIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 4
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/cyjh/common/util/toast/e;->g(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p0
.end method

.method private static a(Landroid/graphics/Bitmap;IFF)Landroid/graphics/Bitmap;
    .registers 11

    invoke-static {p0}, Lcom/cyjh/common/util/toast/e;->g(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    if-nez p1, :cond_b

    return-object p0

    :cond_b
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    invoke-virtual {v5, p1, p2, p3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .registers 6

    invoke-static {p0}, Lcom/cyjh/common/util/toast/e;->g(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 5

    invoke-static {p0}, Lcom/cyjh/common/util/toast/e;->g(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p3, :cond_1a

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_1a

    if-eq p1, p0, :cond_1a

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1a
    return-object p1
.end method

.method private static a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .registers 42

    const/4 v0, 0x1

    if-eqz p2, :cond_6

    move-object/from16 v9, p0

    goto :goto_11

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    move-object/from16 v2, p0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v9, v1

    :goto_11
    if-gtz p1, :cond_15

    const/4 v10, 0x1

    goto :goto_17

    :cond_15
    move/from16 v10, p1

    :goto_17
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    mul-int v13, v11, v12

    new-array v14, v13, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    move-object v2, v14

    move v4, v11

    move v7, v11

    move v8, v12

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v1, v11, -0x1

    add-int/lit8 v2, v12, -0x1

    add-int v3, v10, v10

    add-int/2addr v3, v0

    new-array v4, v13, [I

    new-array v5, v13, [I

    new-array v6, v13, [I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    new-array v7, v7, [I

    add-int/lit8 v8, v3, 0x1

    shr-int/2addr v8, v0

    mul-int v8, v8, v8

    mul-int/lit16 v13, v8, 0x100

    new-array v15, v13, [I

    const/4 v0, 0x0

    :goto_4b
    if-ge v0, v13, :cond_54

    div-int v18, v0, v8

    aput v18, v15, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    :cond_54
    const/4 v0, 0x3

    filled-new-array {v3, v0}, [I

    move-result-object v0

    const-class v8, I

    invoke-static {v8, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    add-int/lit8 v8, v10, 0x1

    const/4 v13, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_68
    const/16 v20, 0x2

    if-ge v13, v12, :cond_18e

    move-object/from16 v21, v9

    neg-int v9, v10

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    :goto_81
    const v31, 0xff00

    const/high16 v32, 0xff0000

    if-gt v9, v10, :cond_e9

    move/from16 v34, v2

    move/from16 v33, v12

    const/4 v12, 0x0

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int v2, v18, v2

    aget v2, v14, v2

    add-int v17, v9, v10

    aget-object v35, v0, v17

    and-int v17, v2, v32

    shr-int/lit8 v17, v17, 0x10

    aput v17, v35, v12

    and-int v17, v2, v31

    shr-int/lit8 v17, v17, 0x8

    const/16 v16, 0x1

    aput v17, v35, v16

    and-int/lit16 v2, v2, 0xff

    aput v2, v35, v20

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v2, v8, v2

    aget v17, v35, v12

    mul-int v17, v17, v2

    add-int v22, v22, v17

    aget v17, v35, v16

    mul-int v17, v17, v2

    add-int v23, v23, v17

    aget v17, v35, v20

    mul-int v17, v17, v2

    add-int v24, v24, v17

    if-lez v9, :cond_d6

    aget v2, v35, v12

    add-int v25, v25, v2

    aget v2, v35, v16

    add-int v26, v26, v2

    aget v2, v35, v20

    add-int v27, v27, v2

    goto :goto_e2

    :cond_d6
    aget v2, v35, v12

    add-int v28, v28, v2

    aget v2, v35, v16

    add-int v29, v29, v2

    aget v2, v35, v20

    add-int v30, v30, v2

    :goto_e2
    add-int/lit8 v9, v9, 0x1

    move/from16 v12, v33

    move/from16 v2, v34

    goto :goto_81

    :cond_e9
    move/from16 v34, v2

    move/from16 v33, v12

    move v9, v10

    const/4 v2, 0x0

    :goto_ef
    if-ge v2, v11, :cond_180

    aget v12, v15, v22

    aput v12, v4, v18

    aget v12, v15, v23

    aput v12, v5, v18

    aget v12, v15, v24

    aput v12, v6, v18

    sub-int v22, v22, v28

    sub-int v23, v23, v29

    sub-int v24, v24, v30

    sub-int v12, v9, v10

    add-int/2addr v12, v3

    rem-int/2addr v12, v3

    aget-object v12, v0, v12

    const/16 v17, 0x0

    aget v35, v12, v17

    sub-int v28, v28, v35

    const/16 v16, 0x1

    aget v35, v12, v16

    sub-int v29, v29, v35

    aget v35, v12, v20

    sub-int v30, v30, v35

    if-nez v13, :cond_128

    add-int v35, v2, v10

    move-object/from16 v36, v15

    add-int/lit8 v15, v35, 0x1

    invoke-static {v15, v1}, Ljava/lang/Math;->min(II)I

    move-result v15

    aput v15, v7, v2

    goto :goto_12a

    :cond_128
    move-object/from16 v36, v15

    :goto_12a
    aget v15, v7, v2

    add-int v15, v19, v15

    aget v15, v14, v15

    and-int v35, v15, v32

    shr-int/lit8 v35, v35, 0x10

    const/16 v17, 0x0

    aput v35, v12, v17

    and-int v35, v15, v31

    shr-int/lit8 v35, v35, 0x8

    const/16 v16, 0x1

    aput v35, v12, v16

    and-int/lit16 v15, v15, 0xff

    aput v15, v12, v20

    aget v15, v12, v17

    add-int v25, v25, v15

    aget v15, v12, v16

    add-int v26, v26, v15

    aget v12, v12, v20

    add-int v27, v27, v12

    add-int v22, v22, v25

    add-int v23, v23, v26

    add-int v24, v24, v27

    add-int/lit8 v9, v9, 0x1

    rem-int/2addr v9, v3

    rem-int v12, v9, v3

    aget-object v12, v0, v12

    const/4 v15, 0x0

    aget v17, v12, v15

    add-int v28, v28, v17

    const/16 v16, 0x1

    aget v17, v12, v16

    add-int v29, v29, v17

    aget v17, v12, v20

    add-int v30, v30, v17

    aget v35, v12, v15

    sub-int v25, v25, v35

    aget v15, v12, v16

    sub-int v26, v26, v15

    aget v12, v12, v20

    sub-int v27, v27, v12

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v15, v36

    goto/16 :goto_ef

    :cond_180
    move-object/from16 v36, v15

    add-int v19, v19, v11

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v9, v21

    move/from16 v12, v33

    move/from16 v2, v34

    goto/16 :goto_68

    :cond_18e
    move/from16 v34, v2

    move-object/from16 v21, v9

    move/from16 v33, v12

    move-object/from16 v36, v15

    const/4 v1, 0x0

    :goto_197
    if-ge v1, v11, :cond_2c9

    neg-int v2, v10

    mul-int v9, v2, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    :goto_1ab
    if-gt v2, v10, :cond_20e

    move-object/from16 v37, v7

    const/4 v7, 0x0

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v17

    add-int v26, v17, v1

    add-int v17, v2, v10

    aget-object v27, v0, v17

    aget v17, v4, v26

    aput v17, v27, v7

    aget v7, v5, v26

    const/16 v16, 0x1

    aput v7, v27, v16

    aget v7, v6, v26

    aput v7, v27, v20

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int v7, v8, v7

    aget v28, v4, v26

    mul-int v28, v28, v7

    add-int v12, v12, v28

    aget v28, v5, v26

    mul-int v28, v28, v7

    add-int v13, v13, v28

    aget v26, v6, v26

    mul-int v26, v26, v7

    add-int v15, v15, v26

    if-lez v2, :cond_1f4

    const/4 v7, 0x0

    aget v17, v27, v7

    add-int v18, v18, v17

    const/16 v16, 0x1

    aget v17, v27, v16

    add-int v19, v19, v17

    aget v17, v27, v20

    add-int v22, v22, v17

    :goto_1f1
    move/from16 v7, v34

    goto :goto_204

    :cond_1f4
    const/4 v7, 0x0

    const/16 v16, 0x1

    aget v26, v27, v7

    add-int v23, v23, v26

    aget v7, v27, v16

    add-int v24, v24, v7

    aget v7, v27, v20

    add-int v25, v25, v7

    goto :goto_1f1

    :goto_204
    if-ge v2, v7, :cond_207

    add-int/2addr v9, v11

    :cond_207
    add-int/lit8 v2, v2, 0x1

    move/from16 v34, v7

    move-object/from16 v7, v37

    goto :goto_1ab

    :cond_20e
    move-object/from16 v37, v7

    move/from16 v7, v34

    move/from16 v26, v19

    move/from16 v27, v22

    move/from16 v9, v33

    const/4 v2, 0x0

    move/from16 v19, v10

    move/from16 v22, v18

    move/from16 v18, v15

    move v15, v13

    move v13, v12

    move v12, v1

    :goto_222
    if-ge v2, v9, :cond_2b9

    const/high16 v28, -0x1000000

    aget v29, v14, v12

    and-int v28, v29, v28

    aget v29, v36, v13

    shl-int/lit8 v29, v29, 0x10

    or-int v28, v28, v29

    aget v29, v36, v15

    shl-int/lit8 v29, v29, 0x8

    or-int v28, v28, v29

    aget v29, v36, v18

    or-int v28, v28, v29

    aput v28, v14, v12

    sub-int v13, v13, v23

    sub-int v15, v15, v24

    sub-int v18, v18, v25

    sub-int v28, v19, v10

    add-int v28, v28, v3

    rem-int v28, v28, v3

    aget-object v28, v0, v28

    const/16 v17, 0x0

    aget v29, v28, v17

    sub-int v23, v23, v29

    const/16 v16, 0x1

    aget v29, v28, v16

    sub-int v24, v24, v29

    aget v29, v28, v20

    sub-int v25, v25, v29

    if-nez v1, :cond_269

    move/from16 v38, v10

    add-int v10, v2, v8

    invoke-static {v10, v7}, Ljava/lang/Math;->min(II)I

    move-result v10

    mul-int v10, v10, v11

    aput v10, v37, v2

    goto :goto_26b

    :cond_269
    move/from16 v38, v10

    :goto_26b
    aget v10, v37, v2

    add-int/2addr v10, v1

    aget v29, v4, v10

    const/16 v17, 0x0

    aput v29, v28, v17

    aget v29, v5, v10

    const/16 v16, 0x1

    aput v29, v28, v16

    aget v10, v6, v10

    aput v10, v28, v20

    aget v10, v28, v17

    add-int v22, v22, v10

    aget v10, v28, v16

    add-int v26, v26, v10

    aget v10, v28, v20

    add-int v27, v27, v10

    add-int v13, v13, v22

    add-int v15, v15, v26

    add-int v18, v18, v27

    add-int/lit8 v19, v19, 0x1

    rem-int v19, v19, v3

    aget-object v10, v0, v19

    const/16 v17, 0x0

    aget v28, v10, v17

    add-int v23, v23, v28

    const/16 v16, 0x1

    aget v28, v10, v16

    add-int v24, v24, v28

    aget v28, v10, v20

    add-int v25, v25, v28

    aget v28, v10, v17

    sub-int v22, v22, v28

    aget v28, v10, v16

    sub-int v26, v26, v28

    aget v10, v10, v20

    sub-int v27, v27, v10

    add-int/2addr v12, v11

    add-int/lit8 v2, v2, 0x1

    move/from16 v10, v38

    goto/16 :goto_222

    :cond_2b9
    move/from16 v38, v10

    const/16 v16, 0x1

    const/16 v17, 0x0

    add-int/lit8 v1, v1, 0x1

    move/from16 v34, v7

    move/from16 v33, v9

    move-object/from16 v7, v37

    goto/16 :goto_197

    :cond_2c9
    move/from16 v9, v33

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, v21

    move-object v2, v14

    move v4, v11

    move v7, v11

    move v8, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v21
.end method

.method private static a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .registers 7

    invoke-static {p0}, Lcom/cyjh/common/util/toast/e;->g(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p1}, Lcom/cyjh/common/util/toast/e;->g(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_29

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_29
    return-object p0
.end method

.method private static a(Landroid/graphics/Bitmap;Ljava/lang/Boolean;)Landroid/graphics/Bitmap;
    .registers 3

    invoke-static {p0}, Lcom/cyjh/common/util/toast/e;->g(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_1d

    if-eq v0, p0, :cond_1d

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1d
    return-object v0
.end method

.method private static a(Landroid/graphics/Bitmap;Ljava/lang/String;FIFF)Landroid/graphics/Bitmap;
    .registers 10
    .param p3    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/cyjh/common/util/toast/e;->g(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_34

    if-nez p1, :cond_9

    goto :goto_34

    :cond_9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, p1, v2, v3, p3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    add-float/2addr p5, p2

    invoke-virtual {v1, p1, p4, p5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object p0

    :cond_34
    :goto_34
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/graphics/Bitmap;Ljava/lang/String;IIFF)Landroid/graphics/Bitmap;
    .registers 10
    .param p3    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    int-to-float p2, p2

    invoke-static {p0}, Lcom/cyjh/common/util/toast/e;->g(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_35

    if-nez p1, :cond_a

    goto :goto_35

    :cond_a
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, p1, v2, v3, p3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    add-float/2addr p5, p2

    invoke-virtual {v1, p1, p4, p5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object p0

    :cond_35
    :goto_35
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1}, Lcom/cyjh/common/util/toast/e;->b(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/graphics/Bitmap;[FFI)Landroid/graphics/Bitmap;
    .registers 5
    .param p2    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/Bitmap;[FFIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/graphics/Bitmap;[FFIZ)Landroid/graphics/Bitmap;
    .registers 13
    .param p2    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/cyjh/common/util/toast/e;->g(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v0, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/BitmapShader;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, p0, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v2, v2

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p2, v0

    invoke-virtual {v6, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v6, p1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    invoke-virtual {v5, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    cmpl-float p1, p2, v7

    if-lez p1, :cond_65

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {v5, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_65
    if-eqz p4, :cond_72

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_72

    if-eq v4, p0, :cond_72

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_72
    return-object v4
.end method

.method private static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_16

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_16
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_3c

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gtz v0, :cond_24

    goto :goto_3c

    :cond_24
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    if-eq v3, v1, :cond_35

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_37

    :cond_35
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_37
    invoke-static {v0, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_4c

    :cond_3c
    :goto_3c
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    if-eq v0, v1, :cond_45

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_47

    :cond_45
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_47
    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_4c
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private static a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_26

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_21

    goto :goto_26

    :cond_21
    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_67

    :cond_26
    :goto_26
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0, v2, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_51

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_4c

    goto :goto_51

    :cond_4c
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_67

    :cond_51
    :goto_51
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :goto_67
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    return-object v2
.end method

.method private static a(Ljava/io/File;)Landroid/graphics/Bitmap;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v0, p1, p2}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/FileDescriptor;II)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v1, p1, p2}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    iput-boolean p1, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v1, p1, p2}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    iput-boolean p1, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2

    invoke-static {p0}, Lcom/cyjh/common/util/toast/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 5

    invoke-static {p0}, Lcom/cyjh/common/util/toast/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v0, p1, p2}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a([B)Landroid/graphics/Bitmap;
    .registers 3
    .param p0    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_d

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_d

    :cond_6
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_d
    :goto_d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a([BI)Landroid/graphics/Bitmap;
    .registers 3

    array-length v0, p0

    if-nez v0, :cond_5

    const/4 p0, 0x0

    return-object p0

    :cond_5
    array-length v0, p0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a([BIII)Landroid/graphics/Bitmap;
    .registers 6

    array-length v0, p0

    if-nez v0, :cond_5

    const/4 p0, 0x0

    return-object p0

    :cond_5
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v1, p0

    invoke-static {p0, p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v0, p2, p3}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p2

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p2, 0x0

    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length p2, p0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/graphics/Bitmap;)[B
    .registers 3

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-static {p0, v0, v1}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)[B

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/graphics/Bitmap;J)[B
    .registers 10

    invoke-static {p0}, Lcom/cyjh/common/util/toast/e;->g(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_67

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_e

    goto :goto_67

    :cond_e
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    int-to-long v4, v2

    cmp-long v2, v4, p1

    if-lez v2, :cond_62

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v2, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    int-to-long v4, v2

    cmp-long v2, v4, p1

    if-gez v2, :cond_62

    const/4 v2, 0x0

    :goto_35
    if-ge v1, v3, :cond_56

    add-int v2, v1, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v4, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    int-to-long v4, v4

    cmp-long v6, v4, p1

    if-eqz v6, :cond_56

    cmp-long v6, v4, p1

    if-lez v6, :cond_53

    add-int/lit8 v3, v2, -0x1

    goto :goto_35

    :cond_53
    add-int/lit8 v1, v2, 0x1

    goto :goto_35

    :cond_56
    add-int/lit8 v2, v2, -0x1

    if-ne v3, v2, :cond_62

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p1, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :cond_62
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_67
    :goto_67
    new-array p0, v1, [B

    return-object p0
.end method

.method private static a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)[B
    .registers 4
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$CompressFormat;I)[B
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-static {p0}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)[B

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)I
    .registers 3

    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_21

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x8

    if-eq p0, v0, :cond_18

    const/4 p0, 0x0

    return p0

    :cond_18
    const/16 p0, 0x10e

    return p0

    :cond_1b
    const/16 p0, 0x5a

    return p0

    :cond_1e
    const/16 p0, 0xb4

    return p0

    :catch_21
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method private static b(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 3
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
            to = 25.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x11
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/cyjh/common/util/toast/e;->b(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .registers 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/Bitmap;FFFFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;
    .registers 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/Bitmap;FFFFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .registers 6
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
            to = 25.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x11
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    goto :goto_c

    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p2

    invoke-virtual {p0, p2, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_c
    const/4 p2, 0x0

    :try_start_d
    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_47

    :try_start_15
    new-instance p2, Landroid/renderscript/RenderScript$RSMessageHandler;

    invoke-direct {p2}, Landroid/renderscript/RenderScript$RSMessageHandler;-><init>()V

    invoke-virtual {v1, p2}, Landroid/renderscript/RenderScript;->setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V

    sget-object p2, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {v1, p0, p2, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p2

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    invoke-virtual {v2, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v2, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v0, p0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V
    :try_end_3f
    .catchall {:try_start_15 .. :try_end_3f} :catchall_45

    if-eqz v1, :cond_44

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->destroy()V

    :cond_44
    return-object p0

    :catchall_45
    move-exception p0

    goto :goto_49

    :catchall_47
    move-exception p0

    move-object v1, p2

    :goto_49
    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->destroy()V

    :cond_4e
    throw p0
.end method

.method private static b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 4
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/cyjh/common/util/toast/e;->g(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p0
.end method

.method private static b(Landroid/graphics/Bitmap;IFF)Landroid/graphics/Bitmap;
    .registers 11

    invoke-static {p0}, Lcom/cyjh/common/util/toast/e;->g(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    if-nez p1, :cond_b

    return-object p0

    :cond_b
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    invoke-virtual {v5, p1, p2, p3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 4
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/cyjh/common/util/toast/e;->b(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .registers 6

    invoke-static {p0}, Lcom/cyjh/common/util/toast/e;->g(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 20
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static/range {p0 .. p0}, Lcom/cyjh/common/util/toast/e;->g(Landroid/graphics/Bitmap;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    return-object v3

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-static {v2, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    int-to-float v8, v5

    const/high16 v9, 0x40000000    # 2.0f

    div-float v10, v8, v9

    new-instance v11, Landroid/graphics/RectF;

    int-to-float v12, v2

    int-to-float v13, v4

    const/4 v14, 0x0

    invoke-direct {v11, v14, v14, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    sub-int v14, v2, v5

    int-to-float v14, v14

    div-float/2addr v14, v9

    sub-int v5, v4, v5

    int-to-float v5, v5

    div-float/2addr v5, v9

    invoke-virtual {v11, v14, v5}, Landroid/graphics/RectF;->inset(FF)V

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget v14, v11, Landroid/graphics/RectF;->left:F

    iget v15, v11, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v14, v15}, Landroid/graphics/Matrix;->setTranslate(FF)V

    if-eq v2, v4, :cond_52

    div-float v2, v8, v12

    div-float/2addr v8, v13

    invoke-virtual {v5, v2, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_52
    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v0, v4, v8}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v5}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v11, v10, v10, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-lez v1, :cond_83

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move/from16 v3, p2

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v1, v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    div-float/2addr v1, v9

    sub-float/2addr v10, v1

    div-float/2addr v12, v9

    div-float/2addr v13, v9

    invoke-virtual {v2, v12, v13, v10, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_83
    if-eqz p3, :cond_90

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_90

    if-eq v7, v0, :cond_90

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_90
    return-object v7
.end method

.method private static b(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .registers 7

    invoke-static {p0}, Lcom/cyjh/common/util/toast/e;->g(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p1}, Lcom/cyjh/common/util/toast/e;->g(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_29

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_29
    return-object p0
.end method

.method private static b(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private static b([B)Landroid/graphics/drawable/Drawable;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_e

    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_e

    :cond_7
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_f

    :cond_e
    :goto_e
    move-object p0, v0

    :goto_f
    if-nez p0, :cond_12

    return-object v0

    :cond_12
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private static b(Ljava/io/File;)Z
    .registers 2

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_12

    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/cyjh/common/util/toast/e;->c(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Landroid/graphics/Bitmap;J)[B
    .registers 10

    invoke-static {p0}, Lcom/cyjh/common/util/toast/e;->g(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_67

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_e

    goto :goto_67

    :cond_e
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    int-to-long v4, v2

    cmp-long v2, v4, p1

    if-lez v2, :cond_62

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v2, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    int-to-long v4, v2

    cmp-long v2, v4, p1

    if-gez v2, :cond_62

    const/4 v2, 0x0

    :goto_35
    if-ge v1, v3, :cond_56

    add-int v2, v1, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v4, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    int-to-long v4, v4

    cmp-long v6, v4, p1

    if-eqz v6, :cond_56

    cmp-long v6, v4, p1

    if-lez v6, :cond_53

    add-int/lit8 v3, v2, -0x1

    goto :goto_35

    :cond_53
    add-int/lit8 v1, v2, 0x1

    goto :goto_35

    :cond_56
    add-int/lit8 v2, v2, -0x1

    if-ne v3, v2, :cond_62

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p1, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :cond_62
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_67
    :goto_67
    new-array p0, v1, [B

    return-object p0
.end method

.method private static b(Landroid/graphics/drawable/Drawable;)[B
    .registers 3
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-static {p0}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-static {p0, v0, v1}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)[B

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v0}, Lcom/cyjh/common/util/toast/e;->b(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .registers 4
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
            to = 1.0
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
            to = 25.0
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/cyjh/common/util/toast/e;->d(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;
    .registers 4
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
            to = 1.0
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
            to = 25.0
        .end annotation
    .end param

    invoke-static {p0, p1, p2, p3}, Lcom/cyjh/common/util/toast/e;->d(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 21

    invoke-static/range {p0 .. p0}, Lcom/cyjh/common/util/toast/e;->g(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_8

    return-object v8

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/4 v1, 0x0

    sub-int v2, v10, p1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v3, v9

    move/from16 v4, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    add-int v1, v10, p1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v9, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    move-object/from16 v4, p0

    invoke-virtual {v2, v4, v3, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v10, 0x0

    int-to-float v4, v4

    invoke-virtual {v2, v0, v3, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v7, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v7, v3}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v3, Landroid/graphics/LinearGradient;

    const/4 v12, 0x0

    int-to-float v13, v10

    const/4 v14, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, 0x0

    int-to-float v15, v5

    const v16, 0x70ffffff

    const v17, 0xffffff

    sget-object v18, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v3, 0x0

    int-to-float v5, v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_82

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_82
    return-object v1
.end method

.method private static c(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget p0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez p0, :cond_15

    iget p0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_15

    if-lez p0, :cond_15

    return v2

    :catch_15
    :cond_15
    return v0
.end method

.method private static c([B)Z
    .registers 4

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_12

    aget-byte v0, p0, v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_12

    const/4 v0, 0x1

    aget-byte p0, p0, v0

    const/16 v2, -0x28

    if-ne p0, v2, :cond_12

    return v0

    :cond_12
    return v1
.end method

.method private static c(Ljava/io/File;)[I
    .registers 5

    const/4 v0, 0x2

    if-nez p0, :cond_9

    new-array p0, v0, [I

    fill-array-data p0, :array_24

    return-object p0

    :cond_9
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    new-array p0, v0, [I

    const/4 v0, 0x0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v3, p0, v0

    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v0, p0, v2

    return-object p0

    :array_24
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private static d(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0}, Lcom/cyjh/common/util/toast/e;->g(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 p0, 0x0

    return-object p0

    :cond_d
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_22

    if-eq v1, p0, :cond_22

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_22
    return-object v1
.end method

.method private static d(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static d(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;
    .registers 13
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
            to = 1.0
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
            to = 25.0
        .end annotation
    .end param

    invoke-static {p0}, Lcom/cyjh/common/util/toast/e;->g(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v7, p1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v4, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_50

    invoke-static {v2, p2, p3}, Lcom/cyjh/common/util/toast/e;->b(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_55

    :cond_50
    float-to-int p2, p2

    invoke-static {v2, p2, p3}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p2

    :goto_55
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v2

    if-nez p1, :cond_69

    if-eqz p3, :cond_68

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_68

    if-eq p2, p0, :cond_68

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_68
    return-object p2

    :cond_69
    const/4 p1, 0x1

    invoke-static {p2, v0, v1, p1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_77

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_77
    if-eqz p3, :cond_84

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_84

    if-eq p1, p0, :cond_84

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_84
    return-object p1
.end method

.method private static d(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 21

    invoke-static/range {p0 .. p0}, Lcom/cyjh/common/util/toast/e;->g(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_8

    return-object v8

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/4 v1, 0x0

    sub-int v2, v10, p1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v3, v9

    move/from16 v4, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    add-int v1, v10, p1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v9, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    move-object/from16 v4, p0

    invoke-virtual {v2, v4, v3, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v10, 0x0

    int-to-float v4, v4

    invoke-virtual {v2, v0, v3, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v7, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v7, v3}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v3, Landroid/graphics/LinearGradient;

    const/4 v12, 0x0

    int-to-float v13, v10

    const/4 v14, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, 0x0

    int-to-float v15, v5

    const v16, 0x70ffffff

    const v17, 0xffffff

    sget-object v18, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v3, 0x0

    int-to-float v5, v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_82

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_82
    return-object v1
.end method

.method private static d(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 7

    invoke-static {p0}, Lcom/cyjh/common/util/toast/e;->g(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v0, p1, p2}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length p1, p0

    invoke-static {p0, v2, p1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static d([B)Z
    .registers 6

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-lt v0, v2, :cond_35

    aget-byte v0, p0, v1

    const/16 v2, 0x47

    if-ne v0, v2, :cond_35

    const/4 v0, 0x1

    aget-byte v2, p0, v0

    const/16 v3, 0x49

    if-ne v2, v3, :cond_35

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v3, 0x46

    if-ne v2, v3, :cond_35

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    const/16 v3, 0x38

    if-ne v2, v3, :cond_35

    const/4 v2, 0x4

    aget-byte v3, p0, v2

    const/16 v4, 0x37

    if-eq v3, v4, :cond_2d

    aget-byte v2, p0, v2

    const/16 v3, 0x39

    if-ne v2, v3, :cond_35

    :cond_2d
    const/4 v2, 0x5

    aget-byte p0, p0, v2

    const/16 v2, 0x61

    if-ne p0, v2, :cond_35

    return v0

    :cond_35
    return v1
.end method

.method private static e(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 7

    invoke-static {p0}, Lcom/cyjh/common/util/toast/e;->g(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v1, p0, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method private static e(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static e(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static e(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 7

    invoke-static {p0}, Lcom/cyjh/common/util/toast/e;->g(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v0, p1, p2}, Lcom/cyjh/common/util/toast/e;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length p1, p0

    invoke-static {p0, v2, p1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static e([B)Z
    .registers 6

    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-lt v0, v2, :cond_3c

    aget-byte v0, p0, v1

    const/16 v2, -0x77

    if-ne v0, v2, :cond_3c

    const/4 v0, 0x1

    aget-byte v2, p0, v0

    const/16 v3, 0x50

    if-ne v2, v3, :cond_3c

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v3, 0x4e

    if-ne v2, v3, :cond_3c

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    const/16 v3, 0x47

    if-ne v2, v3, :cond_3c

    const/4 v2, 0x4

    aget-byte v2, p0, v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_3c

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3c

    const/4 v2, 0x6

    aget-byte v2, p0, v2

    const/16 v4, 0x1a

    if-ne v2, v4, :cond_3c

    const/4 v2, 0x7

    aget-byte p0, p0, v2

    if-ne p0, v3, :cond_3c

    return v0

    :cond_3c
    return v1
.end method

.method private static f(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 7

    invoke-static {p0}, Lcom/cyjh/common/util/toast/e;->g(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v1, p0, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method private static f([B)Z
    .registers 4

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_13

    aget-byte v0, p0, v1

    const/16 v2, 0x42

    if-ne v0, v2, :cond_13

    const/4 v0, 0x1

    aget-byte p0, p0, v0

    const/16 v2, 0x4d

    if-ne p0, v2, :cond_13

    return v0

    :cond_13
    return v1
.end method

.method private static f(Landroid/graphics/Bitmap;I)[B
    .registers 4
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param

    invoke-static {p0}, Lcom/cyjh/common/util/toast/e;->g(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v1, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static g(Landroid/graphics/Bitmap;)Z
    .registers 2

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-nez p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method private static g(Landroid/graphics/Bitmap;I)[B
    .registers 4
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param

    invoke-static {p0}, Lcom/cyjh/common/util/toast/e;->g(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v1, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static h(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 5

    invoke-static {p0}, Lcom/cyjh/common/util/toast/e;->g(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 p1, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static i(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 5

    invoke-static {p0}, Lcom/cyjh/common/util/toast/e;->g(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 p1, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
