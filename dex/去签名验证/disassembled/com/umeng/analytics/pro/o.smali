.class public Lcom/umeng/analytics/pro/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/o$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "session_start_time"

.field private static final b:Ljava/lang/String; = "session_end_time"

.field private static final c:Ljava/lang/String; = "session_id"

.field private static f:Ljava/lang/String;

.field private static g:Landroid/content/Context;


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "a_start_time"

    iput-object v0, p0, Lcom/umeng/analytics/pro/o;->d:Ljava/lang/String;

    const-string v0, "a_end_time"

    iput-object v0, p0, Lcom/umeng/analytics/pro/o;->e:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/o$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/umeng/analytics/pro/o;-><init>()V

    return-void
.end method

.method public static a()Lcom/umeng/analytics/pro/o;
    .registers 1

    invoke-static {}, Lcom/umeng/analytics/pro/o$a;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/content/SharedPreferences;J)Ljava/lang/String;
    .registers 9

    sget-object v0, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    if-nez v0, :cond_c

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    :cond_c
    sget-object v0, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/o;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :try_start_12
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/o;->d(Landroid/content/Context;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "__e"

    invoke-virtual {v1, v2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v2, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v2

    sget-object v3, Lcom/umeng/analytics/pro/g$a;->c:Lcom/umeng/analytics/pro/g$a;

    invoke-virtual {v2, v0, v1, v3}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/g$a;)Z

    sget-object v1, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/o;->a(Landroid/content/Context;)Z

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v1, "session_id"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "session_start_time"

    invoke-interface {p2, v1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "session_end_time"

    const-wide/16 v2, 0x0

    invoke-interface {p2, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "a_start_time"

    invoke-interface {p2, v1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "a_end_time"

    invoke-interface {p2, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "versioncode"

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "versionname"

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/b;->i()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_7f

    const-string v1, "_$!sp"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7f
    const-string p2, "_$!s_b"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "__ii"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "_$!ts_b"

    invoke-virtual {p1, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object p2, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/umeng/analytics/pro/i;->c(Ljava/lang/Object;)V
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_97} :catch_97

    :catch_97
    return-object v0
.end method

.method private a(Landroid/content/SharedPreferences;)V
    .registers 3

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "session_start_time"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "session_end_time"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "a_start_time"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "a_end_time"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private a(Landroid/content/SharedPreferences;J)Z
    .registers 14

    const-string v0, "a_start_time"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v0, "a_end_time"

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v0, v3, v1

    const/4 v7, 0x0

    if-eqz v0, :cond_21

    sub-long v8, p2, v3

    sget-wide v3, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    cmp-long v0, v8, v3

    if-gez v0, :cond_21

    const-string p1, "onResume called before onPause"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return v7

    :cond_21
    const/4 v0, 0x0

    sub-long v3, p2, v5

    sget-wide p2, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    cmp-long v0, v3, p2

    if-lez v0, :cond_94

    :try_start_2a
    const-string p2, "session_id"

    const-string p3, "-1"

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "session_end_time"

    invoke-interface {p1, p3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string p1, "-1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_92

    cmp-long p1, v3, v1

    if-nez p1, :cond_48

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :cond_48
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "__f"

    invoke-virtual {p1, p3, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object p3, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {p3}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p3

    sget-object v0, Lcom/umeng/analytics/pro/g$a;->d:Lcom/umeng/analytics/pro/g$a;

    invoke-virtual {p3, p2, p1, v0}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/g$a;)Z

    sget-boolean p1, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    if-eqz p1, :cond_92

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/umeng/analytics/b;->i()Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_79

    const-string v0, "_$!sp"

    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_79
    const-string p3, "_$!s_e"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "__ii"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "_$!ts_e"

    invoke-virtual {p1, p2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object p2, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p2, p1, p3, v7}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/Object;IZ)V
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_92} :catch_92

    :catch_92
    :cond_92
    const/4 p1, 0x1

    return p1

    :cond_94
    return v7
.end method

.method private d(Landroid/content/Context;)V
    .registers 3

    invoke-static {p1}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/i;->b(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/i;->a()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 14

    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    if-nez v0, :cond_c

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    :cond_c
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object p2, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    if-nez p2, :cond_1b

    return-void

    :cond_1b
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "versionname"

    const-string v4, ""

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    if-nez v5, :cond_ab

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ab

    const-string v4, "versioncode"

    invoke-interface {p2, v4, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "pre_date"

    const-string v8, ""

    invoke-interface {p2, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "pre_version"

    const-string v9, ""

    invoke-interface {p2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "versionname"

    const-string v10, ""

    invoke-interface {p2, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "vers_date"

    invoke-interface {v2, v10, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v10, "vers_pre_version"

    invoke-interface {v2, v10, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v10, "cur_version"

    invoke-interface {v2, v10, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v10, "dp_vers_date"

    invoke-interface {v2, v10, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v5, "dp_vers_pre_version"

    invoke-interface {v2, v5, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v5, "dp_cur_version"

    invoke-interface {v2, v5, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v5, "vers_code"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v5, "vers_name"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v5, "dp_vers_code"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v4, "dp_vers_name"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "a_end_time"

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/o;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/umeng/analytics/pro/o;->a(Landroid/content/Context;Landroid/content/SharedPreferences;J)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/pro/o;->f:Ljava/lang/String;

    :cond_a0
    sget-object p1, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-virtual {p0, p1, v0, v1}, Lcom/umeng/analytics/pro/o;->a(Landroid/content/Context;J)Z

    sget-object p1, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-virtual {p0, p1, v0, v1}, Lcom/umeng/analytics/pro/o;->b(Landroid/content/Context;J)V

    return-void

    :cond_ab
    invoke-direct {p0, p2, v0, v1}, Lcom/umeng/analytics/pro/o;->a(Landroid/content/SharedPreferences;J)Z

    move-result v3

    if-eqz v3, :cond_cb

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/umeng/analytics/pro/o;->a(Landroid/content/Context;Landroid/content/SharedPreferences;J)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/pro/o;->f:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Start new session: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Lcom/umeng/analytics/pro/o;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;)V

    return-void

    :cond_cb
    const-string v3, "session_id"

    const/4 v4, 0x0

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/umeng/analytics/pro/o;->f:Ljava/lang/String;

    const-string p2, "a_start_time"

    invoke-interface {v2, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string p2, "a_end_time"

    invoke-interface {v2, p2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Extend current session: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/umeng/analytics/pro/o;->f:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/o;->d(Landroid/content/Context;)V

    sget-object p1, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/umeng/analytics/pro/i;->a(Z)V

    sget-object p1, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/i;->d()V
    :try_end_109
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_109} :catch_109

    :catch_109
    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .registers 15

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "session_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_f

    return v3

    :cond_f
    const-string v4, "session_start_time"

    const-wide/16 v5, 0x0

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v4, "session_end_time"

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    cmp-long v4, v9, v5

    if-eqz v4, :cond_26

    sub-long v11, v9, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    :cond_26
    :try_start_26
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "__ii"

    invoke-virtual {v4, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "__e"

    invoke-virtual {v4, v11, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v7, "__f"

    invoke-virtual {v4, v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->getLocation()[D

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v7, :cond_62

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "lat"

    aget-wide v11, v7, v3

    invoke-virtual {v9, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v10, "lng"

    aget-wide v11, v7, v8

    invoke-virtual {v9, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v7, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v7, "__d"

    invoke-virtual {v4, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_62
    const-string v7, "android.net.TrafficStats"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v9, "getUidRxBytes"

    new-array v10, v8, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v3

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    const-string v10, "getUidTxBytes"

    new-array v11, v8, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v3

    invoke-virtual {v7, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_8a

    return v3

    :cond_8a
    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v3

    invoke-virtual {v9, v2, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-virtual {v7, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v2, v11, v5

    if-lez v2, :cond_ca

    cmp-long v2, v9, v5

    if-lez v2, :cond_ca

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "download_traffic"

    invoke-virtual {v2, v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "upload_traffic"

    invoke-virtual {v2, v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "__c"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_ca
    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p1

    sget-object v2, Lcom/umeng/analytics/pro/g$a;->e:Lcom/umeng/analytics/pro/g$a;

    invoke-virtual {p1, v1, v4, v2}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/g$a;)Z

    sget-object p1, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/p;->a(Landroid/content/Context;)V

    sget-object p1, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->b(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/o;->a(Landroid/content/SharedPreferences;)V
    :try_end_e0
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_e0} :catch_e1

    return v8

    :catch_e1
    return v3
.end method

.method public a(Landroid/content/Context;J)Z
    .registers 15

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    if-nez v2, :cond_9

    return v1

    :cond_9
    const-string v3, "session_id"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_13

    return v1

    :cond_13
    const-string v4, "a_start_time"

    const-wide/16 v5, 0x0

    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v4, "a_end_time"

    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_21} :catch_99

    cmp-long v2, v7, v5

    if-lez v2, :cond_94

    cmp-long v2, v9, v5

    if-nez v2, :cond_94

    :try_start_29
    sget-object v1, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/umeng/analytics/pro/o;->b(Landroid/content/Context;Ljava/lang/Object;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_32} :catch_9a

    :try_start_32
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "__f"

    invoke-virtual {v1, v2, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v2

    sget-object v4, Lcom/umeng/analytics/pro/g$a;->d:Lcom/umeng/analytics/pro/g$a;

    invoke-virtual {v2, v3, v1, v4}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/g$a;)Z

    sget-object v1, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/i;->b()V

    sget-boolean v1, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    if-eqz v1, :cond_95

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/analytics/b;->c()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_67

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-gtz v4, :cond_6f

    :cond_67
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/analytics/b;->i()Lorg/json/JSONObject;

    move-result-object v2

    :cond_6f
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_7a

    const-string v4, "_$!sp"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7a
    const-string v2, "_$!s_e"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "__ii"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "_$!ts_e"

    invoke-virtual {v1, v2, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object p2, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p2, v1, p3, v0}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/Object;IZ)V
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_93} :catch_95

    goto :goto_95

    :cond_94
    const/4 v0, 0x0

    :catch_95
    :cond_95
    :goto_95
    :try_start_95
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/o;->a(Landroid/content/Context;)Z
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_95 .. :try_end_98} :catch_9a

    return v0

    :catch_99
    const/4 v0, 0x0

    :catch_9a
    return v0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-nez p1, :cond_16

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Appkey is null or empty, Please check!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/pro/o;->f:Ljava/lang/String;

    return-object p1
.end method

.method public b(Landroid/content/Context;J)V
    .registers 7

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/o;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/pro/o;->f:Ljava/lang/String;

    :try_start_d
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "session_id"

    sget-object v1, Lcom/umeng/analytics/pro/o;->f:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "session_start_time"

    invoke-interface {p1, v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v0, "session_end_time"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v0, "a_start_time"

    invoke-interface {p1, v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v0, "a_end_time"

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v0, "versioncode"

    sget-object v1, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "versionname"

    sget-object v1, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "__e"

    invoke-virtual {p1, v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v0, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/o;->f:Ljava/lang/String;

    sget-object v2, Lcom/umeng/analytics/pro/g$a;->c:Lcom/umeng/analytics/pro/g$a;

    invoke-virtual {v0, v1, p1, v2}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/g$a;)Z

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/b;->i()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_7a

    const-string v1, "_$!sp"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7a
    const-string v0, "_$!s_b"

    sget-object v1, Lcom/umeng/analytics/pro/o;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "__ii"

    sget-object v1, Lcom/umeng/analytics/pro/o;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "_$!ts_b"

    invoke-virtual {p1, v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object p2, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/umeng/analytics/pro/i;->b(Ljava/lang/Object;)V
    :try_end_96
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_96} :catch_96

    :catch_96
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 9

    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    if-nez v0, :cond_c

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    :cond_c
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    if-nez p1, :cond_19

    return-void

    :cond_19
    const-string p2, "a_start_time"

    const-wide/16 v2, 0x0

    invoke-interface {p1, p2, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long p2, v4, v2

    if-nez p2, :cond_2f

    sget-boolean p2, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz p2, :cond_2f

    const-string p1, "onPause called before onResume"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_2f
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "a_end_time"

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string p2, "session_end_time"

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_40} :catch_40

    :catch_40
    return-void
.end method

.method public b()Z
    .registers 12

    sget-object v0, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "a_start_time"

    const-wide/16 v5, 0x0

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v4, "a_end_time"

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    cmp-long v0, v7, v5

    if-eqz v0, :cond_29

    sub-long v4, v2, v7

    sget-wide v6, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_29

    return v1

    :cond_29
    const/4 v0, 0x0

    sub-long v4, v2, v9

    sget-wide v2, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    cmp-long v0, v4, v2

    if-lez v0, :cond_34

    const/4 v0, 0x1

    return v0

    :cond_34
    return v1
.end method

.method public c()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/umeng/analytics/pro/o;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/o;->f:Ljava/lang/String;

    if-nez v0, :cond_10

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "session_id"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    return-object p1

    :catch_10
    :cond_10
    sget-object p1, Lcom/umeng/analytics/pro/o;->f:Ljava/lang/String;

    return-object p1
.end method

.method public d()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/o;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
