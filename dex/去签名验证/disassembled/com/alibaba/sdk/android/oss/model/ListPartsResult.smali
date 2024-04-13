.class public Lcom/alibaba/sdk/android/oss/model/ListPartsResult;
.super Lcom/alibaba/sdk/android/oss/model/OSSResult;


# instance fields
.field private bucketName:Ljava/lang/String;

.field private isTruncated:Z

.field private key:Ljava/lang/String;

.field private maxParts:Ljava/lang/Integer;

.field private nextPartNumberMarker:Ljava/lang/Integer;

.field private partNumberMarker:Ljava/lang/Integer;

.field private parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/oss/model/PartSummary;",
            ">;"
        }
    .end annotation
.end field

.field private storageClass:Ljava/lang/String;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSResult;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->parts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxParts()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->maxParts:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNextPartNumberMarker()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->nextPartNumberMarker:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPartNumberMarker()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->partNumberMarker:Ljava/lang/Integer;

    return-object v0
.end method

.method public getParts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/oss/model/PartSummary;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->parts:Ljava/util/List;

    return-object v0
.end method

.method public getStorageClass()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->storageClass:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public isTruncated()Z
    .registers 2

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->isTruncated:Z

    return v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->key:Ljava/lang/String;

    return-void
.end method

.method public setMaxParts(I)V
    .registers 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->maxParts:Ljava/lang/Integer;

    return-void
.end method

.method public setNextPartNumberMarker(I)V
    .registers 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->nextPartNumberMarker:Ljava/lang/Integer;

    return-void
.end method

.method public setPartNumberMarker(I)V
    .registers 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->partNumberMarker:Ljava/lang/Integer;

    return-void
.end method

.method public setParts(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/oss/model/PartSummary;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_12

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_12
    return-void
.end method

.method public setStorageClass(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->storageClass:Ljava/lang/String;

    return-void
.end method

.method public setTruncated(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->isTruncated:Z

    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->uploadId:Ljava/lang/String;

    return-void
.end method
