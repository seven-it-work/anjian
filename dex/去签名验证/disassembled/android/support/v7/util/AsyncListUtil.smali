.class public Landroid/support/v7/util/AsyncListUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/util/AsyncListUtil$ViewCallback;,
        Landroid/support/v7/util/AsyncListUtil$DataCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "AsyncListUtil"


# instance fields
.field mAllowScrollHints:Z

.field private final mBackgroundCallback:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/ThreadUtil$BackgroundCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mBackgroundProxy:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/ThreadUtil$BackgroundCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mDataCallback:Landroid/support/v7/util/AsyncListUtil$DataCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/AsyncListUtil$DataCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field mDisplayedGeneration:I

.field mItemCount:I

.field private final mMainThreadCallback:Landroid/support/v7/util/ThreadUtil$MainThreadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/ThreadUtil$MainThreadCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mMainThreadProxy:Landroid/support/v7/util/ThreadUtil$MainThreadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/ThreadUtil$MainThreadCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mMissingPositions:Landroid/util/SparseIntArray;

.field final mPrevRange:[I

.field mRequestedGeneration:I

.field private mScrollHint:I

.field final mTClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mTileList:Landroid/support/v7/util/TileList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/TileList<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mTileSize:I

.field final mTmpRange:[I

.field final mTmpRangeExtended:[I

.field final mViewCallback:Landroid/support/v7/util/AsyncListUtil$ViewCallback;


# direct methods
.method public constructor <init>(Ljava/lang/Class;ILandroid/support/v7/util/AsyncListUtil$DataCallback;Landroid/support/v7/util/AsyncListUtil$ViewCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I",
            "Landroid/support/v7/util/AsyncListUtil$DataCallback<",
            "TT;>;",
            "Landroid/support/v7/util/AsyncListUtil$ViewCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v7/util/AsyncListUtil;->mPrevRange:[I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRangeExtended:[I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/util/AsyncListUtil;->mScrollHint:I

    iput v0, p0, Landroid/support/v7/util/AsyncListUtil;->mItemCount:I

    iput v0, p0, Landroid/support/v7/util/AsyncListUtil;->mDisplayedGeneration:I

    iget v0, p0, Landroid/support/v7/util/AsyncListUtil;->mDisplayedGeneration:I

    iput v0, p0, Landroid/support/v7/util/AsyncListUtil;->mRequestedGeneration:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/support/v7/util/AsyncListUtil$1;

    invoke-direct {v0, p0}, Landroid/support/v7/util/AsyncListUtil$1;-><init>(Landroid/support/v7/util/AsyncListUtil;)V

    iput-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mMainThreadCallback:Landroid/support/v7/util/ThreadUtil$MainThreadCallback;

    new-instance v0, Landroid/support/v7/util/AsyncListUtil$2;

    invoke-direct {v0, p0}, Landroid/support/v7/util/AsyncListUtil$2;-><init>(Landroid/support/v7/util/AsyncListUtil;)V

    iput-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mBackgroundCallback:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    iput-object p1, p0, Landroid/support/v7/util/AsyncListUtil;->mTClass:Ljava/lang/Class;

    iput p2, p0, Landroid/support/v7/util/AsyncListUtil;->mTileSize:I

    iput-object p3, p0, Landroid/support/v7/util/AsyncListUtil;->mDataCallback:Landroid/support/v7/util/AsyncListUtil$DataCallback;

    iput-object p4, p0, Landroid/support/v7/util/AsyncListUtil;->mViewCallback:Landroid/support/v7/util/AsyncListUtil$ViewCallback;

    new-instance p1, Landroid/support/v7/util/TileList;

    iget p2, p0, Landroid/support/v7/util/AsyncListUtil;->mTileSize:I

    invoke-direct {p1, p2}, Landroid/support/v7/util/TileList;-><init>(I)V

    iput-object p1, p0, Landroid/support/v7/util/AsyncListUtil;->mTileList:Landroid/support/v7/util/TileList;

    new-instance p1, Landroid/support/v7/util/MessageThreadUtil;

    invoke-direct {p1}, Landroid/support/v7/util/MessageThreadUtil;-><init>()V

    iget-object p2, p0, Landroid/support/v7/util/AsyncListUtil;->mMainThreadCallback:Landroid/support/v7/util/ThreadUtil$MainThreadCallback;

    invoke-interface {p1, p2}, Landroid/support/v7/util/ThreadUtil;->getMainThreadProxy(Landroid/support/v7/util/ThreadUtil$MainThreadCallback;)Landroid/support/v7/util/ThreadUtil$MainThreadCallback;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/util/AsyncListUtil;->mMainThreadProxy:Landroid/support/v7/util/ThreadUtil$MainThreadCallback;

    iget-object p2, p0, Landroid/support/v7/util/AsyncListUtil;->mBackgroundCallback:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    invoke-interface {p1, p2}, Landroid/support/v7/util/ThreadUtil;->getBackgroundProxy(Landroid/support/v7/util/ThreadUtil$BackgroundCallback;)Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/util/AsyncListUtil;->mBackgroundProxy:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    invoke-virtual {p0}, Landroid/support/v7/util/AsyncListUtil;->refresh()V

    return-void
.end method

.method private isRefreshPending()Z
    .registers 3

    iget v0, p0, Landroid/support/v7/util/AsyncListUtil;->mRequestedGeneration:I

    iget v1, p0, Landroid/support/v7/util/AsyncListUtil;->mDisplayedGeneration:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_1c

    iget v0, p0, Landroid/support/v7/util/AsyncListUtil;->mItemCount:I

    if-lt p1, v0, :cond_7

    goto :goto_1c

    :cond_7
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mTileList:Landroid/support/v7/util/TileList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/TileList;->getItemAt(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1b

    invoke-direct {p0}, Landroid/support/v7/util/AsyncListUtil;->isRefreshPending()Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, p0, Landroid/support/v7/util/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1b
    return-object v0

    :cond_1c
    :goto_1c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not within 0 and "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroid/support/v7/util/AsyncListUtil;->mItemCount:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getItemCount()I
    .registers 2

    iget v0, p0, Landroid/support/v7/util/AsyncListUtil;->mItemCount:I

    return v0
.end method

.method varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    const-string v0, "AsyncListUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MAIN] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRangeChanged()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v7/util/AsyncListUtil;->isRefreshPending()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/util/AsyncListUtil;->updateRange()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/util/AsyncListUtil;->mAllowScrollHints:Z

    return-void
.end method

.method public refresh()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mBackgroundProxy:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    iget v1, p0, Landroid/support/v7/util/AsyncListUtil;->mRequestedGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/v7/util/AsyncListUtil;->mRequestedGeneration:I

    invoke-interface {v0, v1}, Landroid/support/v7/util/ThreadUtil$BackgroundCallback;->refresh(I)V

    return-void
.end method

.method updateRange()V
    .registers 11

    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mViewCallback:Landroid/support/v7/util/AsyncListUtil$ViewCallback;

    iget-object v1, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    invoke-virtual {v0, v1}, Landroid/support/v7/util/AsyncListUtil$ViewCallback;->getItemRangeInto([I)V

    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-gt v0, v2, :cond_b6

    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    aget v0, v0, v1

    if-gez v0, :cond_1a

    return-void

    :cond_1a
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    aget v0, v0, v3

    iget v2, p0, Landroid/support/v7/util/AsyncListUtil;->mItemCount:I

    if-lt v0, v2, :cond_23

    return-void

    :cond_23
    iget-boolean v0, p0, Landroid/support/v7/util/AsyncListUtil;->mAllowScrollHints:Z

    if-nez v0, :cond_2a

    :cond_27
    :goto_27
    iput v1, p0, Landroid/support/v7/util/AsyncListUtil;->mScrollHint:I

    goto :goto_59

    :cond_2a
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    aget v0, v0, v1

    iget-object v2, p0, Landroid/support/v7/util/AsyncListUtil;->mPrevRange:[I

    aget v2, v2, v3

    if-gt v0, v2, :cond_27

    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mPrevRange:[I

    aget v0, v0, v1

    iget-object v2, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    aget v2, v2, v3

    if-le v0, v2, :cond_3f

    goto :goto_27

    :cond_3f
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    aget v0, v0, v1

    iget-object v2, p0, Landroid/support/v7/util/AsyncListUtil;->mPrevRange:[I

    aget v2, v2, v1

    if-ge v0, v2, :cond_4c

    iput v3, p0, Landroid/support/v7/util/AsyncListUtil;->mScrollHint:I

    goto :goto_59

    :cond_4c
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    aget v0, v0, v1

    iget-object v2, p0, Landroid/support/v7/util/AsyncListUtil;->mPrevRange:[I

    aget v2, v2, v1

    if-le v0, v2, :cond_59

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/util/AsyncListUtil;->mScrollHint:I

    :cond_59
    :goto_59
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mPrevRange:[I

    iget-object v2, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    aget v2, v2, v1

    aput v2, v0, v1

    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mPrevRange:[I

    iget-object v2, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    aget v2, v2, v3

    aput v2, v0, v3

    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mViewCallback:Landroid/support/v7/util/AsyncListUtil$ViewCallback;

    iget-object v2, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    iget-object v4, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRangeExtended:[I

    iget v5, p0, Landroid/support/v7/util/AsyncListUtil;->mScrollHint:I

    invoke-virtual {v0, v2, v4, v5}, Landroid/support/v7/util/AsyncListUtil$ViewCallback;->extendRangeInto([I[II)V

    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRangeExtended:[I

    iget-object v2, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    aget v2, v2, v1

    iget-object v4, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRangeExtended:[I

    aget v4, v4, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRangeExtended:[I

    iget-object v2, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    aget v2, v2, v3

    iget-object v4, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRangeExtended:[I

    aget v4, v4, v3

    iget v5, p0, Landroid/support/v7/util/AsyncListUtil;->mItemCount:I

    sub-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v0, v3

    iget-object v4, p0, Landroid/support/v7/util/AsyncListUtil;->mBackgroundProxy:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    aget v5, v0, v1

    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    aget v6, v0, v3

    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRangeExtended:[I

    aget v7, v0, v1

    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRangeExtended:[I

    aget v8, v0, v3

    iget v9, p0, Landroid/support/v7/util/AsyncListUtil;->mScrollHint:I

    invoke-interface/range {v4 .. v9}, Landroid/support/v7/util/ThreadUtil$BackgroundCallback;->updateRange(IIIII)V

    :cond_b6
    return-void
.end method
