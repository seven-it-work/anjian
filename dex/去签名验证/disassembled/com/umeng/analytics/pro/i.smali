.class public Lcom/umeng/analytics/pro/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/i$c;,
        Lcom/umeng/analytics/pro/i$a;,
        Lcom/umeng/analytics/pro/i$d;,
        Lcom/umeng/analytics/pro/i$b;
    }
.end annotation


# static fields
.field private static A:Z = false

.field private static final B:Ljava/lang/String; = "n_sess_dp"

.field private static final C:Ljava/lang/String; = "n_sess_dp_type"

.field private static a:Landroid/content/Context; = null

.field private static final q:Ljava/lang/String; = "first_activate_time"

.field private static final r:Ljava/lang/String; = "ana_is_f"

.field private static final s:Ljava/lang/String; = "thtstart"

.field private static final t:Ljava/lang/String; = "dstk_last_time"

.field private static final u:Ljava/lang/String; = "dstk_cnt"

.field private static final v:Ljava/lang/String; = "gkvc"

.field private static final w:Ljava/lang/String; = "ekvc"

.field private static final y:Ljava/lang/String; = "-1"

.field private static z:Z


# instance fields
.field private b:Lcom/umeng/commonsdk/statistics/noise/ABTest;

.field private c:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

.field private d:Lcom/umeng/analytics/pro/i$c;

.field private e:Landroid/content/SharedPreferences;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:I

.field private l:Lorg/json/JSONArray;

.field private final m:I

.field private n:I

.field private o:I

.field private p:J

.field private final x:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->b:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->c:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->d:Lcom/umeng/analytics/pro/i$c;

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->i:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/umeng/analytics/pro/i;->j:J

    const/16 v2, 0xa

    iput v2, p0, Lcom/umeng/analytics/pro/i;->k:I

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iput-object v2, p0, Lcom/umeng/analytics/pro/i;->l:Lorg/json/JSONArray;

    const/16 v2, 0x1388

    iput v2, p0, Lcom/umeng/analytics/pro/i;->m:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/umeng/analytics/pro/i;->n:I

    iput v2, p0, Lcom/umeng/analytics/pro/i;->o:I

    iput-wide v0, p0, Lcom/umeng/analytics/pro/i;->p:J

    const-wide/32 v3, 0x1b77400

    iput-wide v3, p0, Lcom/umeng/analytics/pro/i;->x:J

    :try_start_33
    sget-object v3, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "thtstart"

    invoke-interface {v3, v4, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/pro/i;->p:J

    const-string v0, "gkvc"

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/umeng/analytics/pro/i;->n:I

    const-string v0, "ekvc"

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/umeng/analytics/pro/i;->o:I

    new-instance v0, Lcom/umeng/analytics/pro/i$c;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/pro/i$c;-><init>(Lcom/umeng/analytics/pro/i;)V

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->d:Lcom/umeng/analytics/pro/i$c;

    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->b:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->getService(Landroid/content/Context;Lcom/umeng/commonsdk/statistics/internal/StatTracer;)Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->c:Lcom/umeng/commonsdk/statistics/noise/ImLatent;
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_6e} :catch_6e

    :catch_6e
    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/i$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;
    .registers 2

    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    if-nez v0, :cond_c

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    :cond_c
    invoke-static {}, Lcom/umeng/analytics/pro/i$b;->a()Lcom/umeng/analytics/pro/i;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/umeng/analytics/pro/i;)Lcom/umeng/commonsdk/statistics/noise/ABTest;
    .registers 1

    iget-object p0, p0, Lcom/umeng/analytics/pro/i;->b:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    return-object p0
.end method

.method private a(Lorg/json/JSONObject;J)Lorg/json/JSONObject;
    .registers 8

    :try_start_0
    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->a(Lorg/json/JSONObject;)J

    move-result-wide v0

    cmp-long v2, v0, p2

    if-lez v2, :cond_23

    const-string v0, "header"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "eof"

    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->a(Lorg/json/JSONObject;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "header"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0, p2, p3, p1}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;JLorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_22} :catch_23

    move-object p1, p2

    :catch_23
    :cond_23
    return-object p1
.end method

