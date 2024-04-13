.class Landroid/support/v7/widget/AdapterHelper;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/OpReorderer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/AdapterHelper$Callback;,
        Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final POSITION_TYPE_INVISIBLE:I = 0x0

.field static final POSITION_TYPE_NEW_OR_LAID_OUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AHT"


# instance fields
.field final mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

.field final mDisableRecycler:Z

.field private mExistingUpdateTypes:I

.field mOnItemProcessedCallback:Ljava/lang/Runnable;

.field final mOpReorderer:Landroid/support/v7/widget/OpReorderer;

.field final mPendingUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field final mPostponedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateOpPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v7/widget/AdapterHelper$Callback;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AdapterHelper;-><init>(Landroid/support/v7/widget/AdapterHelper$Callback;Z)V

    return-void
.end method

.method constructor <init>(Landroid/support/v7/widget/AdapterHelper$Callback;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/util/Pools$SimplePool;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mUpdateOpPool:Landroid/support/v4/util/Pools$Pool;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    iput-object p1, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iput-boolean p2, p0, Landroid/support/v7/widget/AdapterHelper;->mDisableRecycler:Z

    new-instance p1, Landroid/support/v7/widget/OpReorderer;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/OpReorderer;-><init>(Landroid/support/v7/widget/OpReorderer$Callback;)V

    iput-object p1, p0, Landroid/support/v7/widget/AdapterHelper;->mOpReorderer:Landroid/support/v7/widget/OpReorderer;

    return-void
.end method

.method private applyAdd(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    return-void
.end method

.method private applyMove(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    return-void
.end method

.method private applyRemove(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 12

    iget v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_d
    const/4 v6, 0x0

    const/4 v7, 0x2

    if-ge v2, v1, :cond_47

    iget-object v8, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v8, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->findViewHolder(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v8

    const/4 v9, 0x1

    if-nez v8, :cond_2f

    invoke-direct {p0, v2}, Landroid/support/v7/widget/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v8

    if-eqz v8, :cond_21

    goto :goto_2f

    :cond_21
    if-ne v5, v9, :cond_2c

    invoke-virtual {p0, v7, v0, v4, v6}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    const/4 v5, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v5, 0x0

    :goto_2d
    const/4 v6, 0x0

    goto :goto_3c

    :cond_2f
    :goto_2f
    if-nez v5, :cond_3a

    invoke-virtual {p0, v7, v0, v4, v6}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/support/v7/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    const/4 v5, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v5, 0x0

    :goto_3b
    const/4 v6, 0x1

    :goto_3c
    if-eqz v5, :cond_42

    sub-int/2addr v2, v4

    sub-int/2addr v1, v4

    const/4 v4, 0x1

    goto :goto_44

    :cond_42
    add-int/lit8 v4, v4, 0x1

    :goto_44
    add-int/2addr v2, v9

    move v5, v6

    goto :goto_d

    :cond_47
    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v4, v1, :cond_52

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    invoke-virtual {p0, v7, v0, v4, v6}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    :cond_52
    if-nez v5, :cond_58

    invoke-direct {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    return-void

    :cond_58
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    return-void
.end method

.method private applyUpdate(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 11

    iget v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    move v5, v0

    const/4 v0, 0x0

    :goto_d
    const/4 v6, 0x4

    if-ge v2, v1, :cond_41

    iget-object v7, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v7, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->findViewHolder(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    const/4 v8, 0x1

    if-nez v7, :cond_2f

    invoke-direct {p0, v2}, Landroid/support/v7/widget/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v7

    if-eqz v7, :cond_20

    goto :goto_2f

    :cond_20
    if-ne v4, v8, :cond_2d

    iget-object v4, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v6, v5, v0, v4}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    move v5, v2

    const/4 v0, 0x0

    :cond_2d
    const/4 v4, 0x0

    goto :goto_3d

    :cond_2f
    :goto_2f
    if-nez v4, :cond_3c

    iget-object v4, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v6, v5, v0, v4}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    move v5, v2

    const/4 v0, 0x0

    :cond_3c
    const/4 v4, 0x1

    :goto_3d
    add-int/2addr v0, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_41
    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v0, v1, :cond_4e

    iget-object v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    invoke-virtual {p0, v6, v5, v0, v1}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    :cond_4e
    if-nez v4, :cond_54

    invoke-direct {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    return-void

    :cond_54
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    return-void
.end method

.method private canFindInPreLayout(I)Z
    .registers 9

    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_40

    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    iget v4, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-ne v4, v5, :cond_24

    iget v3, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v3

    if-ne v3, p1, :cond_3d

    return v6

    :cond_24
    iget v4, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v4, v6, :cond_3d

    iget v4, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v4, v5

    iget v3, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    :goto_2f
    if-ge v3, v4, :cond_3d

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v3, v5}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v5

    if-ne v5, p1, :cond_3a

    return v6

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_40
    return v1
.end method

.method private dispatchAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 14

    iget v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8c

    iget v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_d

    goto/16 :goto_8c

    :cond_d
    iget v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v0

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eq v3, v4, :cond_36

    if-eq v3, v5, :cond_34

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "op should be remove or update."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    const/4 v3, 0x1

    goto :goto_37

    :cond_36
    const/4 v3, 0x0

    :goto_37
    move v7, v0

    move v8, v2

    const/4 v0, 0x1

    const/4 v2, 0x1

    :goto_3b
    iget v9, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v0, v9, :cond_78

    iget v9, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    mul-int v10, v3, v0

    add-int/2addr v9, v10

    iget v10, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v9, v10}, Landroid/support/v7/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v9

    iget v10, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-eq v10, v4, :cond_58

    if-eq v10, v5, :cond_52

    :cond_50
    const/4 v10, 0x0

    goto :goto_5b

    :cond_52
    add-int/lit8 v10, v7, 0x1

    if-ne v9, v10, :cond_50

    :goto_56
    const/4 v10, 0x1

    goto :goto_5b

    :cond_58
    if-ne v9, v7, :cond_50

    goto :goto_56

    :goto_5b
    if-eqz v10, :cond_60

    add-int/lit8 v2, v2, 0x1

    goto :goto_75

    :cond_60
    iget v10, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    iget-object v11, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v10, v7, v2, v11}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v7

    invoke-virtual {p0, v7, v8}, Landroid/support/v7/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;I)V

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    iget v7, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v7, v5, :cond_73

    add-int/2addr v8, v2

    :cond_73
    move v7, v9

    const/4 v2, 0x1

    :goto_75
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    :cond_78
    iget-object v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    if-lez v2, :cond_8b

    iget p1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-virtual {p0, p1, v7, v2, v0}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    invoke-virtual {p0, p1, v8}, Landroid/support/v7/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;I)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    :cond_8b
    return-void

    :cond_8c
    :goto_8c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "should not dispatch add or move for pre layout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_43

    const/16 v1, 0x8

    if-eq v0, v1, :cond_39

    packed-switch v0, :pswitch_data_50

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown update op type for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_25
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, p1}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForRemovingLaidOutOrNewView(II)V

    return-void

    :pswitch_2f
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, p1}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    return-void

    :cond_39
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, p1}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    return-void

    :cond_43
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object p1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p1}, Landroid/support/v7/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    return-void

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_25
    .end packed-switch
