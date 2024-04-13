.class public Landroid/support/constraint/solver/widgets/Optimizer;
.super Ljava/lang/Object;


# static fields
.field static final FLAG_CHAIN_DANGLING:I = 0x1

.field static final FLAG_RECOMPUTE_BOUNDS:I = 0x2

.field static final FLAG_USE_OPTIMIZE:I = 0x0

.field public static final OPTIMIZATION_BARRIER:I = 0x2

.field public static final OPTIMIZATION_CHAIN:I = 0x4

.field public static final OPTIMIZATION_DIMENSIONS:I = 0x8

.field public static final OPTIMIZATION_DIRECT:I = 0x1

.field public static final OPTIMIZATION_GROUPS:I = 0x20

.field public static final OPTIMIZATION_NONE:I = 0x0

.field public static final OPTIMIZATION_RATIO:I = 0x10

.field public static final OPTIMIZATION_STANDARD:I = 0x7

.field static flags:[Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [Z

    sput-object v0, Landroid/support/constraint/solver/widgets/Optimizer;->flags:[Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static analyze(ILandroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .registers 19

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->updateResolutionNodes()V

    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v3

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v4

    const/16 v5, 0x8

    and-int/lit8 v6, p0, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v5, :cond_27

    const/4 v6, 0x1

    goto :goto_28

    :cond_27
    const/4 v6, 0x0

    :goto_28
    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v9, v9, v7

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_38

    invoke-static {v0, v7}, Landroid/support/constraint/solver/widgets/Optimizer;->optimizableMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z

    move-result v9

    if-eqz v9, :cond_38

    const/4 v9, 0x1

    goto :goto_39

    :cond_38
    const/4 v9, 0x0

    :goto_39
    iget v10, v1, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    const/4 v11, 0x3

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x2

    if-eq v10, v12, :cond_181

    iget v10, v3, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    if-eq v10, v12, :cond_181

    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v10, v10, v7

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v10, v7, :cond_d7

    if-eqz v9, :cond_58

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v7

    if-ne v7, v5, :cond_58

    goto/16 :goto_d7

    :cond_58
    if-eqz v9, :cond_181

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    invoke-virtual {v3, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_74

    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_74

    if-eqz v6, :cond_f8

    goto/16 :goto_eb

    :cond_74
    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_83

    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_83

    if-eqz v6, :cond_f8

    goto :goto_eb

    :cond_83
    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_93

    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_93

    if-eqz v6, :cond_13a

    goto/16 :goto_12e

    :cond_93
    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_181

    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_181

    if-eqz v6, :cond_af

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    :cond_af
    iget v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v9, v9, v13

    if-nez v9, :cond_c3

    invoke-virtual {v1, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    invoke-virtual {v3, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    invoke-virtual {v1, v3, v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    invoke-virtual {v3, v1, v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    goto/16 :goto_181

    :cond_c3
    invoke-virtual {v1, v15}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    invoke-virtual {v3, v15}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    neg-int v9, v7

    int-to-float v9, v9

    invoke-virtual {v1, v3, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    int-to-float v9, v7

    invoke-virtual {v3, v1, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    invoke-virtual {v0, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto/16 :goto_181

    :cond_d7
    :goto_d7
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_fd

    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_fd

    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    invoke-virtual {v3, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    if-eqz v6, :cond_f4

    :goto_eb
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_181

    :cond_f4
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    :cond_f8
    invoke-virtual {v3, v1, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_181

    :cond_fd
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_112

    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_112

    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    invoke-virtual {v3, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    if-eqz v6, :cond_f4

    goto :goto_eb

    :cond_112
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_13f

    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_13f

    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    invoke-virtual {v3, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v1, v3, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    if-eqz v6, :cond_136

    :goto_12e
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v1, v3, v14, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto :goto_181

    :cond_136
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    :cond_13a
    neg-int v7, v7

    invoke-virtual {v1, v3, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto :goto_181

    :cond_13f
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_181

    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_181

    invoke-virtual {v1, v15}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    invoke-virtual {v3, v15}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    if-eqz v6, :cond_170

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v1, v3, v14, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto :goto_181

    :cond_170
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v1, v3, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v1, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    :cond_181
    :goto_181
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, v8

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v3, :cond_192

    invoke-static {v0, v8}, Landroid/support/constraint/solver/widgets/Optimizer;->optimizableMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z

    move-result v1

    if-eqz v1, :cond_192

    const/16 v16, 0x1

    goto :goto_194

    :cond_192
    const/16 v16, 0x0

    :goto_194
    iget v1, v2, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    if-eq v1, v12, :cond_351

    iget v1, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    if-eq v1, v12, :cond_351

    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, v8

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v1, v3, :cond_25a

    if-eqz v16, :cond_1ae

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    if-ne v1, v5, :cond_1ae

    goto/16 :goto_25a

    :cond_1ae
    if-eqz v16, :cond_351

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    invoke-virtual {v2, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    invoke-virtual {v4, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_1d4

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_1d4

    if-eqz v6, :cond_1d0

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v0

    invoke-virtual {v4, v2, v8, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    return-void

    :cond_1d0
    invoke-virtual {v4, v2, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    return-void

    :cond_1d4
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_1ee

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_1ee

    if-eqz v6, :cond_1ea

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v0

    invoke-virtual {v4, v2, v8, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    return-void

    :cond_1ea
    invoke-virtual {v4, v2, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    return-void

    :cond_1ee
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_209

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_209

    if-eqz v6, :cond_204

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v0

    invoke-virtual {v2, v4, v14, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    return-void

    :cond_204
    neg-int v0, v1

    invoke-virtual {v2, v4, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    return-void

    :cond_209
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_351

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_351

    if-eqz v6, :cond_225

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    :cond_225
    iget v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v3, v3, v13

    if-nez v3, :cond_238

    invoke-virtual {v2, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    invoke-virtual {v4, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    invoke-virtual {v2, v4, v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    invoke-virtual {v4, v2, v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    return-void

    :cond_238
    invoke-virtual {v2, v15}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    invoke-virtual {v4, v15}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {v2, v4, v3}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    int-to-float v3, v1

    invoke-virtual {v4, v2, v3}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    iget v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v1, :cond_351

    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v1, v8, v2, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    return-void

    :cond_25a
    :goto_25a
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v1, :cond_299

    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v1, :cond_299

    invoke-virtual {v2, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    invoke-virtual {v4, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    if-eqz v6, :cond_276

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v1

    invoke-virtual {v4, v2, v8, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto :goto_27d

    :cond_276
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    invoke-virtual {v4, v2, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    :goto_27d
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_351

    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    neg-int v0, v0

    invoke-virtual {v2, v8, v1, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    return-void

    :cond_299
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_2cc

    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v1, :cond_2cc

    invoke-virtual {v2, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    invoke-virtual {v4, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    if-eqz v6, :cond_2b5

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v1

    invoke-virtual {v4, v2, v8, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto :goto_2bc

    :cond_2b5
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    invoke-virtual {v4, v2, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    :goto_2bc
    iget v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v1, :cond_351

    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v1, v8, v2, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    return-void

    :cond_2cc
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v1, :cond_300

    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_300

    invoke-virtual {v2, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    invoke-virtual {v4, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    if-eqz v6, :cond_2e8

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v1

    invoke-virtual {v2, v4, v14, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto :goto_2f0

    :cond_2e8
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v2, v4, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    :goto_2f0
    iget v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v1, :cond_351

    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v1, v8, v2, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    return-void

    :cond_300
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_351

    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_351

    invoke-virtual {v2, v15}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    invoke-virtual {v4, v15}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    if-eqz v6, :cond_331

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v1

    invoke-virtual {v2, v4, v14, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v1

    invoke-virtual {v4, v2, v8, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    goto :goto_342

    :cond_331
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v2, v4, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v4, v2, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    :goto_342
    iget v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v1, :cond_351

    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v1, v8, v2, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    :cond_351
    return-void
.end method

.method static applyChainOptimized(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ChainHead;)Z
    .registers 28

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p4

    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ChainHead;->mFirst:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ChainHead;->mLast:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v5, v2, Landroid/support/constraint/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v6, v2, Landroid/support/constraint/solver/widgets/ChainHead;->mLastVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v7, v2, Landroid/support/constraint/solver/widgets/ChainHead;->mHead:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v2, v2, Landroid/support/constraint/solver/widgets/ChainHead;->mTotalWeight:F

    move-object/from16 v8, p0

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x2

    const/4 v10, 0x1

    if-nez v1, :cond_32

    iget v11, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-nez v11, :cond_22

    const/4 v11, 0x1

    goto :goto_23

    :cond_22
    const/4 v11, 0x0

    :goto_23
    iget v12, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-ne v12, v10, :cond_29

    const/4 v12, 0x1

    goto :goto_2a

    :cond_29
    const/4 v12, 0x0

    :goto_2a
    iget v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-ne v7, v8, :cond_30

    :goto_2e
    const/4 v7, 0x1

    goto :goto_45

    :cond_30
    const/4 v7, 0x0

    goto :goto_45

    :cond_32
    iget v11, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-nez v11, :cond_38

    const/4 v11, 0x1

    goto :goto_39

    :cond_38
    const/4 v11, 0x0

    :goto_39
    iget v12, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-ne v12, v10, :cond_3f

    const/4 v12, 0x1

    goto :goto_40

    :cond_3f
    const/4 v12, 0x0

    :goto_40
    iget v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-ne v7, v8, :cond_30

    goto :goto_2e

    :goto_45
    move-object v14, v3

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_4c
    const/16 v9, 0x8

    if-nez v13, :cond_105

    move/from16 v18, v13

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v13

    if-eq v13, v9, :cond_9a

    add-int/lit8 v10, v10, 0x1

    if-nez v1, :cond_63

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v13

    :goto_60
    int-to-float v13, v13

    add-float/2addr v15, v13

    goto :goto_68

    :cond_63
    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v13

    goto :goto_60

    :goto_68
    if-eq v14, v5, :cond_74

    iget-object v13, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v13, v13, p3

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v15, v13

    :cond_74
    if-eq v14, v6, :cond_82

    iget-object v13, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v19, p3, 0x1

    aget-object v13, v13, v19

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v15, v13

    :cond_82
    iget-object v13, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v13, v13, p3

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    int-to-float v13, v13

    add-float v17, v17, v13

    iget-object v13, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v19, p3, 0x1

    aget-object v13, v13, v19

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    int-to-float v13, v13

    add-float v17, v17, v13

    :cond_9a
    iget-object v13, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v13

    if-eq v13, v9, :cond_d6

    iget-object v9, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v9, v9, v1

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v13, :cond_d6

    add-int/lit8 v8, v8, 0x1

    if-nez v1, :cond_be

    iget v9, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eqz v9, :cond_b4

    const/4 v9, 0x0

    return v9

    :cond_b4
    const/4 v9, 0x0

    iget v13, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v13, :cond_bd

    iget v13, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-eqz v13, :cond_cd

    :cond_bd
    return v9

    :cond_be
    const/4 v9, 0x0

    iget v13, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v13, :cond_c4

    return v9

    :cond_c4
    iget v13, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v13, :cond_d5

    iget v13, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-eqz v13, :cond_cd

    return v9

    :cond_cd
    iget v13, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/16 v16, 0x0

    cmpl-float v13, v13, v16

    if-eqz v13, :cond_d6

    :cond_d5
    return v9

    :cond_d6
    iget-object v9, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v13, p3, 0x1

    aget-object v9, v9, v13

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_f8

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v13, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v13, v13, p3

    iget-object v13, v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v13, :cond_f8

    iget-object v13, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v13, v13, p3

    iget-object v13, v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v13, v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v13, v14, :cond_f5

    goto :goto_f8

    :cond_f5
    move-object/from16 v20, v9

    goto :goto_fa

    :cond_f8
    :goto_f8
    const/16 v20, 0x0

    :goto_fa
    if-eqz v20, :cond_102

    move/from16 v13, v18

    move-object/from16 v14, v20

    goto/16 :goto_4c

    :cond_102
    const/4 v13, 0x1

    goto/16 :goto_4c

    :cond_105
    iget-object v13, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v13, v13, p3

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v13

    iget-object v9, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v18, p3, 0x1

    aget-object v9, v9, v18

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v9

    move-object/from16 v21, v3

    iget-object v3, v13, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    if-eqz v3, :cond_391

    iget-object v3, v9, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    if-nez v3, :cond_123

    goto/16 :goto_391

    :cond_123
    iget-object v3, v13, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v3, v3, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    const/4 v0, 0x1

    if-ne v3, v0, :cond_38f

    iget-object v3, v9, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v3, v3, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    if-eq v3, v0, :cond_132

    goto/16 :goto_38f

    :cond_132
    if-lez v8, :cond_138

    if-eq v8, v10, :cond_138

    const/4 v0, 0x0

    return v0

    :cond_138
    if-nez v7, :cond_141

    if-nez v11, :cond_141

    if-eqz v12, :cond_13f

    goto :goto_141

    :cond_13f
    const/4 v0, 0x0

    goto :goto_15a

    :cond_141
    :goto_141
    if-eqz v5, :cond_14d

    iget-object v0, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    int-to-float v0, v0

    goto :goto_14e

    :cond_14d
    const/4 v0, 0x0

    :goto_14e
    if-eqz v6, :cond_15a

    iget-object v3, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, v18

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    :cond_15a
    :goto_15a
    iget-object v3, v13, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v3, v3, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iget-object v6, v9, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v6, v6, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    cmpg-float v9, v3, v6

    if-gez v9, :cond_169

    sub-float/2addr v6, v3

    :goto_167
    sub-float/2addr v6, v15

    goto :goto_16c

    :cond_169
    sub-float v6, v3, v6

    goto :goto_167

    :goto_16c
    const-wide/16 v19, 0x1

    if-lez v8, :cond_225

    if-ne v8, v10, :cond_225

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_186

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v5, :cond_186

    const/4 v0, 0x0

    return v0

    :cond_186
    add-float/2addr v6, v15

    sub-float v6, v6, v17

    move-object/from16 v0, v21

    :goto_18b
    if-eqz v0, :cond_223

    sget-object v5, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v5, :cond_1a9

    sget-object v5, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v9, v5, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    sub-long v11, v9, v19

    iput-wide v11, v5, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    sget-object v5, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v9, v5, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    add-long v11, v9, v19

    iput-wide v11, v5, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    sget-object v5, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v9, v5, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    add-long v11, v9, v19

    iput-wide v11, v5, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    :cond_1a9
    iget-object v5, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v5, v5, v1

    if-nez v5, :cond_1b5

    if-ne v0, v4, :cond_1b2

    goto :goto_1b5

    :cond_1b2
    move-object/from16 v9, p1

    goto :goto_220

    :cond_1b5
    :goto_1b5
    int-to-float v7, v8

    div-float v7, v6, v7

    const/4 v9, 0x0

    cmpl-float v10, v2, v9

    if-lez v10, :cond_1d0

    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v7, v7, v1

    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v7, v7, v9

    if-nez v7, :cond_1c9

    const/4 v7, 0x0

    goto :goto_1d0

    :cond_1c9
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v7, v7, v1

    mul-float v7, v7, v6

    div-float/2addr v7, v2

    :cond_1d0
    :goto_1d0
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_1d9

    const/4 v7, 0x0

    :cond_1d9
    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, p3

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v3, v9

    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, p3

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v9

    iget-object v10, v13, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-virtual {v9, v10, v3}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, v18

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v9

    iget-object v10, v13, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    add-float/2addr v3, v7

    invoke-virtual {v9, v10, v3}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v7

    move-object/from16 v9, p1

    invoke-virtual {v7, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, v18

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, v18

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v3, v0

    :goto_220
    move-object v0, v5

    goto/16 :goto_18b

    :cond_223
    const/4 v0, 0x1

    return v0

    :cond_225
    move-object/from16 v9, p1

    const/4 v2, 0x0

    cmpg-float v2, v6, v2

    if-gez v2, :cond_22f

    const/4 v7, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    :cond_22f
    if-eqz v7, :cond_2b7

    sub-float/2addr v6, v0

    move-object/from16 v2, v21

    invoke-virtual {v2, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBiasPercent(I)F

    move-result v0

    mul-float v6, v6, v0

    add-float/2addr v3, v6

    :goto_23b
    if-eqz v2, :cond_2b5

    sget-object v0, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v0, :cond_259

    sget-object v0, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v5, v0, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    sub-long v7, v5, v19

    iput-wide v7, v0, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    sget-object v0, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v5, v0, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    add-long v7, v5, v19

    iput-wide v7, v0, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    sget-object v0, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v5, v0, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    add-long v7, v5, v19

    iput-wide v7, v0, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    :cond_259
    iget-object v0, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v0, v0, v1

    if-nez v0, :cond_261

    if-ne v2, v4, :cond_2b3

    :cond_261
    if-nez v1, :cond_269

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    :goto_267
    int-to-float v5, v5

    goto :goto_26e

    :cond_269
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    goto :goto_267

    :goto_26e
    iget-object v6, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v3, v6

    iget-object v6, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v6

    iget-object v7, v13, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-virtual {v6, v7, v3}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    iget-object v6, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v18

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v6

    iget-object v7, v13, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    add-float/2addr v3, v5

    invoke-virtual {v6, v7, v3}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    iget-object v5, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, p3

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    iget-object v5, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, v18

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v18

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v3, v2

    :cond_2b3
    move-object v2, v0

    goto :goto_23b

    :cond_2b5
    const/4 v0, 0x1

    return v0

    :cond_2b7
    move-object/from16 v2, v21

    if-nez v11, :cond_2bd

    if-eqz v12, :cond_2b5

    :cond_2bd
    if-eqz v11, :cond_2c1

    :goto_2bf
    sub-float/2addr v6, v0

    goto :goto_2c4

    :cond_2c1
    if-eqz v12, :cond_2c4

    goto :goto_2bf

    :cond_2c4
    :goto_2c4
    add-int/lit8 v0, v10, 0x1

    int-to-float v0, v0

    div-float v0, v6, v0

    if-eqz v12, :cond_2d7

    const/4 v7, 0x1

    if-le v10, v7, :cond_2d4

    add-int/lit8 v0, v10, -0x1

    int-to-float v0, v0

    :goto_2d1
    div-float v0, v6, v0

    goto :goto_2d7

    :cond_2d4
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_2d1

    :cond_2d7
    :goto_2d7
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_2e2

    add-float v6, v3, v0

    goto :goto_2e3

    :cond_2e2
    move v6, v3

    :goto_2e3
    if-eqz v12, :cond_2f2

    const/4 v7, 0x1

    if-le v10, v7, :cond_2f2

    iget-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v3

    :cond_2f2
    if-eqz v11, :cond_300

    if-eqz v5, :cond_300

    iget-object v3, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v6, v3

    :cond_300
    :goto_300
    if-eqz v2, :cond_2b5

    sget-object v3, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v3, :cond_31e

    sget-object v3, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v7, v3, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    sub-long v10, v7, v19

    iput-wide v10, v3, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    sget-object v3, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v7, v3, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    add-long v10, v7, v19

    iput-wide v10, v3, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    sget-object v3, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v7, v3, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    add-long v10, v7, v19

    iput-wide v10, v3, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    :cond_31e
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v3, v3, v1

    if-nez v3, :cond_32a

    if-ne v2, v4, :cond_327

    goto :goto_32a

    :cond_327
    const/16 v7, 0x8

    goto :goto_38b

    :cond_32a
    :goto_32a
    if-nez v1, :cond_332

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    :goto_330
    int-to-float v7, v7

    goto :goto_337

    :cond_332
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v7

    goto :goto_330

    :goto_337
    if-eq v2, v5, :cond_343

    iget-object v8, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, p3

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v6, v8

    :cond_343
    iget-object v8, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, p3

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v8

    iget-object v10, v13, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-virtual {v8, v10, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    iget-object v8, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, v18

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v8

    iget-object v10, v13, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    add-float v11, v6, v7

    invoke-virtual {v8, v10, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    iget-object v8, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, p3

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    iget-object v8, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, v18

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v18

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v7, v2

    add-float/2addr v6, v7

    if-eqz v3, :cond_327

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v2

    const/16 v7, 0x8

    if-eq v2, v7, :cond_38b

    add-float/2addr v6, v0

    :cond_38b
    :goto_38b
    move-object v2, v3

    goto/16 :goto_300

    return v0

    :cond_38f
    :goto_38f
    const/4 v0, 0x0

    return v0

    :cond_391
    :goto_391
    const/4 v0, 0x0

    return v0
.end method

.method static checkMatchParent(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .registers 8

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x2

    if-eq v0, v2, :cond_46

    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_46

    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v1

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr v1, v2

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v2, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v2, v1}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    iput v3, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    invoke-virtual {p2, v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimension(II)V

    :cond_46
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v2, :cond_ab

    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_ab

    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result p0

    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr p0, v1

    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    iput-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    iput-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v1, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v1, p0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    iget v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-gtz v1, :cond_92

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_a6

    :cond_92
    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    iput-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    :cond_a6
    iput v3, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    invoke-virtual {p2, v0, p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimension(II)V

    :cond_ab
    return-void
.end method

.method private static optimizableMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z
    .registers 5

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    return v2

    :cond_a
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-nez p1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    aget-object p0, p0, v1

    sget-object p1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p0, p1, :cond_1e

    :cond_1e
    return v2

    :cond_1f
    if-nez p1, :cond_2f

    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eqz p1, :cond_26

    return v2

    :cond_26
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez p1, :cond_2e

    iget p0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-eqz p0, :cond_3d

    :cond_2e
    return v2

    :cond_2f
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz p1, :cond_34

    return v2

    :cond_34
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez p1, :cond_3e

    iget p0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-eqz p0, :cond_3d

    return v2

    :cond_3d
    return v1

    :cond_3e
    return v2
.end method

.method static setOptimizedWidget(Landroid/support/constraint/solver/widgets/ConstraintWidget;II)V
    .registers 7

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v3

    iput-object v3, v2, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    int-to-float p2, p2

    iput p2, v2, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iget-object p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object p2, p2, v0

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object p2

    const/4 v2, 0x1

    iput v2, p2, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    iget-object p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object p2, p2, v1

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object p2

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v3, v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iput-object v0, p2, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object p2, p2, v1

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object p2

    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getLength(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p2, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object p0

    iput v2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    return-void
.end method
