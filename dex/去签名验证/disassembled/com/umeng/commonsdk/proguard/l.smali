.class public Lcom/umeng/commonsdk/proguard/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/proguard/l$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "BatteryUtils"

.field private static b:Z

.field private static c:Landroid/content/Context;


# instance fields
.field private d:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/umeng/commonsdk/proguard/l$1;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/proguard/l$1;-><init>(Lcom/umeng/commonsdk/proguard/l;)V

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/l;->d:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/proguard/l$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/l;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/commonsdk/proguard/l;
    .registers 2

    sget-object v0, Lcom/umeng/commonsdk/proguard/l;->c:Landroid/content/Context;

    if-nez v0, :cond_c

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/commonsdk/proguard/l;->c:Landroid/content/Context;

    :cond_c
    invoke-static {}, Lcom/umeng/commonsdk/proguard/l$a;->a()Lcom/umeng/commonsdk/proguard/l;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/umeng/commonsdk/proguard/l;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/umeng/commonsdk/proguard/l;->b:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/umeng/commonsdk/proguard/l;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/l;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/commonsdk/proguard/l;->b:Z
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_15} :catch_19
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    goto :goto_21

    :catch_19
    move-exception v0

    :try_start_1a
    sget-object v1, Lcom/umeng/commonsdk/proguard/l;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_17

    monitor-exit p0

    return-void

    :goto_21
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .registers 3

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/umeng/commonsdk/proguard/l;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/l;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/commonsdk/proguard/l;->b:Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b} :catch_f
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    goto :goto_17

    :catch_f
    move-exception v0

    :try_start_10
    sget-object v1, Lcom/umeng/commonsdk/proguard/l;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_d

    monitor-exit p0

    return-void

    :goto_17
    monitor-exit p0

    throw v0
.end method
