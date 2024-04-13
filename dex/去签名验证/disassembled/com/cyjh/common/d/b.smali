.class public Lcom/cyjh/common/d/b;
.super Lcom/cyjh/common/d/a;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final d:Ljava/lang/String; = "b"

.field private static final f:I = 0x13

.field private static final g:I = 0x18


# instance fields
.field public e:Landroid/content/Context;

.field private h:Lcom/cyjh/common/view/SlLoadingView;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    sget v0, Lcom/cyjh/common/R$style;->Theme_Dialog:I

    invoke-direct {p0, p1, v0}, Lcom/cyjh/common/d/a;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/cyjh/common/d/b;->e:Landroid/content/Context;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_17

    invoke-virtual {p0}, Lcom/cyjh/common/d/b;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7f6

    :goto_13
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    return-void

    :cond_17
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_30

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_30

    invoke-virtual {p0}, Lcom/cyjh/common/d/b;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_3f

    invoke-virtual {p0}, Lcom/cyjh/common/d/b;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d5

    goto :goto_13

    :cond_30
    invoke-virtual {p0}, Lcom/cyjh/common/d/b;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_3f

    invoke-virtual {p0}, Lcom/cyjh/common/d/b;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d2

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    :cond_3f
    return-void
.end method

.method private a()V
    .registers 2

    sget v0, Lcom/cyjh/common/R$id;->slLoadingView:I

    invoke-virtual {p0, v0}, Lcom/cyjh/common/d/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/common/view/SlLoadingView;

    iput-object v0, p0, Lcom/cyjh/common/d/b;->h:Lcom/cyjh/common/view/SlLoadingView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cyjh/common/d/b;->setCancelable(Z)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 1

    invoke-super {p0}, Lcom/cyjh/common/d/a;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/cyjh/common/d/a;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/cyjh/common/R$layout;->dialog_library_ui_loading:I

    invoke-virtual {p0, p1}, Lcom/cyjh/common/d/b;->setContentView(I)V

    const p1, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, p1}, Lcom/cyjh/common/d/b;->a(F)V

    const p1, 0x3f4ccccd    # 0.8f

    iput p1, p0, Lcom/cyjh/common/d/a;->b:F

    const p1, 0x3f19999a    # 0.6f

    iput p1, p0, Lcom/cyjh/common/d/a;->c:F

    invoke-virtual {p0}, Lcom/cyjh/common/d/a;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/common/util/e;->c(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    invoke-virtual {p0}, Lcom/cyjh/common/d/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/cyjh/common/d/a;->b:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    iget v1, p0, Lcom/cyjh/common/d/a;->c:F

    mul-float p1, p1, v1

    float-to-int p1, p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/cyjh/common/d/a;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    sget p1, Lcom/cyjh/common/R$id;->slLoadingView:I

    invoke-virtual {p0, p1}, Lcom/cyjh/common/d/b;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/cyjh/common/view/SlLoadingView;

    iput-object p1, p0, Lcom/cyjh/common/d/b;->h:Lcom/cyjh/common/view/SlLoadingView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/cyjh/common/d/b;->setCancelable(Z)V

    return-void
.end method
