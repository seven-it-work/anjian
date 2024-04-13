.class public Lcom/cyjh/common/view/MyItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method private constructor <init>(Landroid/content/Context;I)V
    .registers 4

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/cyjh/common/view/MyItemDecoration;->d:I

    iput v0, p0, Lcom/cyjh/common/view/MyItemDecoration;->e:I

    invoke-direct {p0, p1, p2}, Lcom/cyjh/common/view/MyItemDecoration;->a(Landroid/content/Context;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;III)V
    .registers 6

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/cyjh/common/view/MyItemDecoration;->d:I

    iput v0, p0, Lcom/cyjh/common/view/MyItemDecoration;->e:I

    iput p3, p0, Lcom/cyjh/common/view/MyItemDecoration;->c:I

    iput p4, p0, Lcom/cyjh/common/view/MyItemDecoration;->d:I

    invoke-direct {p0, p1, p2}, Lcom/cyjh/common/view/MyItemDecoration;->a(Landroid/content/Context;I)V

    return-void
.end method

.method private a(I)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/common/view/MyItemDecoration;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cyjh/common/view/MyItemDecoration;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/cyjh/common/view/MyItemDecoration;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    iget-object v0, p0, Lcom/cyjh/common/view/MyItemDecoration;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/cyjh/common/view/MyItemDecoration;->a:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v1, p0, Lcom/cyjh/common/view/MyItemDecoration;->c:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .registers 4

    iput p2, p0, Lcom/cyjh/common/view/MyItemDecoration;->e:I

    const/4 v0, 0x1

    if-eqz p2, :cond_f

    if-eq p2, v0, :cond_f

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u53c2\u6570"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    iput p2, p0, Lcom/cyjh/common/view/MyItemDecoration;->e:I

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/cyjh/common/view/MyItemDecoration;->a:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/cyjh/common/view/MyItemDecoration;->a:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setFlags(I)V

    iget-object p2, p0, Lcom/cyjh/common/view/MyItemDecoration;->a:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/cyjh/common/view/MyItemDecoration;->a:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/cyjh/common/view/MyItemDecoration;->c:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .registers 15

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_35

    invoke-virtual {p2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/cyjh/common/view/MyItemDecoration;->d:I

    add-int/2addr v5, v4

    int-to-float v7, v0

    int-to-float v8, v4

    int-to-float v9, v1

    int-to-float v10, v5

    iget-object v11, p0, Lcom/cyjh/common/view/MyItemDecoration;->a:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_35
    return-void
.end method

.method private b(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .registers 15

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_30

    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v5, v4

    iget v4, p0, Lcom/cyjh/common/view/MyItemDecoration;->d:I

    add-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v7, v5

    int-to-float v8, v0

    int-to-float v9, v4

    int-to-float v10, v3

    iget-object v11, p0, Lcom/cyjh/common/view/MyItemDecoration;->a:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_30
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    iget p2, p0, Lcom/cyjh/common/view/MyItemDecoration;->e:I

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-ne p2, p4, :cond_f

    iget p2, p0, Lcom/cyjh/common/view/MyItemDecoration;->d:I

    invoke-virtual {p1, p3, p3, p3, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_f
    iget p2, p0, Lcom/cyjh/common/view/MyItemDecoration;->d:I

    invoke-virtual {p1, p3, p3, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 15

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    iget p3, p0, Lcom/cyjh/common/view/MyItemDecoration;->e:I

    const/4 v0, 0x0

    if-nez p3, :cond_38

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result p3

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    :goto_10
    if-ge v0, v1, :cond_37

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v4, v3

    iget v3, p0, Lcom/cyjh/common/view/MyItemDecoration;->d:I

    add-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v6, v4

    int-to-float v7, p3

    int-to-float v8, v3

    int-to-float v9, v2

    iget-object v10, p0, Lcom/cyjh/common/view/MyItemDecoration;->a:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_37
    return-void

    :cond_38
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    :goto_49
    if-ge v0, v2, :cond_6c

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/cyjh/common/view/MyItemDecoration;->d:I

    add-int/2addr v4, v3

    int-to-float v6, p3

    int-to-float v7, v3

    int-to-float v8, v1

    int-to-float v9, v4

    iget-object v10, p0, Lcom/cyjh/common/view/MyItemDecoration;->a:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    :cond_6c
    return-void
.end method
