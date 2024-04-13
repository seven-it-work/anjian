.class public Lcom/alibaba/sdk/android/oss/model/PartSummary;
.super Ljava/lang/Object;


# instance fields
.field private eTag:Ljava/lang/String;

.field private lastModified:Ljava/util/Date;

.field private partNumber:I

.field private size:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getETag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/PartSummary;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/PartSummary;->lastModified:Ljava/util/Date;

    return-object v0
.end method

.method public getPartNumber()I
    .registers 2

    iget v0, p0, Lcom/alibaba/sdk/android/oss/model/PartSummary;->partNumber:I

    return v0
.end method

.method public getSize()J
    .registers 3

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/model/PartSummary;->size:J

    return-wide v0
.end method

.method public setETag(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/PartSummary;->eTag:Ljava/lang/String;

    return-void
.end method

.method public setLastModified(Ljava/util/Date;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/PartSummary;->lastModified:Ljava/util/Date;

    return-void
.end method

.method public setPartNumber(I)V
    .registers 2

    iput p1, p0, Lcom/alibaba/sdk/android/oss/model/PartSummary;->partNumber:I

    return-void
.end method

.method public setSize(J)V
    .registers 3

    iput-wide p1, p0, Lcom/alibaba/sdk/android/oss/model/PartSummary;->size:J

    return-void
.end method
