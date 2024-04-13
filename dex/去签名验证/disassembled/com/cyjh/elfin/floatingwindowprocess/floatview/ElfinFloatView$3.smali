.class final Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final b:I = 0x5


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

.field private c:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$a;

.field private d:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V
    .registers 4

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$a;

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$a;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;B)V

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->c:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$a;

    new-instance p1, Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->c:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$a;

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->d:Landroid/view/GestureDetector;

    return-void
.end method

.method private static a(FFFF)F
    .registers 8

    sub-float/2addr p0, p2

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float/2addr p1, p3

    float-to-double p0, p1

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->d:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_a

    return v0

    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x0

    const/16 v2, 0x8

    packed-switch p1, :pswitch_data_1f0

    return v1

    :pswitch_15
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->g(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_22

    return v0

    :cond_22
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    iget-object v3, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v3}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->h(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)F

    move-result v3

    invoke-static {p1, v3}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->e(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;F)F

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    iget-object v3, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v3}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->i(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)F

    move-result v3

    invoke-static {p1, v3}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->f(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;F)F

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-static {p1, v3}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;F)F

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object v3, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-virtual {v3}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/cyjh/common/util/a;->d(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr p2, v3

    invoke-static {p1, p2}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->b(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;F)F

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->j(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)F

    move-result p1

    iget-object p2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {p2}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->k(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)F

    move-result p2

    iget-object v3, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v3}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->h(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)F

    move-result v3

    iget-object v4, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v4}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->i(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)F

    move-result v4

    sub-float/2addr p1, v3

    float-to-double v5, p1

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    sub-float/2addr p2, v4

    float-to-double p1, p2

    invoke-static {p1, p2, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v5, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    const/high16 p2, 0x40a00000    # 5.0f

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_89

    return v0

    :cond_89
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->i(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)F

    move-result p1

    iget-object p2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {p2}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->k(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)F

    move-result p2

    sub-float/2addr p1, p2

    float-to-double p1, p1

    iget-object v3, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v3}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->h(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)F

    move-result v3

    iget-object v4, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v4}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->j(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    const-wide/high16 v3, -0x3fb2000000000000L    # -60.0

    cmpg-double v5, p1, v3

    const-wide/high16 v6, -0x3fa2000000000000L    # -120.0

    if-gez v5, :cond_bb

    cmpl-double v5, p1, v6

    if-lez v5, :cond_bb

    :cond_b9
    const/4 p1, 0x1

    goto :goto_dc

    :cond_bb
    cmpl-double v5, p1, v3

    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    if-ltz v5, :cond_c7

    cmpg-double v5, p1, v3

    if-gtz v5, :cond_c7

    const/4 p1, 0x2

    goto :goto_dc

    :cond_c7
    cmpl-double v5, p1, v3

    const-wide/high16 v3, 0x405e000000000000L    # 120.0

    if-lez v5, :cond_d3

    cmpg-double v5, p1, v3

    if-gez v5, :cond_d3

    const/4 p1, 0x3

    goto :goto_dc

    :cond_d3
    cmpl-double v5, p1, v3

    if-gez v5, :cond_db

    cmpg-double v3, p1, v6

    if-gtz v3, :cond_b9

    :cond_db
    const/4 p1, 0x4

    :goto_dc
    iget-object p2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {p2, p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;I)V

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    iget-object p2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {p2}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->h(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)F

    move-result p2

    iget-object v3, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v3}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->d(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)F

    move-result v3

    sub-float/2addr p2, v3

    float-to-int p2, p2

    iget-object v3, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v3}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->i(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)F

    move-result v3

    iget-object v4, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v4}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->l(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p1, p2, v3}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a(II)V

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->m(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->getVisibility()I

    move-result p1

    if-ne p1, v2, :cond_117

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->m(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->setVisibility(I)V

    :cond_117
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->n(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Z

    move-result p1

    if-eqz p1, :cond_13e

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->m(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

    move-result-object p1

    iget-object p2, p1, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->c:Landroid/widget/ImageView;

    const v1, 0x7f0200a3

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p1, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0e006a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return v0

    :cond_13e
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->m(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->a()V

    return v0

    :pswitch_148
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-static {p1, v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;F)F

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/a;->d(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    invoke-static {p1, p2}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->b(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;F)F

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->n(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Z

    move-result p1

    if-eqz p1, :cond_195

    new-instance p1, Lcom/cyjh/elfin/floatingwindowprocess/a/a;

    iget-object p2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-virtual {p2}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/cyjh/elfin/floatingwindowprocess/a/a;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {p2}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->o(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Lcom/cyjh/elfin/floatingwindowprocess/a/a$b;

    move-result-object p2

    iput-object p2, p1, Lcom/cyjh/elfin/floatingwindowprocess/a/a;->a:Lcom/cyjh/elfin/floatingwindowprocess/a/a$b;

    iget-object p2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {p2}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->p(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Lcom/cyjh/elfin/floatingwindowprocess/a/a$a;

    move-result-object p2

    iput-object p2, p1, Lcom/cyjh/elfin/floatingwindowprocess/a/a;->b:Lcom/cyjh/elfin/floatingwindowprocess/a/a$a;

    new-instance p2, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3$1;

    invoke-direct {p2, p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3$1;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;)V

    invoke-virtual {p1, p2}, Lcom/cyjh/elfin/floatingwindowprocess/a/a;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p1}, Lcom/cyjh/elfin/floatingwindowprocess/a/a;->show()V

    return v1

    :cond_195
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->g(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-ne p1, v2, :cond_1a6

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->q(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V

    :cond_1a6
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->m(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->setVisibility(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->r(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return v1

    :pswitch_1b9
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->f(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-static {p1, v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->a(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;F)F

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-virtual {v2}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cyjh/common/util/a;->d(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-static {p1, v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->b(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;F)F

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {p1, v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;F)F

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->d(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;F)F

    return v1

    nop

    :pswitch_data_1f0
    .packed-switch 0x0
        :pswitch_1b9
        :pswitch_148
        :pswitch_15
    .end packed-switch
.end method
