.class public Landroid/support/constraint/solver/SolverVariable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/SolverVariable$Type;
    }
.end annotation


# static fields
.field private static final INTERNAL_DEBUG:Z = false

.field static final MAX_STRENGTH:I = 0x7

.field public static final STRENGTH_BARRIER:I = 0x7

.field public static final STRENGTH_EQUALITY:I = 0x5

.field public static final STRENGTH_FIXED:I = 0x6

.field public static final STRENGTH_HIGH:I = 0x3

.field public static final STRENGTH_HIGHEST:I = 0x4

.field public static final STRENGTH_LOW:I = 0x1

.field public static final STRENGTH_MEDIUM:I = 0x2

.field public static final STRENGTH_NONE:I = 0x0

.field private static uniqueConstantId:I = 0x1

.field private static uniqueErrorId:I = 0x1

.field private static uniqueId:I = 0x1

.field private static uniqueSlackId:I = 0x1

.field private static uniqueUnrestrictedId:I = 0x1


# instance fields
.field public computedValue:F

.field definitionId:I

.field public id:I

.field mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

.field mClientEquationsCount:I

.field private mName:Ljava/lang/String;

.field mType:Landroid/support/constraint/solver/SolverVariable$Type;

.field public strength:I

.field strengthVector:[F

.field public usageInRowCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/support/constraint/solver/SolverVariable$Type;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, -0x1

    iput p2, p0, Landroid/support/constraint/solver/SolverVariable;->id:I

    iput p2, p0, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    const/4 p2, 0x0

    iput p2, p0, Landroid/support/constraint/solver/SolverVariable;->strength:I

    const/4 v0, 0x7

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/support/constraint/solver/ArrayRow;

    iput-object v0, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    iput p2, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    iput p2, p0, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    iput-object p1, p0, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->id:I

    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->strength:I

    const/4 v1, 0x7

    new-array v1, v1, [F

    iput-object v1, p0, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    const/16 v1, 0x8

    new-array v1, v1, [Landroid/support/constraint/solver/ArrayRow;

    iput-object v1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    iput-object p1, p0, Landroid/support/constraint/solver/SolverVariable;->mName:Ljava/lang/String;

    iput-object p2, p0, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    return-void
.end method

.method private static getUniqueName(Landroid/support/constraint/solver/SolverVariable$Type;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_14

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Landroid/support/constraint/solver/SolverVariable;->uniqueErrorId:I

    :goto_c
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14
    sget-object p1, Landroid/support/constraint/solver/SolverVariable$1;->$SwitchMap$android$support$constraint$solver$SolverVariable$Type:[I

    invoke-virtual {p0}, Landroid/support/constraint/solver/SolverVariable$Type;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_70

    new-instance p1, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Landroid/support/constraint/solver/SolverVariable$Type;->name()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_29
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "V"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p1, Landroid/support/constraint/solver/SolverVariable;->uniqueId:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Landroid/support/constraint/solver/SolverVariable;->uniqueId:I

    goto :goto_c

    :pswitch_37
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "e"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p1, Landroid/support/constraint/solver/SolverVariable;->uniqueErrorId:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Landroid/support/constraint/solver/SolverVariable;->uniqueErrorId:I

    goto :goto_c

    :pswitch_45
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "S"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p1, Landroid/support/constraint/solver/SolverVariable;->uniqueSlackId:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Landroid/support/constraint/solver/SolverVariable;->uniqueSlackId:I

    goto :goto_c

    :pswitch_53
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "C"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p1, Landroid/support/constraint/solver/SolverVariable;->uniqueConstantId:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Landroid/support/constraint/solver/SolverVariable;->uniqueConstantId:I

    goto :goto_c

    :pswitch_61
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "U"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p1, Landroid/support/constraint/solver/SolverVariable;->uniqueUnrestrictedId:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Landroid/support/constraint/solver/SolverVariable;->uniqueUnrestrictedId:I

    goto :goto_c

    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_61
        :pswitch_53
        :pswitch_45
        :pswitch_37
        :pswitch_29
    .end packed-switch
.end method

.method static increaseErrorId()V
    .registers 1

    sget v0, Landroid/support/constraint/solver/SolverVariable;->uniqueErrorId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/support/constraint/solver/SolverVariable;->uniqueErrorId:I

    return-void
.end method


# virtual methods
.method public final addToRow(Landroid/support/constraint/solver/ArrayRow;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    if-ge v0, v1, :cond_f

    iget-object v1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_c

    return-void

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    iget v0, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    iget-object v1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    array-length v1, v1

    if-lt v0, v1, :cond_25

    iget-object v0, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    iget-object v1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/ArrayRow;

    iput-object v0, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    :cond_25
    iget-object v0, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    iget v1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    aput-object p1, v0, v1

    iget p1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    return-void
.end method

.method clearStrengths()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x7

    if-ge v0, v1, :cond_c

    iget-object v1, p0, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/support/constraint/solver/SolverVariable;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final removeFromRow(Landroid/support/constraint/solver/ArrayRow;)V
    .registers 8

    iget v0, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_2b

    iget-object v3, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v3, v3, v2

    if-ne v3, p1, :cond_28

    :goto_c
    sub-int p1, v0, v2

    add-int/lit8 p1, p1, -0x1

    if-ge v1, p1, :cond_21

    iget-object p1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    add-int v3, v2, v1

    iget-object v4, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    add-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    aput-object v4, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_21
    iget p1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    return-void

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_2b
    return-void
.end method

.method public reset()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/SolverVariable;->mName:Ljava/lang/String;

    sget-object v0, Landroid/support/constraint/solver/SolverVariable$Type;->UNKNOWN:Landroid/support/constraint/solver/SolverVariable$Type;

    iput-object v0, p0, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->strength:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/solver/SolverVariable;->id:I

    iput v1, p0, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/solver/SolverVariable;->computedValue:F

    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/support/constraint/solver/SolverVariable;->mName:Ljava/lang/String;

    return-void
.end method

.method public setType(Landroid/support/constraint/solver/SolverVariable$Type;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    return-void
.end method

.method strengthsToString()Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v3, v0

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_17
    iget-object v6, p0, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    array-length v6, v6

    if-ge v0, v6, :cond_72

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    aget v3, v3, v0

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    aget v6, v6, v0

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3a

    const/4 v4, 0x0

    goto :goto_43

    :cond_3a
    iget-object v6, p0, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    aget v6, v6, v0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_43

    const/4 v4, 0x1

    :cond_43
    :goto_43
    iget-object v6, p0, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    aget v6, v6, v0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_4c

    const/4 v5, 0x0

    :cond_4c
    iget-object v6, p0, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    array-length v6, v6

    sub-int/2addr v6, v1

    if-ge v0, v6, :cond_64

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    :goto_5c
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_6f

    :cond_64
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    goto :goto_5c

    :goto_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_72
    if-eqz v4, :cond_85

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (-)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_85
    if-eqz v5, :cond_98

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (*)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_98
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/constraint/solver/SolverVariable;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final updateReferencesWithNewDefinition(Landroid/support/constraint/solver/ArrayRow;)V
    .registers 7

    iget v0, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_16

    iget-object v3, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v3, v3, v2

    iget-object v3, v3, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    iget-object v4, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4, p1, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->updateFromRow(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/ArrayRow;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_16
    iput v1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    return-void
.end method
