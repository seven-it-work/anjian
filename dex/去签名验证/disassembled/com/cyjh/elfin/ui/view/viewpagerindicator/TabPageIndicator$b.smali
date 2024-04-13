.class final Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$b;
.super Landroid/widget/TextView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$b;->b:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;

    const/4 p1, 0x0

    const v0, 0x7f0101d9

    invoke-direct {p0, p2, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a()I
    .registers 2

    iget v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$b;->a:I

    return v0
.end method

.method static synthetic a(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$b;I)I
    .registers 2

    iput p1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$b;->a:I

    return p1
.end method


# virtual methods
.method public final onMeasure(II)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$b;->b:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->d(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;)I

    move-result p1

    if-lez p1, :cond_26

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$b;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$b;->b:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->d(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;)I

    move-result v0

    if-le p1, v0, :cond_26

    iget-object p1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$b;->b:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->d(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    :cond_26
    return-void
.end method
