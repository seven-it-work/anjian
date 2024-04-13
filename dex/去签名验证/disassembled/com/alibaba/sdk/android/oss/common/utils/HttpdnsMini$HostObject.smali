.class Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HostObject"
.end annotation


# instance fields
.field private hostName:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private queryTime:J

.field final synthetic this$0:Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;

.field private ttl:J


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;->this$0:Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHostName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryTime()J
    .registers 3

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;->queryTime:J

    return-wide v0
.end method

.method public getTtl()J
    .registers 3

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;->ttl:J

    return-wide v0
.end method

.method public isExpired()Z
    .registers 7

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;->getQueryTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;->ttl:J

    add-long v4, v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    cmp-long v2, v4, v0

    if-gez v2, :cond_15

    const/4 v0, 0x1

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public isStillAvailable()Z
    .registers 7

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;->getQueryTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;->ttl:J

    add-long v4, v0, v2

    const-wide/16 v0, 0x258

    add-long v2, v4, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    cmp-long v4, v2, v0

    if-lez v4, :cond_19

    const/4 v0, 0x1

    return v0

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public setHostName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;->hostName:Ljava/lang/String;

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;->ip:Ljava/lang/String;

    return-void
.end method

.method public setQueryTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;->queryTime:J

    return-void
.end method

.method public setTtl(J)V
    .registers 3

    iput-wide p1, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;->ttl:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[hostName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ttl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;->getTtl()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", queryTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;->queryTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
