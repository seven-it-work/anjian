.class public Lcom/umeng/analytics/dplus/UMADplus;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearSuperProperties(Landroid/content/Context;)V
    .registers 2

    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    if-nez v0, :cond_a

    const-string p0, "UMADplus class is Dplus API, can\'t be use in no-Dplus scenario."

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-static {}, Lcom/umeng/analytics/MobclickAgent;->getAgent()Lcom/umeng/analytics/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/b;->e(Landroid/content/Context;)V

    return-void
.end method

.method public static getSuperProperties(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    if-nez v0, :cond_b

    const-string p0, "UMADplus class is Dplus API, can\'t be use in no-Dplus scenario."

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_b
    invoke-static {}, Lcom/umeng/analytics/MobclickAgent;->getAgent()Lcom/umeng/analytics/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSuperProperty(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    if-nez v0, :cond_b

    const-string p0, "UMADplus class is Dplus API, can\'t be use in no-Dplus scenario."

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_b
    invoke-static {}, Lcom/umeng/analytics/MobclickAgent;->getAgent()Lcom/umeng/analytics/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/umeng/analytics/b;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static registerSuperProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    if-nez v0, :cond_a

    const-string p0, "UMADplus class is Dplus API, can\'t be use in no-Dplus scenario."

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-static {}, Lcom/umeng/analytics/MobclickAgent;->getAgent()Lcom/umeng/analytics/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setFirstLaunchEvent(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    if-nez v0, :cond_a

    const-string p0, "UMADplus class is Dplus API, can\'t be use in no-Dplus scenario."

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-static {}, Lcom/umeng/analytics/MobclickAgent;->getAgent()Lcom/umeng/analytics/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static track(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    if-nez v0, :cond_a

    const-string p0, "UMADplus class is Dplus API, can\'t be use in no-Dplus scenario."

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-static {}, Lcom/umeng/analytics/MobclickAgent;->getAgent()Lcom/umeng/analytics/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static track(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    if-nez v0, :cond_a

    const-string p0, "UMADplus class is Dplus API, can\'t be use in no-Dplus scenario."

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_a
    if-eqz p2, :cond_12

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_17

    :cond_12
    const-string v0, "the map is null!"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    :cond_17
    invoke-static {}, Lcom/umeng/analytics/MobclickAgent;->getAgent()Lcom/umeng/analytics/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static unregisterSuperProperty(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    if-nez v0, :cond_a

    const-string p0, "UMADplus class is Dplus API, can\'t be use in no-Dplus scenario."

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-static {}, Lcom/umeng/analytics/MobclickAgent;->getAgent()Lcom/umeng/analytics/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/umeng/analytics/b;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
