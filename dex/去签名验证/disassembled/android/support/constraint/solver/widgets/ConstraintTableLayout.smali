.class public Landroid/support/constraint/solver/widgets/ConstraintTableLayout;
.super Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;,
        Landroid/support/constraint/solver/widgets/ConstraintTableLayout$HorizontalSlice;
    }
.end annotation


# static fields
.field public static final ALIGN_CENTER:I = 0x0

.field private static final ALIGN_FULL:I = 0x3

.field public static final ALIGN_LEFT:I = 0x1

.field public static final ALIGN_RIGHT:I = 0x2


# instance fields
.field private mHorizontalGuidelines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/Guideline;",
            ">;"
        }
    .end annotation
.end field

.field private mHorizontalSlices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintTableLayout$HorizontalSlice;",
            ">;"
        }
    .end annotation
.end field

.field private mNumCols:I

.field private mNumRows:I

.field private mPadding:I

.field private mVerticalGrowth:Z

.field private mVerticalGuidelines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/Guideline;",
            ">;"
        }
    .end annotation
.end field

.field private mVerticalSlices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;",
            ">;"
        }
    .end annotation
.end field

.field private system:Landroid/support/constraint/solver/LinearSystem;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumRows:I

    const/16 v0, 0x8

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mPadding:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->system:Landroid/support/constraint/solver/LinearSystem;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>(II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumRows:I

    const/16 p1, 0x8

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mPadding:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->system:Landroid/support/constraint/solver/LinearSystem;

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumRows:I

    const/16 p1, 0x8

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mPadding:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->system:Landroid/support/constraint/solver/LinearSystem;

    return-void
.end method

.method private setChildrenConnections()V
    .registers 12

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v1, v0, :cond_d3

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getContainerItemSkip()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    rem-int v4, v2, v4

    iget v5, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    div-int v5, v2, v5

    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$HorizontalSlice;

    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;

    iget-object v6, v4, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->left:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v7, v4, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->right:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v8, v5, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$HorizontalSlice;->top:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$HorizontalSlice;->bottom:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    iget v10, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mPadding:I

    invoke-virtual {v9, v6, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    instance-of v6, v7, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v6, :cond_5e

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    :goto_54
    invoke-virtual {v7, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v7

    iget v9, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mPadding:I

    invoke-virtual {v6, v7, v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_67

    :cond_5e
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    goto :goto_54

    :goto_67
    iget v4, v4, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    packed-switch v4, :pswitch_data_d4

    goto :goto_9d

    :pswitch_6d
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_9d

    :pswitch_73
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->WEAK:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual {v4, v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->setStrength(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;)V

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    goto :goto_9a

    :pswitch_87
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual {v4, v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->setStrength(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;)V

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->WEAK:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    :goto_9a
    invoke-virtual {v4, v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->setStrength(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;)V

    :goto_9d
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    iget v7, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mPadding:I

    invoke-virtual {v4, v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    instance-of v4, v5, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v4, :cond_c4

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    :goto_ba
    invoke-virtual {v5, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    iget v5, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mPadding:I

    invoke-virtual {v3, v4, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_cd

    :cond_c4
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    goto :goto_ba

    :goto_cd
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8

    :cond_d3
    return-void

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_87
        :pswitch_73
        :pswitch_6d
    .end packed-switch
.end method

.method private setHorizontalSlices()V
    .registers 8

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumRows:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    const/4 v0, 0x0

    move-object v3, p0

    move v4, v1

    const/4 v2, 0x0

    :goto_f
    iget v5, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumRows:I

    if-ge v2, v5, :cond_44

    new-instance v5, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$HorizontalSlice;

    invoke-direct {v5, p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$HorizontalSlice;-><init>(Landroid/support/constraint/solver/widgets/ConstraintTableLayout;)V

    iput-object v3, v5, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$HorizontalSlice;->top:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v3, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumRows:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_38

    new-instance v3, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-direct {v3}, Landroid/support/constraint/solver/widgets/Guideline;-><init>()V

    invoke-virtual {v3, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setOrientation(I)V

    invoke-virtual {v3, p0}, Landroid/support/constraint/solver/widgets/Guideline;->setParent(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    float-to-int v6, v4

    invoke-virtual {v3, v6}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(I)V

    add-float/2addr v4, v1

    iput-object v3, v5, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$HorizontalSlice;->bottom:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    :cond_38
    iput-object p0, v5, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$HorizontalSlice;->bottom:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    :goto_3a
    iget-object v3, v5, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$HorizontalSlice;->bottom:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_44
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->updateDebugSolverNames()V

    return-void
.end method

.method private setVerticalSlices()V
    .registers 7

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    const/4 v0, 0x0

    move-object v2, p0

    move v3, v1

    :goto_e
    iget v4, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    if-ge v0, v4, :cond_43

    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;

    invoke-direct {v4, p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;-><init>(Landroid/support/constraint/solver/widgets/ConstraintTableLayout;)V

    iput-object v2, v4, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->left:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    if-ge v0, v2, :cond_37

    new-instance v2, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-direct {v2}, Landroid/support/constraint/solver/widgets/Guideline;-><init>()V

    invoke-virtual {v2, v5}, Landroid/support/constraint/solver/widgets/Guideline;->setOrientation(I)V

    invoke-virtual {v2, p0}, Landroid/support/constraint/solver/widgets/Guideline;->setParent(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    float-to-int v5, v3

    invoke-virtual {v2, v5}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(I)V

    add-float/2addr v3, v1

    iput-object v2, v4, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->right:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_37
    iput-object p0, v4, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->right:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    :goto_39
    iget-object v2, v4, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->right:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_43
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->updateDebugSolverNames()V

    return-void
.end method

.method private updateDebugSolverNames()V
    .registers 8

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->system:Landroid/support/constraint/solver/LinearSystem;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_37

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/Guideline;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->system:Landroid/support/constraint/solver/LinearSystem;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->getDebugName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".VG"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/support/constraint/solver/widgets/Guideline;->setDebugSolverName(Landroid/support/constraint/solver/LinearSystem;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_37
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3d
    if-ge v1, v0, :cond_67

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/Guideline;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->system:Landroid/support/constraint/solver/LinearSystem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->getDebugName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".HG"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/support/constraint/solver/widgets/Guideline;->setDebugSolverName(Landroid/support/constraint/solver/LinearSystem;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    :cond_67
    return-void
.end method


# virtual methods
.method public addToSolver(Landroid/support/constraint/solver/LinearSystem;)V
    .registers 10

    invoke-super {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addToSolver(Landroid/support/constraint/solver/LinearSystem;)V

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->setTableDimensions()V

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    if-ne p1, v1, :cond_6e

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1b
    const/4 v4, 0x1

    if-ge v3, v1, :cond_39

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v4, 0x0

    :goto_30
    invoke-virtual {v5, v4}, Landroid/support/constraint/solver/widgets/Guideline;->setPositionRelaxed(Z)V

    invoke-virtual {v5, p1}, Landroid/support/constraint/solver/widgets/Guideline;->addToSolver(Landroid/support/constraint/solver/LinearSystem;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_39
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_40
    if-ge v3, v1, :cond_5e

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_54

    const/4 v6, 0x1

    goto :goto_55

    :cond_54
    const/4 v6, 0x0

    :goto_55
    invoke-virtual {v5, v6}, Landroid/support/constraint/solver/widgets/Guideline;->setPositionRelaxed(Z)V

    invoke-virtual {v5, p1}, Landroid/support/constraint/solver/widgets/Guideline;->addToSolver(Landroid/support/constraint/solver/LinearSystem;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    :cond_5e
    :goto_5e
    if-ge v2, v0, :cond_6e

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v1, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->addToSolver(Landroid/support/constraint/solver/LinearSystem;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    :cond_6e
    return-void
.end method

.method public computeGuidelinesPercentPositions()V
    .registers 5

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_18

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/Guideline;->inferRelativePercentPosition()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_18
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1e
    if-ge v1, v0, :cond_2e

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/Guideline;->inferRelativePercentPosition()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_2e
    return-void
.end method

.method public cycleColumnAlignment(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;

    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_15

    :pswitch_e
    const/4 v0, 0x1

    goto :goto_13

    :pswitch_10
    const/4 v0, 0x0

    goto :goto_13

    :pswitch_12
    const/4 v0, 0x2

    :goto_13
    iput v0, p1, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    :goto_15
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->setChildrenConnections()V

    return-void

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_12
        :pswitch_10
        :pswitch_e
    .end packed-switch
.end method

.method public getColumnAlignmentRepresentation(I)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;

    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    const-string p1, "L"

    return-object p1

    :cond_10
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    if-nez v0, :cond_17

    const-string p1, "C"

    return-object p1

    :cond_17
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1f

    const-string p1, "F"

    return-object p1

    :cond_1f
    iget p1, p1, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_27

    const-string p1, "R"

    return-object p1

    :cond_27
    const-string p1, "!"

    return-object p1
.end method

.method public getColumnsAlignmentRepresentation()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_5c

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;

    iget v4, v3, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "L"

    :goto_22
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_59

    :cond_2a
    iget v4, v3, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    if-nez v4, :cond_39

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "C"

    goto :goto_22

    :cond_39
    iget v4, v3, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_49

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "F"

    goto :goto_22

    :cond_49
    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_59

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "R"

    goto :goto_22

    :cond_59
    :goto_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_5c
    return-object v1
.end method

.method public getHorizontalGuidelines()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/Guideline;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNumCols()I
    .registers 2

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    return v0
.end method

.method public getNumRows()I
    .registers 2

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumRows:I

    return v0
.end method

.method public getPadding()I
    .registers 2

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mPadding:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    const-string v0, "ConstraintTableLayout"

    return-object v0
.end method

.method public getVerticalGuidelines()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/Guideline;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    return-object v0
.end method

.method public handlesInternalConstraints()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isVerticalGrowth()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    return v0
.end method

.method public setColumnAlignment(II)V
    .registers 4

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;

    iput p2, p1, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->setChildrenConnections()V

    :cond_15
    return-void
.end method

.method public setColumnAlignment(Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_2b

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x4c

    if-ne v3, v4, :cond_15

    const/4 v3, 0x1

    :goto_11
    invoke-virtual {p0, v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->setColumnAlignment(II)V

    goto :goto_28

    :cond_15
    const/16 v4, 0x43

    if-eq v3, v4, :cond_25

    const/16 v4, 0x46

    if-ne v3, v4, :cond_1f

    const/4 v3, 0x3

    goto :goto_11

    :cond_1f
    const/16 v4, 0x52

    if-ne v3, v4, :cond_25

    const/4 v3, 0x2

    goto :goto_11

    :cond_25
    invoke-virtual {p0, v2, v1}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->setColumnAlignment(II)V

    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_2b
    return-void
.end method

.method public setDebugSolverName(Landroid/support/constraint/solver/LinearSystem;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->system:Landroid/support/constraint/solver/LinearSystem;

    invoke-super {p0, p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setDebugSolverName(Landroid/support/constraint/solver/LinearSystem;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->updateDebugSolverNames()V

    return-void
.end method

.method public setNumCols(I)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    if-eqz v0, :cond_10

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    if-eq v0, p1, :cond_10

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->setVerticalSlices()V

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->setTableDimensions()V

    :cond_10
    return-void
.end method

.method public setNumRows(I)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    if-nez v0, :cond_10

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    if-eq v0, p1, :cond_10

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumRows:I

    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->setHorizontalSlices()V

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->setTableDimensions()V

    :cond_10
    return-void
.end method

.method public setPadding(I)V
    .registers 3

    const/4 v0, 0x1

    if-le p1, v0, :cond_5

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mPadding:I

    :cond_5
    return-void
.end method

.method public setTableDimensions()V
    .registers 5

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v1, v0, :cond_1a

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getContainerItemSkip()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1a
    add-int/2addr v0, v2

    iget-boolean v1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_49

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    if-nez v1, :cond_27

    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->setNumCols(I)V

    :cond_27
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    div-int v1, v0, v1

    iget v3, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    mul-int v3, v3, v1

    if-ge v3, v0, :cond_33

    add-int/lit8 v1, v1, 0x1

    :cond_33
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumRows:I

    if-ne v0, v1, :cond_43

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_43

    return-void

    :cond_43
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumRows:I

    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->setHorizontalSlices()V

    goto :goto_71

    :cond_49
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumRows:I

    if-nez v1, :cond_50

    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->setNumRows(I)V

    :cond_50
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumRows:I

    div-int v1, v0, v1

    iget v3, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumRows:I

    mul-int v3, v3, v1

    if-ge v3, v0, :cond_5c

    add-int/lit8 v1, v1, 0x1

    :cond_5c
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    if-ne v0, v1, :cond_6c

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumRows:I

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_6c

    return-void

    :cond_6c
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->setVerticalSlices()V

    :goto_71
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->setChildrenConnections()V

    return-void
.end method

.method public setVerticalGrowth(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    return-void
.end method

.method public updateFromSolver(Landroid/support/constraint/solver/LinearSystem;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->updateFromSolver(Landroid/support/constraint/solver/LinearSystem;)V

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    if-ne p1, v0, :cond_35

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_1f

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-virtual {v3, p1}, Landroid/support/constraint/solver/widgets/Guideline;->updateFromSolver(Landroid/support/constraint/solver/LinearSystem;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1f
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_25
    if-ge v1, v0, :cond_35

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-virtual {v2, p1}, Landroid/support/constraint/solver/widgets/Guideline;->updateFromSolver(Landroid/support/constraint/solver/LinearSystem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_35
    return-void
.end method
