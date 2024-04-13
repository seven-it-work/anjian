.class public Lcom/umeng/commonsdk/UMConfigureImpl;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/umeng/commonsdk/amap/b;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;)V
    .registers 9

    const-class v0, Lcom/umeng/commonsdk/UMConfigureImpl;

    monitor-enter v0

    if-eqz p0, :cond_9a

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_b} :catch_74
    .catchall {:try_start_7 .. :try_end_b} :catchall_72

    :try_start_b
    new-instance p0, Lcom/umeng/commonsdk/amap/a;

    invoke-direct {p0, v3}, Lcom/umeng/commonsdk/amap/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/umeng/commonsdk/amap/a;->a()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_64

    invoke-static {v3}, Lcom/umeng/commonsdk/framework/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_62

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_62

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_62

    sget-object p0, Lcom/umeng/commonsdk/UMConfigureImpl;->a:Lcom/umeng/commonsdk/amap/b;

    if-nez p0, :cond_3d

    new-instance p0, Lcom/umeng/commonsdk/amap/b;

    const-wide/16 v4, 0x2710

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/umeng/commonsdk/amap/b;-><init>(Landroid/content/Context;IJ)V

    sput-object p0, Lcom/umeng/commonsdk/UMConfigureImpl;->a:Lcom/umeng/commonsdk/amap/b;

    :cond_3d
    sget-object p0, Lcom/umeng/commonsdk/UMConfigureImpl;->a:Lcom/umeng/commonsdk/amap/b;

    invoke-virtual {p0}, Lcom/umeng/commonsdk/amap/b;->isAlive()Z

    move-result p0

    if-nez p0, :cond_57

    const-string p0, "AmapLBS"

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "[lbs-build] begin write LBS"

    aput-object v5, v4, v1

    invoke-static {p0, v4}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lcom/umeng/commonsdk/UMConfigureImpl;->a:Lcom/umeng/commonsdk/amap/b;

    invoke-virtual {p0}, Lcom/umeng/commonsdk/amap/b;->start()V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_55} :catch_70
    .catchall {:try_start_b .. :try_end_55} :catchall_72

    monitor-exit v0

    return-void

    :cond_57
    :try_start_57
    const-string p0, "AmapLBS"

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "[lbs-build] not write start"

    aput-object v5, v4, v1

    invoke-static {p0, v4}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_62} :catch_70
    .catchall {:try_start_57 .. :try_end_62} :catchall_72

    :cond_62
    monitor-exit v0

    return-void

    :cond_64
    :try_start_64
    const-string p0, "AmapLBS"

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "[lbs-send] not get AMAP !!!"

    aput-object v5, v4, v1

    invoke-static {p0, v4}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_6f} :catch_70
    .catchall {:try_start_64 .. :try_end_6f} :catchall_72

    goto :goto_9a

    :catch_70
    move-exception p0

    goto :goto_78

    :catchall_72
    move-exception p0

    goto :goto_98

    :catch_74
    move-exception v3

    move-object v7, v3

    move-object v3, p0

    move-object p0, v7

    :goto_78
    :try_start_78
    const-string v4, "AmapLBS"

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "e is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v4, v2}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3, p0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_96
    .catchall {:try_start_78 .. :try_end_96} :catchall_72

    monitor-exit v0

    return-void

    :goto_98
    monitor-exit v0

    throw p0

    :cond_9a
    :goto_9a
    monitor-exit v0

    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .registers 4

    if-eqz p0, :cond_2e

    :try_start_2
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/commonsdk/UMConfigureImpl$1;

    invoke-direct {v1, p0}, Lcom/umeng/commonsdk/UMConfigureImpl$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception v0

    invoke-static {p0, v0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_2e
    return-void
.end method

.method private static declared-synchronized c(Landroid/content/Context;)V
    .registers 9

    const-class v0, Lcom/umeng/commonsdk/UMConfigureImpl;

    monitor-enter v0

    if-eqz p0, :cond_a6

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_7
    sget-boolean v3, Lcom/umeng/commonsdk/UMConfigureImpl;->b:Z

    if-nez v3, :cond_a6

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/umeng/commonsdk/UMConfigureImpl$2;

    invoke-direct {v4, p0}, Lcom/umeng/commonsdk/UMConfigureImpl$2;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_51

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_51

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_30} :catch_83
    .catchall {:try_start_7 .. :try_end_30} :catchall_81

    if-eqz v3, :cond_51

    :try_start_32
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/j;->r(Landroid/content/Context;)Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_36
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_35} :catch_83
    .catchall {:try_start_32 .. :try_end_35} :catchall_81

    goto :goto_51

    :catch_36
    move-exception v3

    :try_start_37
    const-string v4, "internal"

    new-array v5, v2, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "e is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, v3}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_51} :catch_83
    .catchall {:try_start_37 .. :try_end_51} :catchall_81

    :cond_51
    :goto_51
    :try_start_51
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/k;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/proguard/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/commonsdk/proguard/k;->a()Z

    move-result v3

    if-nez v3, :cond_7e

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/k;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/proguard/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/commonsdk/proguard/k;->b()V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_62} :catch_63
    .catchall {:try_start_51 .. :try_end_62} :catchall_81

    goto :goto_7e

    :catch_63
    move-exception v3

    :try_start_64
    const-string v4, "internal"

    new-array v5, v2, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "e is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, v3}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_7e
    :goto_7e
    sput-boolean v2, Lcom/umeng/commonsdk/UMConfigureImpl;->b:Z
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_80} :catch_83
    .catchall {:try_start_64 .. :try_end_80} :catchall_81

    goto :goto_a6

    :catchall_81
    move-exception p0

    goto :goto_a4

    :catch_83
    move-exception v3

    :try_start_84
    const-string v4, "internal"

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "e is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v4, v2}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, v3}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_a2
    .catchall {:try_start_84 .. :try_end_a2} :catchall_81

    monitor-exit v0

    return-void

    :goto_a4
    monitor-exit v0

    throw p0

    :cond_a6
    :goto_a6
    monitor-exit v0

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 1

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/UMConfigureImpl;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/umeng/commonsdk/UMConfigureImpl;->b(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/umeng/commonsdk/UMConfigureImpl;->c(Landroid/content/Context;)V

    return-void
.end method