.method private a(JI)Z
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v0, 0x1

    if-eqz v2, :cond_1f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v3, v1, p1

    const-wide/32 p1, 0x1b77400

    cmp-long v1, v3, p1

    if-lez v1, :cond_18

    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;->j()V

    return v0

    :cond_18
    const/16 p1, 0x1388

    if-ge p3, p1, :cond_1d

    return v0

    :cond_1d
    const/4 p1, 0x0

    return p1

    :cond_1f
    return v0
.end method

.method private b(Lorg/json/JSONObject;)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    :cond_3
    :try_start_3
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_a

    return-void

    :cond_a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "analytics"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ba

    const-string v1, "analytics"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "ekv"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    const-string v2, "ekv"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "ekv"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_30
    const-string v2, "gkv"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    const-string v2, "gkv"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "gkv"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_43
    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_56

    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_56
    const-string v2, "sessions"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_94

    const-string v2, "sessions"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    :goto_6a
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_8f

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_8c

    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-lez v6, :cond_8c

    const-string v6, "autopages"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_89

    const-string v6, "autopages"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_89
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_8c
    add-int/lit8 v4, v4, 0x1

    goto :goto_6a

    :cond_8f
    const-string v2, "sessions"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_94
    const-string v2, "activate_msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a7

    const-string v2, "activate_msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "activate_msg"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a7
    const-string v2, "active_user"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ba

    const-string v2, "active_user"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "active_user"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_ba
    const-string v1, "dplus"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cd

    const-string v1, "dplus"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "dplus"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_cd
    const-string v1, "header"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11d

    const-string v1, "header"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "sdk_version"

    const-string v2, "sdk_version"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_id"

    const-string v2, "device_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_model"

    const-string v2, "device_model"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "version"

    const-string v2, "version_code"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appkey"

    const-string v2, "appkey"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channel"

    const-string v2, "channel"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_11d
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-lez p1, :cond_138

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "constructMessage:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V
    :try_end_138
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_138} :catch_139

    :cond_138
    return-void

    :catch_139
    move-exception p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .registers 6

    :try_start_0
    const-string v0, "header"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "eof"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a6

    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    :cond_1e
    const-string v0, "analytics"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const-string v0, "analytics"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "sessions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    const-string v0, "sessions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_9c

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/umeng/analytics/pro/g;->a(ZLjava/lang/String;)V

    goto :goto_9c

    :cond_50
    sget-object p1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/g;->g()V

    goto :goto_9c

    :cond_5a
    const-string v0, "dplus"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9c

    const-string v0, "dplus"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "events"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/umeng/analytics/pro/g;->b(I)V

    :cond_79
    const-string v0, "session"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8b

    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/umeng/analytics/pro/g;->b(I)V

    :cond_8b
    const-string v0, "pageview"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9c

    sget-object p1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/umeng/analytics/pro/g;->b(I)V

    :cond_9c
    :goto_9c
    sget-object p1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/g;->a()V

    return-void

    :cond_a6
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b4

    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    :cond_b4
    const-string v0, "analytics"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_105

    const-string v0, "analytics"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_105

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_105

    const-string v3, "sessions"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_db

    sget-object v3, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/umeng/analytics/pro/g;->a(ZZ)V

    :cond_db
    const-string v1, "ekv"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_eb

    const-string v1, "gkv"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f4

    :cond_eb
    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/g;->d()V

    :cond_f4
    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_105

    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->e()V

    :cond_105
    const-string v0, "dplus"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_116

    sget-object p1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/g;->f()V

    :cond_116
    sget-object p1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/g;->a()V
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11f} :catch_11f

    :catch_11f
    return-void
.end method

