.class public Landroid/support/constraint/solver/GoalRow;
.super Landroid/support/constraint/solver/ArrayRow;


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/Cache;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/constraint/solver/ArrayRow;-><init>(Landroid/support/constraint/solver/Cache;)V

    return-void
.end method


# virtual methods
.method public addError(Landroid/support/constraint/solver/SolverVariable;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/support/constraint/solver/ArrayRow;->addError(Landroid/support/constraint/solver/SolverVariable;)V

    iget v0, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    return-void
.end method
