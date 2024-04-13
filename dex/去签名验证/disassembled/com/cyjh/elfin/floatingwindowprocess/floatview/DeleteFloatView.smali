.class public Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;
.super Landroid/widget/LinearLayout;


# instance fields
.field a:Landroid/view/WindowManager$LayoutParams;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f040038

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f10011f

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->b:Landroid/widget/TextView;

    const p1, 0x7f10011e

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->c:Landroid/widget/ImageView;

    const p1, 0x7f10011d

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->d:Landroid/widget/LinearLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->setVisibility(I)V

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->a:Landroid/view/WindowManager$LayoutParams;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_4b

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->a:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x7f6

    :goto_48
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_61

    :cond_4b
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_5c

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_5c

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->a:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x7d5

    goto :goto_48

    :cond_5c
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->a:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x7d2

    goto :goto_48

    :goto_61
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->a:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->a:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x28

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->a:Landroid/view/WindowManager$LayoutParams;

    const v0, 0x800033

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->a:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->a:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->a:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->a:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method

.method private b()V
    .registers 3

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040038

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f10011f

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->b:Landroid/widget/TextView;

    const v0, 0x7f10011e

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->c:Landroid/widget/ImageView;

    const v0, 0x7f10011d

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->d:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->setVisibility(I)V

    return-void
.end method

.method private c()V
    .registers 4

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->a:Landroid/view/WindowManager$LayoutParams;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_14

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->a:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    :goto_11
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_2a

    :cond_14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_25

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_25

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->a:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d5

    goto :goto_11

    :cond_25
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->a:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    goto :goto_11

    :goto_2a
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->a:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->a:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->a:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->a:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->a:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->a:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->a:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method

.method private d()I
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return v0
.end method

.method private e()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->c:Landroid/widget/ImageView;

    const v1, 0x7f0200a3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private f()V
    .registers 5

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->a:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->a:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cyjh/common/util/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->a:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->c:Landroid/widget/ImageView;

    const v1, 0x7f0200a4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->a:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method
