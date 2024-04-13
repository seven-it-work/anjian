.class public Lcom/alibaba/sdk/android/oss/network/ExecutionContext;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alibaba/sdk/android/oss/model/OSSRequest;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private cancellationHandler:Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

.field private client:Lb/z;

.field private completedCallback:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

.field private progressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

.field private request:Lcom/alibaba/sdk/android/oss/model/OSSRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private retryCallback:Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;


# direct methods
.method public constructor <init>(Lb/z;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/z;",
            "TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lb/z;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lb/z;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/z;",
            "TT;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->cancellationHandler:Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setClient(Lb/z;)V

    invoke-virtual {p0, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setRequest(Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->applicationContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->cancellationHandler:Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    return-object v0
.end method

.method public getClient()Lb/z;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->client:Lb/z;

    return-object v0
.end method

.method public getCompletedCallback()Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->completedCallback:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    return-object v0
.end method

.method public getProgressCallback()Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->progressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    return-object v0
.end method

.method public getRequest()Lcom/alibaba/sdk/android/oss/model/OSSRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->request:Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    return-object v0
.end method

.method public getRetryCallback()Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->retryCallback:Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;

    return-object v0
.end method

.method public setClient(Lb/z;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->client:Lb/z;

    return-void
.end method

.method public setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->completedCallback:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    return-void
.end method

.method public setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->progressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    return-void
.end method

.method public setRequest(Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->request:Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    return-void
.end method

.method public setRetryCallback(Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->retryCallback:Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;

    return-void
.end method
