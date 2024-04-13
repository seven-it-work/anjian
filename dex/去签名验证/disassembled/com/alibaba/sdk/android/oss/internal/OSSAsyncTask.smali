.class public Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alibaba/sdk/android/oss/model/OSSResult;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile canceled:Z

.field private context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

.field private future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .registers 3

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;-><init>()V

    iput-object p0, v0, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->future:Ljava/util/concurrent/Future;

    iput-object p1, v0, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->canceled:Z

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->cancel()V

    :cond_10
    return-void
.end method

.method public getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/OSSResult;
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_8} :catch_37
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Lcom/alibaba/sdk/android/oss/ClientException;

    if-eqz v1, :cond_15

    check-cast v0, Lcom/alibaba/sdk/android/oss/ClientException;

    throw v0

    :cond_15
    instance-of v1, v0, Lcom/alibaba/sdk/android/oss/ServiceException;

    if-eqz v1, :cond_1c

    check-cast v0, Lcom/alibaba/sdk/android/oss/ServiceException;

    throw v0

    :cond_1c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Lcom/alibaba/sdk/android/oss/ClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected exception!"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_37
    move-exception v0

    new-instance v1, Lcom/alibaba/sdk/android/oss/ClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " InterruptedException and message : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isCanceled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->canceled:Z

    return v0
.end method

.method public isCompleted()Z
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    return v0
.end method

.method public waitUntilFinished()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
