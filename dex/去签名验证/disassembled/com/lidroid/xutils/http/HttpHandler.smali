.class public Lcom/lidroid/xutils/http/HttpHandler;
.super Lcom/lidroid/xutils/task/PriorityAsyncTask;

# interfaces
.implements Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/http/HttpHandler$NotUseApacheRedirectHandler;,
        Lcom/lidroid/xutils/http/HttpHandler$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lidroid/xutils/task/PriorityAsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;"
    }
.end annotation


# static fields
.field private static final UPDATE_FAILURE:I = 0x3

.field private static final UPDATE_LOADING:I = 0x2

.field private static final UPDATE_START:I = 0x1

.field private static final UPDATE_SUCCESS:I = 0x4

.field private static final notUseApacheRedirectHandler:Lcom/lidroid/xutils/http/HttpHandler$NotUseApacheRedirectHandler;


# instance fields
.field private autoRename:Z

.field private autoResume:Z

.field private callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/http/callback/RequestCallBack<",
            "TT;>;"
        }
    .end annotation
.end field

.field private charset:Ljava/lang/String;

.field private final client:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final context:Lorg/apache/http/protocol/HttpContext;

.field private expiry:J

.field private fileSavePath:Ljava/lang/String;

.field private httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

.field private isDownloadingFile:Z

.field private isUploading:Z

.field private lastUpdateTime:J

.field private request:Lorg/apache/http/client/methods/HttpRequestBase;

.field private requestMethod:Ljava/lang/String;

.field private requestUrl:Ljava/lang/String;

.field private retriedCount:I

.field private state:Lcom/lidroid/xutils/http/HttpHandler$State;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/lidroid/xutils/http/HttpHandler$NotUseApacheRedirectHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lidroid/xutils/http/HttpHandler$NotUseApacheRedirectHandler;-><init>(Lcom/lidroid/xutils/http/HttpHandler$NotUseApacheRedirectHandler;)V

    sput-object v0, Lcom/lidroid/xutils/http/HttpHandler;->notUseApacheRedirectHandler:Lcom/lidroid/xutils/http/HttpHandler$NotUseApacheRedirectHandler;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;Lcom/lidroid/xutils/http/callback/RequestCallBack;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/impl/client/AbstractHttpClient;",
            "Lorg/apache/http/protocol/HttpContext;",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/http/callback/RequestCallBack<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityAsyncTask;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->isUploading:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->retriedCount:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lidroid/xutils/http/HttpHandler;->fileSavePath:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->isDownloadingFile:Z

    iput-boolean v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoResume:Z

    iput-boolean v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoRename:Z

    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->WAITING:Lcom/lidroid/xutils/http/HttpHandler$State;

    iput-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    invoke-static {}, Lcom/lidroid/xutils/http/HttpCache;->getDefaultExpiryTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->expiry:J

    iput-object p1, p0, Lcom/lidroid/xutils/http/HttpHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    iput-object p2, p0, Lcom/lidroid/xutils/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    iput-object p4, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    iput-object p3, p0, Lcom/lidroid/xutils/http/HttpHandler;->charset:Ljava/lang/String;

    iget-object p1, p0, Lcom/lidroid/xutils/http/HttpHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    sget-object p2, Lcom/lidroid/xutils/http/HttpHandler;->notUseApacheRedirectHandler:Lcom/lidroid/xutils/http/HttpHandler$NotUseApacheRedirectHandler;

    invoke-virtual {p1, p2}, Lorg/apache/http/impl/client/AbstractHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    return-void
.end method

