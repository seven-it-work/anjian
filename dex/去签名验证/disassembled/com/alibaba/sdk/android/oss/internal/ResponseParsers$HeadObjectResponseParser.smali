.class public final Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$HeadObjectResponseParser;
.super Lcom/alibaba/sdk/android/oss/internal/AbstractResponseParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeadObjectResponseParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/sdk/android/oss/internal/AbstractResponseParser<",
        "Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;",
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
.method public final parseData(Lb/ae;Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;)Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;->getResponseHeader()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;->parseObjectMetadata(Ljava/util/Map;)Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;->setMetadata(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    return-object p2
.end method

.method public final bridge synthetic parseData(Lb/ae;Lcom/alibaba/sdk/android/oss/model/OSSResult;)Lcom/alibaba/sdk/android/oss/model/OSSResult;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p2, Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$HeadObjectResponseParser;->parseData(Lb/ae;Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;)Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;

    move-result-object p1

    return-object p1
.end method
