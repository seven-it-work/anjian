.class public Landroid/support/v7/widget/LinearLayoutCompat;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;,
        Landroid/support/v7/widget/LinearLayoutCompat$DividerMode;,
        Landroid/support/v7/widget/LinearLayoutCompat$OrientationMode;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z

.field private mBaselineAlignedChildIndex:I

.field private mBaselineChildTop:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I

.field private mShowDividers:I

.field private mTotalLength:I

.field private mUseLargestChild:Z

.field private mWeightSum:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    const/4 v2, 0x0

    iput v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineChildTop:I

    const v3, 0x800033

    iput v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat:[I

    invoke-static {p1, p2, v3, p3, v2}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object p1

    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_orientation:I

    invoke-virtual {p1, p2, v1}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_22

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->setOrientation(I)V

    :cond_22
    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_gravity:I

    invoke-virtual {p1, p2, v1}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_2d

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->setGravity(I)V

    :cond_2d
    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAligned:I

    invoke-virtual {p1, p2, v0}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p2

    if-nez p2, :cond_38

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->setBaselineAligned(Z)V

    :cond_38
    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_weightSum:I

    const/high16 p3, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    invoke-virtual {p1, p2, v1}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_measureWithLargestChild:I

    invoke-virtual {p1, p2, v2}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_divider:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_showDividers:I

    invoke-virtual {p1, p2, v2}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_dividerPadding:I

    invoke-virtual {p1, p2, v2}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    invoke-virtual {p1}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    return-void
.end method

.method private forceUniformHeight(II)V
    .registers 13

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, p1, :cond_3a

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_37

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    iget v2, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_37

    iget v9, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    iput v9, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_3a
    return-void
.end method

.method private forceUniformWidth(II)V
    .registers 13

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, p1, :cond_3a

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_37

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    iget v2, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_37

    iget v9, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, v0

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    iput v9, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_3a
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .registers 6

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    instance-of p1, p1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    return p1
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .registers 8

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v0

    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_3f

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3c

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3c

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    if-eqz v1, :cond_2f

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    goto :goto_39

    :cond_2f
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v3, v4

    :goto_39
    invoke-virtual {p0, p1, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_3f
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_7a

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_61

    if-eqz v1, :cond_54

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    goto :goto_77

    :cond_54
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v1

    :goto_5c
    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v0, v1

    goto :goto_77

    :cond_61
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    if-eqz v1, :cond_70

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    goto :goto_5c

    :cond_70
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    :goto_77
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_7a
    return-void
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .registers 7

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_31

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2e

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_31
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4c

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v0, v1

    goto :goto_59

    :cond_4c
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    :goto_59
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_5c
    return-void
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .registers 7

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v3, p2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .registers 8

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .registers 4

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, -0x2

    if-nez v0, :cond_b

    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object v0

    :cond_b
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_17

    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object v0

    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->generateDefaultLayoutParams()Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .registers 4

    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .registers 3

    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getBaseline()I
    .registers 6

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-gez v0, :cond_9

    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0

    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-gt v0, v1, :cond_19

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_33

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-nez v0, :cond_2b

    return v2

    :cond_2b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineChildTop:I

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_76

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x30

    if-eq v3, v4, :cond_76

    const/16 v4, 0x10

    if-eq v3, v4, :cond_5d

    const/16 v4, 0x50

    if-eq v3, v4, :cond_4b

    goto :goto_76

    :cond_4b
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v2, v3

    goto :goto_76

    :cond_5d
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    :cond_76
    :goto_76
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2
.end method

.method public getBaselineAlignedChildIndex()I
    .registers 2

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .registers 2

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    return v0
.end method

.method public getGravity()I
    .registers 2

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getOrientation()I
    .registers 2

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .registers 2

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method getVirtualChildCount()I
    .registers 2

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .registers 2

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .registers 6
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_b

    iget p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_a

    return v1

    :cond_a
    return v0

    :cond_b
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_19

    iget p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_18

    return v1

    :cond_18
    return v0

    :cond_19
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_33

    sub-int/2addr p1, v1

    :goto_20
    if-ltz p1, :cond_33

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_30

    const/4 v0, 0x1

    return v0

    :cond_30
    add-int/lit8 p1, p1, -0x1

    goto :goto_20

    :cond_33
    return v0
.end method

.method public isBaselineAligned()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    return v0
.end method

.method layoutHorizontal(IIII)V
    .registers 32

    move-object/from16 v6, p0

    invoke-static/range {p0 .. p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v7

    sub-int v3, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int v8, v3, v4

    sub-int/2addr v3, v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int v9, v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v10

    iget v3, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    const v4, 0x800007

    and-int/2addr v3, v4

    iget v4, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v11, v4, 0x70

    iget-boolean v12, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    iget-object v13, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    iget-object v14, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    const/4 v15, 0x2

    const/4 v5, 0x1

    if-eq v3, v5, :cond_4e

    const/4 v4, 0x5

    if-eq v3, v4, :cond_41

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    goto :goto_59

    :cond_41
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v3

    add-int v3, v3, p3

    sub-int v3, v3, p1

    iget v0, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v0, v3, v0

    goto :goto_59

    :cond_4e
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v3

    sub-int v0, p3, p1

    iget v1, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v0, v1

    div-int/2addr v0, v15

    add-int/2addr v0, v3

    :goto_59
    const/4 v1, 0x0

    if-eqz v2, :cond_63

    add-int/lit8 v2, v10, -0x1

    move/from16 v17, v2

    const/16 v16, -0x1

    goto :goto_67

    :cond_63
    const/16 v16, 0x1

    const/16 v17, 0x0

    :goto_67
    const/4 v3, 0x0

    :goto_68
    if-ge v3, v10, :cond_14a

    mul-int v1, v16, v3

    add-int v2, v17, v1

    invoke-virtual {v6, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_85

    invoke-virtual {v6, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v1

    add-int/2addr v0, v1

    :goto_79
    move/from16 v26, v7

    move/from16 v23, v10

    move/from16 v24, v11

    const/16 v18, 0x1

    const/16 v20, -0x1

    goto/16 :goto_13e

    :cond_85
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v15, 0x8

    if-eq v5, v15, :cond_13a

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    move-object/from16 v4, v20

    check-cast v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    if-eqz v12, :cond_ad

    move/from16 v22, v3

    iget v3, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v23, v10

    const/4 v10, -0x1

    if-eq v3, v10, :cond_b1

    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v3

    goto :goto_b2

    :cond_ad
    move/from16 v22, v3

    move/from16 v23, v10

    :cond_b1
    const/4 v3, -0x1

    :goto_b2
    iget v10, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v10, :cond_b7

    move v10, v11

    :cond_b7
    and-int/lit8 v10, v10, 0x70

    move/from16 v24, v11

    const/16 v11, 0x10

    if-eq v10, v11, :cond_f6

    const/16 v11, 0x30

    if-eq v10, v11, :cond_e3

    const/16 v11, 0x50

    if-eq v10, v11, :cond_cc

    move v3, v7

    const/4 v11, -0x1

    :goto_c9
    const/16 v18, 0x1

    goto :goto_104

    :cond_cc
    sub-int v10, v8, v5

    iget v11, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    sub-int/2addr v10, v11

    const/4 v11, -0x1

    if-eq v3, v11, :cond_e1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    sub-int v20, v20, v3

    const/4 v3, 0x2

    aget v21, v14, v3

    sub-int v21, v21, v20

    sub-int v10, v10, v21

    :cond_e1
    move v3, v10

    goto :goto_c9

    :cond_e3
    const/4 v11, -0x1

    iget v10, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v10, v7

    if-eq v3, v11, :cond_f2

    const/16 v18, 0x1

    aget v20, v13, v18

    sub-int v20, v20, v3

    add-int v10, v10, v20

    goto :goto_f4

    :cond_f2
    const/16 v18, 0x1

    :goto_f4
    move v3, v10

    goto :goto_104

    :cond_f6
    const/4 v11, -0x1

    const/16 v18, 0x1

    sub-int v3, v9, v5

    const/4 v10, 0x2

    div-int/2addr v3, v10

    add-int/2addr v3, v7

    iget v10, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v3, v10

    iget v10, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v10

    :goto_104
    invoke-virtual {v6, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v10

    if-eqz v10, :cond_10d

    iget v10, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v0, v10

    :cond_10d
    iget v10, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v10, v0

    invoke-virtual {v6, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v19, v10, v0

    move-object v0, v6

    move-object/from16 v25, v1

    move v11, v2

    move/from16 v2, v19

    move/from16 v19, v22

    move/from16 v26, v7

    const/16 v20, -0x1

    move-object v7, v4

    move v4, v15

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v15, v0

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v15, v1

    add-int/2addr v10, v15

    invoke-virtual {v6, v0, v11}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int v3, v19, v0

    move v0, v10

    goto :goto_13e

    :cond_13a
    move/from16 v19, v3

    goto/16 :goto_79

    :goto_13e
    add-int/lit8 v3, v3, 0x1

    move/from16 v10, v23

    move/from16 v11, v24

    move/from16 v7, v26

    const/4 v5, 0x1

    const/4 v15, 0x2

    goto/16 :goto_68

    :cond_14a
    return-void
.end method

.method layoutVertical(IIII)V
    .registers 23

    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v7

    sub-int v2, p3, p1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v3

    sub-int v8, v2, v3

    sub-int/2addr v2, v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v3

    sub-int v9, v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v10

    iget v2, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    iget v3, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    const v4, 0x800007

    and-int v11, v3, v4

    const/16 v3, 0x10

    if-eq v2, v3, :cond_3e

    const/16 v3, 0x50

    if-eq v2, v3, :cond_31

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    goto :goto_4a

    :cond_31
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v2

    add-int v2, v2, p4

    sub-int v2, v2, p2

    iget v0, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v0, v2, v0

    goto :goto_4a

    :cond_3e
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v2

    sub-int v0, p4, p2

    iget v1, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    :goto_4a
    const/4 v1, 0x0

    const/4 v12, 0x0

    :goto_4c
    if-ge v12, v10, :cond_ca

    invoke-virtual {v6, v12}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x1

    if-nez v13, :cond_5d

    invoke-virtual {v6, v12}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5a
    :goto_5a
    const/4 v1, 0x1

    goto/16 :goto_c8

    :cond_5d
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_5a

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    iget v1, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v1, :cond_79

    move v1, v11

    :cond_79
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    if-eq v1, v14, :cond_90

    const/4 v2, 0x5

    if-eq v1, v2, :cond_8d

    iget v1, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v1, v7

    :goto_8b
    move v2, v1

    goto :goto_9c

    :cond_8d
    sub-int v1, v8, v4

    goto :goto_98

    :cond_90
    sub-int v1, v9, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v7

    iget v2, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    :goto_98
    iget v2, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    goto :goto_8b

    :goto_9c
    invoke-virtual {v6, v12}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_a5

    iget v1, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v0, v1

    :cond_a5
    iget v1, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v16, v0, v1

    invoke-virtual {v6, v13}, Landroid/support/v7/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v3, v16, v0

    move-object v0, v6

    move-object v1, v13

    move-object v14, v5

    move v5, v15

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    iget v0, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v15, v0

    invoke-virtual {v6, v13}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int/2addr v15, v0

    add-int v16, v16, v15

    invoke-virtual {v6, v13, v12}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v12, v0

    move/from16 v0, v16

    goto :goto_5a

    :goto_c8
    add-int/2addr v12, v1

    goto :goto_4c

    :cond_ca
    return-void
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .registers 13

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method measureHorizontal(II)V
    .registers 45

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    iput v10, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v11

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    iget-object v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    const/4 v14, 0x4

    if-eqz v0, :cond_1e

    iget-object v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    if-nez v0, :cond_26

    :cond_1e
    new-array v0, v14, [I

    iput-object v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    new-array v0, v14, [I

    iput-object v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    :cond_26
    iget-object v15, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    iget-object v6, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    const/16 v16, 0x3

    const/4 v5, -0x1

    aput v5, v15, v16

    const/16 v17, 0x2

    aput v5, v15, v17

    const/16 v18, 0x1

    aput v5, v15, v18

    aput v5, v15, v10

    aput v5, v6, v16

    aput v5, v6, v17

    aput v5, v6, v18

    aput v5, v6, v10

    iget-boolean v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    iget-boolean v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v12, v2, :cond_4c

    const/16 v19, 0x1

    goto :goto_4e

    :cond_4c
    const/16 v19, 0x0

    :goto_4e
    const/16 v20, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v14, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x0

    :goto_61
    move-object/from16 v28, v6

    const/16 v5, 0x8

    if-ge v1, v11, :cond_20a

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_81

    iget v5, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v30, v0

    move v0, v1

    move/from16 v31, v3

    move/from16 v35, v4

    const/high16 v1, 0x40000000    # 2.0f

    goto/16 :goto_1f5

    :cond_81
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v5, :cond_1db

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v5

    if-eqz v5, :cond_94

    iget v5, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v10, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v5, v10

    iput v5, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    :cond_94
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    iget v5, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v30, v0, v5

    if-ne v12, v2, :cond_e9

    iget v0, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v0, :cond_e9

    iget v0, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v0, v0, v20

    if-lez v0, :cond_e9

    if-eqz v19, :cond_b8

    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v5, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    iget v2, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v5, v2

    add-int/2addr v0, v5

    :goto_b5
    iput v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_c5

    :cond_b8
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v2, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v2, v0

    iget v5, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v2, v5

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_b5

    :goto_c5
    if-eqz v4, :cond_da

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v6, v2, v2}, Landroid/view/View;->measure(II)V

    move/from16 v33, v1

    move/from16 v31, v3

    move/from16 v35, v4

    move-object v8, v6

    const/16 v29, -0x2

    goto/16 :goto_15b

    :cond_da
    move/from16 v33, v1

    move/from16 v31, v3

    move/from16 v35, v4

    move-object v8, v6

    const/high16 v1, 0x40000000    # 2.0f

    const/16 v22, 0x1

    const/16 v29, -0x2

    goto/16 :goto_15d

    :cond_e9
    iget v0, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v0, :cond_f8

    iget v0, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v0, v0, v20

    if-lez v0, :cond_f8

    const/4 v5, -0x2

    iput v5, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v2, 0x0

    goto :goto_fb

    :cond_f8
    const/4 v5, -0x2

    const/high16 v2, -0x80000000

    :goto_fb
    cmpl-float v0, v30, v20

    if-nez v0, :cond_104

    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v29, v0

    goto :goto_106

    :cond_104
    const/16 v29, 0x0

    :goto_106
    const/16 v32, 0x0

    move-object v0, v7

    move/from16 v33, v1

    move-object v1, v6

    move/from16 v34, v2

    move/from16 v2, v33

    move/from16 v31, v3

    move v3, v8

    move/from16 v35, v4

    move/from16 v4, v29

    const/4 v8, -0x1

    const/16 v29, -0x2

    move v5, v9

    move-object v8, v6

    const/high16 v9, -0x80000000

    move/from16 v6, v32

    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    move/from16 v0, v34

    if-eq v0, v9, :cond_129

    iput v0, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    :cond_129
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v19, :cond_140

    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v2, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v2, v0

    iget v3, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    :goto_13d
    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_154

    :cond_140
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    add-int v2, v1, v0

    iget v3, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_13d

    :goto_154
    if-eqz v31, :cond_15b

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v14, v0

    :cond_15b
    :goto_15b
    const/high16 v1, 0x40000000    # 2.0f

    :goto_15d
    if-eq v13, v1, :cond_168

    iget v0, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_168

    const/4 v0, 0x1

    const/16 v27, 0x1

    goto :goto_169

    :cond_168
    const/4 v0, 0x0

    :goto_169
    iget v2, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    iget v3, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    move/from16 v6, v25

    invoke-static {v6, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v25

    if-eqz v35, :cond_1a9

    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1a9

    iget v5, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v5, :cond_18d

    iget v5, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    goto :goto_18f

    :cond_18d
    iget v5, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    :goto_18f
    and-int/lit8 v5, v5, 0x70

    const/4 v6, 0x4

    shr-int/2addr v5, v6

    and-int/lit8 v5, v5, -0x2

    shr-int/lit8 v5, v5, 0x1

    aget v6, v15, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    aput v6, v15, v5

    aget v6, v28, v5

    sub-int v4, v3, v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v28, v5

    :cond_1a9
    move/from16 v4, v21

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v21

    if-eqz v26, :cond_1b9

    iget v4, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1b9

    const/16 v26, 0x1

    goto :goto_1bb

    :cond_1b9
    const/16 v26, 0x0

    :goto_1bb
    iget v4, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v4, v4, v20

    if-lez v4, :cond_1cd

    if-eqz v0, :cond_1c6

    :goto_1c3
    move/from16 v10, v24

    goto :goto_1c8

    :cond_1c6
    move v2, v3

    goto :goto_1c3

    :goto_1c8
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v24

    goto :goto_1ee

    :cond_1cd
    move/from16 v10, v24

    if-eqz v0, :cond_1d2

    move v3, v2

    :cond_1d2
    move/from16 v2, v23

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v23

    move/from16 v24, v10

    goto :goto_1ee

    :cond_1db
    move/from16 v33, v1

    move/from16 v31, v3

    move/from16 v35, v4

    move-object v8, v6

    move/from16 v4, v21

    move/from16 v2, v23

    move/from16 v10, v24

    move/from16 v6, v25

    const/high16 v1, 0x40000000    # 2.0f

    move/from16 v30, v0

    :goto_1ee
    move/from16 v10, v33

    invoke-virtual {v7, v8, v10}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v0, v10

    :goto_1f5
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    move-object/from16 v6, v28

    move/from16 v0, v30

    move/from16 v3, v31

    move/from16 v4, v35

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v5, -0x1

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    goto/16 :goto_61

    :cond_20a
    move/from16 v31, v3

    move/from16 v35, v4

    move/from16 v4, v21

    move/from16 v2, v23

    move/from16 v10, v24

    move/from16 v6, v25

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v9, -0x80000000

    const/16 v29, -0x2

    iget v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v3, :cond_22d

    invoke-virtual {v7, v11}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_22d

    iget v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v8, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v3, v8

    iput v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    :cond_22d
    aget v3, v15, v18

    const/4 v8, -0x1

    if-ne v3, v8, :cond_23f

    const/4 v3, 0x0

    aget v1, v15, v3

    if-ne v1, v8, :cond_23f

    aget v1, v15, v17

    if-ne v1, v8, :cond_23f

    aget v1, v15, v16

    if-eq v1, v8, :cond_26f

    :cond_23f
    aget v1, v15, v16

    const/4 v3, 0x0

    aget v8, v15, v3

    aget v5, v15, v18

    aget v9, v15, v17

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    aget v5, v28, v16

    aget v8, v28, v3

    aget v3, v28, v18

    aget v9, v28, v17

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v4, v21

    :cond_26f
    if-eqz v31, :cond_2d0

    const/high16 v1, -0x80000000

    if-eq v12, v1, :cond_277

    if-nez v12, :cond_2d0

    :cond_277
    const/4 v1, 0x0

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    const/4 v1, 0x0

    :goto_27b
    if-ge v1, v11, :cond_2d0

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_28d

    iget v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v5

    add-int/2addr v3, v5

    iput v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_29a

    :cond_28d
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v8, 0x8

    if-ne v5, v8, :cond_29d

    invoke-virtual {v7, v3, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v1, v3

    :goto_29a
    move/from16 v36, v1

    goto :goto_2cd

    :cond_29d
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    if-eqz v19, :cond_2b6

    iget v8, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v9, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v9, v14

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v9, v5

    invoke-virtual {v7, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v3

    add-int/2addr v9, v3

    add-int/2addr v8, v9

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_29a

    :cond_2b6
    iget v8, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    add-int v9, v8, v14

    move/from16 v36, v1

    iget v1, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v9, v1

    iget v1, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v9, v1

    invoke-virtual {v7, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v9, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_2cd
    add-int/lit8 v1, v36, 0x1

    goto :goto_27b

    :cond_2d0
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v1, v3

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v3, p1

    const/4 v5, 0x0

    const/4 v8, -0x1

    invoke-static {v1, v3, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    const v5, 0xffffff

    and-int/2addr v5, v1

    iget v9, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v5, v9

    if-nez v22, :cond_33f

    if-eqz v5, :cond_300

    cmpl-float v21, v0, v20

    if-lez v21, :cond_300

    goto :goto_33f

    :cond_300
    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v31, :cond_33b

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v12, v2, :cond_33b

    const/4 v2, 0x0

    :goto_30b
    if-ge v2, v11, :cond_33b

    invoke-virtual {v7, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_338

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v10, 0x8

    if-eq v8, v10, :cond_338

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v8, v8, v20

    if-lez v8, :cond_338

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v14, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-static {v12, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v5, v10, v12}, Landroid/view/View;->measure(II)V

    :cond_338
    add-int/lit8 v2, v2, 0x1

    goto :goto_30b

    :cond_33b
    move/from16 v5, p2

    goto/16 :goto_4ce

    :cond_33f
    :goto_33f
    iget v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    cmpl-float v4, v4, v20

    if-lez v4, :cond_347

    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    :cond_347
    aput v8, v15, v16

    aput v8, v15, v17

    aput v8, v15, v18

    const/4 v4, 0x0

    aput v8, v15, v4

    aput v8, v28, v16

    aput v8, v28, v17

    aput v8, v28, v18

    aput v8, v28, v4

    iput v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move v4, v2

    const/4 v10, -0x1

    move v2, v0

    const/4 v0, 0x0

    :goto_35e
    if-ge v0, v11, :cond_476

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_46b

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_46b

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    iget v9, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v21, v9, v20

    if-lez v21, :cond_3cd

    int-to-float v3, v5

    mul-float v3, v3, v9

    div-float/2addr v3, v2

    float-to-int v3, v3

    sub-float/2addr v2, v9

    sub-int/2addr v5, v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v21

    add-int v9, v9, v21

    move/from16 v37, v2

    iget v2, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v9, v2

    iget v2, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v2

    iget v2, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v38, v5

    move/from16 v5, p2

    invoke-static {v5, v9, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v2

    iget v9, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v9, :cond_3ab

    const/high16 v9, 0x40000000    # 2.0f

    if-eq v12, v9, :cond_3a6

    goto :goto_3ab

    :cond_3a6
    if-lez v3, :cond_3a9

    goto :goto_3b4

    :cond_3a9
    const/4 v3, 0x0

    goto :goto_3b4

    :cond_3ab
    :goto_3ab
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v3

    if-gez v9, :cond_3b3

    const/4 v9, 0x0

    :cond_3b3
    move v3, v9

    :goto_3b4
    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v14, v3, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    invoke-static {v6, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    move/from16 v2, v37

    move/from16 v3, v38

    goto :goto_3d0

    :cond_3cd
    move v3, v5

    move/from16 v5, p2

    :goto_3d0
    if-eqz v19, :cond_3f1

    iget v9, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    move/from16 v39, v2

    iget v2, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int v21, v21, v2

    iget v2, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int v21, v21, v2

    invoke-virtual {v7, v14}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int v21, v21, v2

    add-int v9, v9, v21

    iput v9, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v40, v3

    :goto_3ee
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_40e

    :cond_3f1
    move/from16 v39, v2

    iget v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v2

    move/from16 v40, v3

    iget v3, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v9, v3

    iget v3, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v9, v3

    invoke-virtual {v7, v14}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v3

    add-int/2addr v9, v3

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_3ee

    :goto_40e
    if-eq v13, v2, :cond_417

    iget v2, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_417

    const/4 v2, 0x1

    goto :goto_418

    :cond_417
    const/4 v2, 0x0

    :goto_418
    iget v3, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    iget v9, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v9

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v3

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    if-eqz v2, :cond_429

    goto :goto_42a

    :cond_429
    move v3, v9

    :goto_42a
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v26, :cond_437

    iget v3, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_438

    const/4 v3, 0x1

    goto :goto_439

    :cond_437
    const/4 v4, -0x1

    :cond_438
    const/4 v3, 0x0

    :goto_439
    if-eqz v35, :cond_463

    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v14

    if-eq v14, v4, :cond_463

    iget v4, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v4, :cond_448

    iget v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    goto :goto_44a

    :cond_448
    iget v4, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    :goto_44a
    and-int/lit8 v4, v4, 0x70

    const/4 v8, 0x4

    shr-int/2addr v4, v8

    and-int/lit8 v4, v4, -0x2

    shr-int/lit8 v4, v4, 0x1

    aget v8, v15, v4

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v15, v4

    aget v8, v28, v4

    sub-int/2addr v9, v14

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v28, v4

    :cond_463
    move v4, v2

    move/from16 v26, v3

    move/from16 v2, v39

    move/from16 v3, v40

    goto :goto_46e

    :cond_46b
    move v3, v5

    move/from16 v5, p2

    :goto_46e
    add-int/lit8 v0, v0, 0x1

    move v5, v3

    move/from16 v3, p1

    const/4 v8, -0x1

    goto/16 :goto_35e

    :cond_476
    move/from16 v5, p2

    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    iput v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    aget v0, v15, v18

    const/4 v2, -0x1

    if-ne v0, v2, :cond_49b

    const/4 v0, 0x0

    aget v3, v15, v0

    if-ne v3, v2, :cond_49b

    aget v0, v15, v17

    if-ne v0, v2, :cond_49b

    aget v0, v15, v16

    if-eq v0, v2, :cond_499

    goto :goto_49b

    :cond_499
    move v0, v10

    goto :goto_4c9

    :cond_49b
    :goto_49b
    aget v0, v15, v16

    const/4 v2, 0x0

    aget v3, v15, v2

    aget v8, v15, v18

    aget v9, v15, v17

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    aget v3, v28, v16

    aget v2, v28, v2

    aget v8, v28, v18

    aget v9, v28, v17

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_4c9
    move/from16 v41, v4

    move v4, v0

    move/from16 v0, v41

    :goto_4ce
    if-nez v26, :cond_4d5

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v13, v2, :cond_4d5

    goto :goto_4d6

    :cond_4d5
    move v0, v4

    :goto_4d6
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v2, -0x1000000

    and-int/2addr v2, v6

    or-int/2addr v1, v2

    shl-int/lit8 v2, v6, 0x10

    invoke-static {v0, v5, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {v7, v1, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    if-eqz v27, :cond_4fc

    move/from16 v0, p1

    invoke-direct {v7, v11, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->forceUniformHeight(II)V

    :cond_4fc
    return-void
.end method

.method measureNullChild(I)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method measureVertical(II)V
    .registers 43

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    iput v10, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v11

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    iget v14, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    iget-boolean v15, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    :goto_2a
    const/16 v10, 0x8

    move/from16 v22, v4

    if-ge v6, v11, :cond_19a

    invoke-virtual {v7, v6}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_47

    iget v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v6}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v10

    add-int/2addr v4, v10

    iput v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v31, v11

    move/from16 v28, v13

    move/from16 v4, v22

    goto/16 :goto_190

    :cond_47
    move/from16 v24, v1

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v10, :cond_173

    invoke-virtual {v7, v6}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v10, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v1, v10

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    :cond_5c
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    iget v1, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v25, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v13, v1, :cond_97

    iget v0, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v0, :cond_97

    iget v0, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_97

    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v1, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v1, v0

    move/from16 v26, v2

    iget v2, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move-object v8, v4

    move/from16 v34, v5

    move/from16 v31, v11

    move/from16 v28, v13

    move/from16 v32, v22

    move/from16 v33, v24

    move/from16 v30, v26

    const/16 v18, 0x1

    move v13, v6

    goto/16 :goto_104

    :cond_97
    move/from16 v26, v2

    iget v0, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v0, :cond_a8

    iget v0, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_a8

    const/4 v0, -0x2

    iput v0, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v2, 0x0

    goto :goto_aa

    :cond_a8
    const/high16 v2, -0x80000000

    :goto_aa
    const/16 v23, 0x0

    cmpl-float v0, v25, v16

    if-nez v0, :cond_b5

    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v27, v0

    goto :goto_b7

    :cond_b5
    const/16 v27, 0x0

    :goto_b7
    move-object v0, v7

    move/from16 v28, v13

    move/from16 v13, v24

    const/high16 v24, 0x40000000    # 2.0f

    move-object v1, v4

    move/from16 v29, v2

    move/from16 v30, v26

    move v2, v6

    move/from16 v31, v11

    move v11, v3

    move v3, v8

    move-object v8, v4

    move/from16 v33, v13

    move/from16 v32, v22

    const/high16 v13, 0x40000000    # 2.0f

    move/from16 v4, v23

    move/from16 v34, v5

    move v5, v9

    move v13, v6

    move/from16 v6, v27

    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    move/from16 v0, v29

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_e2

    iput v0, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    :cond_e2
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    add-int v2, v1, v0

    iget v3, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    if-eqz v15, :cond_103

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v3, v0

    goto :goto_104

    :cond_103
    move v3, v11

    :goto_104
    if-ltz v14, :cond_10e

    add-int/lit8 v6, v13, 0x1

    if-ne v14, v6, :cond_10e

    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iput v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineChildTop:I

    :cond_10e
    if-ge v13, v14, :cond_11e

    iget v0, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_11e

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11e
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v12, v0, :cond_12b

    iget v0, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12b

    const/4 v0, 0x1

    const/16 v19, 0x1

    goto :goto_12c

    :cond_12b
    const/4 v0, 0x0

    :goto_12c
    iget v1, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    iget v2, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    move/from16 v4, v30

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    move/from16 v6, v33

    invoke-static {v6, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    if-eqz v20, :cond_150

    iget v6, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v11, -0x1

    if-ne v6, v11, :cond_150

    const/16 v20, 0x1

    goto :goto_152

    :cond_150
    const/16 v20, 0x0

    :goto_152
    iget v6, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v6, v6, v16

    if-lez v6, :cond_167

    if-eqz v0, :cond_15d

    :goto_15a
    move/from16 v10, v32

    goto :goto_15f

    :cond_15d
    move v1, v2

    goto :goto_15a

    :goto_15f
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v10, v0

    move/from16 v0, v34

    goto :goto_184

    :cond_167
    move/from16 v10, v32

    if-eqz v0, :cond_16c

    move v2, v1

    :cond_16c
    move/from16 v1, v34

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_184

    :cond_173
    move-object v8, v4

    move v1, v5

    move/from16 v31, v11

    move/from16 v28, v13

    move/from16 v10, v22

    move v4, v2

    move v11, v3

    move v13, v6

    move/from16 v6, v24

    move/from16 v25, v0

    move v0, v1

    move v5, v6

    :goto_184
    invoke-virtual {v7, v8, v13}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int v6, v13, v1

    move v2, v4

    move v1, v5

    move v4, v10

    move v5, v0

    move/from16 v0, v25

    :goto_190
    add-int/lit8 v6, v6, 0x1

    move/from16 v13, v28

    move/from16 v11, v31

    move/from16 v8, p1

    goto/16 :goto_2a

    :cond_19a
    move v6, v1

    move v4, v2

    move v1, v5

    move/from16 v31, v11

    move/from16 v28, v13

    move/from16 v2, v22

    move v11, v3

    iget v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v3, :cond_1b8

    move/from16 v3, v31

    invoke-virtual {v7, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v5

    if-eqz v5, :cond_1ba

    iget v5, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v8, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v5, v8

    iput v5, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_1ba

    :cond_1b8
    move/from16 v3, v31

    :cond_1ba
    :goto_1ba
    if-eqz v15, :cond_213

    move/from16 v5, v28

    const/high16 v8, -0x80000000

    if-eq v5, v8, :cond_1c8

    if-nez v5, :cond_1c5

    goto :goto_1c8

    :cond_1c5
    move/from16 v35, v4

    goto :goto_217

    :cond_1c8
    :goto_1c8
    const/4 v8, 0x0

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    const/4 v8, 0x0

    :goto_1cc
    if-ge v8, v3, :cond_1c5

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v13

    if-nez v13, :cond_1de

    iget v13, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_1e9

    :cond_1de
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-ne v14, v10, :cond_1ec

    invoke-virtual {v7, v13, v8}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v13

    add-int/2addr v8, v13

    :goto_1e9
    move/from16 v35, v4

    goto :goto_20c

    :cond_1ec
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    iget v10, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    add-int v21, v10, v11

    move/from16 v35, v4

    iget v4, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v21, v21, v4

    iget v4, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v21, v21, v4

    invoke-virtual {v7, v13}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int v4, v21, v4

    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_20c
    add-int/lit8 v8, v8, 0x1

    move/from16 v4, v35

    const/16 v10, 0x8

    goto :goto_1cc

    :cond_213
    move/from16 v35, v4

    move/from16 v5, v28

    :goto_217
    iget v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v10

    add-int/2addr v8, v10

    add-int/2addr v4, v8

    iput v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v8, 0x0

    invoke-static {v4, v9, v8}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v4

    const v8, 0xffffff

    and-int/2addr v8, v4

    iget v10, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v8, v10

    if-nez v18, :cond_283

    if-eqz v8, :cond_244

    cmpl-float v10, v0, v16

    if-lez v10, :cond_244

    goto :goto_283

    :cond_244
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v15, :cond_27f

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v5, v1, :cond_27f

    const/4 v1, 0x0

    :goto_24f
    if-ge v1, v3, :cond_27f

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_27c

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v8, 0x8

    if-eq v5, v8, :cond_27c

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v5, v5, v16

    if-lez v5, :cond_27c

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v11, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v2, v5, v10}, Landroid/view/View;->measure(II)V

    :cond_27c
    add-int/lit8 v1, v1, 0x1

    goto :goto_24f

    :cond_27f
    move/from16 v11, p1

    goto/16 :goto_376

    :cond_283
    :goto_283
    iget v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    cmpl-float v2, v2, v16

    if-lez v2, :cond_28b

    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    :cond_28b
    const/4 v2, 0x0

    iput v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move v11, v0

    move v10, v8

    const/4 v0, 0x0

    move v8, v1

    move/from16 v1, v35

    :goto_294
    if-ge v0, v3, :cond_363

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-eq v14, v15, :cond_355

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    iget v2, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v18, v2, v16

    if-lez v18, :cond_2fe

    int-to-float v15, v10

    mul-float v15, v15, v2

    div-float/2addr v15, v11

    float-to-int v15, v15

    sub-float/2addr v11, v2

    sub-int/2addr v10, v15

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v18

    add-int v2, v2, v18

    move/from16 v36, v10

    iget v10, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v2, v10

    iget v10, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v2, v10

    iget v10, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v37, v11

    move/from16 v11, p1

    invoke-static {v11, v2, v10}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v2

    iget v10, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v10, :cond_2e1

    const/high16 v10, 0x40000000    # 2.0f

    if-eq v5, v10, :cond_2da

    goto :goto_2e1

    :cond_2da
    if-lez v15, :cond_2dd

    goto :goto_2ea

    :cond_2dd
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v15, 0x0

    goto :goto_2ec

    :cond_2e1
    :goto_2e1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v15

    if-gez v10, :cond_2e9

    const/4 v10, 0x0

    :cond_2e9
    move v15, v10

    :goto_2ea
    const/high16 v10, 0x40000000    # 2.0f

    :goto_2ec
    invoke-static {v15, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v13, v2, v15}, Landroid/view/View;->measure(II)V

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    and-int/lit16 v2, v2, -0x100

    invoke-static {v6, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    goto :goto_305

    :cond_2fe
    move v2, v11

    move/from16 v11, p1

    move/from16 v37, v2

    move/from16 v36, v10

    :goto_305
    iget v2, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    iget v10, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v2, v10

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v2

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v15, 0x40000000    # 2.0f

    if-eq v12, v15, :cond_320

    iget v15, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v38, v1

    const/4 v1, -0x1

    if-ne v15, v1, :cond_323

    const/4 v15, 0x1

    goto :goto_324

    :cond_320
    move/from16 v38, v1

    const/4 v1, -0x1

    :cond_323
    const/4 v15, 0x0

    :goto_324
    if-eqz v15, :cond_327

    goto :goto_328

    :cond_327
    move v2, v10

    :goto_328
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v20, :cond_334

    iget v8, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-ne v8, v1, :cond_334

    const/4 v8, 0x1

    goto :goto_335

    :cond_334
    const/4 v8, 0x0

    :goto_335
    iget v10, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v10

    iget v1, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v15, v1

    iget v1, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v15, v1

    invoke-virtual {v7, v13}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v15, v1

    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v20, v8

    move/from16 v10, v36

    move/from16 v1, v38

    move v8, v2

    goto :goto_35c

    :cond_355
    move/from16 v35, v1

    move v2, v11

    move/from16 v11, p1

    move/from16 v37, v2

    :goto_35c
    add-int/lit8 v0, v0, 0x1

    move/from16 v11, v37

    const/4 v2, 0x0

    goto/16 :goto_294

    :cond_363
    move/from16 v35, v1

    move/from16 v11, p1

    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move v0, v8

    :goto_376
    if-nez v20, :cond_37d

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v12, v1, :cond_37d

    goto :goto_37f

    :cond_37d
    move/from16 v0, v35

    :goto_37f
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v11, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {v7, v0, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    if-eqz v19, :cond_39d

    invoke-direct {v7, v3, v9}, Landroid/support/v7/widget/LinearLayoutCompat;->forceUniformWidth(II)V

    :cond_39d
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->drawDividersVertical(Landroid/graphics/Canvas;)V

    return-void

    :cond_e
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 7

    iget p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/support/v7/widget/LinearLayoutCompat;->layoutVertical(IIII)V

    return-void

    :cond_9
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/support/v7/widget/LinearLayoutCompat;->layoutHorizontal(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->measureVertical(II)V

    return-void

    :cond_9
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->measureHorizontal(II)V

    return-void
.end method

.method public setBaselineAligned(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .registers 4

    if-ltz p1, :cond_c

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_9

    goto :goto_c

    :cond_9
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    return-void

    :cond_c
    :goto_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "base aligned child index out of range (0, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    goto :goto_1b

    :cond_17
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    :goto_1b
    if-nez p1, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    return-void
.end method

.method public setDividerPadding(I)V
    .registers 2

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    return-void
.end method

.method public setGravity(I)V
    .registers 3

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    if-eq v0, p1, :cond_19

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_e

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_e
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_14

    or-int/lit8 p1, p1, 0x30

    :cond_14
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    :cond_19
    return-void
.end method

.method public setHorizontalGravity(I)V
    .registers 4

    const v0, 0x800007

    and-int/2addr p1, v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/2addr v0, v1

    if-eq v0, p1, :cond_15

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    const v1, -0x800008

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    :cond_15
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    return-void
.end method

.method public setOrientation(I)V
    .registers 3

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    :cond_9
    return-void
.end method

.method public setShowDividers(I)V
    .registers 3

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    if-eq p1, v0, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    :cond_7
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    return-void
.end method

.method public setVerticalGravity(I)V
    .registers 3

    and-int/lit8 p1, p1, 0x70

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v0, v0, 0x70

    if-eq v0, p1, :cond_12

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v0, v0, -0x71

    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    :cond_12
    return-void
.end method

.method public setWeightSum(F)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
