.class public Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;
.super Landroid/widget/HorizontalScrollView;

# interfaces
.implements Lcom/cyjh/elfin/ui/view/viewpagerindicator/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$b;,
        Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/CharSequence;


# instance fields
.field private b:Ljava/lang/Runnable;

.field private final c:Landroid/view/View$OnClickListener;

.field private final d:Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;

.field private e:Landroid/support/v4/view/ViewPager;

.field private f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private g:I

.field private h:I

.field private i:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ""

    sput-object v0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->a:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$1;

    invoke-direct {p2, p0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$1;-><init>(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;)V

    iput-object p2, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->c:Landroid/view/View$OnClickListener;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->setHorizontalScrollBarEnabled(Z)V

    new-instance p2, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;

    invoke-direct {p2, p1}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->d:Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->d:Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;)Landroid/support/v4/view/ViewPager;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->e:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method private a(I)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->d:Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;

    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_f
    new-instance v0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$2;

    invoke-direct {v0, p0, p1}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$2;-><init>(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;Landroid/view/View;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->b:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(ILjava/lang/CharSequence;I)V
    .registers 7

    new-instance v0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$b;

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$b;-><init>(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;Landroid/content/Context;)V

    invoke-static {v0, p1}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$b;->a(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$b;I)I

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$b;->setFocusable(Z)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p2}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$b;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    if-eqz p3, :cond_1e

    invoke-virtual {v0, p3, p1, p1, p1}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$b;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_1e
    iget-object p2, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->d:Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;

    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p3, p1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p2, v0, p3}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic b(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;)Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$a;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->i:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$a;

    return-object p0
.end method

.method static synthetic c(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;)Ljava/lang/Runnable;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->b:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic d(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;)I
    .registers 1

    iget p0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->g:I

    return p0
.end method


# virtual methods
.method public final a()V
    .registers 11

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->d:Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->removeAllViews()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    instance-of v1, v0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/a;

    if-eqz v1, :cond_13

    move-object v1, v0

    check-cast v1, Lcom/cyjh/elfin/ui/view/viewpagerindicator/a;

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1a
    const/4 v5, 0x1

    if-ge v4, v2, :cond_59

    invoke-virtual {v0, v4}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_25

    sget-object v6, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->a:Ljava/lang/CharSequence;

    :cond_25
    if-eqz v1, :cond_2c

    invoke-interface {v1}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/a;->a()I

    move-result v7

    goto :goto_2d

    :cond_2c
    const/4 v7, 0x0

    :goto_2d
    new-instance v8, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$b;

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$b;-><init>(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;Landroid/content/Context;)V

    invoke-static {v8, v4}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$b;->a(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$b;I)I

    invoke-virtual {v8, v5}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$b;->setFocusable(Z)V

    iget-object v5, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v5}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, v6}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$b;->setText(Ljava/lang/CharSequence;)V

    if-eqz v7, :cond_49

    invoke-virtual {v8, v7, v3, v3, v3}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$b;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_49
    iget-object v5, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->d:Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v6, v3, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v8, v6}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_59
    iget v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->h:I

    if-le v0, v2, :cond_60

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->h:I

    :cond_60
    iget v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->h:I

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->requestLayout()V

    return-void
.end method

.method public final a(Landroid/support/v4/view/ViewPager;I)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {p0, p2}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public onMeasure(II)V
    .registers 8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_b

    const/4 v3, 0x1

    goto :goto_c

    :cond_b
    const/4 v3, 0x0

    :goto_c
    invoke-virtual {p0, v3}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->setFillViewport(Z)V

    iget-object v4, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->d:Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;

    invoke-virtual {v4}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getChildCount()I

    move-result v4

    if-le v4, v1, :cond_34

    if-eq v0, v2, :cond_1d

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_34

    :cond_1d
    const/4 v0, 0x2

    if-le v4, v0, :cond_2c

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ecccccd    # 0.4f

    mul-float v0, v0, v1

    float-to-int v0, v0

    goto :goto_35

    :cond_2c
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    div-int/2addr v1, v0

    iput v1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->g:I

    goto :goto_37

    :cond_34
    const/4 v0, -0x1

    :goto_35
    iput v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->g:I

    :goto_37
    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->getMeasuredWidth()I

    move-result v0

    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->getMeasuredWidth()I

    move-result p1

    if-eqz v3, :cond_4b

    if-eq v0, p1, :cond_4b

    iget p1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->h:I

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V

    :cond_4b
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_9
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_9
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_c
    return-void
.end method

.method public setCurrentItem(I)V
    .registers 7

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager has not been bound."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iput p1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->h:I

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->d:Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v0, :cond_4b

    iget-object v3, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->d:Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;

    invoke-virtual {v3, v2}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_27

    const/4 v4, 0x1

    goto :goto_28

    :cond_27
    const/4 v4, 0x0

    :goto_28
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    if-eqz v4, :cond_48

    iget-object v3, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->d:Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;

    invoke-virtual {v3, p1}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->b:Ljava/lang/Runnable;

    if-eqz v4, :cond_3c

    iget-object v4, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3c
    new-instance v4, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$2;

    invoke-direct {v4, p0, v3}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$2;-><init>(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;Landroid/view/View;)V

    iput-object v4, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->b:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->post(Ljava/lang/Runnable;)Z

    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_4b
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setOnTabReselectedListener(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$a;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->i:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$a;

    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->e:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    :cond_f
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_1d

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d
    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->a()V

    return-void
.end method
