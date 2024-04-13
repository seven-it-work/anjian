.class public Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;
.super Ljava/lang/Object;


# static fields
.field private static final LIST_PART_MAX_RETURNS:I = 0x3e8

.field private static final MAX_PART_NUMBER:I = 0x2710

.field private static executorService:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

.field private credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

.field private volatile endpoint:Ljava/net/URI;

.field private innerClient:Lb/z;

.field private maxRetryCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation$1;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation$1;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/net/URI;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    iput-object p4, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    new-instance p1, Lb/z$a;

    invoke-direct {p1}, Lb/z$a;-><init>()V

    invoke-virtual {p1}, Lb/z$a;->c()Lb/z$a;

    move-result-object p1

    invoke-virtual {p1}, Lb/z$a;->b()Lb/z$a;

    move-result-object p1

    invoke-virtual {p1}, Lb/z$a;->d()Lb/z$a;

    move-result-object p1

    invoke-virtual {p1}, Lb/z$a;->a()Lb/z$a;

    move-result-object p1

    new-instance p3, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation$2;

    invoke-direct {p3, p0, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation$2;-><init>(Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;Ljava/net/URI;)V

    invoke-virtual {p1, p3}, Lb/z$a;->a(Ljavax/net/ssl/HostnameVerifier;)Lb/z$a;

    move-result-object p1

    if-eqz p4, :cond_87

    new-instance p2, Lb/p;

    invoke-direct {p2}, Lb/p;-><init>()V

    invoke-virtual {p4}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getMaxConcurrentRequest()I

    move-result p3

    invoke-virtual {p2, p3}, Lb/p;->a(I)V

    invoke-virtual {p4}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getConnectionTimeout()I

    move-result p3

    int-to-long v0, p3

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p3}, Lb/z$a;->a(JLjava/util/concurrent/TimeUnit;)Lb/z$a;

    move-result-object p3

    invoke-virtual {p4}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getSocketTimeout()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v0, v1, v2}, Lb/z$a;->b(JLjava/util/concurrent/TimeUnit;)Lb/z$a;

    move-result-object p3

    invoke-virtual {p4}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getSocketTimeout()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v0, v1, v2}, Lb/z$a;->c(JLjava/util/concurrent/TimeUnit;)Lb/z$a;

    move-result-object p3

    invoke-virtual {p3, p2}, Lb/z$a;->a(Lb/p;)Lb/z$a;

    invoke-virtual {p4}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getProxyHost()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_81

    invoke-virtual {p4}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getProxyPort()I

    move-result p2

    if-eqz p2, :cond_81

    new-instance p2, Ljava/net/Proxy;

    sget-object p3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p4}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getProxyHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getProxyPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {p2, p3, v0}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {p1, p2}, Lb/z$a;->a(Ljava/net/Proxy;)Lb/z$a;

    :cond_81
    invoke-virtual {p4}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getMaxErrorRetry()I

    move-result p2

    iput p2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    :cond_87
    invoke-virtual {p1}, Lb/z$a;->e()Lb/z;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->innerClient:Lb/z;

    return-void
.end method

