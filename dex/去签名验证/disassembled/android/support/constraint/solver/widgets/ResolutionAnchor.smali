.class public Landroid/support/constraint/solver/widgets/ResolutionAnchor;
.super Landroid/support/constraint/solver/widgets/ResolutionNode;


# static fields
.field public static final BARRIER_CONNECTION:I = 0x5

.field public static final CENTER_CONNECTION:I = 0x2

.field public static final CHAIN_CONNECTION:I = 0x4

.field public static final DIRECT_CONNECTION:I = 0x1

.field public static final MATCH_CONNECTION:I = 0x3

.field public static final UNCONNECTED:I


# instance fields
.field computedValue:F

.field private dimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

.field private dimensionMultiplier:I

.field myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field offset:F

.field private opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

.field private oppositeDimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

.field private oppositeDimensionMultiplier:I

.field private oppositeOffset:F

.field resolvedOffset:F

.field resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

.field target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

.field type:I


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)V
    .registers 4

    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ResolutionNode;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    const/4 v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dimensionMultiplier:I

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    iput v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeDimensionMultiplier:I

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-void
.end method


# virtual methods
.method addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V
    .registers 6

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    const/high16 v2, 0x3f000000    # 0.5f

    if-nez v1, :cond_14

    iget v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    return-void

    :cond_14
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    iget v3, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    add-float/2addr v3, v2

    float-to-int v2, v3

    const/4 v3, 0x6

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    return-void
.end method

