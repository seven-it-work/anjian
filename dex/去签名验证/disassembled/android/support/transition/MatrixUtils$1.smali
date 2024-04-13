.class final Landroid/support/transition/MatrixUtils$1;
.super Landroid/graphics/Matrix;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/MatrixUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    return-void
.end method


# virtual methods
.method final oops()V
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Matrix can not be modified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final postConcat(Landroid/graphics/Matrix;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final postRotate(F)Z
    .registers 2

    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final postRotate(FFF)Z
    .registers 4

    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final postScale(FF)Z
    .registers 3

    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final postScale(FFFF)Z
    .registers 5

    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final postSkew(FF)Z
    .registers 3

    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final postSkew(FFFF)Z
    .registers 5

    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final postTranslate(FF)Z
    .registers 3

    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final preConcat(Landroid/graphics/Matrix;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final preRotate(F)Z
    .registers 2

    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final preRotate(FFF)Z
    .registers 4

    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final preScale(FF)Z
    .registers 3

    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final preScale(FFFF)Z
    .registers 5

    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final preSkew(FF)Z
    .registers 3

    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final preSkew(FFFF)Z
    .registers 5

    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final preTranslate(FF)Z
    .registers 3

    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final reset()V
    .registers 1

    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public final set(Landroid/graphics/Matrix;)V
    .registers 2

    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public final setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final setPolyToPoly([FI[FII)Z
    .registers 6

    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final setRotate(F)V
    .registers 2

    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public final setRotate(FFF)V
    .registers 4

    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public final setScale(FF)V
    .registers 3

    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public final setScale(FFFF)V
    .registers 5

    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public final setSinCos(FF)V
    .registers 3

    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public final setSinCos(FFFF)V
    .registers 5

    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public final setSkew(FF)V
    .registers 3

    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public final setSkew(FFFF)V
    .registers 5

    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public final setTranslate(FF)V
    .registers 3

    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public final setValues([F)V
    .registers 2

    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    return-void
.end method
