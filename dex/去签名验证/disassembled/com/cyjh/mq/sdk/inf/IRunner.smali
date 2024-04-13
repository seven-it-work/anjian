.class public interface abstract Lcom/cyjh/mq/sdk/inf/IRunner;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/mq/sdk/inf/c;


# static fields
.field public static final START_ENIGINE_TIME_OUT_MILLIS:I = 0x1770


# virtual methods
.method public abstract isScriptStarted()Z
.end method

.method public abstract notifyRotationStatus()V
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract setOnScriptListener(Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;)Lcom/cyjh/mq/sdk/inf/IRunner;
.end method

.method public abstract setScript(Lcom/cyjh/mq/sdk/entity/Script4Run;)Lcom/cyjh/mq/sdk/inf/IRunner;
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