.method private c(Z)V
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_16

    sget-boolean p1, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    if-eqz p1, :cond_20

    sget-object p1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->maxDataSpace(Landroid/content/Context;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/umeng/analytics/pro/i;->b(J)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_20

    :cond_16
    sget-object p1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->maxDataSpace(Landroid/content/Context;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/umeng/analytics/pro/i;->a(J)Lorg/json/JSONObject;

    move-result-object v0

    :cond_20
    :goto_20
    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-gtz p1, :cond_29

    return-void

    :cond_29
    const-string p1, "header"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    if-eqz v1, :cond_4f

    if-eqz p1, :cond_4f

    if-eqz v0, :cond_4f

    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_4f

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/i;->b(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/Object;)V

    :cond_4f
    return-void
.end method

.method private d(Z)Lorg/json/JSONObject;
    .registers 9

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    sget-object v1, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    if-eqz v1, :cond_1b

    sget-object v1, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    if-eqz v1, :cond_1b

    const-string v1, "wrapper_version"

    sget-object v2, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "wrapper_type"

    sget-object v2, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1b
    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v2}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_34

    sput-boolean v3, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    :goto_2f
    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    goto :goto_43

    :cond_34
    sget-object v2, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_GAME:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v2}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v2

    if-ne v1, v2, :cond_41

    sput-boolean v3, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_GAME:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    goto :goto_2f

    :cond_41
    sput-boolean v4, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    :goto_43
    const-string v2, "vertical_type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "sdk_version"

    const-string v2, "7.3.2"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/AnalyticsConfig;->getSecretKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_64

    const-string v2, "secret"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_64
    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    const-string v2, "pr_ve"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz p1, :cond_115

    const-string p1, "$pr_ve"

    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "$ud_da"

    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v2, :cond_1b7

    const-string p1, "dp_vers_name"

    const-string v3, ""

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b7

    const-string v3, "app_version"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "version_code"

    const-string v5, "dp_vers_code"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_dd

    const-string v1, "$pr_ve"

    const-string v4, "dp_vers_pre_version"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "$ud_da"

    const-string v4, "dp_vers_date"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_dd
    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "dp_pre_version"

    invoke-interface {v2, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "dp_cur_version"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "dp_pre_date"

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "dp_vers_name"

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "dp_vers_code"

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "dp_vers_date"

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "dp_vers_pre_version"

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    :goto_111
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object v0

    :cond_115
    const-string p1, "$pr_ve"

    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "$ud_da"

    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v2, :cond_1b7

    const-string p1, "vers_name"

    const-string v3, ""

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b7

    const-string v3, "app_version"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "version_code"

    const-string v5, "vers_code"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17d

    const-string v1, "$pr_ve"

    const-string v4, "vers_pre_version"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "$ud_da"

    const-string v4, "vers_date"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_17d
    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "pre_version"

    invoke-interface {v2, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "cur_version"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "pre_date"

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "vers_name"

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "vers_code"

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "vers_date"

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "vers_pre_version"

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1
    :try_end_1b1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1b1} :catch_1b3

    goto/16 :goto_111

    :catch_1b3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1b7
    return-object v0
.end method

.method private d(Ljava/lang/Object;)V
    .registers 7

    :try_start_0
    check-cast p1, Lorg/json/JSONObject;

    const/16 v0, 0x802

    const-string v1, "__t"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1e

    iget-wide v0, p0, Lcom/umeng/analytics/pro/i;->p:J

    iget v2, p0, Lcom/umeng/analytics/pro/i;->n:I

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/analytics/pro/i;->a(JI)Z

    move-result v0

    if-nez v0, :cond_17

    return-void

    :cond_17
    iget v0, p0, Lcom/umeng/analytics/pro/i;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/analytics/pro/i;->n:I

    goto :goto_39

    :cond_1e
    const/16 v0, 0x801

    const-string v1, "__t"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_39

    iget-wide v0, p0, Lcom/umeng/analytics/pro/i;->p:J

    iget v2, p0, Lcom/umeng/analytics/pro/i;->o:I

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/analytics/pro/i;->a(JI)Z

    move-result v0

    if-nez v0, :cond_33

    return-void

    :cond_33
    iget v0, p0, Lcom/umeng/analytics/pro/i;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/analytics/pro/i;->o:I

    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->l:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    iget v1, p0, Lcom/umeng/analytics/pro/i;->k:I

    if-lt v0, v1, :cond_55

    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/pro/i;->l:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/g;->a(Lorg/json/JSONArray;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->l:Lorg/json/JSONArray;

    :cond_55
    iget-wide v0, p0, Lcom/umeng/analytics/pro/i;->p:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_63

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/pro/i;->p:J

    :cond_63
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->l:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_68} :catch_69

    return-void

    :catch_69
    move-exception p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic e()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    return-object v0
.end method

.method private e(Ljava/lang/Object;)V
    .registers 7

    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/i;->b(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/i;->a()V

    check-cast p1, Lorg/json/JSONObject;

    if-eqz p1, :cond_5b

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_13

    return-void

    :cond_13
    const-string v0, "provider"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_39

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    :cond_39
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/umeng/analytics/pro/o;->a(Landroid/content/Context;J)Z

    move-result v1

    sget-object v2, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v2, v0, p1}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_5b

    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object p1

    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/umeng/analytics/pro/o;->b(Landroid/content/Context;J)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5b} :catch_5b

    :catch_5b
    :cond_5b
    return-void
