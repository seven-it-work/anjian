.class public Lcom/umeng/commonsdk/proguard/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "UMSysLocation"

.field private static final c:I = 0x2710


# instance fields
.field private b:Landroid/location/LocationManager;

.field private d:Z

.field private e:Landroid/content/Context;

.field private f:Landroid/location/LocationListener;

.field private g:Lcom/umeng/commonsdk/proguard/i;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/commonsdk/proguard/g;->d:Z

    new-instance v0, Lcom/umeng/commonsdk/proguard/g$1;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/proguard/g$1;-><init>(Lcom/umeng/commonsdk/proguard/g;)V

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/g;->f:Landroid/location/LocationListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/commonsdk/proguard/g;->d:Z

    new-instance v0, Lcom/umeng/commonsdk/proguard/g$1;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/proguard/g$1;-><init>(Lcom/umeng/commonsdk/proguard/g;)V

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/g;->f:Landroid/location/LocationListener;

    if-nez p1, :cond_15

    const-string p1, "Context\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/g;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/g;->b:Landroid/location/LocationManager;

    return-void
.end method

.method static synthetic a(Lcom/umeng/commonsdk/proguard/g;)Lcom/umeng/commonsdk/proguard/i;
    .registers 1

    iget-object p0, p0, Lcom/umeng/commonsdk/proguard/g;->g:Lcom/umeng/commonsdk/proguard/i;

    return-object p0
.end method

.method static synthetic a(Lcom/umeng/commonsdk/proguard/g;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/umeng/commonsdk/proguard/g;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/umeng/commonsdk/proguard/g;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/umeng/commonsdk/proguard/g;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/umeng/commonsdk/proguard/g;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/umeng/commonsdk/proguard/g;->d:Z

    return p0
.end method

.method static synthetic d(Lcom/umeng/commonsdk/proguard/g;)Landroid/location/LocationManager;
    .registers 1

    iget-object p0, p0, Lcom/umeng/commonsdk/proguard/g;->b:Landroid/location/LocationManager;

    return-object p0
.end method

.method static synthetic e(Lcom/umeng/commonsdk/proguard/g;)Landroid/location/LocationListener;
    .registers 1

    iget-object p0, p0, Lcom/umeng/commonsdk/proguard/g;->f:Landroid/location/LocationListener;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "UMSysLocation"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "destroy"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_41

    :try_start_e
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/g;->e:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/utils/UMUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/g;->e:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/utils/UMUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_37

    :cond_23
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/g;->b:Landroid/location/LocationManager;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/g;->f:Landroid/location/LocationListener;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_29} :catch_39
    .catchall {:try_start_e .. :try_end_29} :catchall_41

    if-eqz v0, :cond_32

    :try_start_2b
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/g;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/g;->f:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_32
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_32} :catch_32
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_32} :catch_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_41

    :catch_32
    :cond_32
    const/4 v0, 0x0

    :try_start_33
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/g;->b:Landroid/location/LocationManager;
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_35} :catch_39
    .catchall {:try_start_33 .. :try_end_35} :catchall_41

    :cond_35
    monitor-exit p0

    return-void

    :cond_37
    :goto_37
    monitor-exit p0

    return-void

    :catch_39
    move-exception v0

    :try_start_3a
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/g;->e:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_41

    monitor-exit p0

    return-void

    :catchall_41
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/umeng/commonsdk/proguard/i;)V
    .registers 16

    monitor-enter p0

    :try_start_1
    const-string v0, "UMSysLocation"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getSystemLocation"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_cd

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/g;->e:Landroid/content/Context;

    if-nez v0, :cond_16

    goto/16 :goto_cd

    :cond_16
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/g;->g:Lcom/umeng/commonsdk/proguard/i;

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/g;->e:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/utils/UMUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_c2

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/g;->e:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v3}, Lcom/umeng/commonsdk/utils/UMUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_cf

    if-nez v0, :cond_2f

    goto/16 :goto_c2

    :cond_2f
    :try_start_2f
    iput-boolean v1, p0, Lcom/umeng/commonsdk/proguard/g;->d:Z

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/g;->b:Landroid/location/LocationManager;

    const-wide/16 v5, 0x2710

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/g;->b:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    const-string v0, "UMSysLocation"

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "NETWORK_PROVIDER"

    aput-object v7, v3, v4

    invoke-static {v0, v3}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/umeng/commonsdk/proguard/g;->b:Landroid/location/LocationManager;

    const-string v9, "network"

    const-wide/16 v10, 0x3e8

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/umeng/commonsdk/proguard/g;->f:Landroid/location/LocationListener;

    invoke-virtual/range {v8 .. v13}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/umeng/commonsdk/proguard/g$2;

    invoke-direct {v3, p0, v0}, Lcom/umeng/commonsdk/proguard/g$2;-><init>(Lcom/umeng/commonsdk/proguard/g;Ljava/util/Timer;)V

    invoke-virtual {v0, v3, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_65} :catch_97
    .catchall {:try_start_2f .. :try_end_65} :catchall_cf

    monitor-exit p0

    return-void

    :cond_67
    :try_start_67
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/g;->b:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_95

    const-string v0, "UMSysLocation"

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "GPS_PROVIDER"

    aput-object v7, v3, v4

    invoke-static {v0, v3}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/umeng/commonsdk/proguard/g;->b:Landroid/location/LocationManager;

    const-string v9, "gps"

    const-wide/16 v10, 0x3e8

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/umeng/commonsdk/proguard/g;->f:Landroid/location/LocationListener;

    invoke-virtual/range {v8 .. v13}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/umeng/commonsdk/proguard/g$3;

    invoke-direct {v3, p0, v0}, Lcom/umeng/commonsdk/proguard/g$3;-><init>(Lcom/umeng/commonsdk/proguard/g;Ljava/util/Timer;)V

    invoke-virtual {v0, v3, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_95} :catch_97
    .catchall {:try_start_67 .. :try_end_95} :catchall_cf

    :cond_95
    monitor-exit p0

    return-void

    :catch_97
    move-exception v0

    :try_start_98
    const-string v3, "UMSysLocation"

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "e is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v3, v1}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_af
    .catchall {:try_start_98 .. :try_end_af} :catchall_cf

    if-eqz p1, :cond_bb

    :try_start_b1
    invoke-virtual {p1, v2}, Lcom/umeng/commonsdk/proguard/i;->a(Landroid/location/Location;)V
    :try_end_b4
    .catch Ljava/lang/Throwable; {:try_start_b1 .. :try_end_b4} :catch_b5
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_cf

    goto :goto_bb

    :catch_b5
    move-exception p1

    :try_start_b6
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/g;->e:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_bb
    :goto_bb
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/g;->e:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_c0
    .catchall {:try_start_b6 .. :try_end_c0} :catchall_cf

    monitor-exit p0

    return-void

    :cond_c2
    :goto_c2
    :try_start_c2
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/g;->g:Lcom/umeng/commonsdk/proguard/i;

    if-eqz p1, :cond_cb

    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/g;->g:Lcom/umeng/commonsdk/proguard/i;

    invoke-virtual {p1, v2}, Lcom/umeng/commonsdk/proguard/i;->a(Landroid/location/Location;)V
    :try_end_cb
    .catchall {:try_start_c2 .. :try_end_cb} :catchall_cf

    :cond_cb
    monitor-exit p0

    return-void

    :cond_cd
    :goto_cd
    monitor-exit p0

    return-void

    :catchall_cf
    move-exception p1

    monitor-exit p0

    throw p1
.end method
