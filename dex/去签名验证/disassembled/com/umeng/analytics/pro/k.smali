.class public Lcom/umeng/analytics/pro/k;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONArray;)J
    .registers 3

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public static a(Lorg/json/JSONObject;)J
    .registers 3

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0

    int-to-long v0, p0

    return-wide v0
.end method

.method private static a(Landroid/content/Context;J)Lorg/json/JSONObject;
    .registers 8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "splitAnalyticsData========"

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/umeng/analytics/pro/i;->b(Z)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_13} :catch_88

    if-eqz v1, :cond_8d

    :try_start_15
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_8d

    invoke-static {v1}, Lcom/umeng/analytics/pro/k;->a(Lorg/json/JSONObject;)J

    move-result-wide v3

    cmp-long v0, v3, p1

    if-lez v0, :cond_8d

    const/4 p1, 0x0

    const-string p2, "sessions"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_57

    const-string p2, "sessions"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_56

    const-string p1, "id"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "autopages"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "pages"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string p2, "sessions"

    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_56
    const/4 v0, 0x1

    :cond_57
    const-string p2, "ekv"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_64

    const-string p2, "ekv"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_64
    const-string p2, "gkv"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_71

    const-string p2, "gkv"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_71
    const-string p2, "error"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7e

    const-string p2, "error"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_7e
    invoke-static {p0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/umeng/analytics/pro/g;->a(ZLjava/lang/String;)V
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_85} :catch_86

    return-object v1

    :catch_86
    move-exception p0

    goto :goto_8a

    :catch_88
    move-exception p0

    move-object v1, v0

    :goto_8a
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :cond_8d
    return-object v1
.end method

.method public static a(Landroid/content/Context;JLorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 10

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    invoke-static {p0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/g;->a()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-wide/16 v2, 0x0

    const-string v4, "header"

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    const-string v1, "header"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_32

    invoke-static {v1}, Lcom/umeng/analytics/pro/k;->a(Lorg/json/JSONObject;)J

    move-result-wide v2

    const/4 v4, 0x0

    sub-long v4, p1, v2

    move-wide v2, v4

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :cond_33
    :goto_33
    const-string p1, "content"

    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_62

    const-string p1, "content"

    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_62

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p2

    if-lez p2, :cond_62

    invoke-static {p0, v2, v3, p1, v0}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;JLorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result p2

    if-gtz p2, :cond_55

    invoke-static {p0, v2, v3, p1, v0}, Lcom/umeng/analytics/pro/k;->b(Landroid/content/Context;JLorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_55
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-lez p0, :cond_62

    if-eqz v1, :cond_62

    const-string p0, "header"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_62} :catch_62

    :catch_62
    :cond_62
    return-object v0
.end method

.method private static a(Landroid/content/Context;JLorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 8

    :try_start_0
    const-string v0, "dplus"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "dplus"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    if-eqz p3, :cond_22

    invoke-virtual {p3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_22

    invoke-static {p3}, Lcom/umeng/analytics/pro/k;->a(Lorg/json/JSONObject;)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-lez v2, :cond_22

    invoke-static {p0, p1, p2, p3}, Lcom/umeng/analytics/pro/k;->b(Landroid/content/Context;JLorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p3

    :cond_22
    invoke-virtual {p3}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-lez p0, :cond_37

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "dplus"

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "content"

    invoke-virtual {p4, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_37} :catch_37

    :catch_37
    :cond_37
    return-void
.end method

.method private static b(Landroid/content/Context;JLorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 9

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "session"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    const-string v1, "session"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/analytics/pro/k;->a(Lorg/json/JSONArray;)J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-lez v4, :cond_2d

    const-string v1, "session"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/umeng/analytics/pro/g;->a(I)V

    invoke-static {p0, p1, p2, p3}, Lcom/umeng/analytics/pro/k;->b(Landroid/content/Context;JLorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_2d
    const-string p0, "session"

    :goto_2f
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0

    :cond_33
    const-string v1, "events"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    const-string v1, "events"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/analytics/pro/k;->a(Lorg/json/JSONArray;)J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-lez v4, :cond_5b

    const-string v1, "events"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/umeng/analytics/pro/g;->a(I)V

    invoke-static {p0, p1, p2, p3}, Lcom/umeng/analytics/pro/k;->b(Landroid/content/Context;JLorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_5b
    const-string p0, "events"

    goto :goto_2f

    :cond_5e
    const-string v1, "pageview"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_89

    const-string v1, "pageview"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/analytics/pro/k;->a(Lorg/json/JSONArray;)J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-lez v4, :cond_86

    const-string v1, "pageview"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/umeng/analytics/pro/g;->a(I)V

    invoke-static {p0, p1, p2, p3}, Lcom/umeng/analytics/pro/k;->b(Landroid/content/Context;JLorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_86
    const-string p0, "pageview"
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_88} :catch_89

    goto :goto_2f

    :catch_89
    :cond_89
    return-object v0
.end method

.method private static b(Landroid/content/Context;JLorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 8

    :try_start_0
    const-string v0, "analytics"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "analytics"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    if-eqz p3, :cond_37

    invoke-virtual {p3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_37

    invoke-static {p3}, Lcom/umeng/analytics/pro/k;->a(Lorg/json/JSONObject;)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-lez v2, :cond_22

    invoke-static {p0, p1, p2}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;J)Lorg/json/JSONObject;

    move-result-object p3

    :cond_22
    invoke-virtual {p3}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-lez p0, :cond_37

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "analytics"

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "content"

    invoke-virtual {p4, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_37} :catch_37

    :catch_37
    :cond_37
    return-void
.end method
