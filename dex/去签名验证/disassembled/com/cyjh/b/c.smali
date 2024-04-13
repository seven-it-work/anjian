.class public final Lcom/cyjh/b/c;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->openActivityDurationTrack(Z)V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/umeng/commonsdk/UMConfigure;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->openActivityDurationTrack(Z)V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onKillProcess(Landroid/content/Context;)V

    return-void
.end method
