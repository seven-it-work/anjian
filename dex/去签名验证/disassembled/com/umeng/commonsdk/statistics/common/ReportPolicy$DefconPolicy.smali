.class public Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;
.super Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/common/ReportPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefconPolicy"
.end annotation


# instance fields
.field private defcon:Lcom/umeng/commonsdk/statistics/noise/Defcon;

.field private tracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;


# direct methods
.method public constructor <init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;Lcom/umeng/commonsdk/statistics/noise/Defcon;)V
    .registers 3

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;-><init>()V

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;->tracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    iput-object p2, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;->defcon:Lcom/umeng/commonsdk/statistics/noise/Defcon;

    return-void
.end method


# virtual methods
.method public isValid()Z
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;->defcon:Lcom/umeng/commonsdk/statistics/noise/Defcon;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->isOpen()Z

    move-result v0

    return v0
.end method

.method public shouldSendMessage(Z)Z
    .registers 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;->defcon:Lcom/umeng/commonsdk/statistics/noise/Defcon;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->getReqInterval()J

    move-result-wide v2

    invoke-static {}, Lcom/umeng/commonsdk/framework/c;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->lastSuccessfulBuildTime(Landroid/content/Context;)J

    move-result-wide v4

    sub-long v6, v0, v4

    cmp-long p1, v6, v2

    if-ltz p1, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method
