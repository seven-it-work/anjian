.class public Lcom/alibaba/sdk/android/oss/model/GetObjectResult;
.super Lcom/alibaba/sdk/android/oss/model/OSSResult;


# instance fields
.field private contentLength:J

.field private metadata:Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

.field private objectContent:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSResult;-><init>()V

    new-instance v0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->metadata:Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    return-void
.end method


# virtual methods
.method public getContentLength()J
    .registers 3

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->contentLength:J

    return-wide v0
.end method

.method public getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->metadata:Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    return-object v0
.end method

.method public getObjectContent()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->objectContent:Ljava/io/InputStream;

    return-object v0
.end method

.method public setContentLength(J)V
    .registers 3

    iput-wide p1, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->contentLength:J

    return-void
.end method

.method public setMetadata(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->metadata:Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    return-void
.end method

.method public setObjectContent(Ljava/io/InputStream;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->objectContent:Ljava/io/InputStream;

    return-void
.end method
