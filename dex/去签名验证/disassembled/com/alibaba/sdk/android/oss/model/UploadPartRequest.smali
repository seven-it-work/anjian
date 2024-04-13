.class public Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;
.super Lcom/alibaba/sdk/android/oss/model/OSSRequest;


# instance fields
.field private bucketName:Ljava/lang/String;

.field private md5Digest:Ljava/lang/String;

.field private objectKey:Ljava/lang/String;

.field private partContent:[B

.field private partNumber:I

.field private progressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback<",
            "Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;",
            ">;"
        }
    .end annotation
.end field

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSRequest;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->bucketName:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->objectKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->uploadId:Ljava/lang/String;

    iput p4, p0, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->partNumber:I

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5Digest()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->md5Digest:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->objectKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPartContent()[B
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->partContent:[B

    return-object v0
.end method

.method public getPartNumber()I
    .registers 2

    iget v0, p0, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->partNumber:I

    return v0
.end method

.method public getProgressCallback()Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback<",
            "Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->progressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setMd5Digest(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->md5Digest:Ljava/lang/String;

    return-void
.end method

.method public setObjectKey(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public setPartContent([B)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->partContent:[B

    return-void
.end method

.method public setPartNumber(I)V
    .registers 2

    iput p1, p0, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->partNumber:I

    return-void
.end method

.method public setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback<",
            "Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->progressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->uploadId:Ljava/lang/String;

    return-void
.end method
