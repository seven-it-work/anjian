.class public Lcom/umeng/commonsdk/statistics/common/ReportPolicy$LatentPolicy;
.super Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/common/ReportPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LatentPolicy"
.end annotation


# instance fields
.field private latency:J

.field private start:J


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$LatentPolicy;->start:J

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$LatentPolicy;->latency:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$LatentPolicy;->start:J

    return-void
.end method


# virtual methods
.method public isValid()Z
    .registers 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$LatentPolicy;->start:J

    sub-long v4, v0, v2

    iget-wide v0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$LatentPolicy;->latency:J

    cmp-long v2, v4, v0

    if-gez v2, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSendMessage(Z)Z
    .registers 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$LatentPolicy;->start:J

    sub-long v4, v0, v2

    iget-wide v0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$LatentPolicy;->latency:J

    cmp-long p1, v4, v0

    if-ltz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method
