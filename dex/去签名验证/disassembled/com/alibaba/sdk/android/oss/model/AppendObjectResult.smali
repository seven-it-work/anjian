.class public Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;
.super Lcom/alibaba/sdk/android/oss/model/OSSResult;


# instance fields
.field private nextPosition:J

.field private objectCRC64:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getNextPosition()J
    .registers 3

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;->nextPosition:J

    return-wide v0
.end method

.method public getObjectCRC64()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;->objectCRC64:Ljava/lang/String;

    return-object v0
.end method

.method public setNextPosition(Ljava/lang/Long;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;->nextPosition:J

    return-void
.end method

.method public setObjectCRC64(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;->objectCRC64:Ljava/lang/String;

    return-void
.end method
