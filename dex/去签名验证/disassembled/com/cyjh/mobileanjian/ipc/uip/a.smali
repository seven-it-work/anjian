.class public final Lcom/cyjh/mobileanjian/ipc/uip/a;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mobileanjian/ipc/uip/a$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x8


# instance fields
.field private b:Landroid/support/v4/view/ViewPager;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/animation/Animator;

.field private k:Landroid/animation/Animator;

.field private l:Landroid/animation/Animator;

.field private m:Landroid/animation/Animator;

.field private n:I

.field private final o:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private p:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->c:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->d:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->e:I

    sget v1, Lcom/cyjh/mqsdk/R$animator;->no_animator:I

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->f:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->g:I

    sget v1, Lcom/cyjh/mqsdk/R$drawable;->ci_blue_point:I

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->h:I

    sget v1, Lcom/cyjh/mqsdk/R$drawable;->ci_gray_point:I

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->i:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->n:I

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/uip/a$1;

    invoke-direct {v0, p0}, Lcom/cyjh/mobileanjian/ipc/uip/a$1;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/a;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->o:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/uip/a$2;

    invoke-direct {v0, p0}, Lcom/cyjh/mobileanjian/ipc/uip/a$2;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/a;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->p:Landroid/database/DataSetObserver;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->c:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->d:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->e:I

    sget v1, Lcom/cyjh/mqsdk/R$animator;->no_animator:I

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->f:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->g:I

    sget v1, Lcom/cyjh/mqsdk/R$drawable;->ci_blue_point:I

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->h:I

    sget v1, Lcom/cyjh/mqsdk/R$drawable;->ci_gray_point:I

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->i:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->n:I

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/uip/a$1;

    invoke-direct {v0, p0}, Lcom/cyjh/mobileanjian/ipc/uip/a$1;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/a;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->o:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/uip/a$2;

    invoke-direct {v0, p0}, Lcom/cyjh/mobileanjian/ipc/uip/a$2;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/a;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->p:Landroid/database/DataSetObserver;

    invoke-direct {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->c:I

    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->d:I

    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->e:I

    sget v0, Lcom/cyjh/mqsdk/R$animator;->no_animator:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->g:I

    sget v0, Lcom/cyjh/mqsdk/R$drawable;->ci_blue_point:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->h:I

    sget v0, Lcom/cyjh/mqsdk/R$drawable;->ci_gray_point:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->i:I

    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->n:I

    new-instance p3, Lcom/cyjh/mobileanjian/ipc/uip/a$1;

    invoke-direct {p3, p0}, Lcom/cyjh/mobileanjian/ipc/uip/a$1;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/a;)V

    iput-object p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->o:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    new-instance p3, Lcom/cyjh/mobileanjian/ipc/uip/a$2;

    invoke-direct {p3, p0}, Lcom/cyjh/mobileanjian/ipc/uip/a$2;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/a;)V

    iput-object p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->p:Landroid/database/DataSetObserver;

    invoke-direct {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, -0x1

    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->c:I

    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->d:I

    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->e:I

    sget p4, Lcom/cyjh/mqsdk/R$animator;->no_animator:I

    iput p4, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->f:I

    const/4 p4, 0x0

    iput p4, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->g:I

    sget p4, Lcom/cyjh/mqsdk/R$drawable;->ci_blue_point:I

    iput p4, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->h:I

    sget p4, Lcom/cyjh/mqsdk/R$drawable;->ci_gray_point:I

    iput p4, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->i:I

    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->n:I

    new-instance p3, Lcom/cyjh/mobileanjian/ipc/uip/a$1;

    invoke-direct {p3, p0}, Lcom/cyjh/mobileanjian/ipc/uip/a$1;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/a;)V

    iput-object p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->o:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    new-instance p3, Lcom/cyjh/mobileanjian/ipc/uip/a$2;

    invoke-direct {p3, p0}, Lcom/cyjh/mobileanjian/ipc/uip/a$2;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/a;)V

    iput-object p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->p:Landroid/database/DataSetObserver;

    invoke-direct {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/cyjh/mobileanjian/ipc/uip/a;I)I
    .registers 2

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->n:I

    return p1
.end method

.method static synthetic a(Lcom/cyjh/mobileanjian/ipc/uip/a;)Landroid/support/v4/view/ViewPager;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->b:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method private a()V
    .registers 7

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->removeAllViews()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_10

    return-void

    :cond_10
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->getOrientation()I

    move-result v2

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v0, :cond_2f

    if-ne v1, v3, :cond_27

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->h:I

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->l:Landroid/animation/Animator;

    :goto_23
    invoke-direct {p0, v2, v4, v5}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(IILandroid/animation/Animator;)V

    goto :goto_2c

    :cond_27
    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->i:I

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->m:Landroid/animation/Animator;

    goto :goto_23

    :goto_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_2f
    return-void
.end method

