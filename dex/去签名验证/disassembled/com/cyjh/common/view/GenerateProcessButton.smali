.class public Lcom/cyjh/common/view/GenerateProcessButton;
.super Lcom/cyjh/common/view/ProcessButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/cyjh/common/view/ProcessButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/cyjh/common/view/ProcessButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/cyjh/common/view/ProcessButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .registers 6

    invoke-virtual {p0}, Lcom/cyjh/common/view/GenerateProcessButton;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/cyjh/common/view/GenerateProcessButton;->getMaxProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/cyjh/common/view/GenerateProcessButton;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-virtual {p0}, Lcom/cyjh/common/view/GenerateProcessButton;->getProgressDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cyjh/common/view/GenerateProcessButton;->getMeasuredWidth()I

    move-result v2

    float-to-int v1, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    invoke-virtual {p0}, Lcom/cyjh/common/view/GenerateProcessButton;->getProgressDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
