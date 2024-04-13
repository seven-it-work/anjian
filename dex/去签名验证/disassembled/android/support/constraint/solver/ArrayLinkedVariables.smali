.class public Landroid/support/constraint/solver/ArrayLinkedVariables;
.super Ljava/lang/Object;


# static fields
.field private static final DEBUG:Z = false

.field private static final FULL_NEW_CHECK:Z = false

.field private static final NONE:I = -0x1


# instance fields
.field private ROW_SIZE:I

.field private candidate:Landroid/support/constraint/solver/SolverVariable;

.field currentSize:I

.field private mArrayIndices:[I

.field private mArrayNextIndices:[I

.field private mArrayValues:[F

.field private final mCache:Landroid/support/constraint/solver/Cache;

.field private mDidFillOnce:Z

.field private mHead:I

.field private mLast:I

.field private final mRow:Landroid/support/constraint/solver/ArrayRow;


# direct methods
.method constructor <init>(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/Cache;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    const/16 v1, 0x8

    iput v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    new-array v1, v1, [F

    iput-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    iput v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    iput-boolean v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    iput-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    iput-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    return-void
.end method

.method private isNew(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/LinearSystem;)Z
    .registers 3

    iget p1, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    const/4 p2, 0x1

    if-gt p1, p2, :cond_6

    return p2

    :cond_6
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method final add(Landroid/support/constraint/solver/SolverVariable;FZ)V
    .registers 13

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_6

    return-void

    :cond_6
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v1, v3, :cond_4b

    iput v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    iget-object p3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    aput p2, p3, v0

    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget p3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    iget v0, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    aput v0, p2, p3

    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget p3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    aput v3, p2, p3

    iget p2, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    add-int/2addr p2, v4

    iput p2, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/SolverVariable;->addToRow(Landroid/support/constraint/solver/ArrayRow;)V

    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr p1, v4

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    iget-boolean p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez p1, :cond_4a

    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr p1, v4

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length p2, p2

    if-lt p1, p2, :cond_4a

    iput-boolean v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length p1, p1

    sub-int/2addr p1, v4

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    :cond_4a
    return-void

    :cond_4b
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v5, 0x0

    const/4 v6, -0x1

    :goto_4f
    if-eq v1, v3, :cond_a7

    iget v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v5, v7, :cond_a7

    iget-object v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v7, v7, v1

    iget v8, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v7, v8, :cond_97

    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v2, v1

    add-float/2addr v3, p2

    aput v3, v2, v1

    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget p2, p2, v1

    cmpl-float p2, p2, v0

    if-nez p2, :cond_96

    iget p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    if-ne v1, p2, :cond_77

    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget p2, p2, v1

    iput p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    goto :goto_7f

    :cond_77
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v0, v1

    aput v0, p2, v6

    :goto_7f
    if-eqz p3, :cond_86

    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/SolverVariable;->removeFromRow(Landroid/support/constraint/solver/ArrayRow;)V

    :cond_86
    iget-boolean p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz p2, :cond_8c

    iput v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    :cond_8c
    iget p2, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    sub-int/2addr p2, v4

    iput p2, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    sub-int/2addr p1, v4

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    :cond_96
    return-void

    :cond_97
    iget-object v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v7, v7, v1

    iget v8, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ge v7, v8, :cond_a0

    move v6, v1

    :cond_a0
    iget-object v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v7, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_4f

    :cond_a7
    iget p3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr p3, v4

    iget-boolean v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v0, :cond_bc

    iget-object p3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    aget p3, p3, v0

    if-ne p3, v3, :cond_b9

    iget p3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    goto :goto_bc

    :cond_b9
    iget-object p3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length p3, p3

    :cond_bc
    :goto_bc
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v0, v0

    if-lt p3, v0, :cond_d9

    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v1, v1

    if-ge v0, v1, :cond_d9

    const/4 v0, 0x0

    :goto_c9
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v1, v1

    if-ge v0, v1, :cond_d9

    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v1, v1, v0

    if-ne v1, v3, :cond_d6

    move p3, v0

    goto :goto_d9

    :cond_d6
    add-int/lit8 v0, v0, 0x1

    goto :goto_c9

    :cond_d9
    :goto_d9
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v0, v0

    if-lt p3, v0, :cond_10b

    iget-object p3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length p3, p3

    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    iput-boolean v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    add-int/lit8 v0, p3, -0x1

    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    :cond_10b
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v1, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    aput v1, v0, p3

    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, v0, p3

    if-eq v6, v3, :cond_124

    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v0, v6

    aput v0, p2, p3

    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aput p3, p2, v6

    goto :goto_12c

    :cond_124
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    aput v0, p2, p3

    iput p3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    :goto_12c
    iget p2, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    add-int/2addr p2, v4

    iput p2, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/SolverVariable;->addToRow(Landroid/support/constraint/solver/ArrayRow;)V

    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr p1, v4

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    iget-boolean p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez p1, :cond_144

    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr p1, v4

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    :cond_144
    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length p2, p2

    if-lt p1, p2, :cond_153

    iput-boolean v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length p1, p1

    sub-int/2addr p1, v4

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    :cond_153
    return-void
.end method

.method chooseSubject(Landroid/support/constraint/solver/LinearSystem;)Landroid/support/constraint/solver/SolverVariable;
    .registers 16

    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_a
    const/4 v9, -0x1

    if-eq v0, v9, :cond_8f

    iget v9, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v9, :cond_8f

    iget-object v9, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v9, v9, v0

    iget-object v10, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v10, v10, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v11, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v11, v11, v0

    aget-object v10, v10, v11

    cmpg-float v11, v9, v3

    if-gez v11, :cond_35

    const v11, -0x457ced91    # -0.001f

    cmpl-float v11, v9, v11

    if-lez v11, :cond_41

    iget-object v9, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput v3, v9, v0

    :goto_2e
    iget-object v9, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {v10, v9}, Landroid/support/constraint/solver/SolverVariable;->removeFromRow(Landroid/support/constraint/solver/ArrayRow;)V

    const/4 v9, 0x0

    goto :goto_41

    :cond_35
    const v11, 0x3a83126f    # 0.001f

    cmpg-float v11, v9, v11

    if-gez v11, :cond_41

    iget-object v9, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput v3, v9, v0

    goto :goto_2e

    :cond_41
    :goto_41
    cmpl-float v11, v9, v3

    const/4 v12, 0x1

    if-eqz v11, :cond_87

    iget-object v11, v10, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v13, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v11, v13, :cond_67

    if-nez v1, :cond_56

    :goto_4e
    invoke-direct {p0, v10, p1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->isNew(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/LinearSystem;)Z

    move-result v1

    move v6, v1

    move v5, v9

    move-object v1, v10

    goto :goto_87

    :cond_56
    cmpl-float v11, v5, v9

    if-lez v11, :cond_5b

    goto :goto_4e

    :cond_5b
    if-nez v6, :cond_87

    invoke-direct {p0, v10, p1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->isNew(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/LinearSystem;)Z

    move-result v11

    if-eqz v11, :cond_87

    move v5, v9

    move-object v1, v10

    const/4 v6, 0x1

    goto :goto_87

    :cond_67
    if-nez v1, :cond_87

    cmpg-float v11, v9, v3

    if-gez v11, :cond_87

    if-nez v4, :cond_77

    :goto_6f
    invoke-direct {p0, v10, p1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->isNew(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/LinearSystem;)Z

    move-result v4

    move v8, v4

    move v7, v9

    move-object v4, v10

    goto :goto_87

    :cond_77
    cmpl-float v11, v7, v9

    if-lez v11, :cond_7c

    goto :goto_6f

    :cond_7c
    if-nez v8, :cond_87

    invoke-direct {p0, v10, p1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->isNew(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/LinearSystem;)Z

    move-result v11

    if-eqz v11, :cond_87

    move v7, v9

    move-object v4, v10

    const/4 v8, 0x1

    :cond_87
    :goto_87
    iget-object v9, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v9, v0

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a

    :cond_8f
    if-eqz v1, :cond_92

    return-object v1

    :cond_92
    return-object v4
.end method

.method public final clear()V
    .registers 6

    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    const/4 v3, -0x1

    if-eq v0, v3, :cond_23

    iget v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v4, :cond_23

    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v3, v3, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    if-eqz v3, :cond_1c

    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/SolverVariable;->removeFromRow(Landroid/support/constraint/solver/ArrayRow;)V

    :cond_1c
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_23
    iput v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    iput v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    iput-boolean v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    iput v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    return-void
.end method

.method final containsKey(Landroid/support/constraint/solver/SolverVariable;)Z
    .registers 8

    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    return v2

    :cond_7
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v3, 0x0

    :goto_a
    if-eq v0, v1, :cond_21

    iget v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v3, v4, :cond_21

    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v4, v0

    iget v5, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v4, v5, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v4, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_21
    return v2
.end method

.method public display()V
    .registers 6

    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "{ "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_37

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->getVariable(I)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    if-eqz v2, :cond_34

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->getVariableValue(I)F

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_37
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method divideByAmount(F)V
    .registers 6

    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_18

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_18

    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v2, v0

    div-float/2addr v3, p1

    aput v3, v2, v0

    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_18
    return-void
.end method

.method public final get(Landroid/support/constraint/solver/SolverVariable;)F
    .registers 6

    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1e

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_1e

    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v2, v2, v0

    iget v3, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v2, v3, :cond_17

    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget p1, p1, v0

    return p1

    :cond_17
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method getPivotCandidate()Landroid/support/constraint/solver/SolverVariable;
    .registers 7

    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    if-nez v0, :cond_33

    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    const/4 v3, -0x1

    if-eq v0, v3, :cond_32

    iget v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v3, :cond_32

    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v3, v0

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2b

    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v3, v3, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    if-eqz v2, :cond_2a

    iget v4, v2, Landroid/support/constraint/solver/SolverVariable;->strength:I

    iget v5, v3, Landroid/support/constraint/solver/SolverVariable;->strength:I

    if-ge v4, v5, :cond_2b

    :cond_2a
    move-object v2, v3

    :cond_2b
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_32
    return-object v2

    :cond_33
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    return-object v0
.end method

.method getPivotCandidate([ZLandroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/SolverVariable;
    .registers 11

    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_6
    const/4 v5, -0x1

    if-eq v0, v5, :cond_46

    iget v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v5, :cond_46

    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v5, v5, v0

    cmpg-float v5, v5, v1

    if-gez v5, :cond_3f

    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v5, v5, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v6, v6, v0

    aget-object v5, v5, v6

    if-eqz p1, :cond_27

    iget v6, v5, Landroid/support/constraint/solver/SolverVariable;->id:I

    aget-boolean v6, p1, v6

    if-nez v6, :cond_3f

    :cond_27
    if-eq v5, p2, :cond_3f

    iget-object v6, v5, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v7, Landroid/support/constraint/solver/SolverVariable$Type;->SLACK:Landroid/support/constraint/solver/SolverVariable$Type;

    if-eq v6, v7, :cond_35

    iget-object v6, v5, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v7, Landroid/support/constraint/solver/SolverVariable$Type;->ERROR:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v6, v7, :cond_3f

    :cond_35
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v6, v6, v0

    cmpg-float v7, v6, v4

    if-gez v7, :cond_3f

    move-object v3, v5

    move v4, v6

    :cond_3f
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v5, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_46
    return-object v3
.end method

.method final getVariable(I)Landroid/support/constraint/solver/SolverVariable;
    .registers 5

    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1e

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_1e

    if-ne v1, p1, :cond_17

    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object p1, p1, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v0, v1, v0

    aget-object p1, p1, v0

    return-object p1

    :cond_17
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1e
    const/4 p1, 0x0

    return-object p1
.end method

.method final getVariableValue(I)F
    .registers 5

    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_18

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_18

    if-ne v1, p1, :cond_11

    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget p1, p1, v0

    return p1

    :cond_11
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method hasAtLeastOnePositiveVariable()Z
    .registers 6

    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1d

    iget v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v3, :cond_1d

    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_1d
    return v1
.end method

.method invert()V
    .registers 6

    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1b

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_1b

    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v2, v0

    const/high16 v4, -0x40800000    # -1.0f

    mul-float v3, v3, v4

    aput v3, v2, v0

    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1b
    return-void
.end method

.method public final put(Landroid/support/constraint/solver/SolverVariable;F)V
    .registers 11

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    invoke-virtual {p0, p1, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->remove(Landroid/support/constraint/solver/SolverVariable;Z)F

    return-void

    :cond_a
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_4e

    iput v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    aput p2, v0, v2

    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    iget v2, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    aput v2, p2, v0

    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    aput v3, p2, v0

    iget p2, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    add-int/2addr p2, v1

    iput p2, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/SolverVariable;->addToRow(Landroid/support/constraint/solver/ArrayRow;)V

    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr p1, v1

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    iget-boolean p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez p1, :cond_4d

    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr p1, v1

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length p2, p2

    if-lt p1, p2, :cond_4d

    iput-boolean v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length p1, p1

    sub-int/2addr p1, v1

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    :cond_4d
    return-void

    :cond_4e
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_52
    if-eq v0, v3, :cond_75

    iget v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v4, v6, :cond_75

    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v6, v6, v0

    iget v7, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v6, v7, :cond_65

    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, p1, v0

    return-void

    :cond_65
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v6, v6, v0

    iget v7, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ge v6, v7, :cond_6e

    move v5, v0

    :cond_6e
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v6, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    :cond_75
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr v0, v1

    iget-boolean v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v4, :cond_8a

    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    aget v0, v0, v4

    if-ne v0, v3, :cond_87

    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    goto :goto_8a

    :cond_87
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v0, v0

    :cond_8a
    :goto_8a
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v4, v4

    if-lt v0, v4, :cond_a7

    iget v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v6, v6

    if-ge v4, v6, :cond_a7

    const/4 v4, 0x0

    :goto_97
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v6, v6

    if-ge v4, v6, :cond_a7

    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v6, v6, v4

    if-ne v6, v3, :cond_a4

    move v0, v4

    goto :goto_a7

    :cond_a4
    add-int/lit8 v4, v4, 0x1

    goto :goto_97

    :cond_a7
    :goto_a7
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v4, v4

    if-lt v0, v4, :cond_d9

    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v0, v0

    iget v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    iput-boolean v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    iput-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    :cond_d9
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v4, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    aput v4, v2, v0

    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, v2, v0

    if-eq v5, v3, :cond_f2

    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v2, v2, v5

    aput v2, p2, v0

    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aput v0, p2, v5

    goto :goto_fa

    :cond_f2
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    aput v2, p2, v0

    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    :goto_fa
    iget p2, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    add-int/2addr p2, v1

    iput p2, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/SolverVariable;->addToRow(Landroid/support/constraint/solver/ArrayRow;)V

    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr p1, v1

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    iget-boolean p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez p1, :cond_112

    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr p1, v1

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    :cond_112
    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length p2, p2

    if-lt p1, p2, :cond_11b

    iput-boolean v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    :cond_11b
    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length p2, p2

    if-lt p1, p2, :cond_12a

    iput-boolean v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length p1, p1

    sub-int/2addr p1, v1

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    :cond_12a
    return-void
.end method

.method public final remove(Landroid/support/constraint/solver/SolverVariable;Z)F
    .registers 11

    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    if-ne v0, p1, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    :cond_7
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_e

    return v1

    :cond_e
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    :goto_12
    if-eq v0, v2, :cond_5f

    iget v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v3, v5, :cond_5f

    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v5, v5, v0

    iget v6, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v5, v6, :cond_55

    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    if-ne v0, v1, :cond_2b

    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v1, v0

    iput v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    goto :goto_33

    :cond_2b
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v3, v3, v0

    aput v3, v1, v4

    :goto_33
    if-eqz p2, :cond_3a

    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/SolverVariable;->removeFromRow(Landroid/support/constraint/solver/ArrayRow;)V

    :cond_3a
    iget p2, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aput v2, p1, v0

    iget-boolean p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz p1, :cond_50

    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    :cond_50
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget p1, p1, v0

    return p1

    :cond_55
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v4, v4, v0

    add-int/lit8 v3, v3, 0x1

    move v7, v4

    move v4, v0

    move v0, v7

    goto :goto_12

    :cond_5f
    return v1
.end method

.method sizeInBytes()I
    .registers 2

    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x0

    add-int/lit8 v0, v0, 0x24

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const-string v0, ""

    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v2, 0x0

    :goto_5
    const/4 v3, -0x1

    if-eq v1, v3, :cond_55

    iget v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v3, :cond_55

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v0, v0, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v4, v1

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_55
    return-object v0
.end method

.method final updateFromRow(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/ArrayRow;Z)V
    .registers 12

    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    :goto_3
    const/4 v2, 0x0

    :goto_4
    const/4 v3, -0x1

    if-eq v0, v3, :cond_5f

    iget v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v4, :cond_5f

    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v4, v0

    iget-object v5, p2, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget v5, v5, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v4, v5, :cond_58

    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v0, v2, v0

    iget-object v2, p2, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p0, v2, p3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->remove(Landroid/support/constraint/solver/SolverVariable;Z)F

    iget-object v2, p2, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    check-cast v2, Landroid/support/constraint/solver/ArrayLinkedVariables;

    iget v4, v2, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v5, 0x0

    :goto_25
    if-eq v4, v3, :cond_45

    iget v6, v2, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v5, v6, :cond_45

    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v6, v6, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, v2, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v7, v7, v4

    aget-object v6, v6, v7

    iget-object v7, v2, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v7, v7, v4

    mul-float v7, v7, v0

    invoke-virtual {p0, v6, v7, p3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->add(Landroid/support/constraint/solver/SolverVariable;FZ)V

    iget-object v6, v2, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v4, v6, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    :cond_45
    iget v2, p1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    iget v3, p2, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    iput v2, p1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    if-eqz p3, :cond_55

    iget-object v0, p2, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/SolverVariable;->removeFromRow(Landroid/support/constraint/solver/ArrayRow;)V

    :cond_55
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    goto :goto_3

    :cond_58
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5f
    return-void
.end method

.method updateFromSystem(Landroid/support/constraint/solver/ArrayRow;[Landroid/support/constraint/solver/ArrayRow;)V
    .registers 13

    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    :goto_3
    const/4 v2, 0x0

    :goto_4
    const/4 v3, -0x1

    if-eq v0, v3, :cond_68

    iget v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v4, :cond_68

    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v4, v4, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v5, v5, v0

    aget-object v4, v4, v5

    iget v5, v4, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    if-eq v5, v3, :cond_61

    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v0, v2, v0

    const/4 v2, 0x1

    invoke-virtual {p0, v4, v2}, Landroid/support/constraint/solver/ArrayLinkedVariables;->remove(Landroid/support/constraint/solver/SolverVariable;Z)F

    iget v4, v4, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    aget-object v4, p2, v4

    iget-boolean v5, v4, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v5, :cond_50

    iget-object v5, v4, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    check-cast v5, Landroid/support/constraint/solver/ArrayLinkedVariables;

    iget v6, v5, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v7, 0x0

    :goto_30
    if-eq v6, v3, :cond_50

    iget v8, v5, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v7, v8, :cond_50

    iget-object v8, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v8, v8, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v9, v5, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v9, v9, v6

    aget-object v8, v8, v9

    iget-object v9, v5, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v9, v9, v6

    mul-float v9, v9, v0

    invoke-virtual {p0, v8, v9, v2}, Landroid/support/constraint/solver/ArrayLinkedVariables;->add(Landroid/support/constraint/solver/SolverVariable;FZ)V

    iget-object v8, v5, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v6, v8, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    :cond_50
    iget v2, p1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    iget v3, v4, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    iput v2, p1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    iget-object v0, v4, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/SolverVariable;->removeFromRow(Landroid/support/constraint/solver/ArrayRow;)V

    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    goto :goto_3

    :cond_61
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_68
    return-void
.end method
