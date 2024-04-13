.class public Lcom/alibaba/sdk/android/oss/model/OSSResult;
.super Ljava/lang/Object;


# instance fields
.field private requestId:Ljava/lang/String;

.field private responseHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private statusCode:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequestId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/OSSResult;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseHeader()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/OSSResult;->responseHeader:Ljava/util/Map;

    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    iget v0, p0, Lcom/alibaba/sdk/android/oss/model/OSSResult;->statusCode:I

    return v0
.end method

.method public setRequestId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/OSSResult;->requestId:Ljava/lang/String;

    return-void
.end method

.method public setResponseHeader(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/OSSResult;->responseHeader:Ljava/util/Map;

    return-void
.end method

.method public setStatusCode(I)V
    .registers 2

    iput p1, p0, Lcom/alibaba/sdk/android/oss/model/OSSResult;->statusCode:I

    return-void
.end method
