.class Landroid/support/constraint/solver/widgets/Chain;
.super Ljava/lang/Object;


# static fields
.field private static final DEBUG:Z


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;I)V
    .registers 10

    const/4 v0, 0x0

    if-nez p2, :cond_a

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ChainHead;

    move v3, v1

    const/4 v1, 0x0

    goto :goto_12

    :cond_a
    const/4 v1, 0x2

    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ChainHead;

    move-object v6, v3

    move v3, v2

    move-object v2, v6

    :goto_12
    if-ge v0, v3, :cond_2c

    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ChainHead;->define()V

    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-static {p0, p1, p2, v1, v4}, Landroid/support/constraint/solver/widgets/Optimizer;->applyChainOptimized(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ChainHead;)Z

    move-result v5

    if-nez v5, :cond_29

    :cond_26
    invoke-static {p0, p1, p2, v1, v4}, Landroid/support/constraint/solver/widgets/Chain;->applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ChainHead;)V

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_2c
    return-void
.end method

.method static applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ChainHead;)V
    .registers 49

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v1, p4

    iget-object v11, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mFirst:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v12, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mLast:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v13, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v14, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mLastVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mHead:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v3, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mTotalWeight:F

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, p2

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x1

    if-ne v4, v5, :cond_1d

    const/4 v4, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v4, 0x0

    :goto_1e
    const/4 v5, 0x2

    if-nez p2, :cond_3e

    iget v8, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-nez v8, :cond_27

    const/4 v8, 0x1

    goto :goto_28

    :cond_27
    const/4 v8, 0x0

    :goto_28
    iget v6, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-ne v6, v7, :cond_2e

    const/4 v6, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v6, 0x0

    :goto_2f
    iget v7, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-ne v7, v5, :cond_35

    :goto_33
    const/4 v5, 0x1

    goto :goto_36

    :cond_35
    const/4 v5, 0x0

    :goto_36
    move v7, v5

    move/from16 v18, v6

    move/from16 v17, v8

    move-object v5, v11

    const/4 v6, 0x0

    goto :goto_52

    :cond_3e
    iget v6, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-nez v6, :cond_44

    const/4 v8, 0x1

    goto :goto_45

    :cond_44
    const/4 v8, 0x0

    :goto_45
    iget v6, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4c

    const/4 v6, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v6, 0x0

    :goto_4d
    iget v7, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-ne v7, v5, :cond_35

    goto :goto_33

    :goto_52
    const/16 v21, 0x0

    if-nez v6, :cond_13a

    iget-object v8, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, p3

    if-nez v4, :cond_62

    if-eqz v7, :cond_5f

    goto :goto_62

    :cond_5f
    const/16 v22, 0x4

    goto :goto_64

    :cond_62
    :goto_62
    const/16 v22, 0x1

    :goto_64
    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v23

    move/from16 v24, v3

    iget-object v3, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_78

    if-eq v5, v11, :cond_78

    iget-object v3, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    add-int v23, v23, v3

    :cond_78
    move/from16 v3, v23

    if-eqz v7, :cond_86

    if-eq v5, v11, :cond_86

    if-eq v5, v13, :cond_86

    move-object/from16 v26, v2

    move/from16 v25, v6

    const/4 v6, 0x6

    goto :goto_96

    :cond_86
    if-eqz v17, :cond_90

    if-eqz v4, :cond_90

    move-object/from16 v26, v2

    move/from16 v25, v6

    const/4 v6, 0x4

    goto :goto_96

    :cond_90
    move-object/from16 v26, v2

    move/from16 v25, v6

    move/from16 v6, v22

    :goto_96
    iget-object v2, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_c3

    if-ne v5, v13, :cond_ab

    iget-object v2, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v27, v11

    iget-object v11, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move/from16 v28, v7

    const/4 v7, 0x5

    invoke-virtual {v9, v2, v11, v3, v7}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_b9

    :cond_ab
    move/from16 v28, v7

    move-object/from16 v27, v11

    iget-object v2, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v11, 0x6

    invoke-virtual {v9, v2, v7, v3, v11}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :goto_b9
    iget-object v2, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v9, v2, v7, v3, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_c7

    :cond_c3
    move/from16 v28, v7

    move-object/from16 v27, v11

    :goto_c7
    if-eqz v4, :cond_fe

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_ed

    iget-object v2, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, p2

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_ed

    iget-object v2, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v9, v2, v3, v6, v7}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_ee

    :cond_ed
    const/4 v6, 0x0

    :goto_ee
    iget-object v2, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v7, 0x6

    invoke-virtual {v9, v2, v3, v6, v7}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_fe
    iget-object v2, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_11f

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_11f

    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v3, v5, :cond_11d

    goto :goto_11f

    :cond_11d
    move-object/from16 v21, v2

    :cond_11f
    :goto_11f
    if-eqz v21, :cond_12f

    move-object/from16 v5, v21

    move/from16 v3, v24

    move/from16 v6, v25

    move-object/from16 v2, v26

    move-object/from16 v11, v27

    move/from16 v7, v28

    goto/16 :goto_52

    :cond_12f
    move/from16 v3, v24

    move-object/from16 v2, v26

    move-object/from16 v11, v27

    move/from16 v7, v28

    const/4 v6, 0x1

    goto/16 :goto_52

    :cond_13a
    move-object/from16 v26, v2

    move/from16 v24, v3

    move/from16 v28, v7

    move-object/from16 v27, v11

    if-eqz v14, :cond_166

    iget-object v2, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_166

    iget-object v2, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v3

    iget-object v5, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v6, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v6, v3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    neg-int v2, v2

    const/4 v8, 0x5

    invoke-virtual {v9, v5, v3, v2, v8}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_167

    :cond_166
    const/4 v8, 0x5

    :goto_167
    if-eqz v4, :cond_183

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v0, v0, v2

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, v2

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v4, v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    const/4 v4, 0x6

    invoke-virtual {v9, v0, v3, v2, v4}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_183
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    if-eqz v0, :cond_233

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v7, 0x1

    if-le v2, v7, :cond_233

    iget-boolean v3, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mHasUndefinedWeights:Z

    if-eqz v3, :cond_19b

    iget-boolean v3, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mHasComplexMatchWeights:Z

    if-nez v3, :cond_19b

    iget v3, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    int-to-float v3, v3

    move/from16 v24, v3

    :cond_19b
    const/4 v3, 0x0

    move-object/from16 v5, v21

    const/4 v4, 0x0

    const/16 v30, 0x0

    :goto_1a1
    if-ge v4, v2, :cond_233

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v11, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v11, v11, p2

    cmpg-float v16, v11, v3

    if-gez v16, :cond_1d1

    iget-boolean v11, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mHasComplexMatchWeights:Z

    if-eqz v11, :cond_1cb

    iget-object v11, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v16, p3, 0x1

    aget-object v11, v11, v16

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-virtual {v9, v11, v6, v7, v8}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    const/4 v8, 0x6

    const/4 v11, 0x0

    goto :goto_1e9

    :cond_1cb
    const/4 v8, 0x4

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_1d2

    :cond_1d1
    const/4 v8, 0x4

    :goto_1d2
    cmpl-float v7, v11, v3

    if-nez v7, :cond_1ec

    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v11, p3, 0x1

    aget-object v7, v7, v11

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v8, 0x6

    const/4 v11, 0x0

    invoke-virtual {v9, v7, v6, v11, v8}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    :goto_1e9
    move-object/from16 v38, v0

    goto :goto_22a

    :cond_1ec
    const/4 v7, 0x0

    const/4 v8, 0x6

    if-eqz v5, :cond_225

    iget-object v3, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v15, p3, 0x1

    aget-object v5, v5, v15

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v8, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, v15

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v38, v0

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    move-object/from16 v29, v0

    move/from16 v31, v24

    move/from16 v32, v11

    move-object/from16 v33, v3

    move-object/from16 v34, v5

    move-object/from16 v35, v7

    move-object/from16 v36, v8

    invoke-virtual/range {v29 .. v36}, Landroid/support/constraint/solver/ArrayRow;->createRowEqualMatchDimensions(FFFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {v9, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    goto :goto_227

    :cond_225
    move-object/from16 v38, v0

    :goto_227
    move-object v5, v6

    move/from16 v30, v11

    :goto_22a
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v38

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x5

    goto/16 :goto_1a1

    :cond_233
    if-eqz v13, :cond_29f

    if-eq v13, v14, :cond_239

    if-eqz v28, :cond_29f

    :cond_239
    move-object/from16 v11, v27

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    iget-object v1, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v3, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_256

    iget-object v3, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_258

    :cond_256
    move-object/from16 v3, v21

    :goto_258
    iget-object v4, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, v2

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_26a

    iget-object v4, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, v2

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object v5, v4

    goto :goto_26c

    :cond_26a
    move-object/from16 v5, v21

    :goto_26c
    if-ne v13, v14, :cond_276

    iget-object v0, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    iget-object v1, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v2

    :cond_276
    if-eqz v3, :cond_4e7

    if-eqz v5, :cond_4e7

    if-nez p2, :cond_282

    move-object/from16 v2, v26

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    :goto_280
    move v4, v2

    goto :goto_287

    :cond_282
    move-object/from16 v2, v26

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    goto :goto_280

    :goto_287
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v10, 0x5

    move-object v0, v9

    move-object v1, v2

    move-object v2, v3

    move v3, v6

    move-object v6, v8

    move v8, v10

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto/16 :goto_4e7

    :cond_29f
    move-object/from16 v11, v27

    if-eqz v17, :cond_3b7

    if-eqz v13, :cond_3b7

    iget v0, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-lez v0, :cond_2b2

    iget v0, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsCount:I

    iget v1, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-ne v0, v1, :cond_2b2

    const/16 v37, 0x1

    goto :goto_2b4

    :cond_2b2
    const/16 v37, 0x0

    :goto_2b4
    move-object v7, v13

    move-object v8, v7

    :goto_2b6
    if-eqz v8, :cond_4e7

    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v0, v0, p2

    move-object v6, v0

    :goto_2bd
    if-eqz v6, :cond_2cc

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    const/16 v5, 0x8

    if-ne v0, v5, :cond_2ce

    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v6, v0, p2

    goto :goto_2bd

    :cond_2cc
    const/16 v5, 0x8

    :cond_2ce
    if-nez v6, :cond_2e3

    if-ne v8, v14, :cond_2d3

    goto :goto_2e3

    :cond_2d3
    move-object/from16 v20, v6

    move-object/from16 v41, v7

    move-object/from16 v42, v11

    move-object/from16 v40, v12

    const/16 v11, 0x8

    const/4 v15, 0x6

    const/16 v19, 0x4

    move-object v12, v8

    goto/16 :goto_3a5

    :cond_2e3
    :goto_2e3
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_2f2

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_2f4

    :cond_2f2
    move-object/from16 v2, v21

    :goto_2f4
    if-eq v7, v8, :cond_2ff

    iget-object v2, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    :goto_2fc
    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_314

    :cond_2ff
    if-ne v8, v13, :cond_314

    if-ne v7, v8, :cond_314

    iget-object v2, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_312

    iget-object v2, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_2fc

    :cond_312
    move-object/from16 v2, v21

    :cond_314
    :goto_314
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    iget-object v3, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    if-eqz v6, :cond_32f

    iget-object v5, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, p3

    move-object/from16 v39, v6

    :goto_32a
    iget-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v40, v12

    goto :goto_33e

    :cond_32f
    move-object/from16 v39, v6

    iget-object v5, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_33a

    goto :goto_32a

    :cond_33a
    move-object/from16 v40, v12

    move-object/from16 v6, v21

    :goto_33e
    iget-object v12, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v12, v12, v4

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    if-eqz v5, :cond_34b

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    add-int/2addr v3, v5

    :cond_34b
    if-eqz v7, :cond_356

    iget-object v5, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    add-int/2addr v0, v5

    :cond_356
    if-eqz v1, :cond_399

    if-eqz v2, :cond_399

    if-eqz v6, :cond_399

    if-eqz v12, :cond_399

    if-ne v8, v13, :cond_368

    iget-object v0, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    :cond_368
    move v5, v0

    if-ne v8, v14, :cond_375

    iget-object v0, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    move v15, v0

    goto :goto_376

    :cond_375
    move v15, v3

    :goto_376
    if-eqz v37, :cond_37b

    const/16 v16, 0x6

    goto :goto_37d

    :cond_37b
    const/16 v16, 0x4

    :goto_37d
    const/high16 v4, 0x3f000000    # 0.5f

    move-object v0, v9

    move v3, v5

    const/16 v19, 0x8

    move-object v5, v6

    move-object/from16 v20, v39

    move-object v6, v12

    move-object v12, v7

    move v7, v15

    move-object/from16 v42, v11

    move-object/from16 v41, v12

    const/16 v11, 0x8

    const/4 v15, 0x6

    const/16 v19, 0x4

    move-object v12, v8

    move/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_3a5

    :cond_399
    move-object/from16 v41, v7

    move-object v12, v8

    move-object/from16 v42, v11

    move-object/from16 v20, v39

    const/16 v11, 0x8

    const/4 v15, 0x6

    const/16 v19, 0x4

    :goto_3a5
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    if-eq v0, v11, :cond_3ad

    move-object v7, v12

    goto :goto_3af

    :cond_3ad
    move-object/from16 v7, v41

    :goto_3af
    move-object/from16 v8, v20

    move-object/from16 v12, v40

    move-object/from16 v11, v42

    goto/16 :goto_2b6

    :cond_3b7
    move-object/from16 v42, v11

    move-object/from16 v40, v12

    const/16 v11, 0x8

    const/4 v15, 0x6

    const/16 v19, 0x4

    if-eqz v18, :cond_4e5

    if-eqz v13, :cond_4e5

    iget v0, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-lez v0, :cond_3d1

    iget v0, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsCount:I

    iget v1, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-ne v0, v1, :cond_3d1

    const/16 v37, 0x1

    goto :goto_3d3

    :cond_3d1
    const/16 v37, 0x0

    :goto_3d3
    move-object v8, v13

    move-object v12, v8

    :goto_3d5
    if-eqz v12, :cond_482

    iget-object v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v0, v0, p2

    :goto_3db
    if-eqz v0, :cond_3e8

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    if-ne v1, v11, :cond_3e8

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v0, v0, p2

    goto :goto_3db

    :cond_3e8
    if-eq v12, v13, :cond_46d

    if-eq v12, v14, :cond_46d

    if-eqz v0, :cond_46d

    if-ne v0, v14, :cond_3f3

    move-object/from16 v7, v21

    goto :goto_3f4

    :cond_3f3
    move-object v7, v0

    :goto_3f4
    iget-object v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v2, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    iget-object v4, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    if-eqz v7, :cond_420

    iget-object v5, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, p3

    iget-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v11, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_41d

    iget-object v11, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_431

    :cond_41d
    move-object/from16 v11, v21

    goto :goto_433

    :cond_420
    iget-object v5, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, v3

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_42b

    iget-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_42d

    :cond_42b
    move-object/from16 v6, v21

    :goto_42d
    iget-object v11, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, v3

    :goto_431
    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    :goto_433
    if-eqz v5, :cond_43a

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    add-int/2addr v4, v5

    :cond_43a
    move/from16 v16, v4

    if-eqz v8, :cond_447

    iget-object v4, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    add-int/2addr v0, v3

    :cond_447
    move v3, v0

    if-eqz v37, :cond_44d

    const/16 v20, 0x6

    goto :goto_44f

    :cond_44d
    const/16 v20, 0x4

    :goto_44f
    if-eqz v1, :cond_468

    if-eqz v2, :cond_468

    if-eqz v6, :cond_468

    if-eqz v11, :cond_468

    const/high16 v4, 0x3f000000    # 0.5f

    move-object v0, v9

    move-object v5, v6

    move-object v6, v11

    move-object v11, v7

    move/from16 v7, v16

    move-object/from16 v16, v8

    const/4 v10, 0x5

    move/from16 v8, v20

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_471

    :cond_468
    move-object v11, v7

    move-object/from16 v16, v8

    const/4 v10, 0x5

    goto :goto_471

    :cond_46d
    move-object/from16 v16, v8

    const/4 v10, 0x5

    move-object v11, v0

    :goto_471
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_47b

    move-object v8, v12

    goto :goto_47d

    :cond_47b
    move-object/from16 v8, v16

    :goto_47d
    move-object v12, v11

    const/16 v11, 0x8

    goto/16 :goto_3d5

    :cond_482
    const/4 v10, 0x5

    iget-object v0, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    move-object/from16 v1, v42

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v11, v2, v3

    move-object/from16 v12, v40

    iget-object v2, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v3

    iget-object v8, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_4d2

    if-eq v13, v14, :cond_4ad

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    invoke-virtual {v9, v2, v1, v0, v10}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_4d2

    :cond_4ad
    if-eqz v8, :cond_4d2

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    iget-object v6, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v15

    const/16 v16, 0x5

    move-object v0, v9

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v15

    move-object v10, v8

    move/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_4d3

    :cond_4d2
    :goto_4d2
    move-object v10, v8

    :goto_4d3
    if-eqz v10, :cond_4e7

    if-eq v13, v14, :cond_4e7

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    neg-int v2, v2

    const/4 v3, 0x5

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_4e7

    :cond_4e5
    move-object/from16 v12, v40

    :cond_4e7
    :goto_4e7
    if-nez v17, :cond_4eb

    if-eqz v18, :cond_54e

    :cond_4eb
    if-eqz v13, :cond_54e

    iget-object v0, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    iget-object v1, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_500

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_502

    :cond_500
    move-object/from16 v3, v21

    :goto_502
    iget-object v4, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_50b

    iget-object v4, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_50d

    :cond_50b
    move-object/from16 v4, v21

    :goto_50d
    if-eq v12, v14, :cond_51e

    iget-object v4, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, v2

    iget-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_51c

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_51e

    :cond_51c
    move-object/from16 v4, v21

    :cond_51e
    :goto_51e
    move-object v5, v4

    if-ne v13, v14, :cond_529

    iget-object v0, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    iget-object v1, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v2

    :cond_529
    if-eqz v3, :cond_54e

    if-eqz v5, :cond_54e

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    if-nez v14, :cond_534

    goto :goto_535

    :cond_534
    move-object v12, v14

    :goto_535
    iget-object v6, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v6, v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/high16 v6, 0x3f000000    # 0.5f

    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v10, 0x5

    move-object v0, v9

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v6

    move-object v6, v8

    move v8, v10

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_54e
    return-void
.end method
