.class public abstract Lcom/iflytek/voiceads/view/AdLayout;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/voiceads/view/AdLayout$AdLayoutHandler;
    }
.end annotation


# instance fields
.field private final DESTROY:I

.field private hasDestroyed:Z

.field private layoutHandler:Lcom/iflytek/voiceads/view/AdLayout$AdLayoutHandler;

.field protected mInternalListener:Lcom/iflytek/voiceads/listener/InternalListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/voiceads/view/AdLayout;->DESTROY:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/voiceads/view/AdLayout;->hasDestroyed:Z

    new-instance v0, Lcom/iflytek/voiceads/view/AdLayout$1;

    invoke-direct {v0, p0}, Lcom/iflytek/voiceads/view/AdLayout$1;-><init>(Lcom/iflytek/voiceads/view/AdLayout;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/view/AdLayout;->mInternalListener:Lcom/iflytek/voiceads/listener/InternalListener;

    new-instance v0, Lcom/iflytek/voiceads/view/AdLayout$AdLayoutHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/iflytek/voiceads/view/AdLayout$AdLayoutHandler;-><init>(Lcom/iflytek/voiceads/view/AdLayout;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/view/AdLayout;->layoutHandler:Lcom/iflytek/voiceads/view/AdLayout$AdLayoutHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/voiceads/view/AdLayout;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/iflytek/voiceads/view/AdLayout;->hasDestroyed:Z

    return p0
.end method

.method static synthetic access$002(Lcom/iflytek/voiceads/view/AdLayout;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/iflytek/voiceads/view/AdLayout;->hasDestroyed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/iflytek/voiceads/view/AdLayout;)Lcom/iflytek/voiceads/view/AdLayout$AdLayoutHandler;
    .registers 1

    iget-object p0, p0, Lcom/iflytek/voiceads/view/AdLayout;->layoutHandler:Lcom/iflytek/voiceads/view/AdLayout$AdLayoutHandler;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/iflytek/voiceads/view/AdLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/iflytek/voiceads/view/AdLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_10
    invoke-virtual {p0}, Lcom/iflytek/voiceads/view/AdLayout;->removeAllViews()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/iflytek/voiceads/view/AdLayout;->setVisibility(I)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
