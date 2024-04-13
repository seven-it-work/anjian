.class public Lcom/cyjh/common/view/FlatButton;
.super Landroid/widget/Button;


# instance fields
.field private a:Landroid/graphics/drawable/StateListDrawable;

.field private b:Ljava/lang/CharSequence;

.field private c:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cyjh/common/view/FlatButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Lcom/cyjh/common/view/FlatButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2}, Lcom/cyjh/common/view/FlatButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method protected static a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/LayerDrawable;
    .registers 6

    sget v0, Lcom/cyjh/common/R$drawable;->rect_normal:I

    invoke-virtual {p0, v0}, Lcom/cyjh/common/view/FlatButton;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/cyjh/common/view/FlatButton;->getCornerRadius()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    sget v2, Lcom/cyjh/common/R$color;->blue_pressed:I

    invoke-virtual {p0, v2}, Lcom/cyjh/common/view/FlatButton;->c(I)I

    move-result v2

    sget v3, Lcom/cyjh/common/R$styleable;->FlatButton_pb_colorPressed:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/cyjh/common/view/FlatButton;->getCornerRadius()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    sget v2, Lcom/cyjh/common/R$color;->blue_normal:I

    invoke-virtual {p0, v2}, Lcom/cyjh/common/view/FlatButton;->c(I)I

    move-result v2

    sget v3, Lcom/cyjh/common/R$styleable;->FlatButton_pb_colorNormal:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/cyjh/common/view/FlatButton;->a:Landroid/graphics/drawable/StateListDrawable;

    if-eqz p2, :cond_ad

    sget-object v0, Lcom/cyjh/common/R$styleable;->FlatButton:[I

    invoke-static {p1, p2, v0}, Lcom/cyjh/common/view/FlatButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_ad

    :try_start_11
    sget p2, Lcom/cyjh/common/R$dimen;->corner_radius:I

    invoke-virtual {p0, p2}, Lcom/cyjh/common/view/FlatButton;->b(I)F

    move-result p2

    sget v0, Lcom/cyjh/common/R$styleable;->FlatButton_pb_cornerRadius:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/FlatButton;->c:F

    iget-object p2, p0, Lcom/cyjh/common/view/FlatButton;->a:Landroid/graphics/drawable/StateListDrawable;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a7

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-direct {p0, p1}, Lcom/cyjh/common/view/FlatButton;->b(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/cyjh/common/view/FlatButton;->a:Landroid/graphics/drawable/StateListDrawable;

    new-array v1, v0, [I

    const v2, 0x101009c

    aput v2, v1, v3

    invoke-direct {p0, p1}, Lcom/cyjh/common/view/FlatButton;->b(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/cyjh/common/view/FlatButton;->a:Landroid/graphics/drawable/StateListDrawable;

    new-array v1, v0, [I

    const v2, 0x10100a1

    aput v2, v1, v3

    invoke-direct {p0, p1}, Lcom/cyjh/common/view/FlatButton;->b(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/cyjh/common/view/FlatButton;->a:Landroid/graphics/drawable/StateListDrawable;

    new-array v1, v3, [I

    sget v2, Lcom/cyjh/common/R$drawable;->rect_normal:I

    invoke-virtual {p0, v2}, Lcom/cyjh/common/view/FlatButton;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/cyjh/common/view/FlatButton;->getCornerRadius()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    sget v4, Lcom/cyjh/common/R$color;->blue_pressed:I

    invoke-virtual {p0, v4}, Lcom/cyjh/common/view/FlatButton;->c(I)I

    move-result v4

    sget v5, Lcom/cyjh/common/R$styleable;->FlatButton_pb_colorPressed:I

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/cyjh/common/view/FlatButton;->getCornerRadius()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    sget v3, Lcom/cyjh/common/R$color;->blue_normal:I

    invoke-virtual {p0, v3}, Lcom/cyjh/common/view/FlatButton;->c(I)I

    move-result v3

    sget v4, Lcom/cyjh/common/R$styleable;->FlatButton_pb_colorNormal:I

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V
    :try_end_a4
    .catchall {:try_start_11 .. :try_end_a4} :catchall_a8

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_ad

    :catchall_a8
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2

    :cond_ad
    :goto_ad
    invoke-virtual {p0}, Lcom/cyjh/common/view/FlatButton;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/common/view/FlatButton;->b:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/cyjh/common/view/FlatButton;->a:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0, p1}, Lcom/cyjh/common/view/FlatButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private b(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/Drawable;
    .registers 5

    sget v0, Lcom/cyjh/common/R$drawable;->rect_pressed:I

    invoke-virtual {p0, v0}, Lcom/cyjh/common/view/FlatButton;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/cyjh/common/view/FlatButton;->getCornerRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    sget v1, Lcom/cyjh/common/R$color;->blue_pressed:I

    invoke-virtual {p0, v1}, Lcom/cyjh/common/view/FlatButton;->c(I)I

    move-result v1

    sget v2, Lcom/cyjh/common/R$styleable;->FlatButton_pb_colorPressed:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    sget-object v0, Lcom/cyjh/common/R$styleable;->FlatButton:[I

    invoke-static {p1, p2, v0}, Lcom/cyjh/common/view/FlatButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    :try_start_9
    sget p2, Lcom/cyjh/common/R$dimen;->corner_radius:I

    invoke-virtual {p0, p2}, Lcom/cyjh/common/view/FlatButton;->b(I)F

    move-result p2

    sget v0, Lcom/cyjh/common/R$styleable;->FlatButton_pb_cornerRadius:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/FlatButton;->c:F

    iget-object p2, p0, Lcom/cyjh/common/view/FlatButton;->a:Landroid/graphics/drawable/StateListDrawable;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a7

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-direct {p0, p1}, Lcom/cyjh/common/view/FlatButton;->b(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/cyjh/common/view/FlatButton;->a:Landroid/graphics/drawable/StateListDrawable;

    new-array v1, v0, [I

    const v2, 0x101009c

    aput v2, v1, v3

    invoke-direct {p0, p1}, Lcom/cyjh/common/view/FlatButton;->b(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/cyjh/common/view/FlatButton;->a:Landroid/graphics/drawable/StateListDrawable;

    new-array v1, v0, [I

    const v2, 0x10100a1

    aput v2, v1, v3

    invoke-direct {p0, p1}, Lcom/cyjh/common/view/FlatButton;->b(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/cyjh/common/view/FlatButton;->a:Landroid/graphics/drawable/StateListDrawable;

    new-array v1, v3, [I

    sget v2, Lcom/cyjh/common/R$drawable;->rect_normal:I

    invoke-virtual {p0, v2}, Lcom/cyjh/common/view/FlatButton;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/cyjh/common/view/FlatButton;->getCornerRadius()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    sget v4, Lcom/cyjh/common/R$color;->blue_pressed:I

    invoke-virtual {p0, v4}, Lcom/cyjh/common/view/FlatButton;->c(I)I

    move-result v4

    sget v5, Lcom/cyjh/common/R$styleable;->FlatButton_pb_colorPressed:I

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/cyjh/common/view/FlatButton;->getCornerRadius()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    sget v3, Lcom/cyjh/common/R$color;->blue_normal:I

    invoke-virtual {p0, v3}, Lcom/cyjh/common/view/FlatButton;->c(I)I

    move-result v3

    sget v4, Lcom/cyjh/common/R$styleable;->FlatButton_pb_colorNormal:I

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V
    :try_end_9c
    .catchall {:try_start_9 .. :try_end_9c} :catchall_a0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_a0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method


# virtual methods
.method protected final a(I)Landroid/graphics/drawable/Drawable;
    .registers 3

    invoke-virtual {p0}, Lcom/cyjh/common/view/FlatButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected final b(I)F
    .registers 3

    invoke-virtual {p0}, Lcom/cyjh/common/view/FlatButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    return p1
.end method

.method protected final c(I)I
    .registers 3

    invoke-virtual {p0}, Lcom/cyjh/common/view/FlatButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method public getCornerRadius()F
    .registers 2

    iget v0, p0, Lcom/cyjh/common/view/FlatButton;->c:F

    return v0
.end method

.method public getNormalDrawable()Landroid/graphics/drawable/StateListDrawable;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/common/view/FlatButton;->a:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method public getNormalText()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/common/view/FlatButton;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/common/view/FlatButton;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/cyjh/common/view/FlatButton;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/cyjh/common/view/FlatButton;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/cyjh/common/view/FlatButton;->getPaddingBottom()I

    move-result v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_1a

    invoke-virtual {p0, p1}, Lcom/cyjh/common/view/FlatButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1d

    :cond_1a
    invoke-virtual {p0, p1}, Lcom/cyjh/common/view/FlatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1d
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/cyjh/common/view/FlatButton;->setPadding(IIII)V

    return-void
.end method