.end method

.method private e(Z)Z
    .registers 4

    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;->n()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->d:Lcom/umeng/analytics/pro/i$c;

    if-nez v0, :cond_13

    new-instance v0, Lcom/umeng/analytics/pro/i$c;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/pro/i$c;-><init>(Lcom/umeng/analytics/pro/i;)V

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->d:Lcom/umeng/analytics/pro/i$c;

    :cond_13
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->d:Lcom/umeng/analytics/pro/i$c;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/i$c;->a()V

    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->d:Lcom/umeng/analytics/pro/i$c;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/i$c;->c()Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;->shouldSendMessage(Z)Z

    move-result p1

    if-eqz p1, :cond_35

    instance-of v1, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    if-nez v1, :cond_2c

    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DebugPolicy;

    if-eqz v0, :cond_35

    :cond_2c
    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;->k()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/i;->a()V

    :cond_35
    return p1
.end method

.method private f()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    const-string v2, "pr_ve"

    invoke-static {v1, v2, v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_9} :catch_7e

    :try_start_9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->f:Ljava/lang/String;

    return-object v0

    :cond_1a
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    if-nez v0, :cond_26

    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    :cond_26
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    const-string v2, "pre_version"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_56

    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "pre_version"

    const-string v4, "0"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "cur_version"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "0"

    goto :goto_7e

    :cond_56
    iget-object v3, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    const-string v4, "cur_version"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7e

    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "pre_version"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "cur_version"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_7b} :catch_7d

    move-object v0, v3

    goto :goto_7e

    :catch_7d
    :cond_7d
    move-object v0, v1

    :catch_7e
    :cond_7e
    :goto_7e
    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->f:Ljava/lang/String;

    return-object v0
.end method

.method private f(Ljava/lang/Object;)V
    .registers 5

    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_32

    const-string v1, "__ii"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    const-string v1, "__ii"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__ii"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p1, v2}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_32} :catch_32

    :catch_32
    :cond_32
    return-void
.end method

.method private g()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    const-string v2, "ud_da"

    invoke-static {v1, v2, v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_9} :catch_8e

    :try_start_9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->g:Ljava/lang/String;

    return-object v0

    :cond_1a
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    if-nez v0, :cond_26

    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    :cond_26
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    const-string v2, "pre_date"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5e

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "pre_date"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_8e

    :cond_5e
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8e

    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "pre_date"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_8b} :catch_8d

    move-object v0, v2

    goto :goto_8e

    :catch_8d
    :cond_8d
    move-object v0, v1

    :catch_8e
    :cond_8e
    :goto_8e
    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->g:Ljava/lang/String;

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    const-string v2, "pr_ve"

    invoke-static {v1, v2, v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_9} :catch_7e

    :try_start_9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->h:Ljava/lang/String;

    return-object v0

    :cond_1a
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    if-nez v0, :cond_26

    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    :cond_26
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    const-string v2, "dp_pre_version"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_56

    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "dp_pre_version"

    const-string v4, "0"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "dp_cur_version"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "0"

    goto :goto_7e

    :cond_56
    iget-object v3, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    const-string v4, "dp_cur_version"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7e

    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "dp_pre_version"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "dp_cur_version"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_7b} :catch_7d

    move-object v0, v3

    goto :goto_7e

    :catch_7d
    :cond_7d
    move-object v0, v1

    :catch_7e
    :cond_7e
    :goto_7e
    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->h:Ljava/lang/String;

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    const-string v2, "ud_da"

    invoke-static {v1, v2, v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_9} :catch_8e

    :try_start_9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->i:Ljava/lang/String;

    return-object v0

    :cond_1a
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    if-nez v0, :cond_26

    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    :cond_26
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    const-string v2, "dp_pre_date"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5e

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "dp_pre_date"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_8e

    :cond_5e
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8e

    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "dp_pre_date"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_8b} :catch_8d

    move-object v0, v2

    goto :goto_8e

    :catch_8d
    :cond_8d
    move-object v0, v1

    :catch_8e
    :cond_8e
    :goto_8e
    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->i:Ljava/lang/String;

    return-object v0
.end method

