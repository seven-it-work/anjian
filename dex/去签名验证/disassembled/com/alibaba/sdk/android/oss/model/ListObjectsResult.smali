.class public Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;
.super Lcom/alibaba/sdk/android/oss/model/OSSResult;


# instance fields
.field private bucketName:Ljava/lang/String;

.field private commonPrefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private delimiter:Ljava/lang/String;

.field private encodingType:Ljava/lang/String;

.field private isTruncated:Z

.field private marker:Ljava/lang/String;

.field private maxKeys:I

.field private nextMarker:Ljava/lang/String;

.field private objectSummaries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;",
            ">;"
        }
    .end annotation
.end field

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSResult;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->objectSummaries:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->commonPrefixes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addCommonPrefix(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->commonPrefixes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addObjectSummary(Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;)V
    .registers 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->objectSummaries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearCommonPrefixes()V
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->commonPrefixes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearObjectSummaries()V
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->objectSummaries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getBucketName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getCommonPrefixes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->commonPrefixes:Ljava/util/List;

    return-object v0
.end method

.method public getDelimiter()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodingType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->encodingType:Ljava/lang/String;

    return-object v0
.end method

.method public getMarker()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->marker:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxKeys()I
    .registers 2

    iget v0, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->maxKeys:I

    return v0
.end method

.method public getNextMarker()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->nextMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectSummaries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->objectSummaries:Ljava/util/List;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public isTruncated()Z
    .registers 2

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->isTruncated:Z

    return v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->delimiter:Ljava/lang/String;

    return-void
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->encodingType:Ljava/lang/String;

    return-void
.end method

.method public setMarker(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->marker:Ljava/lang/String;

    return-void
.end method

.method public setMaxKeys(I)V
    .registers 2

    iput p1, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->maxKeys:I

    return-void
.end method

.method public setNextMarker(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->nextMarker:Ljava/lang/String;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->prefix:Ljava/lang/String;

    return-void
.end method

.method public setTruncated(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->isTruncated:Z

    return-void
.end method
