.class public Lcom/umeng/analytics/pro/i$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/pro/i;

.field private b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/umeng/analytics/pro/i;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/analytics/pro/i$c;->a:Lcom/umeng/analytics/pro/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    const/4 p1, -0x1

    iput p1, p0, Lcom/umeng/analytics/pro/i$c;->c:I

    iput p1, p0, Lcom/umeng/analytics/pro/i$c;->d:I

    iput p1, p0, Lcom/umeng/analytics/pro/i$c;->e:I

    iput p1, p0, Lcom/umeng/analytics/pro/i$c;->f:I

    return-void
.end method

.method private b(II)Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
    .registers 6

    packed-switch p1, :pswitch_data_86

    :pswitch_3
    iget-object p1, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p1, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;

    if-eqz p1, :cond_80

    goto :goto_10

    :pswitch_a
    iget-object p1, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p1, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$SmartPolicy;

    if-eqz p1, :cond_13

    :goto_10
    iget-object p1, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    return-object p1

    :cond_13
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$SmartPolicy;

    invoke-static {}, Lcom/umeng/analytics/pro/i;->e()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$SmartPolicy;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;)V

    return-object p1

    :pswitch_21
    iget-object p1, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p1, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-object v0, p1

    check-cast v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->setReportInterval(J)V

    return-object p1

    :cond_31
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    invoke-static {}, Lcom/umeng/analytics/pro/i;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v0

    int-to-long v1, p2

    invoke-direct {p1, v0, v1, v2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;J)V

    return-object p1

    :pswitch_40
    iget-object p1, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p1, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;

    if-eqz p1, :cond_47

    goto :goto_10

    :cond_47
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;

    invoke-static {}, Lcom/umeng/analytics/pro/i;->e()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;-><init>(Landroid/content/Context;)V

    return-object p1

    :pswitch_51
    iget-object p1, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p1, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportDaily;

    if-eqz p1, :cond_58

    goto :goto_10

    :cond_58
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportDaily;

    invoke-static {}, Lcom/umeng/analytics/pro/i;->e()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportDaily;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;)V

    return-object p1

    :pswitch_66
    iget-object p1, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p1, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;

    if-eqz p1, :cond_6d

    goto :goto_10

    :cond_6d
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;

    invoke-direct {p1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;-><init>()V

    return-object p1

    :pswitch_73
    iget-object p1, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p1, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportRealtime;

    if-eqz p1, :cond_7a

    goto :goto_10

    :cond_7a
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportRealtime;

    invoke-direct {p1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportRealtime;-><init>()V

    return-object p1

    :cond_80
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;

    invoke-direct {p1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;-><init>()V

    return-object p1

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_73
        :pswitch_66
        :pswitch_3
        :pswitch_3
        :pswitch_51
        :pswitch_40
        :pswitch_21
        :pswitch_3
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public a(I)I
    .registers 5

    invoke-static {}, Lcom/umeng/analytics/pro/i;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "test_report_interval"

    const-string v2, "-1"

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    const/16 v1, 0x5a

    if-lt v0, v1, :cond_24

    const v1, 0x15180

    if-le v0, v1, :cond_21

    return p1

    :cond_21
    mul-int/lit16 v0, v0, 0x3e8

    return v0

    :cond_24
    return p1
.end method

.method public a()V
    .registers 3

    const/4 v0, -0x1

    :try_start_1
    invoke-virtual {p0, v0, v0}, Lcom/umeng/analytics/pro/i$c;->a(II)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/umeng/analytics/pro/i$c;->c:I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/umeng/analytics/pro/i$c;->d:I
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_f} :catch_f

    :catch_f
    return-void
.end method

.method public a(II)[I
    .registers 10

    invoke-static {}, Lcom/umeng/analytics/pro/i;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "report_policy"

    const-string v2, "-1"

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/umeng/analytics/pro/i;->e()Landroid/content/Context;

    move-result-object v1

    const-string v2, "report_interval"

    const-string v3, "-1"

    invoke-static {v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, -0x1

    if-eq v0, v5, :cond_4b

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy;->isValid(I)Z

    move-result v6

    if-nez v6, :cond_35

    goto :goto_4b

    :cond_35
    const/16 p1, 0x5a

    if-eq v1, v5, :cond_42

    if-lt v1, p1, :cond_42

    const p2, 0x15180

    if-le v1, p2, :cond_41

    goto :goto_42

    :cond_41
    move p1, v1

    :cond_42
    :goto_42
    new-array p2, v4, [I

    aput v0, p2, v3

    mul-int/lit16 p1, p1, 0x3e8

    aput p1, p2, v2

    return-object p2

    :cond_4b
    :goto_4b
    new-array v0, v4, [I

    aput p1, v0, v3

    aput p2, v0, v2

    return-object v0
.end method

.method protected b()V
    .registers 7

    invoke-static {}, Lcom/umeng/analytics/pro/i;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/Defcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->isOpen()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v1, v1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v2, 0x1

    :cond_1f
    if-eqz v2, :cond_24

    iget-object v0, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    goto :goto_32

    :cond_24
    new-instance v1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;

    invoke-static {}, Lcom/umeng/analytics/pro/i;->e()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;Lcom/umeng/commonsdk/statistics/noise/Defcon;)V

    move-object v0, v1

    :goto_32
    iput-object v0, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    goto/16 :goto_d6

    :cond_36
    invoke-static {}, Lcom/umeng/analytics/pro/i;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "integrated_test"

    const-string v4, "-1"

    invoke-static {v0, v1, v4}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_4e

    const/4 v0, 0x1

    goto :goto_4f

    :cond_4e
    const/4 v0, 0x0

    :goto_4f
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v1, :cond_63

    if-eqz v0, :cond_63

    new-instance v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DebugPolicy;

    invoke-static {}, Lcom/umeng/analytics/pro/i;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DebugPolicy;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;)V

    goto :goto_32

    :cond_63
    iget-object v0, p0, Lcom/umeng/analytics/pro/i$c;->a:Lcom/umeng/analytics/pro/i;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Lcom/umeng/analytics/pro/i;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_c4

    const-string v0, "RPT"

    iget-object v4, p0, Lcom/umeng/analytics/pro/i$c;->a:Lcom/umeng/analytics/pro/i;

    invoke-static {v4}, Lcom/umeng/analytics/pro/i;->a(Lcom/umeng/analytics/pro/i;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getTestName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    iget-object v0, p0, Lcom/umeng/analytics/pro/i$c;->a:Lcom/umeng/analytics/pro/i;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Lcom/umeng/analytics/pro/i;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getTestPolicy()I

    move-result v0

    const/4 v4, 0x6

    if-ne v0, v4, :cond_b9

    invoke-static {}, Lcom/umeng/analytics/pro/i;->e()Landroid/content/Context;

    move-result-object v0

    const-string v4, "test_report_interval"

    const-string v5, "-1"

    invoke-static {v0, v4, v5}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_a6

    const/4 v2, 0x1

    :cond_a6
    if-eqz v2, :cond_b0

    const v0, 0x15f90

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/i$c;->a(I)I

    move-result v2

    goto :goto_b9

    :cond_b0
    iget v0, p0, Lcom/umeng/analytics/pro/i$c;->d:I

    if-lez v0, :cond_b7

    iget v2, p0, Lcom/umeng/analytics/pro/i$c;->d:I

    goto :goto_b9

    :cond_b7
    iget v2, p0, Lcom/umeng/analytics/pro/i$c;->f:I

    :cond_b9
    :goto_b9
    iget-object v0, p0, Lcom/umeng/analytics/pro/i$c;->a:Lcom/umeng/analytics/pro/i;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Lcom/umeng/analytics/pro/i;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getTestPolicy()I

    move-result v0

    goto :goto_d0

    :cond_c4
    iget v0, p0, Lcom/umeng/analytics/pro/i$c;->e:I

    iget v2, p0, Lcom/umeng/analytics/pro/i$c;->f:I

    iget v3, p0, Lcom/umeng/analytics/pro/i$c;->c:I

    if-eq v3, v1, :cond_d0

    iget v0, p0, Lcom/umeng/analytics/pro/i$c;->c:I

    iget v2, p0, Lcom/umeng/analytics/pro/i$c;->d:I

    :cond_d0
    :goto_d0
    invoke-direct {p0, v0, v2}, Lcom/umeng/analytics/pro/i$c;->b(II)Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object v0

    goto/16 :goto_32

    :goto_d6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Report policy : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public c()Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
    .registers 2

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/i$c;->b()V

    iget-object v0, p0, Lcom/umeng/analytics/pro/i$c;->b:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    return-object v0
.end method