.method public dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V
    .registers 4

    iput p1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    iput-object p2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    int-to-float p1, p3

    iput p1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->offset:F

    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-virtual {p1, p0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    return-void
.end method

.method public dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V
    .registers 3

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    int-to-float p1, p2

    iput p1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->offset:F

    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-virtual {p1, p0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    return-void
.end method

.method public dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V
    .registers 4

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-virtual {p1, p0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    iput-object p3, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    iput p2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dimensionMultiplier:I

    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    invoke-virtual {p1, p0}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    return-void
.end method

.method public getResolvedValue()F
    .registers 2

    iget v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    return v0
.end method

.method public remove(Landroid/support/constraint/solver/widgets/ResolutionDimension;)V
    .registers 4

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_d

    iput-object v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    iget p1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dimensionMultiplier:I

    int-to-float p1, p1

    iput p1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->offset:F

    goto :goto_1a

    :cond_d
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    if-ne p1, v0, :cond_1a

    iput-object v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    iget p1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeDimensionMultiplier:I

    int-to-float p1, p1

    iput p1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeOffset:F

    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve()V

    return-void
.end method

.method public reset()V
    .registers 4

    invoke-super {p0}, Landroid/support/constraint/solver/widgets/ResolutionNode;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->offset:F

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    const/4 v2, 0x1

    iput v2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dimensionMultiplier:I

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    iput v2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeDimensionMultiplier:I

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iput v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iput v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->computedValue:F

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iput v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeOffset:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    return-void
.end method

.method public resolve()V
    .registers 10

    iget v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    iget v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ResolutionDimension;->state:I

    if-eq v0, v1, :cond_17

    return-void

    :cond_17
    iget v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dimensionMultiplier:I

    int-to-float v0, v0

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    iget v2, v2, Landroid/support/constraint/solver/widgets/ResolutionDimension;->value:F

    mul-float v0, v0, v2

    iput v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->offset:F

    :cond_22
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    if-eqz v0, :cond_38

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ResolutionDimension;->state:I

    if-eq v0, v1, :cond_2d

    return-void

    :cond_2d
    iget v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeDimensionMultiplier:I

    int-to-float v0, v0

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    iget v2, v2, Landroid/support/constraint/solver/widgets/ResolutionDimension;->value:F

    mul-float v0, v0, v2

    iput v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeOffset:F

    :cond_38
    iget v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    if-ne v0, v1, :cond_63

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    if-eqz v0, :cond_46

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    if-ne v0, v1, :cond_63

    :cond_46
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    if-nez v0, :cond_51

    iput-object p0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->offset:F

    :goto_4e
    iput v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    goto :goto_5f

    :cond_51
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iget v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->offset:F

    add-float/2addr v0, v1

    goto :goto_4e

    :goto_5f
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->didResolve()V

    return-void

    :cond_63
    iget v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    const/4 v2, 0x2

    const-wide/16 v3, 0x1

    if-ne v0, v2, :cond_169

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    if-eqz v0, :cond_169

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    if-ne v0, v1, :cond_169

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    if-eqz v0, :cond_169

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    if-eqz v0, :cond_169

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    if-ne v0, v1, :cond_169

    invoke-static {}, Landroid/support/constraint/solver/LinearSystem;->getMetrics()Landroid/support/constraint/solver/Metrics;

    move-result-object v0

    if-eqz v0, :cond_96

    invoke-static {}, Landroid/support/constraint/solver/LinearSystem;->getMetrics()Landroid/support/constraint/solver/Metrics;

    move-result-object v0

    iget-wide v5, v0, Landroid/support/constraint/solver/Metrics;->centerConnectionResolved:J

    add-long v7, v5, v3

    iput-wide v7, v0, Landroid/support/constraint/solver/Metrics;->centerConnectionResolved:J

    :cond_96
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iput-object v2, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_b9

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v2, :cond_b8

    goto :goto_b9

    :cond_b8
    const/4 v1, 0x0

    :cond_b9
    :goto_b9
    if-eqz v1, :cond_c7

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    :goto_c3
    iget v2, v2, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    sub-float/2addr v0, v2

    goto :goto_d0

    :cond_c7
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    goto :goto_c3

    :goto_d0
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v2, v4, :cond_f2

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v2, v4, :cond_e1

    goto :goto_f2

    :cond_e1
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    goto :goto_102

    :cond_f2
    :goto_f2
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    :goto_102
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    iget-object v7, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v7

    if-ne v6, v7, :cond_124

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    goto :goto_125

    :cond_124
    move v3, v4

    :goto_125
    int-to-float v3, v3

    sub-float/2addr v0, v3

    int-to-float v4, v5

    sub-float/2addr v0, v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v1, :cond_147

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v6, v6, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    add-float/2addr v6, v4

    mul-float v4, v0, v2

    add-float/2addr v6, v4

    iput v6, v1, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v1, v1, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    sub-float/2addr v1, v3

    sub-float/2addr v5, v2

    mul-float v0, v0, v5

    sub-float/2addr v1, v0

    iput v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    goto :goto_160

    :cond_147
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v1, v1, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    add-float/2addr v1, v3

    mul-float v3, v0, v2

    add-float/2addr v1, v3

    iput v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v3, v3, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    sub-float/2addr v3, v4

    sub-float/2addr v5, v2

    mul-float v0, v0, v5

    sub-float/2addr v3, v0

    iput v3, v1, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    :goto_160
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->didResolve()V

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->didResolve()V

    return-void

    :cond_169
    iget v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1c3

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    if-eqz v0, :cond_1c3

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    if-ne v0, v1, :cond_1c3

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    if-eqz v0, :cond_1c3

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    if-eqz v0, :cond_1c3

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    if-ne v0, v1, :cond_1c3

    invoke-static {}, Landroid/support/constraint/solver/LinearSystem;->getMetrics()Landroid/support/constraint/solver/Metrics;

    move-result-object v0

    if-eqz v0, :cond_19a

    invoke-static {}, Landroid/support/constraint/solver/LinearSystem;->getMetrics()Landroid/support/constraint/solver/Metrics;

    move-result-object v0

    iget-wide v1, v0, Landroid/support/constraint/solver/Metrics;->matchConnectionResolved:J

    add-long v5, v1, v3

    iput-wide v5, v0, Landroid/support/constraint/solver/Metrics;->matchConnectionResolved:J

    :cond_19a
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iput-object v1, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iget v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->offset:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v1, v1, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v2, v2, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->offset:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    goto :goto_160

    :cond_1c3
    iget v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1cf

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolve()V

    :cond_1cf
    return-void
.end method

.method public resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V
    .registers 4

    iget v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    if-eq v0, p1, :cond_1d

    iget v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1d

    :cond_e
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iput p2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iget p1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1a

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->invalidate()V

    :cond_1a
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->didResolve()V

    :cond_1d
    return-void
.end method

.method sType(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    const-string p1, "DIRECT"

    return-object p1

    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    const-string p1, "CENTER"

    return-object p1

    :cond_c
    const/4 v0, 0x3

    if-ne p1, v0, :cond_12

    const-string p1, "MATCH"

    return-object p1

    :cond_12
    const/4 v0, 0x4

    if-ne p1, v0, :cond_18

    const-string p1, "CHAIN"

    return-object p1

    :cond_18
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1e

    const-string p1, "BARRIER"

    return-object p1

    :cond_1e
    const-string p1, "UNCONNECTED"

    return-object p1
.end method

.method public setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V
    .registers 3

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iput p2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeOffset:F

    return-void
.end method

.method public setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V
    .registers 4

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iput-object p3, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    iput p2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeDimensionMultiplier:I

    return-void
.end method

.method public setType(I)V
    .registers 2

    iput p1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_55

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    if-ne v0, p0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", RESOLVED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]  type: "

    :goto_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->sType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", RESOLVED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "] type: "

    goto :goto_21

    :cond_55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " UNRESOLVED} type: "

    goto :goto_21
.end method

.method public update()V
    .registers 5

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v1, v2, :cond_1a

    const/4 v1, 0x4

    iput v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    iput v1, v2, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    :cond_1a
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v2, v3, :cond_30

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v2, v3, :cond_31

    :cond_30
    neg-int v1, v1

    :cond_31
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    return-void
.end method
