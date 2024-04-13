.class public Lcom/iflytek/voiceads/IFLYNativeAd;
.super Lcom/iflytek/voiceads/IFLYBaseAd;


# instance fields
.field private iFLYNativeAdImpl:Lcom/iflytek/voiceads/IFLYNativeAd;

.field private listener:Lcom/iflytek/voiceads/listener/IFLYNativeListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/iflytek/voiceads/IFLYBaseAd;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/voiceads/listener/IFLYNativeListener;)V
    .registers 4

    invoke-direct {p0}, Lcom/iflytek/voiceads/IFLYBaseAd;-><init>()V

    invoke-virtual {p0, p1}, Lcom/iflytek/voiceads/IFLYNativeAd;->initIFLYBaseAdImpl(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/iflytek/voiceads/IFLYNativeAd;->listener:Lcom/iflytek/voiceads/listener/IFLYNativeListener;

    invoke-virtual {p0, p1, p2, p3}, Lcom/iflytek/voiceads/IFLYNativeAd;->getNativeAd(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/voiceads/listener/IFLYNativeListener;)Lcom/iflytek/voiceads/IFLYNativeAd;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/voiceads/IFLYNativeAd;->iFLYNativeAdImpl:Lcom/iflytek/voiceads/IFLYNativeAd;

    return-void
.end method


# virtual methods
.method public loadAd()V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYNativeAd;->iFLYNativeAdImpl:Lcom/iflytek/voiceads/IFLYNativeAd;

    if-nez v0, :cond_1b

    const-string v0, "can\'t find AdDex file in assets"

    invoke-static {v0}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYNativeAd;->listener:Lcom/iflytek/voiceads/listener/IFLYNativeListener;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYNativeAd;->listener:Lcom/iflytek/voiceads/listener/IFLYNativeListener;

    new-instance v1, Lcom/iflytek/voiceads/config/AdError;

    const v2, 0x1155a

    invoke-direct {v1, v2}, Lcom/iflytek/voiceads/config/AdError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/iflytek/voiceads/listener/IFLYNativeListener;->onAdFailed(Lcom/iflytek/voiceads/config/AdError;)V

    :cond_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYNativeAd;->iFLYNativeAdImpl:Lcom/iflytek/voiceads/IFLYNativeAd;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/IFLYNativeAd;->loadAd()V

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYNativeAd;->iFLYNativeAdImpl:Lcom/iflytek/voiceads/IFLYNativeAd;

    if-nez v0, :cond_a

    const-string p1, "can\'t find AdDex file in assets"

    invoke-static {p1}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/iflytek/voiceads/IFLYNativeAd;->iFLYNativeAdImpl:Lcom/iflytek/voiceads/IFLYNativeAd;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/voiceads/IFLYNativeAd;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
