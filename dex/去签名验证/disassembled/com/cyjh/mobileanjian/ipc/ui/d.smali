.class final Lcom/cyjh/mobileanjian/ipc/ui/d;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mobileanjian/ipc/ui/d$a;
    }
.end annotation


# static fields
.field private static final c:I = 0x0

.field private static final d:B = 0x26t

.field private static final e:I = 0x3

.field private static final f:I = -0xcc4a1b


# instance fields
.field a:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$c;

.field final b:Lcom/cyjh/mobileanjian/ipc/ui/d$a;

.field private final g:I

.field private final h:Landroid/graphics/Paint;

.field private final i:I

.field private final j:Landroid/graphics/Paint;

.field private k:I

.field private l:F


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/d;-><init>(Landroid/content/Context;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .registers 8

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/cyjh/mobileanjian/ipc/ui/d;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/4 v2, 0x1

    const v3, 0x1010030

    invoke-virtual {p1, v3, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, v1, Landroid/util/TypedValue;->data:I

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/16 v4, 0x26

    invoke-static {v4, v1, v3, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    new-instance v1, Lcom/cyjh/mobileanjian/ipc/ui/d$a;

    invoke-direct {v1, p2}, Lcom/cyjh/mobileanjian/ipc/ui/d$a;-><init>(B)V

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/d;->b:Lcom/cyjh/mobileanjian/ipc/ui/d$a;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/d;->b:Lcom/cyjh/mobileanjian/ipc/ui/d$a;

    new-array v2, v2, [I

    const v3, -0xcc4a1b

    aput v3, v2, p2

    iput-object v2, v1, Lcom/cyjh/mobileanjian/ipc/ui/d$a;->a:[I

    const/4 p2, 0x0

    mul-float p2, p2, v0

    float-to-int p2, p2

    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/d;->g:I

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/d;->h:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/d;->h:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p1, 0x40400000    # 3.0f

    mul-float v0, v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/d;->i:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/d;->j:Landroid/graphics/Paint;

    return-void
.end method

.method private static a(I)I
    .registers 4

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    const/16 v2, 0x26

    invoke-static {v2, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private static a(IIF)I
    .registers 7

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float p0, p0, p2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v0

    add-float/2addr p0, p1

    float-to-int p1, v1

    float-to-int p2, v2

    float-to-int p0, p0

    invoke-static {p1, p2, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method private a(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$c;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/d;->a:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$c;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/d;->invalidate()V

    return-void
.end method

.method private varargs a([I)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/d;->a:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$c;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/d;->b:Lcom/cyjh/mobileanjian/ipc/ui/d$a;

    iput-object p1, v0, Lcom/cyjh/mobileanjian/ipc/ui/d$a;->a:[I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/d;->invalidate()V

    return-void
.end method


# virtual methods
.method final a(IF)V
    .registers 3

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/d;->k:I

    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/d;->l:F

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/d;->invalidate()V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .registers 20

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/cyjh/mobileanjian/ipc/ui/d;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/cyjh/mobileanjian/ipc/ui/d;->getChildCount()I

    move-result v2

    iget-object v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/d;->a:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$c;

    if-eqz v3, :cond_11

    iget-object v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/d;->a:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$c;

    goto :goto_13

    :cond_11
    iget-object v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/d;->b:Lcom/cyjh/mobileanjian/ipc/ui/d$a;

    :goto_13
    if-lez v2, :cond_be

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/d;->k:I

    invoke-virtual {v0, v2}, Lcom/cyjh/mobileanjian/ipc/ui/d;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget v5, v0, Lcom/cyjh/mobileanjian/ipc/ui/d;->k:I

    invoke-interface {v3, v5}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$c;->a(I)I

    move-result v5

    iget v6, v0, Lcom/cyjh/mobileanjian/ipc/ui/d;->l:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_aa

    iget v6, v0, Lcom/cyjh/mobileanjian/ipc/ui/d;->k:I

    invoke-virtual/range {p0 .. p0}, Lcom/cyjh/mobileanjian/ipc/ui/d;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_aa

    iget v6, v0, Lcom/cyjh/mobileanjian/ipc/ui/d;->k:I

    add-int/lit8 v6, v6, 0x1

    invoke-interface {v3, v6}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$c;->a(I)I

    move-result v3

    const/high16 v6, 0x3f800000    # 1.0f

    if-eq v5, v3, :cond_7f

    iget v7, v0, Lcom/cyjh/mobileanjian/ipc/ui/d;->l:F

    sub-float v8, v6, v7

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v7

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v8

    add-float/2addr v9, v10

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v7

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v8

    add-float/2addr v10, v11

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v7

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v8

    add-float/2addr v3, v5

    float-to-int v5, v9

    float-to-int v7, v10

    float-to-int v3, v3

    invoke-static {v5, v7, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    move v5, v3

    :cond_7f
    iget v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/d;->k:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lcom/cyjh/mobileanjian/ipc/ui/d;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v7, v0, Lcom/cyjh/mobileanjian/ipc/ui/d;->l:F

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    mul-float v7, v7, v8

    iget v8, v0, Lcom/cyjh/mobileanjian/ipc/ui/d;->l:F

    sub-float v8, v6, v8

    int-to-float v4, v4

    mul-float v8, v8, v4

    add-float/2addr v7, v8

    float-to-int v4, v7

    iget v7, v0, Lcom/cyjh/mobileanjian/ipc/ui/d;->l:F

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    mul-float v7, v7, v3

    iget v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/d;->l:F

    sub-float/2addr v6, v3

    int-to-float v2, v2

    mul-float v6, v6, v2

    add-float/2addr v7, v6

    float-to-int v2, v7

    :cond_aa
    iget-object v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/d;->j:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v7, v4

    iget v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/d;->i:I

    sub-int v3, v1, v3

    int-to-float v8, v3

    int-to-float v9, v2

    int-to-float v10, v1

    iget-object v11, v0, Lcom/cyjh/mobileanjian/ipc/ui/d;->j:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_be
    const/4 v13, 0x0

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/d;->g:I

    sub-int v2, v1, v2

    int-to-float v14, v2

    invoke-virtual/range {p0 .. p0}, Lcom/cyjh/mobileanjian/ipc/ui/d;->getWidth()I

    move-result v2

    int-to-float v15, v2

    int-to-float v1, v1

    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/d;->h:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move/from16 v16, v1

    move-object/from16 v17, v2

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
