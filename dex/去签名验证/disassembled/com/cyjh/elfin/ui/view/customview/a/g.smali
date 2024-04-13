.class public final Lcom/cyjh/elfin/ui/view/customview/a/g;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/view/View;
    .registers 3

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f040076

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .registers 4

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f040077

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p0, p1}, Lcom/cyjh/elfin/ui/view/customview/a/g;->a(Landroid/view/View;Landroid/view/View;)V

    return-object p0
.end method

.method private static a(Landroid/content/Context;Landroid/view/View;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .registers 4

    new-instance v0, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;-><init>(Landroid/content/Context;)V

    const p0, 0x7f0200fa

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->setErrorImg(I)V

    const p0, 0x7f0900c8

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->setErrorTips(I)V

    const p0, 0x7f10021d

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->setVisibility(I)V

    invoke-static {v0, p1}, Lcom/cyjh/elfin/ui/view/customview/a/g;->a(Landroid/view/View;Landroid/view/View;)V

    return-object v0
.end method

.method private static a(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_4b

    instance-of v0, p1, Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    if-eqz v0, :cond_28

    check-cast p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0xd

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_24
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_28
    instance-of v0, p1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_43

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/16 v0, 0x11

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_24

    :cond_43
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ParentView must be a RelativeLayout or LinearLayout!!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4b
    return-void
.end method

.method private static b(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .registers 4

    new-instance v0, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;-><init>(Landroid/content/Context;)V

    const p0, 0x7f02006a

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->setErrorImg(I)V

    const p0, 0x7f0900eb

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->setErrorTips(I)V

    const p0, 0x7f10021d

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->setVisibility(I)V

    invoke-static {v0, p1}, Lcom/cyjh/elfin/ui/view/customview/a/g;->a(Landroid/view/View;Landroid/view/View;)V

    return-object v0
.end method

.method private static b(Landroid/content/Context;Landroid/view/View;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .registers 4

    new-instance v0, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;-><init>(Landroid/content/Context;)V

    const p0, 0x7f0200f8

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->setErrorImg(I)V

    const p0, 0x7f0900c9

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->setErrorTips(I)V

    const p0, 0x7f10021d

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->setVisibility(I)V

    invoke-static {v0, p1}, Lcom/cyjh/elfin/ui/view/customview/a/g;->a(Landroid/view/View;Landroid/view/View;)V

    return-object v0
.end method

.method private static c(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .registers 3

    new-instance v0, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v0, p1}, Lcom/cyjh/elfin/ui/view/customview/a/g;->a(Landroid/view/View;Landroid/view/View;)V

    return-object v0
.end method

.method private static c(Landroid/content/Context;Landroid/view/View;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .registers 4

    new-instance v0, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;-><init>(Landroid/content/Context;)V

    const p0, 0x7f10021d

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v0, p1}, Lcom/cyjh/elfin/ui/view/customview/a/g;->a(Landroid/view/View;Landroid/view/View;)V

    return-object v0
.end method
