.class public Landroid/support/constraint/solver/widgets/Analyzer;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static determineGroups(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V
    .registers 11

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getOptimizationLevel()I

    move-result v0

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_d

    invoke-static {p0}, Landroid/support/constraint/solver/widgets/Analyzer;->singleGroup(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V

    return-void

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    iput-boolean v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    iput-boolean v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_25

    const/4 v4, 0x1

    goto :goto_26

    :cond_25
    const/4 v4, 0x0

    :goto_26
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_30

    const/4 v5, 0x1

    goto :goto_31

    :cond_30
    const/4 v5, 0x0

    :goto_31
    if-nez v4, :cond_38

    if-eqz v5, :cond_36

    goto :goto_38

    :cond_36
    const/4 v6, 0x0

    goto :goto_39

    :cond_38
    :goto_38
    const/4 v6, 0x1

    :goto_39
    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_40
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_55

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    iput-boolean v1, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mGroupsToSolver:Z

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resetResolutionNodes()V

    goto :goto_40

    :cond_55
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_75

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v8, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    if-nez v8, :cond_59

    invoke-static {v7, v3, v6}, Landroid/support/constraint/solver/widgets/Analyzer;->determineGroups(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/util/List;Z)Z

    move-result v7

    if-nez v7, :cond_59

    invoke-static {p0}, Landroid/support/constraint/solver/widgets/Analyzer;->singleGroup(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V

    iput-boolean v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    return-void

    :cond_75
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_7b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_98

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    invoke-static {v8, v1}, Landroid/support/constraint/solver/widgets/Analyzer;->getMaxDimension(Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;I)I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v8, v0}, Landroid/support/constraint/solver/widgets/Analyzer;->getMaxDimension(Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_7b

    :cond_98
    if-eqz v4, :cond_a8

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {p0, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    iput v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    :cond_a8
    if-eqz v5, :cond_b8

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {p0, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    iput v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    :cond_b8
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v2

    invoke-static {v3, v1, v2}, Landroid/support/constraint/solver/widgets/Analyzer;->setPosition(Ljava/util/List;II)V

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result p0

    invoke-static {v3, v0, p0}, Landroid/support/constraint/solver/widgets/Analyzer;->setPosition(Ljava/util/List;II)V

    return-void
.end method

.method private static determineGroups(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/util/List;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            "Ljava/util/List<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;",
            ">;Z)Z"
        }
    .end annotation

    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;-><init>(Ljava/util/List;Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v0, p1, p2}, Landroid/support/constraint/solver/widgets/Analyzer;->traverse(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;Ljava/util/List;Z)Z

    move-result p0

    return p0
.end method

.method private static getMaxDimension(Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;I)I
    .registers 11

    mul-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->getStartWidgets(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_d
    if-ge v4, v2, :cond_3e

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v8, v0, 0x1

    aget-object v7, v7, v8

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_32

    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, v0

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_30

    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, v8

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_30

    goto :goto_32

    :cond_30
    const/4 v7, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v7, 0x1

    :goto_33
    invoke-static {v6, p1, v7, v3}, Landroid/support/constraint/solver/widgets/Analyzer;->getMaxDimensionTraversal(Landroid/support/constraint/solver/widgets/ConstraintWidget;IZI)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_3e
    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mGroupDimensions:[I

    aput v5, p0, p1

    return v5
.end method

.method private static getMaxDimensionTraversal(Landroid/support/constraint/solver/widgets/ConstraintWidget;IZI)I
    .registers 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-boolean v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    const/4 v4, 0x0

    if-nez v3, :cond_c

    return v4

    :cond_c
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v5, 0x1

    if-eqz v3, :cond_17

    if-ne v1, v5, :cond_17

    const/4 v3, 0x1

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    if-eqz v2, :cond_2c

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v8

    sub-int/2addr v7, v8

    mul-int/lit8 v8, v1, 0x2

    add-int/lit8 v9, v8, 0x1

    goto :goto_3d

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v7

    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v8, v9, 0x1

    :goto_3d
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, v9

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_51

    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, v8

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_51

    move v10, v8

    move v8, v9

    const/4 v9, -0x1

    goto :goto_53

    :cond_51
    move v10, v9

    const/4 v9, 0x1

    :goto_53
    if-eqz v3, :cond_58

    sub-int v12, p3, v6

    goto :goto_5a

    :cond_58
    move/from16 v12, p3

    :goto_5a
    iget-object v13, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v13, v13, v8

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    mul-int v13, v13, v9

    invoke-static/range {p0 .. p1}, Landroid/support/constraint/solver/widgets/Analyzer;->getParentBiasOffset(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I

    move-result v14

    add-int/2addr v13, v14

    add-int/2addr v12, v13

    if-nez v1, :cond_71

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v14

    goto :goto_75

    :cond_71
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v14

    :goto_75
    mul-int v14, v14, v9

    iget-object v15, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v15, v15, v8

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v15

    iget-object v15, v15, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependents:Ljava/util/HashSet;

    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_85
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/support/constraint/solver/widgets/ResolutionNode;

    move-object/from16 v11, v17

    check-cast v11, Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-static {v11, v1, v2, v12}, Landroid/support/constraint/solver/widgets/Analyzer;->getMaxDimensionTraversal(Landroid/support/constraint/solver/widgets/ConstraintWidget;IZI)I

    move-result v11

    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_85

    :cond_a2
    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, v10

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v11

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependents:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v15, 0x0

    :goto_b1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/support/constraint/solver/widgets/ResolutionNode;

    move-object/from16 v5, v17

    check-cast v5, Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v18, v11

    add-int v11, v14, v12

    invoke-static {v5, v1, v2, v11}, Landroid/support/constraint/solver/widgets/Analyzer;->getMaxDimensionTraversal(Landroid/support/constraint/solver/widgets/ConstraintWidget;IZI)I

    move-result v5

    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    move-result v15

    move-object/from16 v11, v18

    const/4 v5, 0x1

    goto :goto_b1

    :cond_d5
    if-eqz v3, :cond_db

    sub-int/2addr v4, v6

    add-int/2addr v15, v7

    :goto_d9
    const/4 v5, 0x1

    goto :goto_ea

    :cond_db
    if-nez v1, :cond_e2

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    goto :goto_e6

    :cond_e2
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    :goto_e6
    mul-int v5, v5, v9

    add-int/2addr v15, v5

    goto :goto_d9

    :goto_ea
    if-ne v1, v5, :cond_15a

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v11

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependents:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/16 v19, 0x0

    :goto_fa
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_13b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/support/constraint/solver/widgets/ResolutionNode;

    move-object/from16 v20, v11

    move-object/from16 v11, v16

    check-cast v11, Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    if-ne v9, v5, :cond_122

    iget-object v5, v11, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    add-int v11, v6, v12

    invoke-static {v5, v1, v2, v11}, Landroid/support/constraint/solver/widgets/Analyzer;->getMaxDimensionTraversal(Landroid/support/constraint/solver/widgets/ConstraintWidget;IZI)I

    move-result v5

    move/from16 v11, v19

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v19

    move-object/from16 v11, v20

    :goto_120
    const/4 v5, 0x1

    goto :goto_fa

    :cond_122
    move/from16 v5, v19

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    mul-int v16, v7, v9

    move/from16 v21, v10

    add-int v10, v16, v12

    invoke-static {v11, v1, v2, v10}, Landroid/support/constraint/solver/widgets/Analyzer;->getMaxDimensionTraversal(Landroid/support/constraint/solver/widgets/ConstraintWidget;IZI)I

    move-result v10

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v19

    move-object/from16 v11, v20

    move/from16 v10, v21

    goto :goto_120

    :cond_13b
    move/from16 v21, v10

    move/from16 v5, v19

    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v10

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependents:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v10

    if-lez v10, :cond_158

    if-nez v3, :cond_158

    const/4 v3, 0x1

    if-ne v9, v3, :cond_155

    add-int v3, v5, v6

    goto :goto_15d

    :cond_155
    sub-int v3, v5, v7

    goto :goto_15d

    :cond_158
    move v3, v5

    goto :goto_15d

    :cond_15a
    move/from16 v21, v10

    const/4 v3, 0x0

    :goto_15d
    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v13, v3

    add-int v3, v12, v14

    const/4 v4, -0x1

    if-ne v9, v4, :cond_170

    move/from16 v22, v12

    move v12, v3

    move/from16 v3, v22

    :cond_170
    if-eqz v2, :cond_179

    invoke-static {v0, v1, v12}, Landroid/support/constraint/solver/widgets/Optimizer;->setOptimizedWidget(Landroid/support/constraint/solver/widgets/ConstraintWidget;II)V

    invoke-virtual {v0, v12, v3, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFrame(III)V

    goto :goto_181

    :cond_179
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    invoke-virtual {v2, v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->addWidgetsToSet(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V

    invoke-virtual {v0, v12, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setRelativePositioning(II)V

    :goto_181
    invoke-virtual/range {p0 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_195

    iget v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_195

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    invoke-virtual {v2, v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->addWidgetsToSet(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V

    :cond_195
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v8

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_1c2

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v21

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_1c2

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, v8

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v3, v2, :cond_1c2

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, v21

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v3, v2, :cond_1c2

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    invoke-virtual {v2, v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->addWidgetsToSet(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V

    :cond_1c2
    return v13
.end method

.method private static getParentBiasOffset(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I
    .registers 6

    mul-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v0

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v2, v0

    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_45

    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v2, v3, :cond_45

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_45

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v2, v3, :cond_45

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v2, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getLength(I)I

    move-result v2

    if-nez p1, :cond_2f

    iget v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    goto :goto_31

    :cond_2f
    iget v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    :goto_31
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getLength(I)I

    move-result p0

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result p1

    sub-int/2addr v2, p1

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result p1

    sub-int/2addr v2, p1

    sub-int/2addr v2, p0

    int-to-float p0, v2

    mul-float p0, p0, v3

    float-to-int p0, p0

    return p0

    :cond_45
    const/4 p0, 0x0

    return p0
.end method

.method private static invalidate(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mSkipSolver:Z

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    iput-boolean v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    return-void
.end method

.method private static resolveDimensionRatio(Landroid/support/constraint/solver/widgets/ConstraintWidget;)I
    .registers 3

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_24

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    if-nez v0, :cond_17

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    mul-float v0, v0, v1

    :goto_15
    float-to-int v0, v0

    goto :goto_20

    :cond_17
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    div-float/2addr v0, v1

    goto :goto_15

    :goto_20
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    return v0

    :cond_24
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_49

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3c

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    mul-float v0, v0, v1

    :goto_3a
    float-to-int v0, v0

    goto :goto_45

    :cond_3c
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    div-float/2addr v0, v1

    goto :goto_3a

    :goto_45
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    return v0

    :cond_49
    const/4 v0, -0x1

    return v0
.end method

.method private static setConnection(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)V
    .registers 3

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_17

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eq v1, p0, :cond_17

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    :cond_17
    return-void
.end method

.method public static setPosition(Ljava/util/List;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;",
            ">;II)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2c

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    invoke-virtual {v2, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->getWidgetsToSet(I)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-boolean v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    if-eqz v4, :cond_15

    invoke-static {v3, p1, p2}, Landroid/support/constraint/solver/widgets/Analyzer;->updateSizeDependentWidgets(Landroid/support/constraint/solver/widgets/ConstraintWidget;II)V

    goto :goto_15

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2c
    return-void
.end method

.method private static singleGroup(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V
    .registers 3

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    new-instance v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;-><init>(Ljava/util/List;)V

    const/4 p0, 0x0

    invoke-interface {v0, p0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private static traverse(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;Ljava/util/List;Z)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            "Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;",
            "Ljava/util/List<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOptimizerMeasured:Z

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    if-nez v3, :cond_214

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_44

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_44

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_44

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_44

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_44

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_44

    invoke-static {v2, p0, p1}, Landroid/support/constraint/solver/widgets/Analyzer;->invalidate(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;)V

    if-eqz p3, :cond_44

    return v1

    :cond_44
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_76

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_76

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eqz p3, :cond_5b

    invoke-static {v2, p0, p1}, Landroid/support/constraint/solver/widgets/Analyzer;->invalidate(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;)V

    return v1

    :cond_5b
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-ne v3, v4, :cond_73

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-eq v3, v4, :cond_76

    :cond_73
    invoke-static {v2, p0, p1}, Landroid/support/constraint/solver/widgets/Analyzer;->invalidate(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;)V

    :cond_76
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_a8

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_a8

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eqz p3, :cond_8d

    invoke-static {v2, p0, p1}, Landroid/support/constraint/solver/widgets/Analyzer;->invalidate(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;)V

    return v1

    :cond_8d
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-ne v3, v4, :cond_a5

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-eq v3, v4, :cond_a8

    :cond_a5
    invoke-static {v2, p0, p1}, Landroid/support/constraint/solver/widgets/Analyzer;->invalidate(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;)V

    :cond_a8
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_b2

    const/4 v3, 0x1

    goto :goto_b3

    :cond_b2
    const/4 v3, 0x0

    :goto_b3
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_bd

    const/4 v4, 0x1

    goto :goto_be

    :cond_bd
    const/4 v4, 0x0

    :goto_be
    xor-int/2addr v3, v4

    if-eqz v3, :cond_cc

    iget v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_cc

    invoke-static {p0}, Landroid/support/constraint/solver/widgets/Analyzer;->resolveDimensionRatio(Landroid/support/constraint/solver/widgets/ConstraintWidget;)I

    goto :goto_e2

    :cond_cc
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_dc

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_e2

    :cond_dc
    invoke-static {v2, p0, p1}, Landroid/support/constraint/solver/widgets/Analyzer;->invalidate(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;)V

    if-eqz p3, :cond_e2

    return v1

    :cond_e2
    :goto_e2
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_ee

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_13a

    :cond_ee
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_104

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v3, v4, :cond_104

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_13a

    :cond_104
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_11a

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v3, v4, :cond_11a

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_13a

    :cond_11a
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_14d

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v3, v4, :cond_14d

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_14d

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v3, v4, :cond_14d

    :cond_13a
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_14d

    instance-of v3, p0, Landroid/support/constraint/solver/widgets/Guideline;

    if-nez v3, :cond_14d

    instance-of v3, p0, Landroid/support/constraint/solver/widgets/Helper;

    if-nez v3, :cond_14d

    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mStartHorizontalWidgets:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14d
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_159

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_1a5

    :cond_159
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_16f

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v3, v4, :cond_16f

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_1a5

    :cond_16f
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_185

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v3, v4, :cond_185

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_1a5

    :cond_185
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_1be

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v3, v4, :cond_1be

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_1be

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v3, v4, :cond_1be

    :cond_1a5
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_1be

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_1be

    instance-of v3, p0, Landroid/support/constraint/solver/widgets/Guideline;

    if-nez v3, :cond_1be

    instance-of v3, p0, Landroid/support/constraint/solver/widgets/Helper;

    if-nez v3, :cond_1be

    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mStartVerticalWidgets:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1be
    instance-of v3, p0, Landroid/support/constraint/solver/widgets/Helper;

    if-eqz v3, :cond_1de

    invoke-static {v2, p0, p1}, Landroid/support/constraint/solver/widgets/Analyzer;->invalidate(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;)V

    if-eqz p3, :cond_1c8

    return v1

    :cond_1c8
    move-object v3, p0

    check-cast v3, Landroid/support/constraint/solver/widgets/Helper;

    const/4 v4, 0x0

    :goto_1cc
    iget v5, v3, Landroid/support/constraint/solver/widgets/Helper;->mWidgetsCount:I

    if-ge v4, v5, :cond_1de

    iget-object v5, v3, Landroid/support/constraint/solver/widgets/Helper;->mWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v5, v5, v4

    invoke-static {v5, p1, p2, p3}, Landroid/support/constraint/solver/widgets/Analyzer;->traverse(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;Ljava/util/List;Z)Z

    move-result v5

    if-nez v5, :cond_1db

    return v1

    :cond_1db
    add-int/lit8 v4, v4, 0x1

    goto :goto_1cc

    :cond_1de
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    array-length v3, v3

    const/4 v4, 0x0

    :goto_1e2
    if-ge v4, v3, :cond_213

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, v4

    iget-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_210

    iget-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v7

    if-eq v6, v7, :cond_210

    iget-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v6, v7, :cond_202

    invoke-static {v2, p0, p1}, Landroid/support/constraint/solver/widgets/Analyzer;->invalidate(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;)V

    if-eqz p3, :cond_205

    return v1

    :cond_202
    invoke-static {v5}, Landroid/support/constraint/solver/widgets/Analyzer;->setConnection(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)V

    :cond_205
    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-static {v5, p1, p2, p3}, Landroid/support/constraint/solver/widgets/Analyzer;->traverse(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;Ljava/util/List;Z)Z

    move-result v5

    if-nez v5, :cond_210

    return v1

    :cond_210
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e2

    :cond_213
    return v0

    :cond_214
    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    if-eq p3, p1, :cond_257

    iget-object p3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mStartHorizontalWidgets:Ljava/util/List;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mStartHorizontalWidgets:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mStartVerticalWidgets:Ljava/util/List;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mStartVerticalWidgets:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    iget-boolean p3, p3, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mSkipSolver:Z

    if-nez p3, :cond_23b

    iput-boolean v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mSkipSolver:Z

    :cond_23b
    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    invoke-interface {p2, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_248
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_257

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object p1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    goto :goto_248

    :cond_257
    return v0
.end method

.method private static updateSizeDependentWidgets(Landroid/support/constraint/solver/widgets/ConstraintWidget;II)V
    .registers 9

    mul-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v0

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v4, 0x1

    if-eqz v3, :cond_17

    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_17

    const/4 v3, 0x1

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    if-eqz v3, :cond_27

    invoke-static {p0, p1}, Landroid/support/constraint/solver/widgets/Analyzer;->getParentBiasOffset(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I

    move-result p2

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    add-int/2addr p2, v0

    invoke-static {p0, p1, p2}, Landroid/support/constraint/solver/widgets/Optimizer;->setOptimizedWidget(Landroid/support/constraint/solver/widgets/ConstraintWidget;II)V

    return-void

    :cond_27
    iget v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_62

    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_62

    invoke-static {p0}, Landroid/support/constraint/solver/widgets/Analyzer;->resolveDimensionRatio(Landroid/support/constraint/solver/widgets/ConstraintWidget;)I

    move-result p2

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v3, v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    float-to-int v0, v0

    add-int v3, v0, p2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v5

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iput-object v1, v5, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    int-to-float p2, p2

    iput p2, v1, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object p2

    iput v4, p2, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    invoke-virtual {p0, v0, v3, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFrame(III)V

    return-void

    :cond_62
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRelativePositioning(I)I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getLength(I)I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0, v0, p2, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFrame(III)V

    invoke-static {p0, p1, v0}, Landroid/support/constraint/solver/widgets/Optimizer;->setOptimizedWidget(Landroid/support/constraint/solver/widgets/ConstraintWidget;II)V

    return-void
.end method
