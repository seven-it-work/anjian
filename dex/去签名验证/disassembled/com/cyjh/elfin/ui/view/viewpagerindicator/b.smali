.class final Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;
.super Landroid/widget/LinearLayout;


# static fields
.field private static final a:[I

.field private static final b:I = 0x0

.field private static final c:I = 0x1

.field private static final d:I = 0x2


# instance fields
.field private e:Landroid/graphics/drawable/Drawable;

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->a:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1010129
        0x1010329
        0x101032a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->a:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0101d9

    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->i:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->h:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .registers 7

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2e

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2b

    invoke-direct {p0, v1}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->a(I)Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    invoke-direct {p0, p1, v2}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->a(Landroid/graphics/Canvas;I)V

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2e
    invoke-direct {p0, v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_50

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_49

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->g:I

    sub-int/2addr v0, v1

    goto :goto_4d

    :cond_49
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    :goto_4d
    invoke-direct {p0, p1, v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->a(Landroid/graphics/Canvas;I)V

    :cond_50
    return-void
.end method

.method private a(Landroid/graphics/Canvas;I)V
    .registers 7

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->i:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->i:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->g:I

    add-int/2addr v3, p2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p2, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private a(I)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_25

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getChildCount()I

    move-result v1

    if-ne p1, v1, :cond_a

    return v0

    :cond_a
    iget v1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->h:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_25

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    :goto_12
    if-ltz p1, :cond_25

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_22

    const/4 v0, 0x1

    return v0

    :cond_22
    add-int/lit8 p1, p1, -0x1

    goto :goto_12

    :cond_25
    return v0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .registers 7

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2e

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2b

    invoke-direct {p0, v1}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->a(I)Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    invoke-direct {p0, p1, v2}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->b(Landroid/graphics/Canvas;I)V

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2e
    invoke-direct {p0, v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_50

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_49

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->f:I

    sub-int/2addr v0, v1

    goto :goto_4d

    :cond_49
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    :goto_4d
    invoke-direct {p0, p1, v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->b(Landroid/graphics/Canvas;I)V

    :cond_50
    return-void
.end method

.method private b(Landroid/graphics/Canvas;I)V
    .registers 8

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->i:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->f:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->i:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p2, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method


# virtual methods
.method protected final measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 12

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getOrientation()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->a(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_20

    if-ne v1, v4, :cond_1c

    iget v3, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->g:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_20

    :cond_1c
    iget v3, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->f:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_20
    :goto_20
    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getChildCount()I

    move-result v3

    add-int/lit8 v5, v3, -0x1

    if-ne v0, v5, :cond_39

    invoke-direct {p0, v3}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_39

    if-ne v1, v4, :cond_35

    iget v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->g:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_39

    :cond_35
    iget v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->f:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :cond_39
    :goto_39
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a7

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getOrientation()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5b

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getChildCount()I

    move-result v0

    :goto_12
    if-ge v2, v0, :cond_39

    invoke-virtual {p0, v2}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_36

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v1, :cond_36

    invoke-direct {p0, v2}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->a(I)Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    invoke-direct {p0, p1, v4}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->a(Landroid/graphics/Canvas;I)V

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_39
    invoke-direct {p0, v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_a7

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_53

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->g:I

    sub-int/2addr v0, v1

    goto :goto_57

    :cond_53
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    :goto_57
    invoke-direct {p0, p1, v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->a(Landroid/graphics/Canvas;I)V

    goto :goto_a7

    :cond_5b
    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getChildCount()I

    move-result v0

    :goto_5f
    if-ge v2, v0, :cond_86

    invoke-virtual {p0, v2}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_83

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v1, :cond_83

    invoke-direct {p0, v2}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->a(I)Z

    move-result v5

    if-eqz v5, :cond_83

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    invoke-direct {p0, p1, v4}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->b(Landroid/graphics/Canvas;I)V

    :cond_83
    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    :cond_86
    invoke-direct {p0, v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_a7

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_a0

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->f:I

    sub-int/2addr v0, v1

    goto :goto_a4

    :cond_a0
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    :goto_a4
    invoke-direct {p0, p1, v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->b(Landroid/graphics/Canvas;I)V

    :cond_a7
    :goto_a7
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->e:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->e:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->f:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->g:I

    goto :goto_1b

    :cond_17
    iput v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->f:I

    iput v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->g:I

    :goto_1b
    if-nez p1, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/b;->requestLayout()V

    return-void
.end method