.method private j()V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/umeng/analytics/pro/i;->n:I

    iput v0, p0, Lcom/umeng/analytics/pro/i;->o:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/umeng/analytics/pro/i;->p:J

    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "dstk_last_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "dstk_cnt"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method

.method private k()Z
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/i;->b(Landroid/content/Context;)V

    :cond_13
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->l:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_4b

    const/4 v0, 0x0

    :goto_1d
    iget-object v2, p0, Lcom/umeng/analytics/pro/i;->l:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4c

    iget-object v2, p0, Lcom/umeng/analytics/pro/i;->l:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_48

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_48

    const-string v3, "__i"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_47

    const-string v3, "-1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_45} :catch_4c

    if-eqz v2, :cond_48

    :cond_47
    return v1

    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_4b
    return v1

    :catch_4c
    :cond_4c
    const/4 v0, 0x1

    return v0
.end method

.method private l()V
    .registers 6

    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->l:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_55

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    :goto_e
    iget-object v2, p0, Lcom/umeng/analytics/pro/i;->l:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_53

    :try_start_16
    iget-object v2, p0, Lcom/umeng/analytics/pro/i;->l:Lorg/json/JSONArray;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4d

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_4d

    const-string v3, "__i"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_38

    const-string v4, "-1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    :cond_38
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/analytics/pro/o;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_48

    const-string v3, "-1"

    :cond_48
    const-string v4, "__i"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4d
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_50} :catch_50

    :catch_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_53
    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->l:Lorg/json/JSONArray;

    :cond_55
    return-void
.end method

.method private m()V
    .registers 7

    :try_start_0
    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;->n()Z

    move-result v0

    if-eqz v0, :cond_2f

    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    if-eqz v0, :cond_2f

    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_2f

    const-string v1, "first_activate_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-nez v1, :cond_2f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "first_activate_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2f} :catch_2f

    :catch_2f
    :cond_2f
    return-void
.end method

.method private n()Z
    .registers 6

    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string v1, "ana_is_f"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_14} :catch_1c

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1c

    const/4 v0, 0x1

    return v0

    :catch_1c
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method private o()V
    .registers 5

    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/i;->b(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/i;->a()V

    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_44

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/analytics/pro/o;->a(Landroid/content/Context;J)Z

    move-result v0

    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/c;->b(Landroid/content/Context;)V

    if-eqz v0, :cond_44

    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/analytics/pro/o;->b(Landroid/content/Context;J)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_44} :catch_45

    :cond_44
    return-void

    :catch_45
    move-exception v0

    sget-boolean v1, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v1, :cond_4f

    const-string v1, " Excepthon  in  onProfileSignOff"

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4f
    return-void
.end method


# virtual methods
.method public a(J)Lorg/json/JSONObject;
    .registers 10

    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/o;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    return-object v1

    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/i;->b(Z)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {}, Lcom/umeng/analytics/pro/l;->a()Lcom/umeng/analytics/pro/l;

    move-result-object v3

    sget-object v4, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/umeng/analytics/pro/l;->a(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-gtz v4, :cond_28

    return-object v1

    :cond_28
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-ne v4, v5, :cond_4a

    const-string v4, "active_user"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_3b

    if-eq v3, v6, :cond_3b

    return-object v1

    :cond_3b
    const-string v4, "userlevel"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_68

    if-eq v3, v6, :cond_68

    return-object v1

    :cond_4a
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_68

    const-string v4, "active_user"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_68

    const-string v4, "userlevel"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_68

    if-eq v3, v6, :cond_68

    return-object v1

    :cond_68
    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/i;->d(Z)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_71
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    if-ne v3, v6, :cond_83

    const-string v2, "analytics"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_90

    :cond_83
    if-eqz v2, :cond_90

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_90

    const-string v3, "analytics"

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_90
    :goto_90
    if-eqz v0, :cond_9d

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_9d

    const-string v2, "header"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9d
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_a8

    const-string v0, "content"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a8
    invoke-direct {p0, v1, p1, p2}, Lcom/umeng/analytics/pro/i;->a(Lorg/json/JSONObject;J)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_ac
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_ac} :catch_ad

    return-object p1

    :catch_ad
    move-object p1, v1

    return-object p1
.end method