.end method

.method private updatePositionWithPostponed(II)I
    .registers 9

    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    const/16 v2, 0x8

    if-ltz v0, :cond_94

    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    iget v4, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v5, 0x2

    if-ne v4, v2, :cond_6e

    iget v2, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v2, v4, :cond_24

    iget v2, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_28

    :cond_24
    iget v2, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    :goto_28
    if-lt p1, v2, :cond_52

    if-gt p1, v4, :cond_52

    iget v4, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v2, v4, :cond_41

    if-ne p2, v1, :cond_38

    iget v2, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v2, v1

    :goto_35
    iput v2, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_3e

    :cond_38
    if-ne p2, v5, :cond_3e

    iget v2, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v2, v1

    goto :goto_35

    :cond_3e
    :goto_3e
    add-int/lit8 p1, p1, 0x1

    goto :goto_90

    :cond_41
    if-ne p2, v1, :cond_49

    iget v2, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v2, v1

    :goto_46
    iput v2, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_4f

    :cond_49
    if-ne p2, v5, :cond_4f

    iget v2, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v2, v1

    goto :goto_46

    :cond_4f
    :goto_4f
    add-int/lit8 p1, p1, -0x1

    goto :goto_90

    :cond_52
    iget v2, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge p1, v2, :cond_90

    if-ne p2, v1, :cond_61

    iget v2, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v2, v1

    iput v2, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v2, v1

    goto :goto_6b

    :cond_61
    if-ne p2, v5, :cond_90

    iget v2, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v2, v1

    iput v2, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v2, v1

    :goto_6b
    iput v2, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_90

    :cond_6e
    iget v2, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v2, p1, :cond_82

    iget v2, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v2, v1, :cond_7a

    iget v2, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v2

    goto :goto_90

    :cond_7a
    iget v2, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v2, v5, :cond_90

    iget v2, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v2

    goto :goto_90

    :cond_82
    if-ne p2, v1, :cond_8a

    iget v2, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v2, v1

    :goto_87
    iput v2, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_90

    :cond_8a
    if-ne p2, v5, :cond_90

    iget v2, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v2, v1

    goto :goto_87

    :cond_90
    :goto_90
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8

    :cond_94
    iget-object p2, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_9b
    if-ltz p2, :cond_c4

    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    iget v1, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v1, v2, :cond_bc

    iget v1, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-eq v1, v3, :cond_b3

    iget v1, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gez v1, :cond_c1

    :cond_b3
    :goto_b3
    iget-object v1, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_c1

    :cond_bc
    iget v1, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gtz v1, :cond_c1

    goto :goto_b3

    :cond_c1
    :goto_c1
    add-int/lit8 p2, p2, -0x1

    goto :goto_9b

    :cond_c4
    return p1
