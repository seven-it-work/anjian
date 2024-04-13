.class public Landroid/support/constraint/ConstraintLayout;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/ConstraintLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final ALLOWS_EMBEDDED:Z = false

.field private static final CACHE_MEASURED_DIMENSION:Z = false

.field private static final DEBUG:Z = false

.field public static final DESIGN_INFO_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ConstraintLayout"

.field private static final USE_CONSTRAINTS_HELPER:Z = true

.field public static final VERSION:Ljava/lang/String; = "ConstraintLayout-1.1.3"


# instance fields
.field mChildrenByIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/ConstraintHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintSet:Landroid/support/constraint/ConstraintSet;

.field private mConstraintSetId:I

.field private mDesignIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDirtyHierarchy:Z

.field private mLastMeasureHeight:I

.field mLastMeasureHeightMode:I

.field mLastMeasureHeightSize:I

.field private mLastMeasureWidth:I

.field mLastMeasureWidthMode:I

.field mLastMeasureWidthSize:I

.field mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMetrics:Landroid/support/constraint/solver/Metrics;

.field private mMinHeight:I

.field private mMinWidth:I

.field private mOptimizationLevel:I

.field private final mVariableDimensionsWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    new-instance p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    const/4 v0, 0x7

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    invoke-direct {p0, v0}, Landroid/support/constraint/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    new-instance p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    const/4 v0, 0x7

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    invoke-direct {p0, p2}, Landroid/support/constraint/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x4

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    const/16 p3, 0x64

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    new-instance p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    const p3, 0x7fffffff

    iput p3, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    iput p3, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    const/4 p3, 0x1

    iput-boolean p3, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    const/4 p3, 0x7

    iput p3, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    const/4 p3, 0x0

    iput-object p3, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    const/4 p3, -0x1

    iput p3, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    iput p3, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    iput p3, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    iput p3, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    iput p3, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    invoke-direct {p0, p2}, Landroid/support/constraint/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .registers 3

    if-nez p1, :cond_5

    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object p1

    :cond_5
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_20

    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_20

    if-eq v0, p0, :cond_20

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-ne p1, p0, :cond_20

    invoke-virtual {p0, v0}, Landroid/support/constraint/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_20
    if-ne v0, p0, :cond_25

    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object p1

    :cond_25
    if-nez v0, :cond_29

    const/4 p1, 0x0

    return-object p1

    :cond_29
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget-object p1, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-object p1
.end method

.method private init(Landroid/util/AttributeSet;)V
    .registers 9

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setCompanionWidget(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    if-eqz p1, :cond_8d

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_23
    if-ge v3, v1, :cond_8a

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_minWidth:I

    if-ne v4, v5, :cond_36

    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    goto :goto_87

    :cond_36
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_minHeight:I

    if-ne v4, v5, :cond_43

    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    goto :goto_87

    :cond_43
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_maxWidth:I

    if-ne v4, v5, :cond_50

    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    goto :goto_87

    :cond_50
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_maxHeight:I

    if-ne v4, v5, :cond_5d

    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    goto :goto_87

    :cond_5d
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_optimizationLevel:I

    if-ne v4, v5, :cond_6a

    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    goto :goto_87

    :cond_6a
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_constraintSet:I

    if-ne v4, v5, :cond_87

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    :try_start_72
    new-instance v5, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v5}, Landroid/support/constraint/ConstraintSet;-><init>()V

    iput-object v5, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    iget-object v5, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/support/constraint/ConstraintSet;->load(Landroid/content/Context;I)V
    :try_end_82
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_72 .. :try_end_82} :catch_83

    goto :goto_85

    :catch_83
    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    :goto_85
    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    :cond_87
    :goto_87
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_8a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_8d
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    return-void
.end method