.method public a()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->l:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1a

    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/pro/i;->l:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/g;->a(Lorg/json/JSONArray;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->l:Lorg/json/JSONArray;

    :cond_1a
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "thtstart"

    iget-wide v2, p0, Lcom/umeng/analytics/pro/i;->p:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gkvc"

    iget v2, p0, Lcom/umeng/analytics/pro/i;->n:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ekvc"

    iget v2, p0, Lcom/umeng/analytics/pro/i;->o:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3f} :catch_3f

    :catch_3f
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 4

    if-eqz p1, :cond_24

    :try_start_2
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_24

    const-string v0, "exception"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0x65

    const-string v1, "exception"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_24

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/i;->c(Lorg/json/JSONObject;)V

    return-void

    :cond_20
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/i;->c(Lorg/json/JSONObject;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_23} :catch_24

    return-void

    :catch_24
    :cond_24
    return-void
.end method

.method public a(Ljava/lang/Object;I)V
    .registers 4

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_92

    packed-switch p2, :pswitch_data_aa

    return-void

    :pswitch_8
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/b;->h()V

    return-void

    :pswitch_10
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/b;->j()V

    return-void

    :pswitch_18
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/umeng/analytics/b;->a(Ljava/lang/Object;)V

    return-void

    :pswitch_20
    sget-object p2, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/m;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/m;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/Object;)V

    return-void

    :pswitch_2a
    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/Object;IZ)V

    return-void

    :pswitch_2f
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/i;->f(Ljava/lang/Object;)V

    return-void

    :pswitch_33
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/i;->a()V

    return-void

    :pswitch_37
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object p2

    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Lcom/umeng/analytics/pro/o;->b(Landroid/content/Context;Ljava/lang/Object;)V

    return-void

    :pswitch_41
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object p2

    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Lcom/umeng/analytics/pro/o;->a(Landroid/content/Context;Ljava/lang/Object;)V

    return-void

    :pswitch_4b
    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;->o()V

    return-void

    :pswitch_4f
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/i;->e(Ljava/lang/Object;)V

    return-void

    :pswitch_53
    sget-object p1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->b(Landroid/content/Context;)V

    return-void

    :pswitch_59
    sget-object p1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/p;->a(Landroid/content/Context;)V

    return-void

    :pswitch_5f
    if-eqz p1, :cond_64

    :try_start_61
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/i;->d(Ljava/lang/Object;)V

    :cond_64
    check-cast p1, Lorg/json/JSONObject;

    const-string p2, "__i"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "-1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_77

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/i;->a(Z)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_77} :catch_77

    :catch_77
    :cond_77
    return-void

    :pswitch_78
    if-eqz p1, :cond_7d

    :try_start_7a
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/i;->d(Ljava/lang/Object;)V

    :cond_7d
    check-cast p1, Lorg/json/JSONObject;

    const-string p2, "__i"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "-1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_90

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/i;->a(Z)V
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_90} :catch_90

    :catch_90
    :cond_90
    return-void

    nop

    :pswitch_data_92
    .packed-switch 0x1001
        :pswitch_78
        :pswitch_5f
        :pswitch_59
        :pswitch_53
        :pswitch_4f
        :pswitch_4b
        :pswitch_41
        :pswitch_37
        :pswitch_33
        :pswitch_2f
    .end packed-switch

    :pswitch_data_aa
    .packed-switch 0x2001
        :pswitch_2a
        :pswitch_20
        :pswitch_18
        :pswitch_10
        :pswitch_8
    .end packed-switch
.end method

