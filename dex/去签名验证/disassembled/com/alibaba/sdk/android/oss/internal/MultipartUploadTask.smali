.class public Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;
.super Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask<",
        "Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;",
        "Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;",
        ">;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;",
            "Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;",
            ">;",
            "Lcom/alibaba/sdk/android/oss/network/ExecutionContext;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)V

    return-void
.end method


# virtual methods
.method protected abortThisUpload()V
    .registers 5

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->mUploadId:Ljava/lang/String;

    if-eqz v0, :cond_21

    new-instance v0, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->mUploadId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->mApiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->abortMultipartUpload(Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->waitUntilFinished()V

    :cond_21
    return-void
.end method

.method protected doMultipartUpload()Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;,
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->checkCancel()V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getUploadFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->mUploadFile:Ljava/io/File;

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->mUploadFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->mFileLength:J

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->mFileLength:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_28

    new-instance v0, Lcom/alibaba/sdk/android/oss/ClientException;

    const-string v1, "file length must not be 0"

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->checkPartSize([I)V

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    const/4 v3, 0x0

    :goto_35
    if-ge v1, v0, :cond_5b

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->checkException()V

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->mPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v4, :cond_58

    add-int/lit8 v4, v0, -0x1

    if-ne v1, v4, :cond_4d

    int-to-long v4, v2

    iget-wide v6, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->mFileLength:J

    int-to-long v8, v3

    sub-long v10, v6, v8

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    :cond_4d
    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->mPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v5, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask$1;

    invoke-direct {v5, p0, v1, v2, v0}, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask$1;-><init>(Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;III)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_5b
    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->checkWaitCondition(I)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_64
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    monitor-exit v0

    goto :goto_6e

    :catchall_6b
    move-exception v1

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_64 .. :try_end_6d} :catchall_6b

    throw v1

    :cond_6e
    :goto_6e
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->mUploadException:Ljava/lang/Exception;

    if-eqz v0, :cond_75

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->abortThisUpload()V

    :cond_75
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->checkException()V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->completeMultipartUploadResult()Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->releasePool()V

    return-object v0
.end method

.method protected initMultipartUploadId()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->mApiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->initMultipartUpload(Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;->getUploadId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->mUploadId:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->mUploadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->setUploadId(Ljava/lang/String;)V

    return-void
.end method

.method protected preUploadPart(III)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->checkException()V

    return-void
.end method

.method protected processException(Ljava/lang/Exception;)V
    .registers 4

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->mPartExceptionCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->mPartExceptionCount:I

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->mUploadException:Ljava/lang/Exception;

    if-nez v1, :cond_14

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->mUploadException:Ljava/lang/Exception;

    iget-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    :cond_14
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method