.end method


# virtual methods
.method varargs addUpdateOp([Landroid/support/v7/widget/AdapterHelper$UpdateOp;)Landroid/support/v7/widget/AdapterHelper;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public applyPendingUpdatesToPosition(I)I
    .registers 7

    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_4a

    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_34

    packed-switch v3, :pswitch_data_4c

    goto :goto_47

    :pswitch_1b
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_47

    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v4

    if-le v3, p1, :cond_28

    const/4 p1, -0x1

    return p1

    :cond_28
    iget v2, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v2

    goto :goto_47

    :pswitch_2c
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_47

    iget v2, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v2

    goto :goto_47

    :cond_34
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, p1, :cond_3b

    iget p1, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_47

    :cond_3b
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v3, p1, :cond_41

    add-int/lit8 p1, p1, -0x1

    :cond_41
    iget v2, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v2, p1, :cond_47

    add-int/lit8 p1, p1, 0x1

    :cond_47
    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_4a
    return p1

    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_1b
    .end packed-switch
.end method

.method consumePostponedUpdates()V
    .registers 6

    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_1a

    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget-object v4, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    invoke-interface {v3, v4}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1a
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    iput v1, p0, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    return-void
.end method

.method consumeUpdatesInOnePass()V
    .registers 8

    invoke-virtual {p0}, Landroid/support/v7/widget/AdapterHelper;->consumePostponedUpdates()V

    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_6b

    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    iget v4, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_4f

    const/16 v5, 0x8

    if-eq v4, v5, :cond_40

    packed-switch v4, :pswitch_data_74

    goto :goto_5f

    :pswitch_22
    iget-object v4, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v4, v3}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    iget-object v4, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v4, v5, v3}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    goto :goto_5f

    :pswitch_31
    iget-object v4, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v4, v3}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    iget-object v4, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v4, v5, v3}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    goto :goto_5f

    :cond_40
    iget-object v4, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v4, v3}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    iget-object v4, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v4, v5, v3}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_5f

    :cond_4f
    iget-object v4, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v4, v3}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    iget-object v4, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v5, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v3, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v3}, Landroid/support/v7/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    :goto_5f
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_68

    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_6b
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    iput v1, p0, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    return-void

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_31
        :pswitch_22
    .end packed-switch
.end method

