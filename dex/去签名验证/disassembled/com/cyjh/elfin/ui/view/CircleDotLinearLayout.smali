.class public Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$a;
    }
.end annotation


# static fields
.field private static final b:I = 0x6

.field private static final c:I = 0x0

.field private static final d:Ljava/lang/String; = "#3c7ac5"

.field private static final e:Ljava/lang/String; = "#bababa"

.field private static final f:F = 8.0f

.field private static final g:I = 0x64


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/graphics/drawable/GradientDrawable;

.field private i:Landroid/graphics/drawable/GradientDrawable;

.field private j:Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$a;

.field private k:Landroid/os/Handler;

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->a:Ljava/util/List;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->k:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->a:Ljava/util/List;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->k:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->a:Ljava/util/List;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->k:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->a()V

    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->k:Landroid/os/Handler;

    return-object p0
.end method

.method private a()V
    .registers 7

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_a
    const/4 v2, 0x6

    if-ge v1, v2, :cond_79

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/cyjh/common/util/a;->e(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/cyjh/common/util/a;->e(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/cyjh/common/util/a;->e(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    if-nez v1, :cond_4c

    const-string v4, "#3c7ac5"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iput-object v3, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->h:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_5a

    :cond_4c
    const-string v4, "#bababa"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v4, 0x5

    if-ne v1, v4, :cond_5a

    iput-object v3, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->i:Landroid/graphics/drawable/GradientDrawable;

    :cond_5a
    :goto_5a
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/cyjh/common/util/a;->e(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v0, v0, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v2, v3}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_79
    new-instance v1, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$a;

    invoke-direct {v1, p0, v0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$a;-><init>(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;B)V

    iput-object v1, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->j:Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$a;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->j:Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$a;

    iget-object v1, v0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$a;->a:Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;

    iget-object v1, v1, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->k:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$a;->a:Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;

    iget-object v1, v1, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->k:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic b(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)I
    .registers 3

    iget v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->l:I

    return v0
.end method

.method private b()V
    .registers 7

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_a
    const/4 v2, 0x6

    if-ge v1, v2, :cond_79

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/cyjh/common/util/a;->e(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/cyjh/common/util/a;->e(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/cyjh/common/util/a;->e(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    if-nez v1, :cond_4c

    const-string v4, "#3c7ac5"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iput-object v3, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->h:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_5a

    :cond_4c
    const-string v4, "#bababa"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v4, 0x5

    if-ne v1, v4, :cond_5a

    iput-object v3, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->i:Landroid/graphics/drawable/GradientDrawable;

    :cond_5a
    :goto_5a
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/cyjh/common/util/a;->e(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v0, v0, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v2, v3}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_79
    return-void
.end method

.method static synthetic c(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)I
    .registers 1

    iget p0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->l:I

    return p0
.end method

.method static synthetic e(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)Landroid/graphics/drawable/GradientDrawable;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->h:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method static synthetic f(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)Landroid/graphics/drawable/GradientDrawable;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->i:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->k:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
