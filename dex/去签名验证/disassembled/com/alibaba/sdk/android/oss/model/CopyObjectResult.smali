.class public Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;
.super Lcom/alibaba/sdk/android/oss/model/OSSResult;


# instance fields
.field private etag:Ljava/lang/String;

.field private lastModified:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getETag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;->lastModified:Ljava/util/Date;

    return-object v0
.end method

.method public setEtag(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;->etag:Ljava/lang/String;

    return-void
.end method

.method public setLastModified(Ljava/util/Date;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;->lastModified:Ljava/util/Date;

    return-void
.end method
