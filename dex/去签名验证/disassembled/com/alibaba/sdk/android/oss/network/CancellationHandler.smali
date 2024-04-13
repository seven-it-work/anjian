.class public Lcom/alibaba/sdk/android/oss/network/CancellationHandler;
.super Ljava/lang/Object;


# instance fields
.field private volatile call:Lb/e;

.field private volatile isCancelled:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->call:Lb/e;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->call:Lb/e;

    invoke-interface {v0}, Lb/e;->c()V

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->isCancelled:Z

    return-void
.end method

.method public isCancelled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->isCancelled:Z

    return v0
.end method

.method public setCall(Lb/e;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->call:Lb/e;

    return-void
.end method
