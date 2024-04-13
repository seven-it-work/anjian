.class public Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;
.super Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/common/ReportPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportByInterval"
.end annotation


# static fields
.field private static MAX_REPORT_INTERVAL:J = 0x5265c00L

.field private static MIN_REPORT_INTERVAL:J = 0x15f90L


# instance fields
.field private mReportInterval:J

.field private mTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;J)V
    .registers 4

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;-><init>()V

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->mTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    invoke-virtual {p0, p2, p3}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->setReportInterval(J)V

    return-void
.end method

.method public static isValidValue(I)Z
    .registers 5

    int-to-long v0, p0

    sget-wide v2, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->MIN_REPORT_INTERVAL:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_9

    const/4 p0, 0x0

    return p0

    :cond_9
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getReportInterval()J
    .registers 3

    iget-wide v0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->mReportInterval:J

    return-wide v0
.end method

.method public setReportInterval(J)V
    .registers 6

    sget-wide v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->MIN_REPORT_INTERVAL:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_f

    sget-wide v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->MAX_REPORT_INTERVAL:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_f

    iput-wide p1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->mReportInterval:J

    return-void

    :cond_f
    sget-wide p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->MIN_REPORT_INTERVAL:J

    iput-wide p1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->mReportInterval:J

    return-void
.end method

.method public shouldSendMessage(Z)Z
    .registers 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/umeng/commonsdk/framework/c;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->lastSuccessfulBuildTime(Landroid/content/Context;)J

    move-result-wide v2

    sub-long v4, v0, v2

    iget-wide v0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->mReportInterval:J

    cmp-long p1, v4, v0

    if-ltz p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method
