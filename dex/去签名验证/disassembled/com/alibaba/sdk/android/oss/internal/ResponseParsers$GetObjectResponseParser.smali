.class public final Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetObjectResponseParser;
.super Lcom/alibaba/sdk/android/oss/internal/AbstractResponseParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetObjectResponseParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/sdk/android/oss/internal/AbstractResponseParser<",
        "Lcom/alibaba/sdk/android/oss/model/GetObjectResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/internal/AbstractResponseParser;-><init>()V

    return-void
.end method


# virtual methods
.method public final needCloseResponse()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final parseData(Lb/ae;Lcom/alibaba/sdk/android/oss/model/GetObjectResult;)Lcom/alibaba/sdk/android/oss/model/GetObjectResult;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->getResponseHeader()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseObjectMetadata(Ljava/util/Map;)Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->setMetadata(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    invoke-virtual {p1}, Lb/ae;->d()Lb/af;

    move-result-object v0

    invoke-virtual {v0}, Lb/af;->contentLength()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->setContentLength(J)V

    invoke-virtual {p1}, Lb/ae;->d()Lb/af;

    move-result-object p1

    invoke-virtual {p1}, Lb/af;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->setObjectContent(Ljava/io/InputStream;)V

    return-object p2
.end method

.method public final bridge synthetic parseData(Lb/ae;Lcom/alibaba/sdk/android/oss/model/OSSResult;)Lcom/alibaba/sdk/android/oss/model/OSSResult;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p2, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetObjectResponseParser;->parseData(Lb/ae;Lcom/alibaba/sdk/android/oss/model/GetObjectResult;)Lcom/alibaba/sdk/android/oss/model/GetObjectResult;

    move-result-object p1

    return-object p1
.end method