.method private a(III)V
    .registers 7

    sget v0, Lcom/cyjh/mqsdk/R$animator;->scale_with_alpha:I

    sget v1, Lcom/cyjh/mqsdk/R$drawable;->white_radius:I

    sget v2, Lcom/cyjh/mqsdk/R$drawable;->white_radius:I

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->d:I

    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->e:I

    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->c:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->f:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->g:I

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->h:I

    iput v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->i:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(IIIIII)V
    .registers 7
    .param p4    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->d:I

    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->e:I

    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->c:I

    iput p4, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->f:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->g:I

    iput p5, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->h:I

    iput p6, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->i:I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(IILandroid/animation/Animator;)V
    .registers 6
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-virtual {p3}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p3}, Landroid/animation/Animator;->end()V

    invoke-virtual {p3}, Landroid/animation/Animator;->cancel()V

    :cond_c
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    iget p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->d:I

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->e:I

    invoke-virtual {p0, v0, p2, v1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->addView(Landroid/view/View;II)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    if-nez p1, :cond_30

    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->c:I

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->c:I

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_38

    :cond_30
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->c:I

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->c:I

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_38
    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p3, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->d:I

    const/high16 v1, 0x41000000    # 8.0f

    if-gez v0, :cond_b

    invoke-virtual {p0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(F)I

    move-result v0

    goto :goto_d

    :cond_b
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->d:I

    :goto_d
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->d:I

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->e:I

    if-gez v0, :cond_18

    invoke-virtual {p0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(F)I

    move-result v0

    goto :goto_1a

    :cond_18
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->e:I

    :goto_1a
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->e:I

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->c:I

    if-gez v0, :cond_25

    invoke-virtual {p0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(F)I

    move-result v0

    goto :goto_27

    :cond_25
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->c:I

    :goto_27
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->c:I

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->f:I

    if-nez v0, :cond_30

    sget v0, Lcom/cyjh/mqsdk/R$animator;->scale_with_alpha:I

    goto :goto_32

    :cond_30
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->f:I

    :goto_32
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->f:I

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->b(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->j:Landroid/animation/Animator;

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->b(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->l:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->l:Landroid/animation/Animator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->c(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->k:Landroid/animation/Animator;

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->c(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->m:Landroid/animation/Animator;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->m:Landroid/animation/Animator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->h:I

    if-nez p1, :cond_5f

    sget p1, Lcom/cyjh/mqsdk/R$drawable;->white_radius:I

    goto :goto_61

    :cond_5f
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->h:I

    :goto_61
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->h:I

    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->i:I

    if-nez p1, :cond_6a

    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->h:I

    goto :goto_6c

    :cond_6a
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->i:I

    :goto_6c
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->i:I

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    if-eqz p2, :cond_66

    sget-object v0, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v0, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_width:I

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->d:I

    sget v0, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_height:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->e:I

    sget v0, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_margin:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->c:I

    sget v0, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_animator:I

    sget v2, Lcom/cyjh/mqsdk/R$animator;->scale_with_alpha:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->f:I

    sget v0, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_animator_reverse:I

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->g:I

    sget v0, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_drawable:I

    sget v3, Lcom/cyjh/mqsdk/R$drawable;->white_radius:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->h:I

    sget v0, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_drawable_unselected:I

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->h:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->i:I

    sget v0, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_orientation:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_52

    const/4 v2, 0x1

    :cond_52
    invoke-virtual {p0, v2}, Lcom/cyjh/mobileanjian/ipc/uip/a;->setOrientation(I)V

    sget v0, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_gravity:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-ltz v0, :cond_5e

    goto :goto_60

    :cond_5e
    const/16 v0, 0x11

    :goto_60
    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->setGravity(I)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_66
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method private b(Landroid/content/Context;)Landroid/animation/Animator;
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->f:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/cyjh/mobileanjian/ipc/uip/a;)Landroid/animation/Animator;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->k:Landroid/animation/Animator;

    return-object p0
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    if-nez p2, :cond_3

    return-void

    :cond_3
    sget-object v0, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_width:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->d:I

    sget p2, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_height:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->e:I

    sget p2, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_margin:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->c:I

    sget p2, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_animator:I

    sget v1, Lcom/cyjh/mqsdk/R$animator;->scale_with_alpha:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->f:I

    sget p2, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_animator_reverse:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->g:I

    sget p2, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_drawable:I

    sget v2, Lcom/cyjh/mqsdk/R$drawable;->white_radius:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->h:I

    sget p2, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_drawable_unselected:I

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->h:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->i:I

    sget p2, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_orientation:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_53

    const/4 v1, 0x1

    :cond_53
    invoke-virtual {p0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->setOrientation(I)V

    sget p2, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_gravity:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_5f

    goto :goto_61

    :cond_5f
    const/16 p2, 0x11

    :goto_61
    invoke-virtual {p0, p2}, Lcom/cyjh/mobileanjian/ipc/uip/a;->setGravity(I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private c(Landroid/content/Context;)Landroid/animation/Animator;
    .registers 4

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->g:I

    if-nez v0, :cond_14

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->f:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/uip/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/a$a;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/a;B)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1

    :cond_14
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->g:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method static synthetic c(Lcom/cyjh/mobileanjian/ipc/uip/a;)Landroid/animation/Animator;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->j:Landroid/animation/Animator;

    return-object p0
.end method

.method static synthetic d(Lcom/cyjh/mobileanjian/ipc/uip/a;)I
    .registers 1

    iget p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->n:I

    return p0
.end method

.method static synthetic e(Lcom/cyjh/mobileanjian/ipc/uip/a;)I
    .registers 1

    iget p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->i:I

    return p0
.end method

.method static synthetic f(Lcom/cyjh/mobileanjian/ipc/uip/a;)I
    .registers 1

    iget p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->h:I

    return p0
.end method

.method static synthetic g(Lcom/cyjh/mobileanjian/ipc/uip/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a()V

    return-void
.end method


# virtual methods
.method public final a(F)I
    .registers 3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public final getDataSetObserver()Landroid/database/DataSetObserver;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->p:Landroid/database/DataSetObserver;

    return-object v0
.end method

.method public final setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->b:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_c

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "can not find Viewpager , setViewPager first"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public final setViewPager(Landroid/support/v4/view/ViewPager;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->b:Landroid/support/v4/view/ViewPager;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->b:Landroid/support/v4/view/ViewPager;

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object p1

    if-eqz p1, :cond_2d

    const/4 p1, -0x1

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->n:I

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a()V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->b:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->o:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->b:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->o:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->o:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_2d
    return-void
.end method