.method public a(Ljava/lang/Object;IZ)V
    .registers 16

    :try_start_0
    check-cast p1, Lorg/json/JSONObject;

    if-eqz p1, :cond_152

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_152

    const-string v0, "__ii"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_4e

    const-string v4, "dstk_last_time"

    const-wide/16 v5, 0x0

    invoke-interface {v1, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v6, "dstk_cnt"

    invoke-interface {v1, v6, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/umeng/analytics/pro/i;->a(JI)Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "dstk_last_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-interface {v4, v5, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "dstk_cnt"

    const/16 v7, 0x1388

    if-ne v6, v7, :cond_44

    const/4 v6, 0x0

    goto :goto_45

    :cond_44
    add-int/2addr v6, v3

    :goto_45
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4e

    :cond_4d
    return-void

    :cond_4e
    :goto_4e
    const-string v4, "n_sess_dp"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_62

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    goto :goto_68

    :cond_62
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_68
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/umeng/analytics/b;->i()Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "-1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a5

    const-string p3, "n_sess_dp_type"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "_$!sp"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_90

    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result p2

    if-lez p2, :cond_90

    const-string p2, "_$!sp"

    invoke-virtual {p1, p2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_90
    invoke-virtual {v4, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "n_sess_dp"

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_a5
    const/4 v6, 0x3

    if-eq p2, v6, :cond_115

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_115

    const/4 v6, 0x0

    :goto_af
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_101

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_fe

    invoke-virtual {v7}, Lorg/json/JSONObject;->length()I

    move-result v8

    if-lez v8, :cond_fe

    const-string v8, "n_sess_dp_type"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "_$!sp"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_da

    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v9

    if-lez v9, :cond_da

    const-string v9, "_$!sp"

    invoke-virtual {v7, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_da
    packed-switch v8, :pswitch_data_154

    goto :goto_eb

    :pswitch_de
    const-string v9, "_$!ts"

    :goto_e0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v7, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_eb

    :pswitch_e8
    const-string v9, "_$!ts"

    goto :goto_e0

    :goto_eb
    const-string v9, "__ii"

    invoke-virtual {v7, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "n_sess_dp_type"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    sget-object v9, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v9}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Lcom/umeng/analytics/pro/g;->a(Lorg/json/JSONObject;I)V

    :cond_fe
    add-int/lit8 v6, v6, 0x1

    goto :goto_af

    :cond_101
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/b;->d()V

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "n_sess_dp"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_115
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/umeng/analytics/pro/g;->a(Lorg/json/JSONObject;I)V

    if-eqz p3, :cond_124

    invoke-direct {p0, v3}, Lcom/umeng/analytics/pro/i;->c(Z)V

    return-void

    :cond_124
    sget-object p1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    sget-object p2, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_DPLUS:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->isReadyBuild(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z

    move-result p1

    if-eqz p1, :cond_152

    sget-object p1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/Defcon;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->isOpen()Z

    move-result p2

    if-eqz p2, :cond_14f

    new-instance p2, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;

    sget-object p3, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;Lcom/umeng/commonsdk/statistics/noise/Defcon;)V

    invoke-virtual {p2, v2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;->shouldSendMessage(Z)Z

    move-result p1

    if-eqz p1, :cond_14e

    invoke-direct {p0, v3}, Lcom/umeng/analytics/pro/i;->c(Z)V

    :cond_14e
    return-void

    :cond_14f
    invoke-direct {p0, v3}, Lcom/umeng/analytics/pro/i;->c(Z)V
    :try_end_152
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_152} :catch_152

    :catch_152
    :cond_152
    return-void

    nop

    :pswitch_data_154
    .packed-switch 0x0
        :pswitch_e8
        :pswitch_de
    .end packed-switch
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 6

    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    sget-object v1, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_DPLUS:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->isReadyBuild(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z

    move-result v0

    if-eqz v0, :cond_40

    if-eqz p1, :cond_40

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/i;->d(Z)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_40

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "session"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "dplus"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    if-eqz p1, :cond_40

    if-eqz v0, :cond_40

    sget-object p1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_40} :catch_40

    :catch_40
    :cond_40
    return-void
.end method

.method public a(Z)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/i;->e(Z)Z

    move-result p1

    if-eqz p1, :cond_14

    sget-object p1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    sget-object v0, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_APP:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->isReadyBuild(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/i;->c(Z)V

    :cond_14
    return-void
.end method

.method public b(J)Lorg/json/JSONObject;
    .registers 8

    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v0

    sget-object v2, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/umeng/analytics/pro/o;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    return-object v1

    :cond_17
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-boolean v2, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    if-eqz v2, :cond_56

    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->c()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Lcom/umeng/analytics/pro/l;->a()Lcom/umeng/analytics/pro/l;

    move-result-object v2

    sget-object v3, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-virtual {v2, v0, v3}, Lcom/umeng/analytics/pro/l;->a(Lorg/json/JSONObject;Landroid/content/Context;)V

    sget-object v2, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/Defcon;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_56

    new-instance v3, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;

    sget-object v4, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;Lcom/umeng/commonsdk/statistics/noise/Defcon;)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;->shouldSendMessage(Z)Z

    move-result v2

    if-nez v2, :cond_56

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_56
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-gtz v2, :cond_5d

    return-object v1

    :cond_5d
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/umeng/analytics/pro/i;->d(Z)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_67
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    if-eqz v0, :cond_79

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_79

    const-string v4, "dplus"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_79
    if-eqz v1, :cond_86

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_86

    const-string v0, "header"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_86
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_91

    const-string v0, "content"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_91
    invoke-direct {p0, v2, p1, p2}, Lcom/umeng/analytics/pro/i;->a(Lorg/json/JSONObject;J)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_95} :catch_96

    return-object p1

    :catch_96
    move-object p1, v2

    return-object p1
.end method

.method public b(Z)Lorg/json/JSONObject;
    .registers 9

    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/g;->a(Z)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_de

    if-nez p1, :cond_12

    :try_start_c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object p1, v0

    :cond_12
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_2d

    const-string v1, "userlevel"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    const-string v2, "userlevel"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2d
    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;->n()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/i;->c()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/umeng/analytics/pro/i;->j:J

    iget-wide v1, p0, Lcom/umeng/analytics/pro/i;->j:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5f

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "ts"

    iget-wide v5, p0, Lcom/umeng/analytics/pro/i;->j:J

    invoke-virtual {v1, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "activate_msg"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ana_is_f"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_5f
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_97

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_97

    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_97

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "provider"

    aget-object v1, v0, v1

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "puid"

    aget-object v0, v0, v2

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_97

    const-string v0, "active_user"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_97
    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest()Z

    move-result v0

    if-eqz v0, :cond_c4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getTestName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getGroupInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "group_info"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c4
    invoke-static {}, Lcom/umeng/analytics/pro/l;->a()Lcom/umeng/analytics/pro/l;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/umeng/analytics/pro/l;->b(Lorg/json/JSONObject;Landroid/content/Context;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_df

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "analytics"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_dd
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_dd} :catch_df

    return-object p1

    :catch_de
    const/4 p1, 0x0

    :catch_df
    :cond_df
    return-object p1
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/analytics/pro/i;->z:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/i;->c(Z)V

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 2

    :try_start_0
    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/g;->b()V

    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;->l()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/analytics/pro/i;->z:Z

    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/i;->b(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/i;->a()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/i;->c(Z)V

    sget-boolean v1, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    if-eqz v1, :cond_17

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1, v0}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/Object;IZ)V

    :cond_17
    return-void
.end method

.method public c()J
    .registers 7

    const-wide/16 v0, 0x0

    :try_start_2
    sget-object v2, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    if-eqz v2, :cond_2b

    sget-object v2, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_2b

    const-string v3, "first_activate_time"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_14} :catch_2b

    cmp-long v5, v3, v0

    if-nez v5, :cond_2a

    :try_start_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1c} :catch_2a

    :try_start_1c
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "first_activate_time"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_29} :catch_2b

    return-wide v0

    :catch_2a
    :cond_2a
    move-wide v0, v3

    :catch_2b
    :cond_2b
    return-wide v0
.end method

.method public c(Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;->m()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/analytics/pro/i;->A:Z

    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;->f()Ljava/lang/String;

    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;->g()Ljava/lang/String;

    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;->h()Ljava/lang/String;

    invoke-direct {p0}, Lcom/umeng/analytics/pro/i;->i()Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/i;->a(Z)V

    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/Object;IZ)V

    :cond_1e
    return-void
.end method

.method public d()V
    .registers 10

    :try_start_0
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8f

    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "n_sess_dp"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_28

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    goto :goto_2e

    :cond_28
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_2e
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_8f

    const/4 v3, 0x0

    :goto_35
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_74

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_71

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_71

    const-string v5, "n_sess_dp_type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    packed-switch v5, :pswitch_data_90

    goto :goto_5e

    :pswitch_51
    const-string v6, "_$!ts"

    :goto_53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_5e

    :pswitch_5b
    const-string v6, "_$!ts"

    goto :goto_53

    :goto_5e
    const-string v6, "__ii"

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "n_sess_dp_type"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    sget-object v6, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/umeng/analytics/pro/g;->a(Lorg/json/JSONObject;I)V

    :cond_71
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    :cond_74
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "n_sess_dp"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Landroid/content/Context;

    sget-object v1, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_DPLUS:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->isReadyBuild(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z

    move-result v0

    if-eqz v0, :cond_8f

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/i;->c(Z)V
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8f} :catch_8f

    :catch_8f
    :cond_8f
    return-void

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_51
    .end packed-switch
.end method
