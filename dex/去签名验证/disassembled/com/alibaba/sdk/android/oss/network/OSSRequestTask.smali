.class public Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alibaba/sdk/android/oss/model/OSSResult;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private client:Lb/z;

.field private context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

.field private currentRetryCount:I

.field private message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

.field private responseParser:Lcom/alibaba/sdk/android/oss/internal/ResponseParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/sdk/android/oss/internal/ResponseParser<",
            "TT;>;"
        }
    .end annotation
.end field

.field private retryHandler:Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->currentRetryCount:I

    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->responseParser:Lcom/alibaba/sdk/android/oss/internal/ResponseParser;

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getClient()Lb/z;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->client:Lb/z;

    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler;

    invoke-direct {p1, p4}, Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler;-><init>(I)V

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->retryHandler:Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler;

    return-void
.end method


# virtual methods
.method public call()Lcom/alibaba/sdk/android/oss/model/OSSResult;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->buildBaseLogInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logInfo(Ljava/lang/String;)V

    :cond_17
    const-string v2, "[call] - "

    invoke-static {v2}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getRequest()Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-static {v2, v3}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->ensureRequestValid(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-static {v3}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->signRequest(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_40

    new-instance v2, Ljava/io/InterruptedIOException;

    const-string v3, "This task is cancelled!"

    invoke-direct {v2, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_40
    new-instance v3, Lb/ac$a;

    invoke-direct {v3}, Lb/ac$a;-><init>()V

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->buildCanonicalURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lb/ac$a;->a(Ljava/lang/String;)Lb/ac$a;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v6}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lb/ac$a;->b(Ljava/lang/String;Ljava/lang/String;)Lb/ac$a;

    move-result-object v3

    goto :goto_5d

    :cond_7a
    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v4

    const-string v5, "Content-Type"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$1;->$SwitchMap$com$alibaba$sdk$android$oss$common$HttpMethod:[I

    iget-object v6, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v6}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getMethod()Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_372

    goto/16 :goto_136

    :pswitch_9c
    invoke-virtual {v3}, Lb/ac$a;->c()Lb/ac$a;

    move-result-object v3

    goto/16 :goto_136

    :pswitch_a2
    invoke-virtual {v3}, Lb/ac$a;->b()Lb/ac$a;

    move-result-object v3

    goto/16 :goto_136

    :pswitch_a8
    invoke-virtual {v3}, Lb/ac$a;->a()Lb/ac$a;

    move-result-object v3

    goto/16 :goto_136

    :pswitch_ae
    if-eqz v4, :cond_b2

    const/4 v5, 0x1

    goto :goto_b3

    :cond_b2
    const/4 v5, 0x0

    :goto_b3
    const-string v7, "Content type can\'t be null when upload!"

    invoke-static {v5, v7}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->assertTrue(ZLjava/lang/String;)V

    const-wide/16 v7, 0x0

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getUploadData()[B

    move-result-object v5

    if-eqz v5, :cond_d6

    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v7, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getUploadData()[B

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v7, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getUploadData()[B

    move-result-object v7

    array-length v7, v7

    int-to-long v7, v7

    goto :goto_10b

    :cond_d6
    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getUploadFilePath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f5

    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getUploadFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    move-object v5, v7

    move-wide v7, v8

    goto :goto_10b

    :cond_f5
    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getUploadInputStream()Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_10a

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getUploadInputStream()Ljava/io/InputStream;

    move-result-object v5

    iget-object v7, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getReadStreamLength()J

    move-result-wide v7

    goto :goto_10b

    :cond_10a
    move-object v5, v1

    :goto_10b
    if-eqz v5, :cond_122

    iget-object v9, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v9}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getMethod()Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-static {v5, v7, v8, v4, v10}, Lcom/alibaba/sdk/android/oss/network/NetworkProgressHelper;->addProgressRequestBody(Ljava/io/InputStream;JLjava/lang/String;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Lb/ac$a;->a(Ljava/lang/String;Lb/ad;)Lb/ac$a;

    move-result-object v3

    goto :goto_136

    :cond_122
    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getMethod()Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [B

    invoke-static {v1, v5}, Lb/ad;->create(Lb/x;[B)Lb/ad;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lb/ac$a;->a(Ljava/lang/String;Lb/ad;)Lb/ac$a;

    move-result-object v3

    :goto_136
    invoke-virtual {v3}, Lb/ac$a;->d()Lb/ac;

    move-result-object v3
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13a} :catch_213

    :try_start_13a
    instance-of v2, v2, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;

    if-eqz v2, :cond_14d

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->client:Lb/z;

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-static {v2, v4}, Lcom/alibaba/sdk/android/oss/network/NetworkProgressHelper;->addProgressResponseListener(Lb/z;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lb/z;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->client:Lb/z;

    const-string v2, "getObject"

    invoke-static {v2}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    :cond_14d
    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->client:Lb/z;

    invoke-virtual {v2, v3}, Lb/z;->a(Lb/ac;)Lb/e;

    move-result-object v2
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_13a .. :try_end_153} :catch_210

    :try_start_153
    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->setCall(Lb/e;)V

    invoke-interface {v2}, Lb/e;->b()Lb/ae;

    move-result-object v4
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_153 .. :try_end_160} :catch_20b

    :try_start_160
    invoke-virtual {v4}, Lb/ae;->c()Lb/u;

    move-result-object v5

    invoke-virtual {v5}, Lb/u;->c()Ljava/util/Map;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "response:---------------------\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "response code: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lb/ae;->a()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " for url: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lb/ac;->a()Lb/v;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "response msg: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lb/ae;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1ba
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1fd

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "responseHeader ["

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "]: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1ba

    :cond_1fd
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V
    :try_end_204
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_204} :catch_206

    move-object v6, v1

    goto :goto_23f

    :catch_206
    move-exception v5

    move-object v12, v5

    move-object v5, v2

    move-object v2, v12

    goto :goto_217

    :catch_20b
    move-exception v4

    move-object v5, v2

    move-object v2, v4

    move-object v4, v1

    goto :goto_217

    :catch_210
    move-exception v2

    move-object v4, v1

    goto :goto_216

    :catch_213
    move-exception v2

    move-object v3, v1

    move-object v4, v3

    :goto_216
    move-object v5, v4

    :goto_217
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Encounter local execpiton: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->isEnableLog()Z

    move-result v6

    if-eqz v6, :cond_235

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_235
    new-instance v6, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v5

    :goto_23f
    if-eqz v4, :cond_252

    const-string v5, "Date"

    invoke-virtual {v4, v5}, Lb/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :try_start_247
    invoke-static {v5}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->parseRfc822Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->setCurrentServerTime(J)V
    :try_end_252
    .catch Ljava/lang/Exception; {:try_start_247 .. :try_end_252} :catch_252

    :catch_252
    :cond_252
    if-nez v6, :cond_27e

    invoke-virtual {v4}, Lb/ae;->a()I

    move-result v5

    const/16 v7, 0xcb

    if-eq v5, v7, :cond_264

    invoke-virtual {v4}, Lb/ae;->a()I

    move-result v5

    const/16 v7, 0x12c

    if-lt v5, v7, :cond_27e

    :cond_264
    :try_start_264
    invoke-virtual {v3}, Lb/ac;->b()Ljava/lang/String;

    move-result-object v3

    const-string v5, "HEAD"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v4, v3}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseResponseErrorXML(Lb/ae;Z)Lcom/alibaba/sdk/android/oss/ServiceException;

    move-result-object v6
    :try_end_272
    .catch Ljava/io/IOException; {:try_start_264 .. :try_end_272} :catch_273

    goto :goto_2a8

    :catch_273
    move-exception v3

    new-instance v6, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5, v3}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2a8

    :cond_27e
    if-nez v6, :cond_2a8

    :try_start_280
    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->responseParser:Lcom/alibaba/sdk/android/oss/internal/ResponseParser;

    invoke-interface {v3, v4}, Lcom/alibaba/sdk/android/oss/internal/ResponseParser;->parse(Lb/ae;)Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v3

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCompletedCallback()Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    move-result-object v5
    :try_end_28c
    .catch Ljava/io/IOException; {:try_start_280 .. :try_end_28c} :catch_29e

    if-eqz v5, :cond_29d

    :try_start_28e
    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCompletedCallback()Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v6}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getRequest()Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;->onSuccess(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/model/OSSResult;)V
    :try_end_29d
    .catch Ljava/lang/Exception; {:try_start_28e .. :try_end_29d} :catch_29d
    .catch Ljava/io/IOException; {:try_start_28e .. :try_end_29d} :catch_29e

    :catch_29d
    :cond_29d
    return-object v3

    :catch_29e
    move-exception v3

    new-instance v6, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5, v3}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2a8
    :goto_2a8
    if-eqz v2, :cond_2b0

    invoke-interface {v2}, Lb/e;->e()Z

    move-result v2

    if-nez v2, :cond_2bc

    :cond_2b0
    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2cc

    :cond_2bc
    new-instance v2, Lcom/alibaba/sdk/android/oss/ClientException;

    const-string v3, "Task is cancelled!"

    invoke-virtual {v6}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v2, v3, v5, v6}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Boolean;)V

    goto :goto_2cd

    :cond_2cc
    move-object v2, v6

    :goto_2cd
    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->retryHandler:Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler;

    iget v5, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->currentRetryCount:I

    invoke-virtual {v3, v2, v5}, Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler;->shouldRetry(Ljava/lang/Exception;I)Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[run] - retry, retry type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;)V

    sget-object v5, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    if-ne v3, v5, :cond_305

    iget v1, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->currentRetryCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->currentRetryCount:I

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getRetryCallback()Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;

    move-result-object v0

    if-eqz v0, :cond_300

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getRetryCallback()Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;->onRetryCallback()V

    :cond_300
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->call()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    return-object v0

    :cond_305
    sget-object v5, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldFixedTimeSkewedAndRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    if-ne v3, v5, :cond_337

    if-eqz v4, :cond_31c

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->message:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Date"

    const-string v3, "Date"

    invoke-virtual {v4, v3}, Lb/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31c
    iget v1, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->currentRetryCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->currentRetryCount:I

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getRetryCallback()Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;

    move-result-object v0

    if-eqz v0, :cond_332

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getRetryCallback()Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;->onRetryCallback()V

    :cond_332
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->call()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    return-object v0

    :cond_337
    instance-of v0, v2, Lcom/alibaba/sdk/android/oss/ClientException;

    if-eqz v0, :cond_356

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCompletedCallback()Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    move-result-object v0

    if-eqz v0, :cond_370

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCompletedCallback()Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getRequest()Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-interface {v0, v3, v4, v1}, Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;->onFailure(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V

    goto :goto_370

    :cond_356
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCompletedCallback()Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    move-result-object v0

    if-eqz v0, :cond_370

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCompletedCallback()Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getRequest()Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Lcom/alibaba/sdk/android/oss/ServiceException;

    invoke-interface {v0, v3, v1, v4}, Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;->onFailure(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V

    :cond_370
    :goto_370
    throw v2

    nop

    :pswitch_data_372
    .packed-switch 0x1
        :pswitch_ae
        :pswitch_ae
        :pswitch_a8
        :pswitch_a2
        :pswitch_9c
    .end packed-switch
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->call()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    return-object v0
.end method
