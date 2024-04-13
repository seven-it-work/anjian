.class public Lcom/umeng/analytics/pro/h;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static f:Lorg/json/JSONObject;


# instance fields
.field b:Z

.field c:Z

.field d:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/h;->f:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/h;->e:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/pro/h;->g:Landroid/app/Application;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/analytics/pro/h;->b:Z

    iput-boolean v0, p0, Lcom/umeng/analytics/pro/h;->c:Z

    new-instance v0, Lcom/umeng/analytics/pro/h$1;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/pro/h$1;-><init>(Lcom/umeng/analytics/pro/h;)V

    iput-object v0, p0, Lcom/umeng/analytics/pro/h;->d:Landroid/app/Application$ActivityLifecycleCallbacks;

    monitor-enter p0

    :try_start_1a
    iget-object v0, p0, Lcom/umeng/analytics/pro/h;->g:Landroid/app/Application;

    if-nez v0, :cond_29

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/h;->g:Landroid/app/Application;

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/app/Activity;)V

    :cond_29
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_1a .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method private a(Landroid/app/Activity;)V
    .registers 5

    iget-boolean v0, p0, Lcom/umeng/analytics/pro/h;->b:Z

    if-nez v0, :cond_17

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/analytics/pro/h;->b:Z

    iget-object v1, p0, Lcom/umeng/analytics/pro/h;->g:Landroid/app/Application;

    iget-object v2, p0, Lcom/umeng/analytics/pro/h;->d:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    sget-object v1, Lcom/umeng/analytics/pro/h;->a:Ljava/lang/String;

    if-nez v1, :cond_17

    iput-boolean v0, p0, Lcom/umeng/analytics/pro/h;->c:Z

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/h;->b(Landroid/app/Activity;)V

    :cond_17
    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/pro/h;Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/h;->b(Landroid/app/Activity;)V

    return-void
.end method

.method private b(Landroid/app/Activity;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/h;->a:Ljava/lang/String;

    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    if-eqz v0, :cond_81

    :try_start_22
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "_$!pv_b"

    sget-object v2, Lcom/umeng/analytics/pro/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_$!ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/b;->i()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_4a

    const-string v2, "_$!sp"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4a
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/o;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "__ii"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5c

    const-string v1, "-1"

    :cond_5c
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/o;->b()Z

    move-result v1

    if-eqz v1, :cond_70

    const-string v1, "__ii"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_70
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x2001

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object p1

    invoke-static {v1, v2, p1, v0}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_81
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_81} :catch_81

    :catch_81
    :cond_81
    iget-object p1, p0, Lcom/umeng/analytics/pro/h;->e:Ljava/util/Map;

    monitor-enter p1

    :try_start_84
    iget-object v0, p0, Lcom/umeng/analytics/pro/h;->e:Ljava/util/Map;

    sget-object v1, Lcom/umeng/analytics/pro/h;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    return-void

    :catchall_95
    move-exception v0

    monitor-exit p1
    :try_end_97
    .catchall {:try_start_84 .. :try_end_97} :catchall_95

    throw v0
.end method

.method public static b(Landroid/content/Context;)V
    .registers 5

    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/h;->f:Lorg/json/JSONObject;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_2e

    if-eqz p0, :cond_2a

    :try_start_5
    sget-object v1, Lcom/umeng/analytics/pro/h;->f:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_2a

    invoke-static {p0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p0

    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/o;->d()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/pro/h;->f:Lorg/json/JSONObject;

    sget-object v3, Lcom/umeng/analytics/pro/g$a;->a:Lcom/umeng/analytics/pro/g$a;

    invoke-virtual {p0, v1, v2, v3}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/g$a;)Z

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    sput-object p0, Lcom/umeng/analytics/pro/h;->f:Lorg/json/JSONObject;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    :cond_2a
    :goto_2a
    monitor-exit v0

    return-void

    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_28

    :try_start_2d
    throw p0
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2e} :catch_2e

    :catch_2e
    return-void
.end method

.method static synthetic b(Lcom/umeng/analytics/pro/h;Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/h;->c(Landroid/app/Activity;)V

    return-void
.end method

.method private c(Landroid/app/Activity;)V
    .registers 8

    const-wide/16 v0, 0x0

    :try_start_2
    iget-object p1, p0, Lcom/umeng/analytics/pro/h;->e:Ljava/util/Map;

    monitor-enter p1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_4f

    :try_start_5
    iget-object v2, p0, Lcom/umeng/analytics/pro/h;->e:Ljava/util/Map;

    sget-object v3, Lcom/umeng/analytics/pro/h;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/umeng/analytics/pro/h;->e:Ljava/util/Map;

    sget-object v3, Lcom/umeng/analytics/pro/h;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x0

    sub-long v4, v0, v2

    iget-object v0, p0, Lcom/umeng/analytics/pro/h;->e:Ljava/util/Map;

    sget-object v1, Lcom/umeng/analytics/pro/h;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide v0, v4

    :cond_2c
    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_4c

    :try_start_2d
    sget-object p1, Lcom/umeng/analytics/pro/h;->f:Lorg/json/JSONObject;

    monitor-enter p1
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_30} :catch_4f

    :try_start_30
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    sput-object v2, Lcom/umeng/analytics/pro/h;->f:Lorg/json/JSONObject;

    const-string v3, "page_name"

    sget-object v4, Lcom/umeng/analytics/pro/h;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcom/umeng/analytics/pro/h;->f:Lorg/json/JSONObject;

    const-string v3, "duration"

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_45} :catch_48
    .catchall {:try_start_30 .. :try_end_45} :catchall_46

    goto :goto_48

    :catchall_46
    move-exception v0

    goto :goto_4a

    :catch_48
    :goto_48
    :try_start_48
    monitor-exit p1

    return-void

    :goto_4a
    monitor-exit p1
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_46

    :try_start_4b
    throw v0
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4c} :catch_4f

    :catchall_4c
    move-exception v0

    :try_start_4d
    monitor-exit p1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    :try_start_4e
    throw v0
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4f} :catch_4f

    :catch_4f
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/analytics/pro/h;->b:Z

    iget-object v0, p0, Lcom/umeng/analytics/pro/h;->g:Landroid/app/Application;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/umeng/analytics/pro/h;->g:Landroid/app/Application;

    iget-object v1, p0, Lcom/umeng/analytics/pro/h;->d:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/pro/h;->g:Landroid/app/Application;

    :cond_11
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/h;->c(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/h;->a()V

    return-void
.end method
