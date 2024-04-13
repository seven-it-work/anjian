.class public Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;
.super Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask<",
        "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
        "Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;",
        ">;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mAlreadyUploadIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstPartSize:J

.field private mRecordFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;",
            ">;",
            "Lcom/alibaba/sdk/android/oss/network/ExecutionContext;",
            "Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p4, p1, p2, p3}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mAlreadyUploadIndex:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected abortThisUpload()V
    .registers 5

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadId:Ljava/lang/String;

    if-eqz v0, :cond_25

    new-instance v0, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v1, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v2, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mApiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->abortMultipartUpload(Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->waitUntilFinished()V

    :cond_25
    return-void
.end method

.method protected checkException()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;,
            Lcom/alibaba/sdk/android/oss/ClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mContext:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->deleteUploadOnCancelling()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->abortThisUpload()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRecordFile:Ljava/io/File;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRecordFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_26
    invoke-super {p0}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->checkException()V

    return-void
.end method

.method protected bridge synthetic doMultipartUpload()Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;,
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->doMultipartUpload()Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;

    move-result-object v0

    return-object v0
.end method

.method protected doMultipartUpload()Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadedLength:J

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->checkCancel()V

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p0, v2}, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->checkPartSize([I)V

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    aget v2, v2, v5

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mPartETags:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4f

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mAlreadyUploadIndex:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4f

    iget-wide v5, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadedLength:J

    iget-wide v7, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mFileLength:J

    cmp-long v9, v5, v7

    if-lez v9, :cond_31

    new-instance v0, Lcom/alibaba/sdk/android/oss/ClientException;

    const-string v1, "The uploading file is inconsistent with before"

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    iget-wide v5, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mFirstPartSize:J

    int-to-long v7, v4

    cmp-long v9, v5, v7

    if-eqz v9, :cond_40

    new-instance v0, Lcom/alibaba/sdk/android/oss/ClientException;

    const-string v1, "The part size setting is inconsistent with before"

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mProgressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    if-eqz v5, :cond_4f

    iget-object v6, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mProgressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    iget-object v7, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    iget-wide v8, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadedLength:J

    iget-wide v10, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mFileLength:J

    invoke-interface/range {v6 .. v11}, Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;->onProgress(Ljava/lang/Object;JJ)V

    :cond_4f
    :goto_4f
    if-ge v3, v2, :cond_8a

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mAlreadyUploadIndex:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_67

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mAlreadyUploadIndex:Ljava/util/List;

    add-int/lit8 v6, v3, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_87

    :cond_67
    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v5, :cond_87

    add-int/lit8 v5, v2, -0x1

    if-ne v3, v5, :cond_79

    int-to-long v4, v4

    iget-wide v6, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mFileLength:J

    sub-long v8, v6, v0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    :cond_79
    int-to-long v5, v4

    add-long v7, v0, v5

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask$1;

    invoke-direct {v1, p0, v3, v4, v2}, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask$1;-><init>(Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;III)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    move-wide v0, v7

    :cond_87
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    :cond_8a
    invoke-virtual {p0, v2}, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->checkWaitCondition(I)Z

    move-result v0

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_93
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    monitor-exit v0

    goto :goto_9d

    :catchall_9a
    move-exception v1

    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_93 .. :try_end_9c} :catchall_9a

    throw v1

    :cond_9d
    :goto_9d
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->checkException()V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->completeMultipartUploadResult()Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRecordFile:Ljava/io/File;

    if-eqz v1, :cond_af

    if-eqz v0, :cond_af

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRecordFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_af
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->releasePool()V

    new-instance v1, Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;

    invoke-direct {v1, v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;-><init>(Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;)V

    return-object v1
.end method

.method protected initMultipartUploadId()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getUploadFilePath()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadedLength:J

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadFile:Ljava/io/File;

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mFileLength:J

    iget-wide v3, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mFileLength:J

    cmp-long v5, v3, v1

    if-nez v5, :cond_29

    new-instance v0, Lcom/alibaba/sdk/android/oss/ClientException;

    const-string v1, "file length must not be 0"

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v1, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getRecordDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_172

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateMd5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getPartSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateMd5Str([B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v3, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getRecordDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRecordFile:Ljava/io/File;

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRecordFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_143

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRecordFile:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[initUploadId] - Found record file, uploadid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v1, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v3, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadId:Ljava/lang/String;

    invoke-direct {v0, v1, v3, v4}, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mApiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->listParts(Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    :try_start_e5
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->getParts()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    :goto_f0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_13e

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/sdk/android/oss/model/PartSummary;

    new-instance v5, Lcom/alibaba/sdk/android/oss/model/PartETag;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->getPartNumber()I

    move-result v6

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->getETag()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/sdk/android/oss/model/PartETag;-><init>(ILjava/lang/String;)V

    iget-object v6, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mPartETags:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v5, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadedLength:J

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->getSize()J

    move-result-wide v7

    const/4 v9, 0x0

    add-long v9, v5, v7

    iput-wide v9, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadedLength:J

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mAlreadyUploadIndex:Ljava/util/List;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->getPartNumber()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v3, :cond_12e

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->getSize()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mFirstPartSize:J
    :try_end_12e
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_e5 .. :try_end_12e} :catch_133
    .catch Lcom/alibaba/sdk/android/oss/ClientException; {:try_start_e5 .. :try_end_12e} :catch_131

    :cond_12e
    add-int/lit8 v3, v3, 0x1

    goto :goto_f0

    :catch_131
    move-exception v0

    throw v0

    :catch_133
    move-exception v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/ServiceException;->getStatusCode()I

    move-result v3

    const/16 v4, 0x194

    if-ne v3, v4, :cond_142

    iput-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadId:Ljava/lang/String;

    :cond_13e
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->waitUntilFinished()V

    goto :goto_143

    :cond_142
    throw v1

    :cond_143
    :goto_143
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRecordFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_172

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRecordFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_172

    new-instance v0, Lcom/alibaba/sdk/android/oss/ClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t create file at path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRecordFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nPlease make sure the directory exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_172
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c1

    new-instance v0, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v1, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v3, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v4, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v4

    invoke-direct {v0, v1, v3, v4}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mApiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->initMultipartUpload(Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;->getUploadId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadId:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRecordFile:Ljava/io/File;

    if-eqz v0, :cond_1c1

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRecordFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    :cond_1c1
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->setUploadId(Ljava/lang/String;)V

    return-void
.end method

.method protected processException(Ljava/lang/Exception;)V
    .registers 6

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mPartExceptionCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mPartExceptionCount:I

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadException:Ljava/lang/Exception;

    if-eqz v1, :cond_1d

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadException:Ljava/lang/Exception;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    :cond_1d
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadException:Ljava/lang/Exception;

    :cond_1f
    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logThrowable2Local(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mContext:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_39

    iget-boolean p1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mIsCancel:Z

    if-nez p1, :cond_39

    iput-boolean v2, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mIsCancel:Z

    iget-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    :cond_39
    monitor-exit v0

    return-void

    :catchall_3b
    move-exception p1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw p1
.end method
