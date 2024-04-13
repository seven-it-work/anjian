.class public Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;
.super Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseFootView;


# instance fields
.field protected b:Landroid/widget/TextView;

.field private c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseFootView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView$1;

    invoke-direct {p1, p0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView$1;-><init>(Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;)V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->c:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseFootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView$1;

    invoke-direct {p1, p0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView$1;-><init>(Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;)V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->c:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->f()V

    return-void
.end method

.method private f()V
    .registers 4

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->getLayout()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v1, v0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f10017e

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static g()V
    .registers 0

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->b:Landroid/widget/TextView;

    const-string v1, "\u70b9\u51fb\u52a0\u8f7d\u66f4\u591a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->b:Landroid/widget/TextView;

    const-string v1, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final c()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final d()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final e()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public getLayout()Landroid/view/View;
    .registers 4

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04005d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