.method dispatchFirstPassAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;I)V
    .registers 5

    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchFirstPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    iget v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "only remove and update ops can be dispatched in first pass"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object p1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v0, p2, v1, p1}, Landroid/support/v7/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    return-void

    :cond_1f
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget p1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, p2, p1}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    return-void
.end method

.method findPositionOffset(I)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(II)I

    move-result p1

    return p1
.end method

.method findPositionOffset(II)I
    .registers 7

    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_6
    if-ge p2, v0, :cond_4b

    iget-object v1, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    iget v2, v1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2a

    iget v2, v1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v2, p1, :cond_1d

    iget p1, v1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_48

    :cond_1d
    iget v2, v1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v2, p1, :cond_23

    add-int/lit8 p1, p1, -0x1

    :cond_23
    iget v1, v1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v1, p1, :cond_48

    add-int/lit8 p1, p1, 0x1

    goto :goto_48

    :cond_2a
    iget v2, v1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v2, p1, :cond_48

    iget v2, v1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_40

    iget v2, v1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, v1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_3c

    const/4 p1, -0x1

    return p1

    :cond_3c
    iget v1, v1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v1

    goto :goto_48

    :cond_40
    iget v2, v1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_48

    iget v1, v1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v1

    :cond_48
    :goto_48
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_4b
    return p1
.end method

.method hasAnyUpdateTypes(I)Z
    .registers 3

    iget v0, p0, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    return p1

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method hasPendingUpdates()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method hasUpdates()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .registers 6

    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mUpdateOpPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    if-nez v0, :cond_10

    new-instance v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/AdapterHelper$UpdateOp;-><init>(IIILjava/lang/Object;)V

    return-object v0

    :cond_10
    iput p1, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    iput p2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iput p3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iput-object p4, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    return-object v0
.end method

.method onItemRangeChanged(IILjava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    if-gtz p2, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-virtual {p0, v2, p1, p2, p3}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr p1, v2

    iput p1, p0, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    iget-object p1, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1d

    return p2

    :cond_1d
    return v0
.end method

.method onItemRangeInserted(II)Z
    .registers 7

    const/4 v0, 0x0

    if-gtz p2, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v3, p1, p2, v2}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr p1, v3

    iput p1, p0, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    iget-object p1, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v3, :cond_1d

    return v3

    :cond_1d
    return v0
.end method

.method onItemRangeMoved(III)Z
    .registers 8

    const/4 v0, 0x0

    if-ne p1, p2, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-eq p3, v1, :cond_f

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Moving more than 1 item is not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    iget-object p3, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {p0, v3, p1, p2, v2}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr p1, v3

    iput p1, p0, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    iget-object p1, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_29

    return v1

    :cond_29
    return v0
.end method

.method onItemRangeRemoved(II)Z
    .registers 7

    const/4 v0, 0x0

    if-gtz p2, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0, v3, p1, p2, v2}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr p1, v3

    iput p1, p0, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    iget-object p1, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1e

    return p2

    :cond_1e
    return v0
.end method

.method preProcess()V
    .registers 6

    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mOpReorderer:Landroid/support/v7/widget/OpReorderer;

    iget-object v1, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/OpReorderer;->reorderOps(Ljava/util/List;)V

    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_40

    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_31

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2d

    packed-switch v3, :pswitch_data_46

    goto :goto_34

    :pswitch_25
    invoke-direct {p0, v2}, Landroid/support/v7/widget/AdapterHelper;->applyRemove(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_34

    :pswitch_29
    invoke-direct {p0, v2}, Landroid/support/v7/widget/AdapterHelper;->applyAdd(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_34

    :cond_2d
    invoke-direct {p0, v2}, Landroid/support/v7/widget/AdapterHelper;->applyMove(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_34

    :cond_31
    invoke-direct {p0, v2}, Landroid/support/v7/widget/AdapterHelper;->applyUpdate(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    :goto_34
    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_3d

    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_40
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_29
        :pswitch_25
    .end packed-switch
.end method

.method public recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v7/widget/AdapterHelper;->mDisableRecycler:Z

    if-nez v0, :cond_c

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mUpdateOpPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_c
    return-void
.end method

.method recycleUpdateOpsAndClearList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_13

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method reset()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    return-void
.end method
