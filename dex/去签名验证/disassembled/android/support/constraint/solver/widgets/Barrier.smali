.class public Landroid/support/constraint/solver/widgets/Barrier;
.super Landroid/support/constraint/solver/widgets/Helper;


# static fields
.field public static final BOTTOM:I = 0x3

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field public static final TOP:I = 0x2


# instance fields
.field private mAllowsGoneWidget:Z

.field private mBarrierType:I

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ResolutionAnchor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/Helper;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mNodes:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    return-void
.end method


# virtual methods
.method public addToSolver(Landroid/support/constraint/solver/LinearSystem;)V
    .registers 12

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v4, 0x1

    aput-object v1, v0, v4

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const/4 v0, 0x0

    :goto_1d
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    array-length v1, v1

    if-ge v0, v1, :cond_33

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v0

    iget-object v6, p0, Landroid/support/constraint/solver/widgets/Barrier;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v0

    invoke-virtual {p1, v6}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    iput-object v6, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_33
    iget v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-ltz v0, :cond_14e

    iget v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_14e

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    :goto_43
    iget v6, p0, Landroid/support/constraint/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v1, v6, :cond_7b

    iget-object v6, p0, Landroid/support/constraint/solver/widgets/Barrier;->mWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v6, v6, v1

    iget-boolean v7, p0, Landroid/support/constraint/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v7, :cond_55

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v7

    if-eqz v7, :cond_78

    :cond_55
    iget v7, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v7, :cond_5d

    iget v7, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-ne v7, v4, :cond_67

    :cond_5d
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_67

    :goto_65
    const/4 v1, 0x1

    goto :goto_7c

    :cond_67
    iget v7, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-eq v7, v3, :cond_6f

    iget v7, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-ne v7, v5, :cond_78

    :cond_6f
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_78

    goto :goto_65

    :cond_78
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    :cond_7b
    const/4 v1, 0x0

    :goto_7c
    iget v6, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v6, :cond_92

    iget v6, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-ne v6, v4, :cond_85

    goto :goto_92

    :cond_85
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Barrier;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_9f

    goto :goto_9e

    :cond_92
    :goto_92
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Barrier;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_9f

    :goto_9e
    const/4 v1, 0x0

    :cond_9f
    const/4 v6, 0x0

    :goto_a0
    iget v7, p0, Landroid/support/constraint/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v6, v7, :cond_db

    iget-object v7, p0, Landroid/support/constraint/solver/widgets/Barrier;->mWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v7, v7, v6

    iget-boolean v8, p0, Landroid/support/constraint/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v8, :cond_b2

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v8

    if-eqz v8, :cond_d8

    :cond_b2
    iget-object v8, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v9, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    aget-object v8, v8, v9

    invoke-virtual {p1, v8}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v8

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v9, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    aget-object v7, v7, v9

    iput-object v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget v7, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v7, :cond_d3

    iget v7, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-ne v7, v3, :cond_cd

    goto :goto_d3

    :cond_cd
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v7, v8, v1}, Landroid/support/constraint/solver/LinearSystem;->addGreaterBarrier(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Z)V

    goto :goto_d8

    :cond_d3
    :goto_d3
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v7, v8, v1}, Landroid/support/constraint/solver/LinearSystem;->addLowerBarrier(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Z)V

    :cond_d8
    :goto_d8
    add-int/lit8 v6, v6, 0x1

    goto :goto_a0

    :cond_db
    iget v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    const/4 v6, 0x5

    const/4 v7, 0x6

    if-nez v0, :cond_fc

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Barrier;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v0, v3, v2, v7}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    if-nez v1, :cond_14e

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    :goto_f6
    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v0, v1, v2, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    return-void

    :cond_fc
    iget v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-ne v0, v4, :cond_116

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Barrier;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v0, v3, v2, v7}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    if-nez v1, :cond_14e

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_f6

    :cond_116
    iget v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-ne v0, v3, :cond_130

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Barrier;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v0, v3, v2, v7}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    if-nez v1, :cond_14e

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_f6

    :cond_130
    iget v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-ne v0, v5, :cond_14e

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v0, v3, v2, v7}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    if-nez v1, :cond_14e

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v0, v1, v2, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    :cond_14e
    return-void
