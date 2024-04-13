.class public interface abstract Lcom/iflytek/voiceads/listener/IFLYVideoListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/voiceads/listener/DialogListener;


# virtual methods
.method public abstract onAdClick()V
.end method

.method public abstract onAdFailed(Lcom/iflytek/voiceads/config/AdError;)V
.end method

.method public abstract onAdLoaded(Lcom/iflytek/voiceads/conn/VideoDataRef;)V
.end method

.method public abstract onAdPlayError()V
.end method

.method public abstract onVideoCached()V
.end method

.method public abstract onVideoComplete()V
.end method

.method public abstract onVideoReplay()V
.end method

.method public abstract onVideoStart()V
.end method