.method private handleResponse(Lorg/apache/http/HttpResponse;)Lcom/lidroid/xutils/http/ResponseInfo;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")",
            "Lcom/lidroid/xutils/http/ResponseInfo<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_a

    new-instance p1, Lcom/lidroid/xutils/exception/HttpException;

    const-string v0, "response is null"

    invoke-direct {p1, v0}, Lcom/lidroid/xutils/exception/HttpException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    invoke-virtual {p0}, Lcom/lidroid/xutils/http/HttpHandler;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    return-object v1

    :cond_12
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x12c

    if-ge v2, v3, :cond_79

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    const/4 v0, 0x0

    if-eqz v5, :cond_73

    iput-boolean v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->isUploading:Z

    iget-boolean v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->isDownloadingFile:Z

    if-eqz v2, :cond_52

    iget-boolean v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoResume:Z

    if-eqz v2, :cond_37

    invoke-static {p1}, Lcom/lidroid/xutils/util/OtherUtils;->isSupportRange(Lorg/apache/http/HttpResponse;)Z

    move-result v2

    if-eqz v2, :cond_37

    const/4 v2, 0x1

    goto :goto_38

    :cond_37
    const/4 v2, 0x0

    :goto_38
    iput-boolean v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoResume:Z

    iget-boolean v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoRename:Z

    if-eqz v2, :cond_42

    invoke-static {p1}, Lcom/lidroid/xutils/util/OtherUtils;->getFileNameFromHttpResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    :cond_42
    move-object v9, v1

    new-instance v4, Lcom/lidroid/xutils/http/callback/FileDownloadHandler;

    invoke-direct {v4}, Lcom/lidroid/xutils/http/callback/FileDownloadHandler;-><init>()V

    iget-object v7, p0, Lcom/lidroid/xutils/http/HttpHandler;->fileSavePath:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoResume:Z

    move-object v6, p0

    invoke-virtual/range {v4 .. v9}, Lcom/lidroid/xutils/http/callback/FileDownloadHandler;->handleEntity(Lorg/apache/http/HttpEntity;Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;Ljava/lang/String;ZLjava/lang/String;)Ljava/io/File;

    move-result-object v1

    goto :goto_73

    :cond_52
    new-instance v1, Lcom/lidroid/xutils/http/callback/StringDownloadHandler;

    invoke-direct {v1}, Lcom/lidroid/xutils/http/callback/StringDownloadHandler;-><init>()V

    iget-object v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->charset:Ljava/lang/String;

    invoke-virtual {v1, v5, p0, v2}, Lcom/lidroid/xutils/http/callback/StringDownloadHandler;->handleEntity(Lorg/apache/http/HttpEntity;Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/lidroid/xutils/HttpUtils;->sHttpCache:Lcom/lidroid/xutils/http/HttpCache;

    iget-object v3, p0, Lcom/lidroid/xutils/http/HttpHandler;->requestMethod:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lidroid/xutils/http/HttpCache;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_73

    sget-object v2, Lcom/lidroid/xutils/HttpUtils;->sHttpCache:Lcom/lidroid/xutils/http/HttpCache;

    iget-object v3, p0, Lcom/lidroid/xutils/http/HttpHandler;->requestUrl:Ljava/lang/String;

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    iget-wide v5, p0, Lcom/lidroid/xutils/http/HttpHandler;->expiry:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/lidroid/xutils/http/HttpCache;->put(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_73
    :goto_73
    new-instance v2, Lcom/lidroid/xutils/http/ResponseInfo;

    invoke-direct {v2, p1, v1, v0}, Lcom/lidroid/xutils/http/ResponseInfo;-><init>(Lorg/apache/http/HttpResponse;Ljava/lang/Object;Z)V

    return-object v2

    :cond_79
    const/16 v3, 0x12d

    if-eq v2, v3, :cond_98

    const/16 v3, 0x12e

    if-ne v2, v3, :cond_82

    goto :goto_98

    :cond_82
    const/16 p1, 0x1a0

    if-ne v2, p1, :cond_8e

    new-instance p1, Lcom/lidroid/xutils/exception/HttpException;

    const-string v0, "maybe the file has downloaded completely"

    invoke-direct {p1, v2, v0}, Lcom/lidroid/xutils/exception/HttpException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_8e
    new-instance p1, Lcom/lidroid/xutils/exception/HttpException;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lcom/lidroid/xutils/exception/HttpException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_98
    :goto_98
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    if-nez v0, :cond_a3

    new-instance v0, Lcom/lidroid/xutils/http/callback/DefaultHttpRedirectHandler;

    invoke-direct {v0}, Lcom/lidroid/xutils/http/callback/DefaultHttpRedirectHandler;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    :cond_a3
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    invoke-interface {v0, p1}, Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;->getDirectRequest(Lorg/apache/http/HttpResponse;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object p1

    if-eqz p1, :cond_b0

    invoke-direct {p0, p1}, Lcom/lidroid/xutils/http/HttpHandler;->sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/lidroid/xutils/http/ResponseInfo;

    move-result-object p1

    return-object p1

    :cond_b0
    return-object v1
.end method

.method private sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/lidroid/xutils/http/ResponseInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpRequestBase;",
            ")",
            "Lcom/lidroid/xutils/http/ResponseInfo<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/HttpException;
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v0

    :cond_6
    iget-boolean v1, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoResume:Z

    if-eqz v1, :cond_45

    iget-boolean v1, p0, Lcom/lidroid/xutils/http/HttpHandler;->isDownloadingFile:Z

    if-eqz v1, :cond_45

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->fileSavePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_28

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    goto :goto_29

    :cond_28
    move-wide v1, v3

    :goto_29
    cmp-long v5, v1, v3

    if-lez v5, :cond_45

    const-string v3, "RANGE"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bytes="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_45
    const/4 v1, 0x1

    :try_start_46
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->requestMethod:Ljava/lang/String;

    sget-object v2, Lcom/lidroid/xutils/HttpUtils;->sHttpCache:Lcom/lidroid/xutils/http/HttpCache;

    iget-object v3, p0, Lcom/lidroid/xutils/http/HttpHandler;->requestMethod:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lidroid/xutils/http/HttpCache;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_67

    sget-object v2, Lcom/lidroid/xutils/HttpUtils;->sHttpCache:Lcom/lidroid/xutils/http/HttpCache;

    iget-object v4, p0, Lcom/lidroid/xutils/http/HttpHandler;->requestUrl:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/lidroid/xutils/http/HttpCache;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_67

    new-instance v4, Lcom/lidroid/xutils/http/ResponseInfo;

    invoke-direct {v4, v3, v2, v1}, Lcom/lidroid/xutils/http/ResponseInfo;-><init>(Lorg/apache/http/HttpResponse;Ljava/lang/Object;Z)V

    return-object v4

    :cond_67
    invoke-virtual {p0}, Lcom/lidroid/xutils/http/HttpHandler;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_79

    iget-object v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v3, p0, Lcom/lidroid/xutils/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v2, p1, v3}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lidroid/xutils/http/HttpHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Lcom/lidroid/xutils/http/ResponseInfo;

    move-result-object v3
    :try_end_79
    .catch Ljava/net/UnknownHostException; {:try_start_46 .. :try_end_79} :catch_95
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_79} :catch_95
    .catch Ljava/lang/NullPointerException; {:try_start_46 .. :try_end_79} :catch_87
    .catch Lcom/lidroid/xutils/exception/HttpException; {:try_start_46 .. :try_end_79} :catch_85
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_79} :catch_7a

    :cond_79
    return-object v3

    :catch_7a
    move-exception v2

    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_91

    :catch_85
    move-exception p1

    throw p1

    :catch_87
    move-exception v2

    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :goto_91
    invoke-virtual {v3, v2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_97

    :catch_95
    move-exception v2

    move-object v3, v2

    :goto_97
    iget v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->retriedCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->retriedCount:I

    iget-object v1, p0, Lcom/lidroid/xutils/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v3, v2, v1}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance p1, Lcom/lidroid/xutils/exception/HttpException;

    invoke-direct {p1, v3}, Lcom/lidroid/xutils/exception/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public cancel()V
    .registers 2

    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->CANCELLED:Lcom/lidroid/xutils/http/HttpHandler$State;

    iput-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->isAborted()Z

    move-result v0

    if-nez v0, :cond_15

    :try_start_10
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_15} :catch_15

    :catch_15
    :cond_15
    invoke-virtual {p0}, Lcom/lidroid/xutils/http/HttpHandler;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    :try_start_1c
    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/http/HttpHandler;->cancel(Z)Z
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1f} :catch_1f

    :catch_1f
    :cond_1f
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    invoke-virtual {v0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->onCancelled()V

    :cond_28
    return-void
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/http/HttpHandler;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .registers 10

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    sget-object v1, Lcom/lidroid/xutils/http/HttpHandler$State;->CANCELLED:Lcom/lidroid/xutils/http/HttpHandler$State;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_99

    if-eqz p1, :cond_99

    array-length v0, p1

    if-nez v0, :cond_d

    return-object v2

    :cond_d
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v0, v3, :cond_39

    aget-object v0, p1, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->fileSavePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->fileSavePath:Ljava/lang/String;

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    iput-boolean v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->isDownloadingFile:Z

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoResume:Z

    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoRename:Z

    :cond_39
    :try_start_39
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    sget-object v6, Lcom/lidroid/xutils/http/HttpHandler$State;->CANCELLED:Lcom/lidroid/xutils/http/HttpHandler$State;

    if-ne v0, v6, :cond_40

    return-object v2

    :cond_40
    aget-object p1, p1, v4

    check-cast p1, Lorg/apache/http/client/methods/HttpRequestBase;

    iput-object p1, p0, Lcom/lidroid/xutils/http/HttpHandler;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    iget-object p1, p0, Lcom/lidroid/xutils/http/HttpHandler;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lidroid/xutils/http/HttpHandler;->requestUrl:Ljava/lang/String;

    iget-object p1, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    if-eqz p1, :cond_5d

    iget-object p1, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->requestUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->setRequestUrl(Ljava/lang/String;)V

    :cond_5d
    new-array p1, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v4

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/lidroid/xutils/http/HttpHandler;->lastUpdateTime:J

    iget-object p1, p0, Lcom/lidroid/xutils/http/HttpHandler;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-direct {p0, p1}, Lcom/lidroid/xutils/http/HttpHandler;->sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/lidroid/xutils/http/ResponseInfo;

    move-result-object p1

    if-eqz p1, :cond_99

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v4

    aput-object p1, v0, v5

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V
    :try_end_84
    .catch Lcom/lidroid/xutils/exception/HttpException; {:try_start_39 .. :try_end_84} :catch_85

    return-object v2

    :catch_85
    move-exception p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v4

    aput-object p1, v0, v5

    invoke-virtual {p1}, Lcom/lidroid/xutils/exception/HttpException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    :cond_99
    return-object v2
.end method

.method public getRequestCallBack()Lcom/lidroid/xutils/http/callback/RequestCallBack;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lidroid/xutils/http/callback/RequestCallBack<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    return-object v0
.end method

.method public getState()Lcom/lidroid/xutils/http/HttpHandler$State;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    return-object v0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .registers 12

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    sget-object v1, Lcom/lidroid/xutils/http/HttpHandler$State;->CANCELLED:Lcom/lidroid/xutils/http/HttpHandler$State;

    if-eq v0, v1, :cond_7d

    if-eqz p1, :cond_7d

    array-length v0, p1

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    if-nez v0, :cond_10

    return-void

    :cond_10
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    packed-switch v0, :pswitch_data_7e

    return-void

    :pswitch_20
    array-length v0, p1

    if-eq v0, v3, :cond_24

    return-void

    :cond_24
    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->SUCCESS:Lcom/lidroid/xutils/http/HttpHandler$State;

    iput-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    aget-object p1, p1, v2

    check-cast p1, Lcom/lidroid/xutils/http/ResponseInfo;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->onSuccess(Lcom/lidroid/xutils/http/ResponseInfo;)V

    return-void

    :pswitch_32
    array-length v0, p1

    if-eq v0, v1, :cond_36

    return-void

    :cond_36
    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->FAILURE:Lcom/lidroid/xutils/http/HttpHandler$State;

    iput-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    aget-object v1, p1, v2

    check-cast v1, Lcom/lidroid/xutils/exception/HttpException;

    aget-object p1, p1, v3

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->onFailure(Lcom/lidroid/xutils/exception/HttpException;Ljava/lang/String;)V

    return-void

    :pswitch_48
    array-length v0, p1

    if-eq v0, v1, :cond_4c

    return-void

    :cond_4c
    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->LOADING:Lcom/lidroid/xutils/http/HttpHandler$State;

    iput-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    iget-object v4, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    aget-object v0, p1, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-boolean v9, p0, Lcom/lidroid/xutils/http/HttpHandler;->isUploading:Z

    invoke-virtual/range {v4 .. v9}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->onLoading(JJZ)V

    return-void

    :pswitch_74
    sget-object p1, Lcom/lidroid/xutils/http/HttpHandler$State;->STARTED:Lcom/lidroid/xutils/http/HttpHandler$State;

    iput-object p1, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    iget-object p1, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    invoke-virtual {p1}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->onStart()V

    :cond_7d
    return-void

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_74
        :pswitch_48
        :pswitch_32
        :pswitch_20
    .end packed-switch
.end method

.method public setExpiry(J)V
    .registers 3

    iput-wide p1, p0, Lcom/lidroid/xutils/http/HttpHandler;->expiry:J

    return-void
.end method

.method public setHttpRedirectHandler(Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/lidroid/xutils/http/HttpHandler;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    :cond_4
    return-void
.end method

.method public setRequestCallBack(Lcom/lidroid/xutils/http/callback/RequestCallBack;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/http/callback/RequestCallBack<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    return-void
.end method

.method public updateProgress(JJZ)Z
    .registers 16

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    sget-object v3, Lcom/lidroid/xutils/http/HttpHandler$State;->CANCELLED:Lcom/lidroid/xutils/http/HttpHandler$State;

    if-eq v0, v3, :cond_52

    const/4 v0, 0x3

    const/4 v3, 0x2

    if-eqz p5, :cond_28

    new-array p5, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p5, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p5, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p5, v3

    :goto_24
    invoke-virtual {p0, p5}, Lcom/lidroid/xutils/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    goto :goto_52

    :cond_28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/lidroid/xutils/http/HttpHandler;->lastUpdateTime:J

    sub-long v8, v4, v6

    iget-object p5, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    invoke-virtual {p5}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->getRate()I

    move-result p5

    int-to-long v6, p5

    cmp-long p5, v8, v6

    if-ltz p5, :cond_52

    iput-wide v4, p0, Lcom/lidroid/xutils/http/HttpHandler;->lastUpdateTime:J

    new-array p5, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p5, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p5, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p5, v3

    goto :goto_24

    :cond_52
    :goto_52
    iget-object p1, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    sget-object p2, Lcom/lidroid/xutils/http/HttpHandler$State;->CANCELLED:Lcom/lidroid/xutils/http/HttpHandler$State;

    if-eq p1, p2, :cond_59

    return v1

    :cond_59
    return v2
.end method
