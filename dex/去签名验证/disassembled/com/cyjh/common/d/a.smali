.class public Lcom/cyjh/common/d/a;
.super Landroid/app/Dialog;


# instance fields
.field protected a:Landroid/content/Context;

.field b:F

.field c:F


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const p2, 0x3f4ccccd    # 0.8f

    iput p2, p0, Lcom/cyjh/common/d/a;->b:F

    iput p2, p0, Lcom/cyjh/common/d/a;->c:F

    iput-object p1, p0, Lcom/cyjh/common/d/a;->a:Landroid/content/Context;

    return-void
.end method

.method private a()V
    .registers 2

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Lcom/cyjh/common/d/a;->a(F)V

    return-void
.end method

.method private b()V
    .registers 5

    invoke-virtual {p0}, Lcom/cyjh/common/d/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/e;->c(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cyjh/common/d/a;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Lcom/cyjh/common/d/a;->b:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v2, p0, Lcom/cyjh/common/d/a;->c:F

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/cyjh/common/d/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private c()V
    .registers 5

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/cyjh/common/d/a;->b:F

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/cyjh/common/d/a;->c:F

    invoke-virtual {p0}, Lcom/cyjh/common/d/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/e;->c(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cyjh/common/d/a;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Lcom/cyjh/common/d/a;->b:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v2, p0, Lcom/cyjh/common/d/a;->c:F

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/cyjh/common/d/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected final a(F)V
    .registers 4

    invoke-virtual {p0}, Lcom/cyjh/common/d/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1}, Lcom/cyjh/common/d/a;->a(F)V

    return-void
.end method
