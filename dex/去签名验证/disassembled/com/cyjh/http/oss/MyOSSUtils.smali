.class public Lcom/cyjh/http/oss/MyOSSUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/http/oss/MyOSSUtils$UploadFileCallBack;,
        Lcom/cyjh/http/oss/MyOSSUtils$Builder;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "MyOSSUtils"


# instance fields
.field private aliCloudServerResponse:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

.field private mContext:Landroid/content/Context;

.field private oss:Lcom/alibaba/sdk/android/oss/OSS;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Lcom/cyjh/http/oss/MyOSSUtils$Builder;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Lcom/cyjh/http/oss/MyOSSUtils$Builder;->aliCloudServerResponse:Lcom/cyjh/http/bean/response/AliCloudServerResponse;
    invoke-static {p1}, Lcom/cyjh/http/oss/MyOSSUtils$Builder;->access$100(Lcom/cyjh/http/oss/MyOSSUtils$Builder;)Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/http/oss/MyOSSUtils;->aliCloudServerResponse:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    # getter for: Lcom/cyjh/http/oss/MyOSSUtils$Builder;->context:Landroid/content/Context;
    invoke-static {p1}, Lcom/cyjh/http/oss/MyOSSUtils$Builder;->access$200(Lcom/cyjh/http/oss/MyOSSUtils$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/http/oss/MyOSSUtils;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/cyjh/http/oss/MyOSSAuthCredentialsProvider;

    iget-object v1, p0, Lcom/cyjh/http/oss/MyOSSUtils;->aliCloudServerResponse:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    invoke-direct {v0, v1}, Lcom/cyjh/http/oss/MyOSSAuthCredentialsProvider;-><init>(Lcom/cyjh/http/bean/response/AliCloudServerResponse;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;-><init>()V

    # getter for: Lcom/cyjh/http/oss/MyOSSUtils$Builder;->connectionTimeout:I
    invoke-static {p1}, Lcom/cyjh/http/oss/MyOSSUtils$Builder;->access$300(Lcom/cyjh/http/oss/MyOSSUtils$Builder;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setConnectionTimeout(I)V

    # getter for: Lcom/cyjh/http/oss/MyOSSUtils$Builder;->socketTimeout:I
    invoke-static {p1}, Lcom/cyjh/http/oss/MyOSSUtils$Builder;->access$400(Lcom/cyjh/http/oss/MyOSSUtils$Builder;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setSocketTimeout(I)V

    # getter for: Lcom/cyjh/http/oss/MyOSSUtils$Builder;->maxConcurrentRequest:I
    invoke-static {p1}, Lcom/cyjh/http/oss/MyOSSUtils$Builder;->access$500(Lcom/cyjh/http/oss/MyOSSUtils$Builder;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setMaxConcurrentRequest(I)V

    # getter for: Lcom/cyjh/http/oss/MyOSSUtils$Builder;->maxErrorRetry:I
    invoke-static {p1}, Lcom/cyjh/http/oss/MyOSSUtils$Builder;->access$600(Lcom/cyjh/http/oss/MyOSSUtils$Builder;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setMaxErrorRetry(I)V

    new-instance p1, Lcom/alibaba/sdk/android/oss/OSSClient;

    iget-object v2, p0, Lcom/cyjh/http/oss/MyOSSUtils;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/cyjh/http/oss/MyOSSUtils;->aliCloudServerResponse:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    iget-object v3, v3, Lcom/cyjh/http/bean/response/AliCloudServerResponse;->OssEndpoint:Ljava/lang/String;

    invoke-direct {p1, v2, v3, v0, v1}, Lcom/alibaba/sdk/android/oss/OSSClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V

    iput-object p1, p0, Lcom/cyjh/http/oss/MyOSSUtils;->oss:Lcom/alibaba/sdk/android/oss/OSS;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyjh/http/oss/MyOSSUtils$Builder;Lcom/cyjh/http/oss/MyOSSUtils$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/http/oss/MyOSSUtils;-><init>(Lcom/cyjh/http/oss/MyOSSUtils$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/cyjh/http/oss/MyOSSUtils;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/http/oss/MyOSSUtils;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/cyjh/http/oss/MyOSSUtils;)Lcom/cyjh/http/bean/response/AliCloudServerResponse;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/http/oss/MyOSSUtils;->aliCloudServerResponse:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    return-object p0
.end method

.method static synthetic access$800(Lcom/cyjh/http/oss/MyOSSUtils;)Lcom/alibaba/sdk/android/oss/OSS;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/http/oss/MyOSSUtils;->oss:Lcom/alibaba/sdk/android/oss/OSS;

    return-object p0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/cyjh/http/oss/MyOSSUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public isTokenExpireTime()Z
    .registers 9

    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/cyjh/http/oss/MyOSSUtils;->aliCloudServerResponse:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    if-eqz v1, :cond_26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/cyjh/http/oss/MyOSSUtils;->aliCloudServerResponse:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    iget-object v2, v2, Lcom/cyjh/http/bean/response/AliCloudServerResponse;->AliCloundExpireTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_27

    const/4 v1, 0x0

    sub-long v6, v2, v4

    const-wide/16 v1, 0x3

    cmp-long v3, v6, v1

    if-ltz v3, :cond_26

    const/4 v0, 0x0

    :cond_26
    return v0

    :catch_27
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/http/oss/MyOSSUtils$UploadFileCallBack;)V
    .registers 7

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_c

    return-void

    :cond_c
    new-instance v1, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    iget-object v2, p0, Lcom/cyjh/http/oss/MyOSSUtils;->aliCloudServerResponse:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    iget-object v2, v2, Lcom/cyjh/http/bean/response/AliCloudServerResponse;->OssBucket:Ljava/lang/String;

    invoke-direct {v1, v2, p2, p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/cyjh/http/oss/MyOSSUtils$1;

    invoke-direct {p1, p0, p3}, Lcom/cyjh/http/oss/MyOSSUtils$1;-><init>(Lcom/cyjh/http/oss/MyOSSUtils;Lcom/cyjh/http/oss/MyOSSUtils$UploadFileCallBack;)V

    invoke-virtual {v1, p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V

    iget-object p1, p0, Lcom/cyjh/http/oss/MyOSSUtils;->oss:Lcom/alibaba/sdk/android/oss/OSS;

    new-instance v2, Lcom/cyjh/http/oss/MyOSSUtils$2;

    invoke-direct {v2, p0, p2, p3, v0}, Lcom/cyjh/http/oss/MyOSSUtils$2;-><init>(Lcom/cyjh/http/oss/MyOSSUtils;Ljava/lang/String;Lcom/cyjh/http/oss/MyOSSUtils$UploadFileCallBack;Ljava/io/File;)V

    invoke-interface {p1, v1, v2}, Lcom/alibaba/sdk/android/oss/OSS;->asyncPutObject(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    return-void
.end method