.method private canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V
    .registers 6

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Date"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_15

    const-string v1, "Date"

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->currentFixedSkewedTimeInRFC822Format()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getMethod()Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    move-result-object v1

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->POST:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    if-eq v1, v2, :cond_25

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getMethod()Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    move-result-object v1

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->PUT:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    if-ne v1, v2, :cond_45

    :cond_25
    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getUploadFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getObjectKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->determineContentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-Type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_45
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->isHttpDnsEnable()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->checkIfHttpDnsAvailable(Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setHttpDnsEnable(Z)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setCredentialProvider(Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getCustomUserMark()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/sdk/android/oss/common/utils/VersionInfoUtils;->getUserAgent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getCustomCnameExcludeList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isInCustomCnameExcludeList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsInCustomCnameExcludeList(Z)V

    return-void
.end method

.method private checkIfHttpDnsAvailable(Z)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_30

    iget-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    if-nez p1, :cond_8

    return v0

    :cond_8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt p1, v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    if-eqz v0, :cond_18

    const-string p1, "http.proxyHost"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1e

    :cond_18
    iget-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    :goto_1e
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getProxyHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    move-object p1, v0

    :cond_2b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_30
    return v0
.end method


# virtual methods
.method public abortMultipartUpload(Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->DELETE:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v1

    const-string v2, "uploadId"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lb/z;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lb/z;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_44

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_44
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$AbortMultipartUploadResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$AbortMultipartUploadResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, v2}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p1, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public appendObject(Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->POST:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->getUploadData()[B

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->getUploadData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setUploadData([B)V

    :cond_31
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->getUploadFilePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3e

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->getUploadFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setUploadFilePath(Ljava/lang/String;)V

    :cond_3e
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v1

    const-string v2, "append"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v1

    const-string v2, "position"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->getPosition()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->populateRequestMetadata(Ljava/util/Map;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lb/z;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lb/z;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_78

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_78
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->getProgressCallback()Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V

    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$AppendObjectResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$AppendObjectResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, v2}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p1, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public completeMultipartUpload(Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->POST:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->getPartETags()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->buildXMLFromPartEtagList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setUploadData([B)V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v1

    const-string v2, "uploadId"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->getCallbackParam()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_57

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    const-string v2, "x-oss-callback"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->getCallbackParam()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->populateMapToBase64JsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_57
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->getCallbackVars()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_6e

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    const-string v2, "x-oss-callback-var"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->getCallbackVars()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->populateMapToBase64JsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6e
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->populateRequestMetadata(Ljava/util/Map;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lb/z;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lb/z;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_8c

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_8c
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$CompleteMultipartUploadResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$CompleteMultipartUploadResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, v2}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p1, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public copyObject(Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->PUT:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;->getDestinationBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;->getDestinationKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->populateCopyObjectHeaders(Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lb/z;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lb/z;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_3e

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_3e
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$CopyObjectResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$CopyObjectResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, v2}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p1, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public createBucket(Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;",
            "Lcom/alibaba/sdk/android/oss/model/CreateBucketResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/CreateBucketResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->PUT:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;->getBucketACL()Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    move-result-object v1

    if-eqz v1, :cond_34

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    const-string v2, "x-oss-acl"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;->getBucketACL()Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    :try_start_34
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;->getLocationConstraint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->createBucketRequestBodyMarshall(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_34 .. :try_end_3b} :catch_65

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lb/z;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lb/z;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_4e

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_4e
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$CreateBucketResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$CreateBucketResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, v2}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p1, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1

    :catch_65
    move-exception p1

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public deleteBucket(Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->DELETE:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lb/z;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lb/z;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_30

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_30
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$DeleteBucketResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$DeleteBucketResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, v2}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p1, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public deleteObject(Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/DeleteObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteObjectResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->DELETE:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lb/z;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lb/z;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_37

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_37
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$DeleteObjectResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$DeleteObjectResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, v2}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p1, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public getBucketACL(Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "acl"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;->isAuthorizationRequired()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->GET:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setParameters(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lb/z;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lb/z;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_3f

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_3f
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetBucketACLResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetBucketACLResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, v2}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p1, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public getInnerClient()Lb/z;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->innerClient:Lb/z;

    return-object v0
.end method

.method public getObject(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->GET:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->getRange()Lcom/alibaba/sdk/android/oss/model/Range;

    move-result-object v1

    if-eqz v1, :cond_3b

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Range"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->getRange()Lcom/alibaba/sdk/android/oss/model/Range;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/model/Range;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->getxOssProcess()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4e

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v1

    const-string v2, "x-oss-process"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->getxOssProcess()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lb/z;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lb/z;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_61

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_61
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->getProgressListener()Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V

    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetObjectResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetObjectResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, v2}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p1, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public headObject(Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->HEAD:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lb/z;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lb/z;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_37

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_37
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$HeadObjectResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$HeadObjectResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, v2}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p1, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public initMultipartUpload(Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->POST:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v1

    const-string v2, "uploads"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->populateRequestMetadata(Ljava/util/Map;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lb/z;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lb/z;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_4d

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_4d
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$InitMultipartResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$InitMultipartResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, v2}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p1, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public listObjects(Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->GET:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->populateListObjectsRequestParameters(Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;Ljava/util/Map;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lb/z;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lb/z;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_37

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_37
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$ListObjectsResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$ListObjectsResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, v2}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p1, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public listParts(Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ListPartsResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/ListPartsResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->GET:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v1

    const-string v2, "uploadId"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;->getUploadId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;->getMaxParts()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5d

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v3, v2

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const-wide/16 v8, 0x3e8

    const/4 v10, 0x1

    invoke-static/range {v3 .. v10}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->checkParamRange(JJZJZ)Z

    move-result v2

    if-nez v2, :cond_50

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MaxPartsOutOfRange: 1000"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_50
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v2

    const-string v3, "max-parts"

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5d
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;->getPartNumberMarker()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_89

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v3, v2

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x2710

    const/4 v10, 0x1

    invoke-static/range {v3 .. v10}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->checkParamRange(JJZJZ)Z

    move-result v2

    if-nez v2, :cond_7c

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "PartNumberMarkerOutOfRange: 10000"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7c
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v2

    const-string v3, "part-number-marker"

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_89
    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lb/z;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lb/z;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_9c

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_9c
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$ListPartsResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$ListPartsResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, v2}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p1, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public putObject(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/PutObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/PutObjectResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->PUT:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getUploadData()[B

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getUploadData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setUploadData([B)V

    :cond_31
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getUploadFilePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3e

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getUploadFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setUploadFilePath(Ljava/lang/String;)V

    :cond_3e
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getCallbackParam()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_55

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    const-string v2, "x-oss-callback"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getCallbackParam()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->populateMapToBase64JsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_55
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getCallbackVars()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_6c

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    const-string v2, "x-oss-callback-var"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getCallbackVars()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->populateMapToBase64JsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6c
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->populateRequestMetadata(Ljava/util/Map;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lb/z;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lb/z;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_8a

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_8a
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getRetryCallback()Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;

    move-result-object p2

    if-eqz p2, :cond_97

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getRetryCallback()Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setRetryCallback(Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;)V

    :cond_97
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getProgressCallback()Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V

    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$PutObjectResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$PutObjectResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, v2}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p1, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public setCredentialProvider(Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    return-void
.end method

.method public uploadPart(Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;",
            "Lcom/alibaba/sdk/android/oss/model/UploadPartResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/UploadPartResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->PUT:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v1

    const-string v2, "uploadId"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v1

    const-string v2, "partNumber"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->getPartNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->getPartContent()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setUploadData([B)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->getMd5Digest()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5c

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Content-MD5"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->getMd5Digest()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5c
    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lb/z;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lb/z;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_6f

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_6f
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->getProgressCallback()Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V

    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$UploadPartResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$UploadPartResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, v2}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p1, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method