.method private internalMeasureChildren(II)V
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v5

    const/4 v7, 0x0

    :goto_1d
    if-ge v7, v5, :cond_109

    invoke-virtual {v0, v7}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_101

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget-object v10, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-boolean v11, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v11, :cond_101

    iget-boolean v11, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    if-nez v11, :cond_101

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    iget v11, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    iget v12, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    iget-boolean v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    const/4 v14, -0x1

    const/4 v15, 0x1

    if-nez v13, :cond_6b

    iget-boolean v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-nez v13, :cond_6b

    iget-boolean v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-nez v13, :cond_58

    iget v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    if-eq v13, v15, :cond_6b

    :cond_58
    iget v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    if-eq v13, v14, :cond_6b

    iget-boolean v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-nez v13, :cond_69

    iget v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    if-eq v13, v15, :cond_6b

    iget v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-ne v13, v14, :cond_69

    goto :goto_6b

    :cond_69
    const/4 v13, 0x0

    goto :goto_6c

    :cond_6b
    :goto_6b
    const/4 v13, 0x1

    :goto_6c
    if-eqz v13, :cond_df

    const/4 v13, -0x2

    if-nez v11, :cond_7a

    invoke-static {v1, v4, v13}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v16

    move/from16 v6, v16

    const/16 v16, 0x1

    goto :goto_92

    :cond_7a
    if-ne v11, v14, :cond_85

    invoke-static {v1, v4, v14}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v16

    move/from16 v6, v16

    const/16 v16, 0x0

    goto :goto_92

    :cond_85
    if-ne v11, v13, :cond_8a

    const/16 v16, 0x1

    goto :goto_8c

    :cond_8a
    const/16 v16, 0x0

    :goto_8c
    invoke-static {v1, v4, v11}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v17

    move/from16 v6, v17

    :goto_92
    if-nez v12, :cond_9d

    invoke-static {v2, v3, v13}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v17

    move/from16 v15, v17

    const/16 v17, 0x1

    goto :goto_b5

    :cond_9d
    if-ne v12, v14, :cond_a8

    invoke-static {v2, v3, v14}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v17

    move/from16 v15, v17

    const/16 v17, 0x0

    goto :goto_b5

    :cond_a8
    if-ne v12, v13, :cond_ad

    const/16 v17, 0x1

    goto :goto_af

    :cond_ad
    const/16 v17, 0x0

    :goto_af
    invoke-static {v2, v3, v12}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v18

    move/from16 v15, v18

    :goto_b5
    invoke-virtual {v8, v6, v15}, Landroid/view/View;->measure(II)V

    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v6, :cond_c6

    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v14, v6, Landroid/support/constraint/solver/Metrics;->measures:J

    const-wide/16 v19, 0x1

    add-long v0, v14, v19

    iput-wide v0, v6, Landroid/support/constraint/solver/Metrics;->measures:J

    :cond_c6
    if-ne v11, v13, :cond_ca

    const/4 v0, 0x1

    goto :goto_cb

    :cond_ca
    const/4 v0, 0x0

    :goto_cb
    invoke-virtual {v10, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidthWrapContent(Z)V

    if-ne v12, v13, :cond_d2

    const/4 v0, 0x1

    goto :goto_d3

    :cond_d2
    const/4 v0, 0x0

    :goto_d3
    invoke-virtual {v10, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeightWrapContent(Z)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    goto :goto_e3

    :cond_df
    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_e3
    invoke-virtual {v10, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    invoke-virtual {v10, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    if-eqz v16, :cond_ee

    invoke-virtual {v10, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapWidth(I)V

    :cond_ee
    if-eqz v17, :cond_f3

    invoke-virtual {v10, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapHeight(I)V

    :cond_f3
    iget-boolean v0, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v0, :cond_101

    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_101

    invoke-virtual {v10, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    :cond_101
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    goto/16 :goto_1d

    :cond_109
    return-void
.end method

.method private internalMeasureDimensions(II)V
    .registers 29

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v5

    const/4 v7, 0x0

    :goto_1d
    const-wide/16 v8, 0x1

    const/16 v10, 0x8

    const/4 v12, -0x2

    if-ge v7, v5, :cond_f6

    invoke-virtual {v0, v7}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-eq v15, v10, :cond_e4

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget-object v15, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-boolean v6, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v6, :cond_e4

    iget-boolean v6, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    if-nez v6, :cond_e4

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v6

    invoke-virtual {v15, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    iget v6, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    iget v13, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-eqz v6, :cond_cf

    if-nez v13, :cond_4f

    goto/16 :goto_cf

    :cond_4f
    if-ne v6, v12, :cond_54

    const/16 v16, 0x1

    goto :goto_56

    :cond_54
    const/16 v16, 0x0

    :goto_56
    invoke-static {v1, v4, v6}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v11

    if-ne v13, v12, :cond_5f

    const/16 v17, 0x1

    goto :goto_61

    :cond_5f
    const/16 v17, 0x0

    :goto_61
    invoke-static {v2, v3, v13}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v12

    invoke-virtual {v14, v11, v12}, Landroid/view/View;->measure(II)V

    iget-object v11, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v11, :cond_7b

    iget-object v11, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move/from16 v19, v3

    iget-wide v2, v11, Landroid/support/constraint/solver/Metrics;->measures:J

    move/from16 v20, v4

    move/from16 v21, v5

    add-long v4, v2, v8

    iput-wide v4, v11, Landroid/support/constraint/solver/Metrics;->measures:J

    goto :goto_81

    :cond_7b
    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    :goto_81
    const/4 v2, -0x2

    if-ne v6, v2, :cond_86

    const/4 v3, 0x1

    goto :goto_87

    :cond_86
    const/4 v3, 0x0

    :goto_87
    invoke-virtual {v15, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidthWrapContent(Z)V

    if-ne v13, v2, :cond_8e

    const/4 v2, 0x1

    goto :goto_8f

    :cond_8e
    const/4 v2, 0x0

    :goto_8f
    invoke-virtual {v15, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeightWrapContent(Z)V

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v15, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    invoke-virtual {v15, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    if-eqz v16, :cond_a5

    invoke-virtual {v15, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapWidth(I)V

    :cond_a5
    if-eqz v17, :cond_aa

    invoke-virtual {v15, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapHeight(I)V

    :cond_aa
    iget-boolean v4, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v4, :cond_b8

    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_b8

    invoke-virtual {v15, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    :cond_b8
    iget-boolean v4, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-eqz v4, :cond_ea

    iget-boolean v4, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-eqz v4, :cond_ea

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    goto :goto_ea

    :cond_cf
    :goto_cf
    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->invalidate()V

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->invalidate()V

    goto :goto_ea

    :cond_e4
    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    :cond_ea
    :goto_ea
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v5, v21

    move/from16 v2, p2

    goto/16 :goto_1d

    :cond_f6
    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->solveGraph()V

    move/from16 v2, v21

    const/4 v3, 0x0

    :goto_104
    if-ge v3, v2, :cond_307

    invoke-virtual {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v10, :cond_2e9

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget-object v6, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-boolean v7, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v7, :cond_2e9

    iget-boolean v7, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    if-nez v7, :cond_2e9

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    iget v7, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    iget v11, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-eqz v7, :cond_12f

    if-nez v11, :cond_2e9

    :cond_12f
    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v12

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v13

    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    if-eqz v14, :cond_15d

    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    if-eqz v14, :cond_15d

    const/4 v14, 0x1

    goto :goto_15e

    :cond_15d
    const/4 v14, 0x0

    :goto_15e
    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v15

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v15

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v10

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    if-eqz v8, :cond_18c

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    if-eqz v8, :cond_18c

    const/4 v8, 0x1

    goto :goto_18d

    :cond_18c
    const/4 v8, 0x0

    :goto_18d
    if-nez v7, :cond_1a4

    if-nez v11, :cond_1a4

    if-eqz v14, :cond_1a4

    if-nez v8, :cond_196

    goto :goto_1a4

    :cond_196
    move/from16 v22, v2

    move/from16 v23, v3

    move/from16 v10, v19

    move/from16 v24, v20

    const/4 v0, -0x2

    const/4 v2, -0x1

    const-wide/16 v18, 0x1

    goto/16 :goto_2f5

    :cond_1a4
    :goto_1a4
    iget-object v9, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v9

    move/from16 v22, v2

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v9, v2, :cond_1b2

    const/4 v2, 0x1

    goto :goto_1b3

    :cond_1b2
    const/4 v2, 0x0

    :goto_1b3
    iget-object v9, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v9

    move/from16 v23, v3

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v9, v3, :cond_1c1

    const/4 v3, 0x1

    goto :goto_1c2

    :cond_1c1
    const/4 v3, 0x0

    :goto_1c2
    if-nez v2, :cond_1cb

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->invalidate()V

    :cond_1cb
    if-nez v3, :cond_1d4

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->invalidate()V

    :cond_1d4
    if-nez v7, :cond_20b

    if-eqz v2, :cond_200

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isSpreadWidth()Z

    move-result v9

    if-eqz v9, :cond_200

    if-eqz v14, :cond_200

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v9

    if-eqz v9, :cond_200

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v9

    if-eqz v9, :cond_200

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v7

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v9

    sub-float/2addr v7, v9

    float-to-int v7, v7

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    move/from16 v9, v20

    goto :goto_21c

    :cond_200
    move/from16 v9, v20

    const/4 v12, -0x2

    invoke-static {v1, v9, v12}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v2

    move v13, v2

    const/4 v2, 0x0

    const/4 v12, 0x1

    goto :goto_221

    :cond_20b
    move/from16 v9, v20

    const/4 v12, -0x2

    const/4 v13, -0x1

    if-ne v7, v13, :cond_218

    invoke-static {v1, v9, v13}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v14

    move v13, v14

    const/4 v12, 0x0

    goto :goto_221

    :cond_218
    if-ne v7, v12, :cond_21c

    const/4 v12, 0x1

    goto :goto_21d

    :cond_21c
    :goto_21c
    const/4 v12, 0x0

    :goto_21d
    invoke-static {v1, v9, v7}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v13

    :goto_221
    if-nez v11, :cond_25c

    if-eqz v3, :cond_24f

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isSpreadHeight()Z

    move-result v14

    if-eqz v14, :cond_24f

    if-eqz v8, :cond_24f

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v8

    if-eqz v8, :cond_24f

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v8

    if-eqz v8, :cond_24f

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v8

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v10

    sub-float/2addr v8, v10

    float-to-int v11, v8

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    move/from16 v10, v19

    move/from16 v8, p2

    goto :goto_270

    :cond_24f
    move/from16 v10, v19

    move/from16 v8, p2

    const/4 v14, -0x2

    invoke-static {v8, v10, v14}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v3

    move v15, v3

    const/4 v3, 0x0

    const/4 v14, 0x1

    goto :goto_275

    :cond_25c
    move/from16 v10, v19

    move/from16 v8, p2

    const/4 v14, -0x2

    const/4 v15, -0x1

    if-ne v11, v15, :cond_26c

    invoke-static {v8, v10, v15}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v16

    move/from16 v15, v16

    const/4 v14, 0x0

    goto :goto_275

    :cond_26c
    if-ne v11, v14, :cond_270

    const/4 v14, 0x1

    goto :goto_271

    :cond_270
    :goto_270
    const/4 v14, 0x0

    :goto_271
    invoke-static {v8, v10, v11}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v15

    :goto_275
    invoke-virtual {v4, v13, v15}, Landroid/view/View;->measure(II)V

    iget-object v13, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v13, :cond_289

    iget-object v13, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v0, v13, Landroid/support/constraint/solver/Metrics;->measures:J

    move/from16 v24, v9

    const-wide/16 v18, 0x1

    add-long v8, v0, v18

    iput-wide v8, v13, Landroid/support/constraint/solver/Metrics;->measures:J

    goto :goto_28d

    :cond_289
    move/from16 v24, v9

    const-wide/16 v18, 0x1

    :goto_28d
    const/4 v0, -0x2

    if-ne v7, v0, :cond_292

    const/4 v1, 0x1

    goto :goto_293

    :cond_292
    const/4 v1, 0x0

    :goto_293
    invoke-virtual {v6, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidthWrapContent(Z)V

    if-ne v11, v0, :cond_29a

    const/4 v1, 0x1

    goto :goto_29b

    :cond_29a
    const/4 v1, 0x0

    :goto_29b
    invoke-virtual {v6, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeightWrapContent(Z)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v6, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    invoke-virtual {v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    if-eqz v12, :cond_2b1

    invoke-virtual {v6, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapWidth(I)V

    :cond_2b1
    if-eqz v14, :cond_2b6

    invoke-virtual {v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapHeight(I)V

    :cond_2b6
    if-eqz v2, :cond_2c0

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    goto :goto_2c7

    :cond_2c0
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->remove()V

    :goto_2c7
    if-eqz v3, :cond_2d1

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    goto :goto_2d8

    :cond_2d1
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->remove()V

    :goto_2d8
    iget-boolean v1, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v1, :cond_2e7

    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2f5

    invoke-virtual {v6, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    goto :goto_2f5

    :cond_2e7
    const/4 v2, -0x1

    goto :goto_2f5

    :cond_2e9
    move/from16 v22, v2

    move/from16 v23, v3

    move/from16 v10, v19

    move/from16 v24, v20

    const/4 v0, -0x2

    const/4 v2, -0x1

    move-wide/from16 v18, v8

    :cond_2f5
    :goto_2f5
    add-int/lit8 v3, v23, 0x1

    move-wide/from16 v8, v18

    move/from16 v2, v22

    move/from16 v20, v24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v19, v10

    const/16 v10, 0x8

    goto/16 :goto_104

    :cond_307
    return-void
.end method

.method private setChildrenConstraints()V
    .registers 26

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v1, :cond_48

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v2, :cond_48

    invoke-virtual {v0, v5}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    :try_start_15
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v3, v7, v8}, Landroid/support/constraint/ConstraintLayout;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v4, :cond_3a

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :cond_3a
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-direct {v0, v6}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V
    :try_end_45
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_45} :catch_45

    :catch_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_48
    const/4 v5, 0x0

    :goto_49
    if-ge v5, v2, :cond_5b

    invoke-virtual {v0, v5}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    if-eqz v6, :cond_58

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->reset()V

    :cond_58
    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    :cond_5b
    iget v5, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    if-eq v5, v4, :cond_7d

    const/4 v5, 0x0

    :goto_60
    if-ge v5, v2, :cond_7d

    invoke-virtual {v0, v5}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v7

    iget v8, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    if-ne v7, v8, :cond_7a

    instance-of v7, v6, Landroid/support/constraint/Constraints;

    if-eqz v7, :cond_7a

    check-cast v6, Landroid/support/constraint/Constraints;

    invoke-virtual {v6}, Landroid/support/constraint/Constraints;->getConstraintSet()Landroid/support/constraint/ConstraintSet;

    move-result-object v6

    iput-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    :cond_7a
    add-int/lit8 v5, v5, 0x1

    goto :goto_60

    :cond_7d
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    if-eqz v5, :cond_86

    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    invoke-virtual {v5, v0}, Landroid/support/constraint/ConstraintSet;->applyToInternal(Landroid/support/constraint/ConstraintLayout;)V

    :cond_86
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->removeAllChildren()V

    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_a4

    const/4 v6, 0x0

    :goto_94
    if-ge v6, v5, :cond_a4

    iget-object v7, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/constraint/ConstraintHelper;

    invoke-virtual {v7, v0}, Landroid/support/constraint/ConstraintHelper;->updatePreLayout(Landroid/support/constraint/ConstraintLayout;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_94

    :cond_a4
    const/4 v5, 0x0

    :goto_a5
    if-ge v5, v2, :cond_b7

    invoke-virtual {v0, v5}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Landroid/support/constraint/Placeholder;

    if-eqz v7, :cond_b4

    check-cast v6, Landroid/support/constraint/Placeholder;

    invoke-virtual {v6, v0}, Landroid/support/constraint/Placeholder;->updatePreLayout(Landroid/support/constraint/ConstraintLayout;)V

    :cond_b4
    add-int/lit8 v5, v5, 0x1

    goto :goto_a5

    :cond_b7
    const/4 v5, 0x0

    :goto_b8
    if-ge v5, v2, :cond_3d1

    invoke-virtual {v0, v5}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v13

    if-eqz v13, :cond_3cd

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-virtual {v14}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->validate()V

    iget-boolean v7, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->helped:Z

    if-eqz v7, :cond_d5

    iput-boolean v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->helped:Z

    goto :goto_105

    :cond_d5
    if-eqz v1, :cond_105

    :try_start_d7
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v3, v7, v8}, Landroid/support/constraint/ConstraintLayout;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V

    const-string v8, "id/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    invoke-direct {v0, v8}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V
    :try_end_105
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d7 .. :try_end_105} :catch_105

    :catch_105
    :cond_105
    :goto_105
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-virtual {v13, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    iget-boolean v7, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    if-eqz v7, :cond_115

    const/16 v7, 0x8

    invoke-virtual {v13, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    :cond_115
    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setCompanionWidget(Ljava/lang/Object;)V

    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    iget-boolean v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-eqz v6, :cond_125

    iget-boolean v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-nez v6, :cond_12a

    :cond_125
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12a
    iget-boolean v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    const/16 v7, 0x11

    if-eqz v6, :cond_15b

    check-cast v13, Landroid/support/constraint/solver/widgets/Guideline;

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    iget v8, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v10, v7, :cond_142

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    iget v8, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    :cond_142
    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v7, v9, v7

    if-eqz v7, :cond_14d

    invoke-virtual {v13, v9}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    goto/16 :goto_3cd

    :cond_14d
    if-eq v6, v4, :cond_154

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideBegin(I)V

    goto/16 :goto_3cd

    :cond_154
    if-eq v8, v4, :cond_3cd

    invoke-virtual {v13, v8}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideEnd(I)V

    goto/16 :goto_3cd

    :cond_15b
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    if-ne v6, v4, :cond_1a3

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    if-ne v6, v4, :cond_1a3

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    if-ne v6, v4, :cond_1a3

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    if-ne v6, v4, :cond_1a3

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    if-ne v6, v4, :cond_1a3

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-ne v6, v4, :cond_1a3

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-ne v6, v4, :cond_1a3

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-ne v6, v4, :cond_1a3

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    if-ne v6, v4, :cond_1a3

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    if-ne v6, v4, :cond_1a3

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    if-ne v6, v4, :cond_1a3

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    if-ne v6, v4, :cond_1a3

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    if-ne v6, v4, :cond_1a3

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    if-ne v6, v4, :cond_1a3

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    if-ne v6, v4, :cond_1a3

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    if-ne v6, v4, :cond_1a3

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    if-eq v6, v4, :cond_1a3

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-ne v6, v4, :cond_3cd

    :cond_1a3
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    iget v8, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    iget v10, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    iget v12, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    iget v15, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v7, :cond_1e9

    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    iget v10, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    iget v7, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    iget v8, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    iget v15, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    if-ne v3, v4, :cond_1d4

    if-ne v6, v4, :cond_1d4

    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    if-eq v11, v4, :cond_1ce

    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    goto :goto_1d4

    :cond_1ce
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-eq v11, v4, :cond_1d4

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    :cond_1d4
    :goto_1d4
    if-ne v9, v4, :cond_1e5

    if-ne v10, v4, :cond_1e5

    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-eq v11, v4, :cond_1df

    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    goto :goto_1e5

    :cond_1df
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-eq v11, v4, :cond_1e5

    iget v10, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    :cond_1e5
    :goto_1e5
    move v12, v7

    move/from16 v16, v8

    goto :goto_1ee

    :cond_1e9
    move v3, v6

    move v6, v8

    move/from16 v16, v12

    move v12, v11

    :goto_1ee
    move v11, v10

    move v10, v15

    move v15, v9

    iget v7, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    if-eq v7, v4, :cond_206

    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    if-eqz v3, :cond_31e

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    iget v7, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleRadius:I

    invoke-virtual {v13, v3, v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connectCircularConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;FI)V

    goto/16 :goto_31e

    :cond_206
    if-eq v3, v4, :cond_21f

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_21b

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    move-object v7, v13

    move/from16 v17, v10

    move-object v10, v3

    move v3, v11

    move v11, v6

    goto :goto_231

    :cond_21b
    move/from16 v17, v10

    move v3, v11

    goto :goto_234

    :cond_21f
    move/from16 v17, v10

    move v3, v11

    if-eq v6, v4, :cond_234

    invoke-direct {v0, v6}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_234

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    move-object v7, v13

    :goto_231
    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    :cond_234
    :goto_234
    if-eq v15, v4, :cond_241

    invoke-direct {v0, v15}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_255

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    goto :goto_24d

    :cond_241
    if-eq v3, v4, :cond_255

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_255

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    :goto_24d
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    move-object v7, v13

    move/from16 v12, v16

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    :cond_255
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    if-eq v3, v4, :cond_266

    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_27e

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    goto :goto_276

    :cond_266
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    if-eq v3, v4, :cond_27e

    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_27e

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    :goto_276
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    iget v12, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    :cond_27e
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    if-eq v3, v4, :cond_28f

    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_2a7

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    goto :goto_29f

    :cond_28f
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    if-eq v3, v4, :cond_2a7

    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_2a7

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    :goto_29f
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    iget v12, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    :cond_2a7
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    if-eq v3, v4, :cond_2fd

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    invoke-direct {v0, v6}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    if-eqz v6, :cond_2fd

    if-eqz v3, :cond_2fd

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v7, v7, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eqz v7, :cond_2fd

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    const/4 v7, 0x1

    iput-boolean v7, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    iput-boolean v7, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v18

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, -0x1

    sget-object v22, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/16 v23, 0x0

    const/16 v24, 0x1

    invoke-virtual/range {v18 .. v24}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    :cond_2fd
    const/4 v3, 0x0

    move/from16 v15, v17

    cmpl-float v6, v15, v3

    const/high16 v7, 0x3f000000    # 0.5f

    if-ltz v6, :cond_30d

    cmpl-float v6, v15, v7

    if-eqz v6, :cond_30d

    invoke-virtual {v13, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    :cond_30d
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    cmpl-float v3, v6, v3

    if-ltz v3, :cond_31e

    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_31e

    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    :cond_31e
    :goto_31e
    if-eqz v1, :cond_32f

    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    if-ne v3, v4, :cond_328

    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    if-eq v3, v4, :cond_32f

    :cond_328
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    invoke-virtual {v13, v3, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setOrigin(II)V

    :cond_32f
    iget-boolean v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-nez v3, :cond_358

    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    if-ne v3, v4, :cond_351

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    iput v6, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    iput v6, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    goto :goto_362

    :cond_351
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    const/4 v3, 0x0

    goto :goto_35f

    :cond_358
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    :goto_35f
    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    :goto_362
    iget-boolean v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-nez v3, :cond_38f

    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-ne v3, v4, :cond_385

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    iput v6, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    iput v6, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    const/4 v3, 0x0

    goto :goto_39a

    :cond_385
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    goto :goto_39a

    :cond_38f
    const/4 v3, 0x0

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    :goto_39a
    iget-object v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    if-eqz v6, :cond_3a3

    iget-object v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setDimensionRatio(Ljava/lang/String;)V

    :cond_3a3
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalWeight(F)V

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalWeight(F)V

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iget v7, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iget v8, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    invoke-virtual {v13, v6, v7, v8, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalMatchStyle(IIIF)V

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iget v7, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iget v8, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    invoke-virtual {v13, v6, v7, v8, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalMatchStyle(IIIF)V

    :cond_3cd
    :goto_3cd
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_b8

    :cond_3d1
    return-void
.end method

.method private setSelfDimensionBehaviour(II)V
    .registers 12

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, -0x80000000

    const/4 v8, 0x0

    if-eq v0, v7, :cond_41

    if-eqz v0, :cond_3e

    if-eq v0, v6, :cond_36

    :goto_34
    const/4 p1, 0x0

    goto :goto_43

    :cond_36
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr p1, v3

    goto :goto_43

    :cond_3e
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    goto :goto_34

    :cond_41
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :goto_43
    if-eq v1, v7, :cond_56

    if-eqz v1, :cond_53

    if-eq v1, v6, :cond_4b

    :goto_49
    const/4 p2, 0x0

    goto :goto_58

    :cond_4b
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int/2addr p2, v2

    goto :goto_58

    :cond_53
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    goto :goto_49

    :cond_56
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :goto_58
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget p2, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget p2, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    return-void
.end method

.method private updateHierarchy()V
    .registers 5

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_17

    invoke-virtual {p0, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v1, 0x1

    goto :goto_17

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_17
    :goto_17
    if-eqz v1, :cond_21

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Landroid/support/constraint/ConstraintLayout;->setChildrenConstraints()V

    :cond_21
    return-void
.end method

.method private updatePostMeasures()V
    .registers 6

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_18

    invoke-virtual {p0, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/support/constraint/Placeholder;

    if-eqz v4, :cond_15

    check-cast v3, Landroid/support/constraint/Placeholder;

    invoke-virtual {v3, p0}, Landroid/support/constraint/Placeholder;->updatePostMeasure(Landroid/support/constraint/ConstraintLayout;)V

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_30

    :goto_20
    if-ge v1, v0, :cond_30

    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/ConstraintHelper;

    invoke-virtual {v2, p0}, Landroid/support/constraint/ConstraintHelper;->updatePostMeasure(Landroid/support/constraint/ConstraintLayout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_30
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0xe

    if-ge p2, p3, :cond_c

    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_c
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    instance-of p1, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    return p1
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 20

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v0, :cond_b8

    move-object/from16 v5, p0

    invoke-virtual {v5, v4}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_b4

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_b4

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_b4

    check-cast v6, Ljava/lang/String;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_b4

    aget-object v7, v6, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x2

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x3

    aget-object v6, v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v7, v7

    const/high16 v10, 0x44870000    # 1080.0f

    div-float/2addr v7, v10

    mul-float v7, v7, v1

    float-to-int v7, v7

    int-to-float v8, v8

    const/high16 v11, 0x44f00000    # 1920.0f

    div-float/2addr v8, v11

    mul-float v8, v8, v2

    float-to-int v8, v8

    int-to-float v9, v9

    div-float/2addr v9, v10

    mul-float v9, v9, v1

    float-to-int v9, v9

    int-to-float v6, v6

    div-float/2addr v6, v11

    mul-float v6, v6, v2

    float-to-int v6, v6

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const/high16 v10, -0x10000

    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v14, v7

    int-to-float v13, v8

    add-int/2addr v7, v9

    int-to-float v7, v7

    move-object/from16 v10, p1

    move v11, v14

    move v12, v13

    move v9, v13

    move v13, v7

    move/from16 v16, v14

    move v14, v9

    move-object/from16 v17, v15

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v8, v6

    int-to-float v6, v8

    move v11, v7

    move v12, v9

    move v14, v6

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v12, v6

    move/from16 v13, v16

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v11, v16

    move v14, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v8, -0xff0100

    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setColor(I)V

    move v12, v9

    move v13, v7

    move v14, v6

    move-object v8, v15

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v12, v6

    move v14, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_b4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_19

    :cond_b8
    move-object/from16 v5, p0

    return-void
.end method

.method public fillMetrics(Landroid/support/constraint/solver/Metrics;)V
    .registers 3

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->fillMetrics(Landroid/support/constraint/solver/Metrics;)V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .registers 3

    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .registers 4

    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_1b

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_1b

    check-cast p2, Ljava/lang/String;

    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-eqz p1, :cond_1b

    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1b
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMaxHeight()I
    .registers 2

    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .registers 2

    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    return v0
.end method

.method public getMinHeight()I
    .registers 2

    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    return v0
.end method

.method public getMinWidth()I
    .registers 2

    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    return v0
.end method

.method public getOptimizationLevel()I
    .registers 2

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getOptimizationLevel()I

    move-result v0

    return v0
.end method

.method public getViewById(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public final getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .registers 2

    if-ne p1, p0, :cond_5

    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object p1

    :cond_5
    if-nez p1, :cond_9

    const/4 p1, 0x0

    return-object p1

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget-object p1, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .registers 11

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_a
    if-ge p4, p1, :cond_58

    invoke-virtual {p0, p4}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2a

    iget-boolean v2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v2, :cond_2a

    iget-boolean v2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    if-nez v2, :cond_2a

    if-eqz p2, :cond_55

    :cond_2a
    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    if-nez v0, :cond_55

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v0

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v2

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    instance-of v4, p5, Landroid/support/constraint/Placeholder;

    if-eqz v4, :cond_55

    check-cast p5, Landroid/support/constraint/Placeholder;

    invoke-virtual {p5}, Landroid/support/constraint/Placeholder;->getContent()Landroid/view/View;

    move-result-object p5

    if-eqz p5, :cond_55

    invoke-virtual {p5, p3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    :cond_55
    add-int/lit8 p4, p4, 0x1

    goto :goto_a

    :cond_58
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_70

    :goto_60
    if-ge p3, p1, :cond_70

    iget-object p2, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/constraint/ConstraintHelper;

    invoke-virtual {p2, p0}, Landroid/support/constraint/ConstraintHelper;->updatePostLayout(Landroid/support/constraint/ConstraintLayout;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_60

    :cond_70
    return-void
.end method

.method protected onMeasure(II)V
    .registers 29

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v8

    iget-object v9, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v9, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setX(I)V

    iget-object v9, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v9, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setY(I)V

    iget-object v9, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v10, v0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    invoke-virtual {v9, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMaxWidth(I)V

    iget-object v9, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v10, v0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    invoke-virtual {v9, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMaxHeight(I)V

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0x11

    if-lt v9, v12, :cond_4f

    iget-object v9, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getLayoutDirection()I

    move-result v12

    if-ne v12, v11, :cond_4b

    const/4 v12, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v12, 0x0

    :goto_4c
    invoke-virtual {v9, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setRtl(Z)V

    :cond_4f
    invoke-direct/range {p0 .. p2}, Landroid/support/constraint/ConstraintLayout;->setSelfDimensionBehaviour(II)V

    iget-object v9, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v9

    iget-object v12, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v12

    iget-boolean v13, v0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    if-eqz v13, :cond_69

    iput-boolean v10, v0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->updateHierarchy()V

    const/4 v13, 0x1

    goto :goto_6a

    :cond_69
    const/4 v13, 0x0

    :goto_6a
    iget v14, v0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    const/16 v15, 0x8

    and-int/2addr v14, v15

    if-ne v14, v15, :cond_73

    const/4 v14, 0x1

    goto :goto_74

    :cond_73
    const/4 v14, 0x0

    :goto_74
    if-eqz v14, :cond_84

    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->preOptimize()V

    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v15, v9, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->optimizeForDimensions(II)V

    invoke-direct/range {p0 .. p2}, Landroid/support/constraint/ConstraintLayout;->internalMeasureDimensions(II)V

    goto :goto_87

    :cond_84
    invoke-direct/range {p0 .. p2}, Landroid/support/constraint/ConstraintLayout;->internalMeasureChildren(II)V

    :goto_87
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->updatePostMeasures()V

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v15

    if-lez v15, :cond_97

    if-eqz v13, :cond_97

    iget-object v13, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v13}, Landroid/support/constraint/solver/widgets/Analyzer;->determineGroups(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V

    :cond_97
    iget-object v13, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-boolean v13, v13, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    if-eqz v13, :cond_db

    iget-object v13, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-boolean v13, v13, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    const/high16 v15, -0x80000000

    if-eqz v13, :cond_bd

    if-ne v3, v15, :cond_bd

    iget-object v13, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v13, v13, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    if-ge v13, v4, :cond_b6

    iget-object v13, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v11, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v11, v11, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    invoke-virtual {v13, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    :cond_b6
    iget-object v11, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v11, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_bd
    iget-object v11, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-boolean v11, v11, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    if-eqz v11, :cond_db

    if-ne v5, v15, :cond_db

    iget-object v11, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v11, v11, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    if-ge v11, v6, :cond_d4

    iget-object v11, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v13, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v13, v13, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    invoke-virtual {v11, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    :cond_d4
    iget-object v11, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v11, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_db
    iget v11, v0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    const/16 v13, 0x20

    and-int/2addr v11, v13

    const/high16 v15, 0x40000000    # 2.0f

    if-ne v11, v13, :cond_137

    iget-object v11, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v11

    iget-object v13, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v13

    iget v10, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    if-eq v10, v11, :cond_fe

    if-ne v3, v15, :cond_fe

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    const/4 v10, 0x0

    invoke-static {v3, v10, v11}, Landroid/support/constraint/solver/widgets/Analyzer;->setPosition(Ljava/util/List;II)V

    :cond_fe
    iget v3, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    if-eq v3, v13, :cond_10c

    if-ne v5, v15, :cond_10c

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    const/4 v5, 0x1

    invoke-static {v3, v5, v13}, Landroid/support/constraint/solver/widgets/Analyzer;->setPosition(Ljava/util/List;II)V

    :cond_10c
    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-boolean v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    if-eqz v3, :cond_121

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    if-le v3, v4, :cond_121

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    const/4 v10, 0x0

    invoke-static {v3, v10, v4}, Landroid/support/constraint/solver/widgets/Analyzer;->setPosition(Ljava/util/List;II)V

    goto :goto_122

    :cond_121
    const/4 v10, 0x0

    :goto_122
    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-boolean v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    if-eqz v3, :cond_137

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    if-le v3, v6, :cond_137

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    const/4 v4, 0x1

    invoke-static {v3, v4, v6}, Landroid/support/constraint/solver/widgets/Analyzer;->setPosition(Ljava/util/List;II)V

    goto :goto_138

    :cond_137
    const/4 v4, 0x1

    :goto_138
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_143

    const-string v3, "First pass"

    invoke-virtual {v0, v3}, Landroid/support/constraint/ConstraintLayout;->solveLinearSystem(Ljava/lang/String;)V

    :cond_143
    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v8, v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v7, v5

    if-lez v3, :cond_38e

    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v11, :cond_161

    const/4 v6, 0x1

    goto :goto_162

    :cond_161
    const/4 v6, 0x0

    :goto_162
    iget-object v11, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v11

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v13, :cond_16e

    const/4 v11, 0x1

    goto :goto_16f

    :cond_16e
    const/4 v11, 0x0

    :goto_16f
    iget-object v13, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v13

    iget v4, v0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v13, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v13

    iget v10, v0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v13, v4

    move v5, v10

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/16 v18, 0x0

    :goto_18d
    const-wide/16 v16, 0x1

    if-ge v4, v3, :cond_2e5

    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v19

    move/from16 v20, v3

    move-object/from16 v3, v19

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_2c3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    move/from16 v21, v12

    move-object/from16 v12, v19

    check-cast v12, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move/from16 v22, v9

    iget-boolean v9, v12, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    if-nez v9, :cond_2bc

    iget-boolean v9, v12, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v9, :cond_2bc

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v9

    move/from16 v23, v10

    const/16 v10, 0x8

    if-eq v9, v10, :cond_2b7

    if-eqz v14, :cond_1d9

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->isResolved()Z

    move-result v9

    if-eqz v9, :cond_1d9

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->isResolved()Z

    move-result v9

    if-nez v9, :cond_2b7

    :cond_1d9
    iget v9, v12, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_1e9

    iget-boolean v9, v12, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-eqz v9, :cond_1e9

    iget v9, v12, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    invoke-static {v1, v7, v9}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v9

    goto :goto_1f3

    :cond_1e9
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    :goto_1f3
    iget v10, v12, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v10, v1, :cond_203

    iget-boolean v1, v12, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-eqz v1, :cond_203

    iget v1, v12, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    invoke-static {v2, v8, v1}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v1

    goto :goto_20d

    :cond_203
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_20d
    invoke-virtual {v3, v9, v1}, Landroid/view/View;->measure(II)V

    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v1, :cond_221

    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v9, v1, Landroid/support/constraint/solver/Metrics;->additionalMeasures:J

    move/from16 v25, v7

    move/from16 v24, v8

    add-long v7, v9, v16

    iput-wide v7, v1, Landroid/support/constraint/solver/Metrics;->additionalMeasures:J

    goto :goto_225

    :cond_221
    move/from16 v25, v7

    move/from16 v24, v8

    :goto_225
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    if-eq v1, v8, :cond_25d

    invoke-virtual {v15, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    if-eqz v14, :cond_23f

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    :cond_23f
    if-eqz v6, :cond_25b

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v1

    if-le v1, v13, :cond_25b

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v1

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v15, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    add-int/2addr v1, v8

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v13, v1

    :cond_25b
    const/16 v23, 0x1

    :cond_25d
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    if-eq v7, v1, :cond_28d

    invoke-virtual {v15, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    if-eqz v14, :cond_26f

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    :cond_26f
    if-eqz v11, :cond_28b

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v1

    if-le v1, v5, :cond_28b

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v1

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v15, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    add-int/2addr v1, v7

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v5, v1

    :cond_28b
    const/16 v23, 0x1

    :cond_28d
    iget-boolean v1, v12, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v1, :cond_2a3

    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_2a3

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v7

    if-eq v1, v7, :cond_2a3

    invoke-virtual {v15, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    const/16 v23, 0x1

    :cond_2a3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v1, v7, :cond_2b4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    move/from16 v3, v18

    invoke-static {v3, v1}, Landroid/support/constraint/ConstraintLayout;->combineMeasuredStates(II)I

    move-result v18

    goto :goto_2d1

    :cond_2b4
    move/from16 v3, v18

    goto :goto_2d1

    :cond_2b7
    move/from16 v25, v7

    move/from16 v24, v8

    goto :goto_2cd

    :cond_2bc
    move/from16 v25, v7

    move/from16 v24, v8

    move/from16 v23, v10

    goto :goto_2cd

    :cond_2c3
    move/from16 v25, v7

    move/from16 v24, v8

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v21, v12

    :goto_2cd
    move/from16 v3, v18

    move/from16 v18, v3

    :goto_2d1
    move/from16 v10, v23

    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v20

    move/from16 v12, v21

    move/from16 v9, v22

    move/from16 v8, v24

    move/from16 v7, v25

    move/from16 v1, p1

    const/high16 v15, 0x40000000    # 2.0f

    goto/16 :goto_18d

    :cond_2e5
    move/from16 v20, v3

    move/from16 v25, v7

    move/from16 v24, v8

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v21, v12

    move/from16 v3, v18

    if-eqz v23, :cond_334

    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move/from16 v4, v22

    invoke-virtual {v1, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move/from16 v4, v21

    invoke-virtual {v1, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    if-eqz v14, :cond_30a

    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->solveGraph()V

    :cond_30a
    const-string v1, "2nd pass"

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->solveLinearSystem(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v1

    if-ge v1, v13, :cond_31e

    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    const/4 v11, 0x1

    goto :goto_31f

    :cond_31e
    const/4 v11, 0x0

    :goto_31f
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v1

    if-ge v1, v5, :cond_32d

    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    const/4 v11, 0x1

    :cond_32d
    if-eqz v11, :cond_334

    const-string v1, "3rd pass"

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->solveLinearSystem(Ljava/lang/String;)V

    :cond_334
    move/from16 v1, v20

    const/4 v4, 0x0

    :goto_337
    if-ge v4, v1, :cond_393

    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-eqz v6, :cond_387

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    if-ne v7, v8, :cond_35d

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    if-eq v7, v8, :cond_387

    :cond_35d
    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_389

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v6, v7, v5}, Landroid/view/View;->measure(II)V

    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v5, :cond_38b

    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v6, v5, Landroid/support/constraint/solver/Metrics;->additionalMeasures:J

    add-long v10, v6, v16

    iput-wide v10, v5, Landroid/support/constraint/solver/Metrics;->additionalMeasures:J

    goto :goto_38b

    :cond_387
    const/16 v8, 0x8

    :cond_389
    const/high16 v9, 0x40000000    # 2.0f

    :cond_38b
    :goto_38b
    add-int/lit8 v4, v4, 0x1

    goto :goto_337

    :cond_38e
    move/from16 v25, v7

    move/from16 v24, v8

    const/4 v3, 0x0

    :cond_393
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v1

    add-int v1, v1, v25

    iget-object v4, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v4

    add-int v4, v4, v24

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_3e2

    move/from16 v5, p1

    invoke-static {v1, v5, v3}, Landroid/support/constraint/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v3, v3, 0x10

    invoke-static {v4, v2, v3}, Landroid/support/constraint/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v2

    const v3, 0xffffff

    and-int/2addr v1, v3

    and-int/2addr v2, v3

    iget v3, v0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v3, v0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isWidthMeasuredTooSmall()Z

    move-result v3

    const/high16 v4, 0x1000000

    if-eqz v3, :cond_3d1

    or-int/2addr v1, v4

    :cond_3d1
    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isHeightMeasuredTooSmall()Z

    move-result v3

    if-eqz v3, :cond_3da

    or-int/2addr v2, v4

    :cond_3da
    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/ConstraintLayout;->setMeasuredDimension(II)V

    iput v1, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    iput v2, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    return-void

    :cond_3e2
    invoke-virtual {v0, v1, v4}, Landroid/support/constraint/ConstraintLayout;->setMeasuredDimension(II)V

    iput v1, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    iput v4, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_9

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    :cond_9
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    instance-of v1, p1, Landroid/support/constraint/Guideline;

    const/4 v2, 0x1

    if-eqz v1, :cond_2e

    instance-of v0, v0, Landroid/support/constraint/solver/widgets/Guideline;

    if-nez v0, :cond_2e

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    new-instance v1, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-direct {v1}, Landroid/support/constraint/solver/widgets/Guideline;-><init>()V

    iput-object v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-boolean v2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast v1, Landroid/support/constraint/solver/widgets/Guideline;

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setOrientation(I)V

    :cond_2e
    instance-of v0, p1, Landroid/support/constraint/ConstraintHelper;

    if-eqz v0, :cond_4d

    move-object v0, p1

    check-cast v0, Landroid/support/constraint/ConstraintHelper;

    invoke-virtual {v0}, Landroid/support/constraint/ConstraintHelper;->validateParams()V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iput-boolean v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4d
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_9

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    :cond_9
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->remove(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_c

    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    :cond_c
    return-void
.end method

.method public requestLayout()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    return-void
.end method

.method public setConstraintSet(Landroid/support/constraint/ConstraintSet;)V
    .registers 2

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    return-void
.end method

.method public setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    if-nez p1, :cond_35

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_35

    instance-of p1, p3, Ljava/lang/Integer;

    if-eqz p1, :cond_35

    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-nez p1, :cond_15

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    :cond_15
    check-cast p2, Ljava/lang/String;

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_26

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_26
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p3, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    return-void
.end method

.method public setId(I)V
    .registers 4

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setMaxHeight(I)V
    .registers 3

    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMaxWidth(I)V
    .registers 3

    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinHeight(I)V
    .registers 3

    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinWidth(I)V
    .registers 3

    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setOptimizationLevel(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected solveLinearSystem(Ljava/lang/String;)V
    .registers 8

    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->layout()V

    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz p1, :cond_13

    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v0, p1, Landroid/support/constraint/solver/Metrics;->resolutions:J

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    iput-wide v4, p1, Landroid/support/constraint/solver/Metrics;->resolutions:J

    :cond_13
    return-void
.end method
