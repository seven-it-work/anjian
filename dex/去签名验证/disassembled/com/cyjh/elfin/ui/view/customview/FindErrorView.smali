.class public Lcom/cyjh/elfin/ui/view/customview/FindErrorView;
.super Landroid/widget/LinearLayout;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/widget/ImageView;

.field protected c:Landroid/widget/TextView;

.field protected d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->a:Landroid/content/Context;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->a:Landroid/content/Context;

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const p2, 0x7f0400a3

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f10021b

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->b:Landroid/widget/ImageView;

    const p1, 0x7f10021c

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->c:Landroid/widget/TextView;

    const p1, 0x7f10021d

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->d:Landroid/widget/TextView;

    return-void
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0400a3

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f10021b

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->b:Landroid/widget/ImageView;

    const v0, 0x7f10021c

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->c:Landroid/widget/TextView;

    const v0, 0x7f10021d

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->d:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public setErrorImg(I)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setErrorTips(I)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
