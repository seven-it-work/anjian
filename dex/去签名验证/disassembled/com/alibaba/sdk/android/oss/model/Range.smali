.class public Lcom/alibaba/sdk/android/oss/model/Range;
.super Ljava/lang/Object;


# static fields
.field public static final INFINITE:J = -0x1L


# instance fields
.field private begin:J

.field private end:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/model/Range;->setBegin(J)V

    invoke-virtual {p0, p3, p4}, Lcom/alibaba/sdk/android/oss/model/Range;->setEnd(J)V

    return-void
.end method


# virtual methods
.method public checkIsValid()Z
    .registers 7

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/model/Range;->begin:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    const/4 v0, 0x0

    if-ltz v4, :cond_28

    iget-wide v4, p0, Lcom/alibaba/sdk/android/oss/model/Range;->end:J

    cmp-long v1, v4, v2

    if-gez v1, :cond_10

    return v0

    :cond_10
    iget-wide v1, p0, Lcom/alibaba/sdk/android/oss/model/Range;->begin:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_27

    iget-wide v1, p0, Lcom/alibaba/sdk/android/oss/model/Range;->end:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_27

    iget-wide v1, p0, Lcom/alibaba/sdk/android/oss/model/Range;->begin:J

    iget-wide v3, p0, Lcom/alibaba/sdk/android/oss/model/Range;->end:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_27

    return v0

    :cond_27
    const/4 v0, 0x1

    :cond_28
    return v0
.end method

.method public getBegin()J
    .registers 3

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/model/Range;->begin:J

    return-wide v0
.end method

.method public getEnd()J
    .registers 3

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/model/Range;->end:J

    return-wide v0
.end method

.method public setBegin(J)V
    .registers 3

    iput-wide p1, p0, Lcom/alibaba/sdk/android/oss/model/Range;->begin:J

    return-void
.end method

.method public setEnd(J)V
    .registers 3

    iput-wide p1, p0, Lcom/alibaba/sdk/android/oss/model/Range;->end:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bytes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/alibaba/sdk/android/oss/model/Range;->begin:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_12

    const-string v1, ""

    goto :goto_18

    :cond_12
    iget-wide v1, p0, Lcom/alibaba/sdk/android/oss/model/Range;->begin:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    :goto_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alibaba/sdk/android/oss/model/Range;->end:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_29

    const-string v1, ""

    goto :goto_2f

    :cond_29
    iget-wide v1, p0, Lcom/alibaba/sdk/android/oss/model/Range;->end:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    :goto_2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
