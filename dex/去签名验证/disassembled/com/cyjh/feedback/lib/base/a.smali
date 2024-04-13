.class public Lcom/cyjh/feedback/lib/base/a;
.super Landroid/app/Dialog;


# static fields
.field public static final a:Ljava/lang/String; = "BaseDialog"


# instance fields
.field public b:Landroid/content/Context;

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const p2, 0x3f4ccccd    # 0.8f

    iput p2, p0, Lcom/cyjh/feedback/lib/base/a;->c:F

    iput p2, p0, Lcom/cyjh/feedback/lib/base/a;->d:F

    iput-object p1, p0, Lcom/cyjh/feedback/lib/base/a;->b:Landroid/content/Context;

    return-void
.end method

.method private a()V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/feedback/lib/base/a;->b:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/base/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Lcom/cyjh/feedback/lib/base/a;->c:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/cyjh/feedback/lib/base/a;->d:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/base/a;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .registers 4

    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/base/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public final a(FF)V
    .registers 5

    iput p1, p0, Lcom/cyjh/feedback/lib/base/a;->c:F

    iput p2, p0, Lcom/cyjh/feedback/lib/base/a;->d:F

    iget-object p1, p0, Lcom/cyjh/feedback/lib/base/a;->b:Landroid/content/Context;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/base/a;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v0, p2, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/cyjh/feedback/lib/base/a;->c:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    iget v0, p0, Lcom/cyjh/feedback/lib/base/a;->d:F

    mul-float p2, p2, v0

    float-to-int p2, p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/base/a;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
