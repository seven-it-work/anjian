.class public Landroid/support/v4/widget/ContentLoadingProgressBar;
.super Landroid/widget/ProgressBar;


# static fields
.field private static final MIN_DELAY:I = 0x1f4

.field private static final MIN_SHOW_TIME:I = 0x1f4


# instance fields
.field private final mDelayedHide:Ljava/lang/Runnable;

.field private final mDelayedShow:Ljava/lang/Runnable;

.field mDismissed:Z

.field mPostedHide:Z

.field mPostedShow:Z

.field mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/ContentLoadingProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mStartTime:J

    iput-boolean v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mPostedHide:Z

    iput-boolean v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mPostedShow:Z

    iput-boolean v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDismissed:Z

    new-instance p1, Landroid/support/v4/widget/ContentLoadingProgressBar$1;

    invoke-direct {p1, p0}, Landroid/support/v4/widget/ContentLoadingProgressBar$1;-><init>(Landroid/support/v4/widget/ContentLoadingProgressBar;)V

    iput-object p1, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    new-instance p1, Landroid/support/v4/widget/ContentLoadingProgressBar$2;

    invoke-direct {p1, p0}, Landroid/support/v4/widget/ContentLoadingProgressBar$2;-><init>(Landroid/support/v4/widget/ContentLoadingProgressBar;)V

    iput-object p1, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    return-void
.end method

.method private removeCallbacks()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public declared-synchronized hide()V
    .registers 11

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDismissed:Z

    iget-object v1, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/ContentLoadingProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mPostedShow:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mStartTime:J

    const/4 v5, 0x0

    sub-long v5, v1, v3

    const-wide/16 v1, 0x1f4

    cmp-long v3, v5, v1

    if-gez v3, :cond_34

    iget-wide v3, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mStartTime:J

    const-wide/16 v7, -0x1

    cmp-long v9, v3, v7

    if-nez v9, :cond_24

    goto :goto_34

    :cond_24
    iget-boolean v3, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mPostedHide:Z

    if-nez v3, :cond_32

    iget-object v3, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    const/4 v4, 0x0

    sub-long v7, v1, v5

    invoke-virtual {p0, v3, v7, v8}, Landroid/support/v4/widget/ContentLoadingProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mPostedHide:Z
    :try_end_32
    .catchall {:try_start_2 .. :try_end_32} :catchall_3b

    :cond_32
    monitor-exit p0

    return-void

    :cond_34
    :goto_34
    const/16 v0, 0x8

    :try_start_36
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->setVisibility(I)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3b

    monitor-exit p0

    return-void

    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    invoke-direct {p0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->removeCallbacks()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    invoke-direct {p0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->removeCallbacks()V

    return-void
.end method

.method public declared-synchronized show()V
    .registers 4

    monitor-enter p0

    const-wide/16 v0, -0x1

    :try_start_3
    iput-wide v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mStartTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDismissed:Z

    iget-object v1, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/ContentLoadingProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-boolean v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mPostedHide:Z

    iget-boolean v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mPostedShow:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/widget/ContentLoadingProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mPostedShow:Z
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    :cond_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
