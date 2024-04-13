.class public Lcom/umeng/analytics/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/umeng/analytics/pro/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/b$a;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = "sp"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/umeng/analytics/pro/r;

.field private c:Lcom/umeng/analytics/pro/j;

.field private d:Lcom/umeng/analytics/pro/p;

.field private e:Lcom/umeng/analytics/pro/o;

.field private f:Lcom/umeng/analytics/pro/h;

.field private h:Z

.field private volatile i:Lorg/json/JSONObject;

.field private volatile j:Lorg/json/JSONObject;

.field private k:Z


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    new-instance v1, Lcom/umeng/analytics/pro/j;

    invoke-direct {v1}, Lcom/umeng/analytics/pro/j;-><init>()V

    iput-object v1, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/pro/j;

    new-instance v1, Lcom/umeng/analytics/pro/p;

    invoke-direct {v1}, Lcom/umeng/analytics/pro/p;-><init>()V

    iput-object v1, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/pro/p;

    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/pro/o;

    iput-object v0, p0, Lcom/umeng/analytics/b;->f:Lcom/umeng/analytics/pro/h;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/umeng/analytics/b;->h:Z

    iput-object v0, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    iput-boolean v1, p0, Lcom/umeng/analytics/b;->k:Z

    iget-object v0, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/pro/j;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/pro/j;->a(Lcom/umeng/analytics/pro/n;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/b$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/umeng/analytics/b;-><init>()V

    return-void
.end method

.method public static a()Lcom/umeng/analytics/b;
    .registers 1

    invoke-static {}, Lcom/umeng/analytics/b$a;->a()Lcom/umeng/analytics/b;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    if-nez v0, :cond_b

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    :cond_b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c4

    instance-of v0, p2, [Ljava/lang/String;

    if-eqz v0, :cond_37

    check-cast p2, [Ljava/lang/String;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :goto_26
    array-length v2, p2

    if-ge v1, v2, :cond_31

    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_31
    iget-object p2, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    :cond_37
    instance-of v0, p2, [J

    if-eqz v0, :cond_53

    check-cast p2, [J

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :goto_42
    array-length v2, p2

    if-ge v1, v2, :cond_4d

    aget-wide v2, p2, v1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_4d
    iget-object p2, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    :cond_53
    instance-of v0, p2, [I

    if-eqz v0, :cond_6f

    check-cast p2, [I

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :goto_5e
    array-length v2, p2

    if-ge v1, v2, :cond_69

    aget v2, p2, v1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    :cond_69
    iget-object p2, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    :cond_6f
    instance-of v0, p2, [F

    if-eqz v0, :cond_8c

    check-cast p2, [F

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :goto_7a
    array-length v2, p2

    if-ge v1, v2, :cond_86

    aget v2, p2, v1

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7a

    :cond_86
    iget-object p2, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    :cond_8c
    instance-of v0, p2, [D

    if-eqz v0, :cond_a8

    check-cast p2, [D

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :goto_97
    array-length v2, p2

    if-ge v1, v2, :cond_a2

    aget-wide v2, p2, v1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_97

    :cond_a2
    iget-object p2, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    :cond_a8
    instance-of v0, p2, [S

    if-eqz v0, :cond_11e

    check-cast p2, [S

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :goto_b3
    array-length v2, p2

    if-ge v1, v2, :cond_be

    aget-short v2, p2, v1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b3

    :cond_be
    iget-object p2, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    :cond_c4
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_101

    check-cast p2, Ljava/util/List;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :goto_cf
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_fb

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_f1

    instance-of v3, v2, Ljava/lang/Long;

    if-nez v3, :cond_f1

    instance-of v3, v2, Ljava/lang/Integer;

    if-nez v3, :cond_f1

    instance-of v3, v2, Ljava/lang/Float;

    if-nez v3, :cond_f1

    instance-of v3, v2, Ljava/lang/Double;

    if-nez v3, :cond_f1

    instance-of v2, v2, Ljava/lang/Short;

    if-eqz v2, :cond_f8

    :cond_f1
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_f8
    add-int/lit8 v1, v1, 0x1

    goto :goto_cf

    :cond_fb
    iget-object p2, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    :cond_101
    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_119

    instance-of v0, p2, Ljava/lang/Long;

    if-nez v0, :cond_119

    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_119

    instance-of v0, p2, Ljava/lang/Float;

    if-nez v0, :cond_119

    instance-of v0, p2, Ljava/lang/Double;

    if-nez v0, :cond_119

    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_11e

    :cond_119
    iget-object v0, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11e} :catch_11e

    :catch_11e
    :cond_11e
    return-void
.end method

.method private f(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_9

    :try_start_3
    const-string p1, "unexpected null context in getNativeSuperProperties"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-object v0

    :cond_9
    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v1, :cond_f

    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    :cond_f
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "sp"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_24} :catch_25

    return-object v1

    :catch_25
    :cond_25
    return-object v0
.end method


# virtual methods
.method a(DD)V
    .registers 7

    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    if-nez v0, :cond_9

    const/4 v0, 0x2

    new-array v0, v0, [D

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    :cond_9
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    sget-object p1, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    const/4 p2, 0x1

    aput-wide p3, p1, p2

    return-void
.end method

.method a(J)V
    .registers 3

    sput-wide p1, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    return-void
.end method

.method a(Landroid/content/Context;)V
    .registers 3

    if-nez p1, :cond_8

    const-string p1, "unexpected null context in onResume"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_e

    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    :cond_e
    :try_start_e
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->h:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->k:Z

    if-nez v0, :cond_19

    :cond_16
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->b()V

    :cond_19
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/pro/p;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/p;->a(Ljava/lang/String;)V

    :cond_2a
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->e()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_2d} :catch_2e

    return-void

    :catch_2e
    move-exception p1

    const-string v0, "Exception occurred in Mobclick.onResume(). "

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .registers 4

    if-nez p1, :cond_8

    const-string p1, "unexpected null context in setVerticalType"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_e

    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    :cond_e
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->h:Z

    if-eqz p1, :cond_16

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->k:Z

    if-nez p1, :cond_19

    :cond_16
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->b()V

    :cond_19
    iget-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/umeng/analytics/AnalyticsConfig;->a(Landroid/content/Context;I)V

    return-void
.end method

.method a(Landroid/content/Context;Lcom/umeng/analytics/MobclickAgent$EScenarioType;)V
    .registers 4

    if-nez p1, :cond_8

    const-string p1, "unexpected null context in setScenarioType"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_e

    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    :cond_e
    if-eqz p2, :cond_31

    invoke-virtual {p2}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result p1

    sget-object p2, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {p2}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result p2

    const/4 v0, 0x1

    if-ne p1, p2, :cond_20

    :goto_1d
    sput-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    goto :goto_2c

    :cond_20
    sget-object p2, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_GAME:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {p2}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result p2

    if-ne p1, p2, :cond_29

    goto :goto_1d

    :cond_29
    const/4 p2, 0x0

    sput-boolean p2, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    :goto_2c
    iget-object p2, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p2, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;I)V

    :cond_31
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->h:Z

    if-eqz p1, :cond_39

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->k:Z

    if-nez p1, :cond_3c

    :cond_39
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->b()V

    :cond_3c
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-nez p1, :cond_f

    const-string p1, "unexpected null context in reportError"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_f
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_15

    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    :cond_15
    :try_start_15
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->h:Z

    if-eqz p1, :cond_1d

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->k:Z

    if-nez p1, :cond_20

    :cond_1d
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->b()V

    :cond_20
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "error_source"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "context"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "__ii"

    iget-object v0, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/pro/o;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v0, 0x100a

    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v1

    invoke-static {p2, v0, v1, p1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_51} :catch_52

    return-void

    :catch_52
    move-exception p1

    sget-boolean p2, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz p2, :cond_5a

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :cond_5a
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    if-nez p1, :cond_a

    :try_start_2
    const-string p1, "unexpected null context in registerSuperProperty"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :catch_8
    move-exception p1

    goto :goto_67

    :cond_a
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_10

    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    :cond_10
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->h:Z

    if-eqz p1, :cond_18

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->k:Z

    if-nez p1, :cond_1b

    :cond_18
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->b()V

    :cond_1b
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_61

    if-nez p3, :cond_24

    goto :goto_61

    :cond_24
    const/16 p1, 0x80

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/umeng/analytics/pro/b;->aq:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5b

    instance-of p2, p3, Ljava/lang/String;

    if-eqz p2, :cond_44

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x100

    invoke-static {p2, p3}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    :cond_44
    invoke-direct {p0, p1, p3}, Lcom/umeng/analytics/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 p2, 0x2003

    iget-object p3, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object p3

    iget-object v0, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    return-void

    :cond_5b
    const-string p1, "SuperProperty  key is invalid.  "

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_61
    :goto_61
    const-string p1, "please check key or value, must not NULL!"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_66} :catch_8

    return-void

    :goto_67
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
    .registers 13

    if-eqz p1, :cond_7

    :try_start_2
    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    goto :goto_7

    :catch_5
    move-exception p1

    goto :goto_20

    :cond_7
    :goto_7
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->h:Z

    if-eqz p1, :cond_f

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->k:Z

    if-nez p1, :cond_12

    :cond_f
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->b()V

    :cond_12
    iget-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/m;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/m;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-wide v3, p4

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;Ljava/lang/String;JI)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1f} :catch_5

    return-void

    :goto_20
    sget-boolean p2, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz p2, :cond_27

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :cond_27
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_b

    :try_start_2
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_b

    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    goto :goto_b

    :catch_9
    move-exception p1

    goto :goto_20

    :cond_b
    :goto_b
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->h:Z

    if-eqz p1, :cond_13

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->k:Z

    if-nez p1, :cond_16

    :cond_13
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->b()V

    :cond_16
    iget-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/m;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/m;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1f} :catch_9

    return-void

    :goto_20
    sget-boolean p2, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz p2, :cond_27

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :cond_27
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 13
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

    if-eqz p1, :cond_8

    :try_start_2
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_8

    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    :cond_8
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->h:Z

    if-eqz p1, :cond_10

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->k:Z

    if-nez p1, :cond_13

    :cond_10
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->b()V

    :cond_13
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1f

    const-string p1, "the eventName is empty! please check~"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_1f
    const-string p1, ""

    iget-object v0, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    if-nez v0, :cond_2d

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    goto :goto_33

    :cond_2d
    iget-object p1, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_33
    move-object v3, p1

    iget-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v6, 0x2002

    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v7

    new-instance v8, Lcom/umeng/analytics/pro/i$d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, v8

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/umeng/analytics/pro/i$d;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;J)V

    invoke-static {p1, v6, v7, v8}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_4d} :catch_4d

    :catch_4d
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    :try_start_2
    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    goto :goto_7

    :catch_5
    move-exception p1

    goto :goto_1c

    :cond_7
    :goto_7
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->h:Z

    if-eqz p1, :cond_f

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->k:Z

    if-nez p1, :cond_12

    :cond_f
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->b()V

    :cond_12
    iget-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/m;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/m;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;Ljava/util/Map;J)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1b} :catch_5

    return-void

    :goto_1c
    sget-boolean p2, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz p2, :cond_23

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :cond_23
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .registers 4

    if-eqz p1, :cond_28

    if-nez p2, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_b

    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    :cond_b
    :try_start_b
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->h:Z

    if-eqz p1, :cond_13

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->k:Z

    if-nez p1, :cond_16

    :cond_13
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->b()V

    :cond_16
    iget-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->convertExceptionToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception p1

    sget-boolean p2, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz p2, :cond_28

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :cond_28
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_a

    :try_start_2
    const-string p1, "unexpected null context in setFirstLaunchEvent"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :catch_8
    move-exception p1

    goto :goto_25

    :cond_a
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_10

    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    :cond_10
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->h:Z

    if-eqz p1, :cond_18

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->k:Z

    if-nez p1, :cond_1b

    :cond_18
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->b()V

    :cond_1b
    iget-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/m;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/m;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/pro/m;->a(Ljava/util/List;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_24} :catch_8

    return-void

    :goto_25
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/r;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/analytics/b;->b:Lcom/umeng/analytics/pro/r;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 4

    if-eqz p1, :cond_26

    :try_start_2
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_26

    const-string p1, "sp"

    iget-object v1, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_25} :catch_26

    return-void

    :catch_26
    :cond_26
    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-nez v0, :cond_9

    :try_start_4
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/pro/p;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/p;->a(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_9

    :catch_9
    :cond_9
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "provider"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "uid"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 p2, 0x1005

    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v1

    invoke-static {p1, p2, v1, v0}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception p1

    sget-boolean p2, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz p2, :cond_27

    const-string p2, " Excepthon  in  onProfileSignIn"

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_27
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/pro/p;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/p;->a()V

    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/umeng/analytics/b;->f:Lcom/umeng/analytics/pro/h;

    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/pro/o;

    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/umeng/analytics/pro/o;->b(Landroid/content/Context;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/i;->a()V

    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/p;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p1, :cond_71

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "error_source"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "context"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->convertExceptionToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p1

    iget-object v1, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/pro/o;

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/o;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0, v2}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_71
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->Quit()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_74} :catch_75

    return-void

    :catch_75
    move-exception p1

    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v0, :cond_7f

    const-string v0, "Exception in onAppCrash"

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7f
    return-void
.end method

.method a(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 4

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getGPU(Ljavax/microedition/khronos/opengles/GL10;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    const/4 v0, 0x0

    aget-object v0, p1, v0

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->GPU_VENDER:Ljava/lang/String;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    sput-object p1, Lcom/umeng/analytics/AnalyticsConfig;->GPU_RENDERER:Ljava/lang/String;

    :cond_12
    return-void
.end method

.method a(Z)V
    .registers 2

    sput-boolean p1, Lcom/umeng/analytics/AnalyticsConfig;->CATCH_EXCEPTION:Z

    return-void
.end method

.method public b()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->h:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2c

    iput-boolean v1, p0, Lcom/umeng/analytics/b;->h:Z

    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/b;->f(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    if-nez v0, :cond_1f

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    :cond_1f
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    :cond_2c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-le v0, v2, :cond_4f

    monitor-enter p0
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_33} :catch_59

    :try_start_33
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->k:Z

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_4a

    new-instance v0, Lcom/umeng/analytics/pro/h;

    iget-object v2, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/umeng/analytics/pro/h;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/umeng/analytics/b;->f:Lcom/umeng/analytics/pro/h;

    iput-boolean v1, p0, Lcom/umeng/analytics/b;->k:Z

    :cond_4a
    monitor-exit p0

    goto :goto_51

    :catchall_4c
    move-exception v0

    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_33 .. :try_end_4e} :catchall_4c

    :try_start_4e
    throw v0

    :cond_4f
    iput-boolean v1, p0, Lcom/umeng/analytics/b;->k:Z

    :goto_51
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_59} :catch_59

    :catch_59
    return-void
.end method

.method b(Landroid/content/Context;)V
    .registers 3

    if-nez p1, :cond_8

    const-string p1, "unexpected null context in onPause"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_e

    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    :cond_e
    :try_start_e
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->h:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->k:Z

    if-nez v0, :cond_19

    :cond_16
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->b()V

    :cond_19
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/pro/p;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/p;->b(Ljava/lang/String;)V

    :cond_2a
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->f()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_2d} :catch_2e

    return-void

    :catch_2e
    move-exception p1

    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v0, :cond_38

    const-string v0, "Exception occurred in Mobclick.onRause(). "

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_38
    return-void
.end method

.method b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_8

    const-string p1, "unexpected null context in setSecret"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_e

    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    :cond_e
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->h:Z

    if-eqz p1, :cond_16

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->k:Z

    if-nez p1, :cond_19

    :cond_16
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->b()V

    :cond_19
    iget-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/umeng/analytics/AnalyticsConfig;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method b(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-nez v0, :cond_9

    :try_start_4
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/pro/p;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/p;->b(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_9

    :catch_9
    :cond_9
    return-void
.end method

.method b(Z)V
    .registers 2

    sput-boolean p1, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    return-void
.end method

.method public c()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    return-object v0
.end method

.method c(Landroid/content/Context;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_8

    if-eqz p1, :cond_8

    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    :cond_8
    iget-object p1, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/pro/p;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/p;->a()V

    iget-object p1, p0, Lcom/umeng/analytics/b;->f:Lcom/umeng/analytics/pro/h;

    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/pro/o;

    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/umeng/analytics/pro/o;->b(Landroid/content/Context;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/i;->a()V

    iget-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/p;->a(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->b(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->Quit()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_46} :catch_46

    :catch_46
    return-void
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_a

    :try_start_2
    const-string p1, "unexpected null context in unregisterSuperProperty"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :catch_8
    move-exception p1

    goto :goto_47

    :cond_a
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_10

    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    :cond_10
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->h:Z

    if-eqz p1, :cond_18

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->k:Z

    if-nez p1, :cond_1b

    :cond_18
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->b()V

    :cond_1b
    const/16 p1, 0x80

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    if-nez p2, :cond_2c

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    iput-object p2, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    :cond_2c
    iget-object p2, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_46

    iget-object p2, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v0, 0x2005

    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v1

    invoke-static {p2, v0, v1, p1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_46} :catch_8

    :cond_46
    return-void

    :goto_47
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_b

    :try_start_3
    const-string p1, "unexpected null context in getSuperProperty"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-object v0

    :catch_9
    move-exception p1

    goto :goto_32

    :cond_b
    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v1, :cond_11

    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    :cond_11
    iget-object p1, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    if-eqz p1, :cond_2a

    const/16 p1, 0x80

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_35

    iget-object p2, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2a
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_31} :catch_9

    return-object v0

    :goto_32
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_35
    return-object v0
.end method

.method public d(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_b

    :try_start_3
    const-string p1, "unexpected null context in getSuperProperties"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-object v0

    :catch_9
    move-exception p1

    goto :goto_24

    :cond_b
    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v1, :cond_11

    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    :cond_11
    iget-object p1, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1c
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_23} :catch_9

    return-object v0

    :goto_24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    return-void
.end method

.method public e()V
    .registers 5

    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x1007

    invoke-static {v0, v3, v1, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/umeng/analytics/b;->b:Lcom/umeng/analytics/pro/r;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/umeng/analytics/b;->b:Lcom/umeng/analytics/pro/r;

    invoke-interface {v0}, Lcom/umeng/analytics/pro/r;->a()V

    :cond_1e
    return-void
.end method

.method public e(Landroid/content/Context;)V
    .registers 5

    if-nez p1, :cond_8

    const-string p1, "unexpected null context in clearSuperProperties"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_e

    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    :cond_e
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->h:Z

    if-eqz p1, :cond_16

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->k:Z

    if-nez p1, :cond_19

    :cond_16
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->b()V

    :cond_19
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v0, 0x2004

    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    return-void
.end method

.method public f()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v1, 0x1008

    iget-object v2, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v1, 0x1004

    iget-object v2, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v1, 0x1003

    iget-object v2, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v1, 0x1009

    iget-object v2, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3d} :catch_3d

    :catch_3d
    iget-object v0, p0, Lcom/umeng/analytics/b;->b:Lcom/umeng/analytics/pro/r;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/umeng/analytics/b;->b:Lcom/umeng/analytics/pro/r;

    invoke-interface {v0}, Lcom/umeng/analytics/pro/r;->b()V

    :cond_46
    return-void
.end method

.method g()V
    .registers 5

    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v1

    const/16 v2, 0x1006

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    return-void
.end method

.method public h()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sp"

    iget-object v2, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_1d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_24} :catch_24

    :catch_24
    return-void
.end method

.method public i()Lorg/json/JSONObject;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    if-nez v0, :cond_b

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    iget-object v0, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    return-object v0
.end method

.method public j()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sp"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
