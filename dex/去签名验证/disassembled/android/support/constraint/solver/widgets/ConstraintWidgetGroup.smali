.class public Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;
.super Ljava/lang/Object;


# instance fields
.field public mConstrainedGroup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field public final mGroupDimensions:[I

.field mGroupHeight:I

.field mGroupWidth:I

.field public mSkipSolver:Z

.field mStartHorizontalWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field mStartVerticalWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field mUnresolvedWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field mWidgetsToSetHorizontal:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field mWidgetsToSetVertical:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field mWidgetsToSolve:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mGroupWidth:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mGroupHeight:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mSkipSolver:Z

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mGroupWidth:I

    aput v2, v1, v0

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mGroupHeight:I

    const/4 v2, 0x1

    aput v0, v1, v2

    iput-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mGroupDimensions:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mStartHorizontalWidgets:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mStartVerticalWidgets:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSetHorizontal:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSetVertical:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSolve:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mUnresolvedWidgets:Ljava/util/List;

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mGroupWidth:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mGroupHeight:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mSkipSolver:Z

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mGroupWidth:I

    aput v2, v1, v0

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mGroupHeight:I

    const/4 v2, 0x1

    aput v0, v1, v2

    iput-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mGroupDimensions:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mStartHorizontalWidgets:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mStartVerticalWidgets:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSetHorizontal:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSetVertical:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSolve:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mUnresolvedWidgets:Ljava/util/List;

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    iput-boolean p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mSkipSolver:Z

    return-void
.end method

.method private getWidgetsToSolveTraversal(Ljava/util/ArrayList;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mGroupsToSolver:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mGroupsToSolver:Z

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isFullyResolved()Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    :cond_12
    instance-of v0, p2, Landroid/support/constraint/solver/widgets/Helper;

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    move-object v0, p2

    check-cast v0, Landroid/support/constraint/solver/widgets/Helper;

    iget v2, v0, Landroid/support/constraint/solver/widgets/Helper;->mWidgetsCount:I

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v2, :cond_29

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/Helper;->mWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v4, v4, v3

    invoke-direct {p0, p1, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->getWidgetsToSolveTraversal(Ljava/util/ArrayList;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_29
    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    array-length v0, v0

    :goto_2c
    if-ge v1, v0, :cond_46

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v1

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_43

    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v2, :cond_43

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    if-eq v3, v2, :cond_43

    invoke-direct {p0, p1, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->getWidgetsToSolveTraversal(Ljava/util/ArrayList;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_46
    return-void
.end method

.method private updateResolvedDimension(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .registers 8

    iget-boolean v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    if-eqz v0, :cond_ef

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isFullyResolved()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    if-eqz v0, :cond_1d

    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    :goto_1a
    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_20

    :cond_1d
    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_1a

    :goto_20
    if-eqz v3, :cond_4a

    iget-object v4, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-boolean v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOptimizerMeasured:Z

    if-nez v4, :cond_2d

    iget-object v4, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {p0, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->updateResolvedDimension(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    :cond_2d
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v4, v5, :cond_3f

    iget-object v4, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    add-int/2addr v3, v4

    goto :goto_4b

    :cond_3f
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v4, v5, :cond_4a

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    goto :goto_4b

    :cond_4a
    const/4 v3, 0x0

    :goto_4b
    if-eqz v0, :cond_55

    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    sub-int/2addr v3, v0

    goto :goto_61

    :cond_55
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    add-int/2addr v3, v0

    :goto_61
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    sub-int v0, v3, v0

    invoke-virtual {p1, v0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimension(II)V

    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_94

    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-boolean v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOptimizerMeasured:Z

    if-nez v1, :cond_7f

    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {p0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->updateResolvedDimension(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    :cond_7f
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    add-int/2addr v1, v0

    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    sub-int/2addr v1, v0

    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimension(II)V

    iput-boolean v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOptimizerMeasured:Z

    return-void

    :cond_94
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_9b

    const/4 v1, 0x1

    :cond_9b
    if-eqz v1, :cond_a2

    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    :goto_9f
    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_a5

    :cond_a2
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_9f

    :goto_a5
    if-eqz v0, :cond_ce

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-boolean v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOptimizerMeasured:Z

    if-nez v4, :cond_b2

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {p0, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->updateResolvedDimension(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    :cond_b2
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v4, v5, :cond_c4

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    add-int/2addr v3, v0

    goto :goto_ce

    :cond_c4
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v4, v5, :cond_ce

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    :cond_ce
    :goto_ce
    if-eqz v1, :cond_d8

    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    sub-int/2addr v3, v0

    goto :goto_e4

    :cond_d8
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v3, v0

    :goto_e4
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    sub-int v0, v3, v0

    invoke-virtual {p1, v0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimension(II)V

    iput-boolean v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOptimizerMeasured:Z

    :cond_ef
    return-void
.end method


# virtual methods
.method addWidgetsToSet(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V
    .registers 4

    if-nez p2, :cond_8

    iget-object p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSetHorizontal:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_8
    const/4 v0, 0x1

    if-ne p2, v0, :cond_10

    iget-object p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSetVertical:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method

.method public getStartWidgets(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_5

    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mStartHorizontalWidgets:Ljava/util/List;

    return-object p1

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mStartVerticalWidgets:Ljava/util/List;

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method getWidgetsToSet(I)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_5

    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSetHorizontal:Ljava/util/HashSet;

    return-object p1

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSetVertical:Ljava/util/HashSet;

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method getWidgetsToSolve()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSolve:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSolve:Ljava/util/List;

    return-object v0

    :cond_b
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_2a

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-boolean v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    if-nez v3, :cond_27

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSolve:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-direct {p0, v3, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->getWidgetsToSolveTraversal(Ljava/util/ArrayList;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_2a
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mUnresolvedWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mUnresolvedWidgets:Ljava/util/List;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mUnresolvedWidgets:Ljava/util/List;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSolve:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSolve:Ljava/util/List;

    return-object v0
.end method

.method updateUnresolvedWidgets()V
    .registers 4

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mUnresolvedWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mUnresolvedWidgets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {p0, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->updateResolvedDimension(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method
