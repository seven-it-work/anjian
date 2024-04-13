.class public Landroid/support/constraint/solver/widgets/ConstraintAnchor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;,
        Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;,
        Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    }
.end annotation


# static fields
.field private static final ALLOW_BINARY:Z = false

.field public static final AUTO_CONSTRAINT_CREATOR:I = 0x2

.field public static final SCOUT_CREATOR:I = 0x1

.field private static final UNSET_GONE_MARGIN:I = -0x1

.field public static final USER_CREATOR:I


# instance fields
.field private mConnectionCreator:I

.field private mConnectionType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

.field mGoneMargin:I

.field public mMargin:I

.field final mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field private mResolutionAnchor:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

.field mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

.field private mStrength:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

.field mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field final mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-direct {v0, p0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mResolutionAnchor:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->NONE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    iput-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mStrength:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;->RELAXED:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    iput-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mConnectionType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object p2, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    return-void
.end method

.method private isConnectionToMe(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/util/HashSet;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            "Ljava/util/HashSet<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_13

    return v2

    :cond_13
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchors()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v0, :cond_42

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4, p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isSimilarDimensionConnection(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnectionToMe(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/util/HashSet;)Z

    move-result v4

    if-eqz v4, :cond_3f

    return v2

    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_42
    return v1
.end method


# virtual methods
.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z
    .registers 10

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    move-result p1

    return p1
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z
    .registers 11

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/4 v3, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    move-result p1

    return p1
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_14

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    sget-object p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->NONE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mStrength:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/4 p1, 0x2

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    return v0

    :cond_14
    if-nez p6, :cond_1d

    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isValidConnection(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Z

    move-result p6

    if-nez p6, :cond_1d

    return v1

    :cond_1d
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-lez p2, :cond_24

    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    goto :goto_26

    :cond_24
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    :goto_26
    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    iput-object p4, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mStrength:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    iput p5, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    return v0
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)Z
    .registers 12

    const/4 v3, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    move-result p1

    return p1
.end method

.method public getConnectionCreator()I
    .registers 2

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    return v0
.end method

.method public getConnectionType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;
    .registers 2

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mConnectionType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    return-object v0
.end method

.method public getMargin()I
    .registers 3

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    if-ltz v0, :cond_21

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_21

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    return v0

    :cond_21
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    return v0
.end method

.method public final getOpposite()Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .registers 3

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_19
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    :pswitch_1e
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    :pswitch_23
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    :pswitch_28
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    :pswitch_2d
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_28
        :pswitch_23
        :pswitch_1e
        :pswitch_19
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method

.method public getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .registers 2

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method public getPriorityLevel()I
    .registers 4

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_20

    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_1b
    return v1

    :pswitch_1c
    const/4 v0, 0x1

    return v0

    :pswitch_1e
    return v2

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method public getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .registers 2

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mResolutionAnchor:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    return-object v0
.end method

.method public getSnapPriorityLevel()I
    .registers 4

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_24

    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_1b
    return v2

    :pswitch_1c
    return v1

    :pswitch_1d
    return v2

    :pswitch_1e
    const/4 v0, 0x2

    return v0

    :pswitch_20
    return v2

    :pswitch_21
    return v1

    :pswitch_22
    const/4 v0, 0x3

    return v0

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_22
        :pswitch_21
        :pswitch_21
        :pswitch_20
        :pswitch_20
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch
.end method

.method public getSolverVariable()Landroid/support/constraint/solver/SolverVariable;
    .registers 2

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    return-object v0
.end method

.method public getStrength()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;
    .registers 2

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mStrength:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    return-object v0
.end method

.method public getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .registers 2

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0
.end method

.method public getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    .registers 2

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    return-object v0
.end method

.method public isConnected()Z
    .registers 2

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isConnectionAllowed(Landroid/support/constraint/solver/widgets/ConstraintWidget;)Z
    .registers 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnectionToMe(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/util/HashSet;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    return v1

    :cond_d
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_19

    return v2

    :cond_19
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object p1

    if-ne p1, v0, :cond_20

    return v2

    :cond_20
    return v1
.end method

.method public isConnectionAllowed(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Z
    .registers 3

    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnectionAllowed(Landroid/support/constraint/solver/widgets/ConstraintWidget;)Z

    move-result p1

    return p1
.end method

.method public isSideAnchor()Z
    .registers 3

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_19
    const/4 v0, 0x1

    return v0

    :pswitch_1b
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method public isSimilarDimensionConnection(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object p1

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_a

    return v1

    :cond_a
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_4e

    new-instance p1, Ljava/lang/AssertionError;

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_24
    return v2

    :pswitch_25
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq p1, v0, :cond_37

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq p1, v0, :cond_37

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq p1, v0, :cond_37

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne p1, v0, :cond_36

    return v1

    :cond_36
    return v2

    :cond_37
    return v1

    :pswitch_38
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq p1, v0, :cond_46

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq p1, v0, :cond_46

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne p1, v0, :cond_45

    return v1

    :cond_45
    return v2

    :cond_46
    return v1

    :pswitch_47
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq p1, v0, :cond_4c

    return v1

    :cond_4c
    return v2

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_47
        :pswitch_38
        :pswitch_38
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_38
        :pswitch_25
        :pswitch_24
    .end packed-switch
.end method

.method public isSnapCompatibleWith(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Z
    .registers 7

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    return v2

    :cond_8
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_12

    return v3

    :cond_12
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x7

    const/16 v4, 0x8

    packed-switch v0, :pswitch_data_9e

    new-instance p1, Ljava/lang/AssertionError;

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_2e
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_b4

    return v2

    :pswitch_3e
    return v3

    :pswitch_3f
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_bc

    return v2

    :pswitch_4f
    return v3

    :pswitch_50
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_62

    if-eq p1, v4, :cond_62

    return v2

    :cond_62
    return v3

    :pswitch_63
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_75

    if-eq p1, v4, :cond_75

    return v2

    :cond_75
    return v3

    :pswitch_76
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_88

    if-eq p1, v1, :cond_88

    return v2

    :cond_88
    return v3

    :pswitch_89
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_9b

    if-eq p1, v1, :cond_9b

    return v2

    :cond_9b
    return v3

    :pswitch_9c
    return v2

    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_9c
        :pswitch_89
        :pswitch_76
        :pswitch_63
        :pswitch_50
        :pswitch_9c
        :pswitch_3f
        :pswitch_2e
        :pswitch_9c
    .end packed-switch

    :pswitch_data_b4
    .packed-switch 0x4
        :pswitch_3e
        :pswitch_3e
    .end packed-switch

    :pswitch_data_bc
    .packed-switch 0x2
        :pswitch_4f
        :pswitch_4f
    .end packed-switch
.end method

.method public isValidConnection(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v1

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_29

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, v2, :cond_28

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result p1

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result p1

    if-nez p1, :cond_28

    :cond_27
    return v0

    :cond_28
    return v3

    :cond_29
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_90

    new-instance p1, Ljava/lang/AssertionError;

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_42
    return v0

    :pswitch_43
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, v2, :cond_4e

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, v2, :cond_4c

    goto :goto_4e

    :cond_4c
    const/4 v2, 0x0

    goto :goto_4f

    :cond_4e
    :goto_4e
    const/4 v2, 0x1

    :goto_4f
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object p1

    instance-of p1, p1, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz p1, :cond_61

    if-nez v2, :cond_60

    sget-object p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, p1, :cond_5e

    goto :goto_60

    :cond_5e
    const/4 v2, 0x0

    return v2

    :cond_60
    :goto_60
    const/4 v2, 0x1

    :cond_61
    return v2

    :pswitch_62
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, v2, :cond_6d

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, v2, :cond_6b

    goto :goto_6d

    :cond_6b
    const/4 v2, 0x0

    goto :goto_6e

    :cond_6d
    :goto_6d
    const/4 v2, 0x1

    :goto_6e
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object p1

    instance-of p1, p1, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz p1, :cond_80

    if-nez v2, :cond_7f

    sget-object p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, p1, :cond_7d

    goto :goto_7f

    :cond_7d
    const/4 v2, 0x0

    return v2

    :cond_7f
    :goto_7f
    const/4 v2, 0x1

    :cond_80
    return v2

    :pswitch_81
    sget-object p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, p1, :cond_8e

    sget-object p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, p1, :cond_8e

    sget-object p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, p1, :cond_8e

    return v3

    :cond_8e
    return v0

    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_81
        :pswitch_62
        :pswitch_62
        :pswitch_43
        :pswitch_43
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
    .end packed-switch
.end method

.method public isVerticalAnchor()Z
    .registers 3

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_19
    const/4 v0, 0x1

    return v0

    :pswitch_1b
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_1b
        :pswitch_19
        :pswitch_19
    .end packed-switch
.end method

.method public reset()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    iput-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mStrength:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;->RELAXED:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mConnectionType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mResolutionAnchor:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->reset()V

    return-void
.end method

.method public resetSolverVariable(Landroid/support/constraint/solver/Cache;)V
    .registers 4

    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    if-nez p1, :cond_f

    new-instance p1, Landroid/support/constraint/solver/SolverVariable;

    sget-object v0, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/support/constraint/solver/SolverVariable;-><init>(Landroid/support/constraint/solver/SolverVariable$Type;Ljava/lang/String;)V

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    return-void

    :cond_f
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1}, Landroid/support/constraint/solver/SolverVariable;->reset()V

    return-void
.end method

.method public setConnectionCreator(I)V
    .registers 2

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    return-void
.end method

.method public setConnectionType(Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;)V
    .registers 2

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mConnectionType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    return-void
.end method

.method public setGoneMargin(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    :cond_8
    return-void
.end method

.method public setMargin(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    :cond_8
    return-void
.end method

.method public setStrength(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;)V
    .registers 3

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mStrength:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    :cond_8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