.end method

.method public allowedInBarrier()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public allowsGoneWidget()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    return v0
.end method

.method public analyze(I)V
    .registers 6

    iget-object p1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result p1

    if-nez p1, :cond_11

    return-void

    :cond_11
    iget p1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    packed-switch p1, :pswitch_data_90

    return-void

    :pswitch_17
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_22

    :pswitch_1a
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_22

    :pswitch_1d
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_22

    :pswitch_20
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    :goto_22
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    iget v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_42

    iget v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_36

    goto :goto_42

    :cond_36
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_4d

    :cond_42
    :goto_42
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    :goto_4d
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_5a
    iget v1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v0, v1, :cond_8f

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v1, v1, v0

    iget-boolean v3, p0, Landroid/support/constraint/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v3, :cond_6c

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v3

    if-eqz v3, :cond_8c

    :cond_6c
    iget v3, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    packed-switch v3, :pswitch_data_9c

    move-object v1, v2

    goto :goto_82

    :pswitch_73
    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_7e

    :pswitch_76
    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_7e

    :pswitch_79
    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_7e

    :pswitch_7c
    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    :goto_7e
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    :goto_82
    if-eqz v1, :cond_8c

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Barrier;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    :cond_8c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    :cond_8f
    return-void

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_7c
        :pswitch_79
        :pswitch_76
        :pswitch_73
    .end packed-switch
.end method

.method public resetResolutionNodes()V
    .registers 2

    invoke-super {p0}, Landroid/support/constraint/solver/widgets/Helper;->resetResolutionNodes()V

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public resolve()V
    .registers 11

    iget v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_86

    return-void

    :pswitch_a
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_12

    :pswitch_d
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_1a

    :pswitch_10
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    :goto_12
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_1e

    :pswitch_18
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    :goto_1a
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    :goto_1e
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Barrier;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_26
    if-ge v4, v2, :cond_54

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/Barrier;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v6, v5, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_36

    return-void

    :cond_36
    iget v6, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v6, :cond_47

    iget v6, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_40

    goto :goto_47

    :cond_40
    iget v6, v5, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    cmpl-float v6, v6, v1

    if-lez v6, :cond_51

    goto :goto_4d

    :cond_47
    :goto_47
    iget v6, v5, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    cmpg-float v6, v6, v1

    if-gez v6, :cond_51

    :goto_4d
    iget v1, v5, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iget-object v3, v5, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    :cond_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    :cond_54
    invoke-static {}, Landroid/support/constraint/solver/LinearSystem;->getMetrics()Landroid/support/constraint/solver/Metrics;

    move-result-object v2

    if-eqz v2, :cond_66

    invoke-static {}, Landroid/support/constraint/solver/LinearSystem;->getMetrics()Landroid/support/constraint/solver/Metrics;

    move-result-object v2

    iget-wide v4, v2, Landroid/support/constraint/solver/Metrics;->barrierConnectionResolved:J

    const-wide/16 v6, 0x1

    add-long v8, v4, v6

    iput-wide v8, v2, Landroid/support/constraint/solver/Metrics;->barrierConnectionResolved:J

    :cond_66
    iput-object v3, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iput v1, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->didResolve()V

    iget v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    packed-switch v0, :pswitch_data_92

    return-void

    :pswitch_73
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    :goto_75
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    return-void

    :pswitch_7d
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_75

    :pswitch_80
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_75

    :pswitch_83
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_75

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_18
        :pswitch_10
        :pswitch_d
        :pswitch_a
    .end packed-switch

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_73
    .end packed-switch
.end method

.method public setAllowsGoneWidget(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    return-void
.end method

.method public setBarrierType(I)V
    .registers 2

    iput p1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    return-void
.end method
