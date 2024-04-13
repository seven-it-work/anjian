.class public Lcom/cyjh/elfin/ui/view/customview/TitleView;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/view/customview/TitleView$d;,
        Lcom/cyjh/elfin/ui/view/customview/TitleView$f;,
        Lcom/cyjh/elfin/ui/view/customview/TitleView$e;,
        Lcom/cyjh/elfin/ui/view/customview/TitleView$c;,
        Lcom/cyjh/elfin/ui/view/customview/TitleView$b;,
        Lcom/cyjh/elfin/ui/view/customview/TitleView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/cyjh/elfin/ui/view/customview/TitleView$a;

.field private f:Lcom/cyjh/elfin/ui/view/customview/TitleView$b;

.field private g:Lcom/cyjh/elfin/ui/view/customview/TitleView$c;

.field private h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->b:Landroid/content/Context;

    const/16 p1, 0x3c

    const/16 p2, 0x7a

    const/16 p3, 0xc5

    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setBackgroundColor(I)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0xd

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->b:Landroid/content/Context;

    invoke-direct {p3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->a:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->a:Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p3, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->a:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p3, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->a:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p3, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->a:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->setSingleLine()V

    iget-object p3, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p3, p1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance p3, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->b:Landroid/content/Context;

    invoke-direct {p3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->c:Landroid/widget/ImageView;

    const/16 p3, 0xf

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x14

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-virtual {p1, v1, v3, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->c:Landroid/widget/ImageView;

    const v5, 0x7f0200f0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->c:Landroid/widget/ImageView;

    new-instance v6, Lcom/cyjh/elfin/ui/view/customview/TitleView$e;

    invoke-direct {v6, p0, v2}, Lcom/cyjh/elfin/ui/view/customview/TitleView$e;-><init>(Lcom/cyjh/elfin/ui/view/customview/TitleView;B)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, p1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xb

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p1, v2, v3, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->b:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->d:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->d:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->d:Landroid/widget/ImageView;

    new-instance v6, Lcom/cyjh/elfin/ui/view/customview/TitleView$f;

    invoke-direct {v6, p0, v2}, Lcom/cyjh/elfin/ui/view/customview/TitleView$f;-><init>(Lcom/cyjh/elfin/ui/view/customview/TitleView;B)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, p1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p1, v2, v3, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->b:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->h:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->h:Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->h:Landroid/widget/TextView;

    new-instance p3, Lcom/cyjh/elfin/ui/view/customview/TitleView$d;

    invoke-direct {p3, p0, v2}, Lcom/cyjh/elfin/ui/view/customview/TitleView$d;-><init>(Lcom/cyjh/elfin/ui/view/customview/TitleView;B)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->h:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->setSingleLine()V

    iget-object p2, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->h:Landroid/widget/TextView;

    const/high16 p3, 0x41800000    # 16.0f

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p2, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->h:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->h:Landroid/widget/TextView;

    invoke-virtual {p0, p2, p1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/ui/view/customview/TitleView;)Lcom/cyjh/elfin/ui/view/customview/TitleView$a;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->e:Lcom/cyjh/elfin/ui/view/customview/TitleView$a;

    return-object p0
.end method

.method private a()V
    .registers 4

    const/16 v0, 0x3c

    const/16 v1, 0x7a

    const/16 v2, 0xc5

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic b(Lcom/cyjh/elfin/ui/view/customview/TitleView;)Lcom/cyjh/elfin/ui/view/customview/TitleView$b;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->f:Lcom/cyjh/elfin/ui/view/customview/TitleView$b;

    return-object p0
.end method

.method private b()V
    .registers 12

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->a:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->a:Landroid/widget/TextView;

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->a:Landroid/widget/TextView;

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v2, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->b:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->c:Landroid/widget/ImageView;

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0x14

    const/4 v5, 0x0

    const/16 v6, 0xa

    invoke-virtual {v0, v4, v6, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v7, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->c:Landroid/widget/ImageView;

    const v8, 0x7f0200f0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v7, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->c:Landroid/widget/ImageView;

    new-instance v9, Lcom/cyjh/elfin/ui/view/customview/TitleView$e;

    invoke-direct {v9, p0, v5}, Lcom/cyjh/elfin/ui/view/customview/TitleView$e;-><init>(Lcom/cyjh/elfin/ui/view/customview/TitleView;B)V

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v7, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v5, v6, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v9, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->b:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->d:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->d:Landroid/widget/ImageView;

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v8, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->d:Landroid/widget/ImageView;

    new-instance v9, Lcom/cyjh/elfin/ui/view/customview/TitleView$f;

    invoke-direct {v9, p0, v5}, Lcom/cyjh/elfin/ui/view/customview/TitleView$f;-><init>(Lcom/cyjh/elfin/ui/view/customview/TitleView;B)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v8, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v5, v6, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->h:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->h:Landroid/widget/TextView;

    new-instance v2, Lcom/cyjh/elfin/ui/view/customview/TitleView$d;

    invoke-direct {v2, p0, v5}, Lcom/cyjh/elfin/ui/view/customview/TitleView$d;-><init>(Lcom/cyjh/elfin/ui/view/customview/TitleView;B)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v1, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->h:Landroid/widget/TextView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->h:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic c(Lcom/cyjh/elfin/ui/view/customview/TitleView;)Lcom/cyjh/elfin/ui/view/customview/TitleView$c;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->g:Lcom/cyjh/elfin/ui/view/customview/TitleView$c;

    return-object p0
.end method


# virtual methods
.method public setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$a;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->e:Lcom/cyjh/elfin/ui/view/customview/TitleView$a;

    return-void
.end method

.method public setOnRightImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$b;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->f:Lcom/cyjh/elfin/ui/view/customview/TitleView$b;

    return-void
.end method

.method public setOnRightTextViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$c;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->g:Lcom/cyjh/elfin/ui/view/customview/TitleView$c;

    return-void
.end method

.method public setRightImage(I)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setRightTvText(I)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setRightTvText(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleSize(I)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->a:Landroid/widget/TextView;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public setTitleText(I)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setVisibilityLeftImage(I)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setVisibilityRightImage(I)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setVisibilityTvRight(I)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setleftImage(I)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
