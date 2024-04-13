.class public Lcom/iflytek/voiceads/IFLYVideoAd;
.super Lcom/iflytek/voiceads/IFLYBaseAd;


# static fields
.field public static final FULLSCREEN_VIDEO_AD:I = 0x1

.field public static final LANDSCAPE:I = 0x0

.field public static final NATIVE_VIDEO_AD:I = 0x0

.field public static final PORTRAIT:I = 0x1


# instance fields
.field private iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

.field private listener:Lcom/iflytek/voiceads/listener/IFLYVideoListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/iflytek/voiceads/IFLYBaseAd;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/iflytek/voiceads/listener/IFLYVideoListener;)V
    .registers 5

    invoke-direct {p0}, Lcom/iflytek/voiceads/IFLYBaseAd;-><init>()V

    invoke-virtual {p0, p1}, Lcom/iflytek/voiceads/IFLYVideoAd;->initIFLYBaseAdImpl(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->listener:Lcom/iflytek/voiceads/listener/IFLYVideoListener;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iflytek/voiceads/IFLYVideoAd;->getVideoAd(Landroid/content/Context;Ljava/lang/String;ILcom/iflytek/voiceads/listener/IFLYVideoListener;)Lcom/iflytek/voiceads/IFLYVideoAd;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

    return-void
.end method


# virtual methods
.method public backPressed()Z
    .registers 2

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

    if-nez v0, :cond_b

    const-string v0, "can\'t find AdDex file in assets"

    invoke-static {v0}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_b
    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/IFLYVideoAd;->backPressed()Z

    move-result v0

    return v0
.end method

.method public cacheVideo()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

    if-nez v0, :cond_a

    const-string v0, "can\'t find AdDex file in assets"

    invoke-static {v0}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/IFLYVideoAd;->cacheVideo()V

    return-void
.end method

.method public getVideoView()Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

    if-nez v0, :cond_b

    const-string v0, "can\'t find AdDex file in assets"

    invoke-static {v0}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/IFLYVideoAd;->getVideoView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public isPlaying()Z
    .registers 2

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

    if-nez v0, :cond_b

    const-string v0, "can\'t find AdDex file in assets"

    invoke-static {v0}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_b
    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/IFLYVideoAd;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public loadAd()V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

    if-nez v0, :cond_1b

    const-string v0, "can\'t find AdDex file in assets"

    invoke-static {v0}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->listener:Lcom/iflytek/voiceads/listener/IFLYVideoListener;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->listener:Lcom/iflytek/voiceads/listener/IFLYVideoListener;

    new-instance v1, Lcom/iflytek/voiceads/config/AdError;

    const v2, 0x1155a

    invoke-direct {v1, v2}, Lcom/iflytek/voiceads/config/AdError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/iflytek/voiceads/listener/IFLYVideoListener;->onAdFailed(Lcom/iflytek/voiceads/config/AdError;)V

    :cond_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/IFLYVideoAd;->loadAd()V

    return-void
.end method

.method public onPause()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

    if-nez v0, :cond_a

    const-string v0, "can\'t find AdDex file in assets"

    invoke-static {v0}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/IFLYVideoAd;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

    if-nez v0, :cond_a

    const-string v0, "can\'t find AdDex file in assets"

    invoke-static {v0}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/IFLYVideoAd;->onResume()V

    return-void
.end method

.method public release()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

    if-nez v0, :cond_a

    const-string v0, "can\'t find AdDex file in assets"

    invoke-static {v0}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/IFLYVideoAd;->release()V

    return-void
.end method

.method public setDirectJump(Z)V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

    if-nez v0, :cond_a

    const-string p1, "can\'t find AdDex file in assets"

    invoke-static {p1}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

    invoke-virtual {v0, p1}, Lcom/iflytek/voiceads/IFLYVideoAd;->setDirectJump(Z)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

    if-nez v0, :cond_a

    const-string p1, "can\'t find AdDex file in assets"

    invoke-static {p1}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/voiceads/IFLYVideoAd;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setVolume(Z)V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

    if-nez v0, :cond_a

    const-string p1, "can\'t find AdDex file in assets"

    invoke-static {p1}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

    invoke-virtual {v0, p1}, Lcom/iflytek/voiceads/IFLYVideoAd;->setVolume(Z)V

    return-void
.end method

.method public setWifiTip(Z)V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

    if-nez v0, :cond_a

    const-string p1, "can\'t find AdDex file in assets"

    invoke-static {p1}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

    invoke-virtual {v0, p1}, Lcom/iflytek/voiceads/IFLYVideoAd;->setWifiTip(Z)V

    return-void
.end method

.method public varargs showAd([Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

    if-nez v0, :cond_a

    const-string p1, "can\'t find AdDex file in assets"

    invoke-static {p1}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

    invoke-virtual {v0, p1}, Lcom/iflytek/voiceads/IFLYVideoAd;->showAd([Ljava/lang/Object;)V

    return-void
.end method

.method public skipAd()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

    if-nez v0, :cond_a

    const-string v0, "can\'t find AdDex file in assets"

    invoke-static {v0}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/IFLYVideoAd;->skipAd()V

    return-void
.end method

.method public startPlay()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

    if-nez v0, :cond_a

    const-string v0, "can\'t find AdDex file in assets"

    invoke-static {v0}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/IFLYVideoAd;->startPlay()V

    return-void
.end method

.method public videoDownScroll()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

    if-nez v0, :cond_a

    const-string v0, "can\'t find AdDex file in assets"

    invoke-static {v0}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/IFLYVideoAd;->videoDownScroll()V

    return-void
.end method

.method public videoUpScroll()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

    if-nez v0, :cond_a

    const-string v0, "can\'t find AdDex file in assets"

    invoke-static {v0}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYVideoAd;->iFLYVideoAdImpl:Lcom/iflytek/voiceads/IFLYVideoAd;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/IFLYVideoAd;->videoUpScroll()V

    return-void
.end method
