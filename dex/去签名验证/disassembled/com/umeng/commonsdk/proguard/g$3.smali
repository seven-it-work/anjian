.class Lcom/umeng/commonsdk/proguard/g$3;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/proguard/g;->a(Lcom/umeng/commonsdk/proguard/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Timer;

.field final synthetic b:Lcom/umeng/commonsdk/proguard/g;


# direct methods
.method constructor <init>(Lcom/umeng/commonsdk/proguard/g;Ljava/util/Timer;)V
    .registers 3

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/g$3;->b:Lcom/umeng/commonsdk/proguard/g;

    iput-object p2, p0, Lcom/umeng/commonsdk/proguard/g$3;->a:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    const-string v0, "UMSysLocation"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "GPS_PROVIDER runing"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/g$3;->a:Ljava/util/Timer;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/g$3;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_16
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/g$3;->b:Lcom/umeng/commonsdk/proguard/g;

    invoke-static {v0}, Lcom/umeng/commonsdk/proguard/g;->c(Lcom/umeng/commonsdk/proguard/g;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/g$3;->b:Lcom/umeng/commonsdk/proguard/g;

    invoke-static {v0}, Lcom/umeng/commonsdk/proguard/g;->d(Lcom/umeng/commonsdk/proguard/g;)Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/g$3;->b:Lcom/umeng/commonsdk/proguard/g;

    invoke-static {v0}, Lcom/umeng/commonsdk/proguard/g;->e(Lcom/umeng/commonsdk/proguard/g;)Landroid/location/LocationListener;

    move-result-object v0
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2c} :catch_50

    if-eqz v0, :cond_3d

    :try_start_2e
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/g$3;->b:Lcom/umeng/commonsdk/proguard/g;

    invoke-static {v0}, Lcom/umeng/commonsdk/proguard/g;->d(Lcom/umeng/commonsdk/proguard/g;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/g$3;->b:Lcom/umeng/commonsdk/proguard/g;

    invoke-static {v1}, Lcom/umeng/commonsdk/proguard/g;->e(Lcom/umeng/commonsdk/proguard/g;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_3d
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_3d} :catch_3d
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_3d} :catch_3d

    :catch_3d
    :cond_3d
    :try_start_3d
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/g$3;->b:Lcom/umeng/commonsdk/proguard/g;

    invoke-static {v0}, Lcom/umeng/commonsdk/proguard/g;->a(Lcom/umeng/commonsdk/proguard/g;)Lcom/umeng/commonsdk/proguard/i;

    move-result-object v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/g$3;->b:Lcom/umeng/commonsdk/proguard/g;

    invoke-static {v0}, Lcom/umeng/commonsdk/proguard/g;->a(Lcom/umeng/commonsdk/proguard/g;)Lcom/umeng/commonsdk/proguard/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/proguard/i;->a(Landroid/location/Location;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_4f} :catch_50

    :cond_4f
    return-void

    :catch_50
    move-exception v0

    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/g$3;->b:Lcom/umeng/commonsdk/proguard/g;

    invoke-static {v1}, Lcom/umeng/commonsdk/proguard/g;->b(Lcom/umeng/commonsdk/proguard/g;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void
.end method
