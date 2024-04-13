.class public Lcom/umeng/analytics/pro/p;
.super Ljava/lang/Object;


# static fields
.field private static a:Lorg/json/JSONObject;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/p;->a:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/p;->b:Ljava/util/Map;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 5

    if-eqz p0, :cond_2c

    :try_start_2
    sget-object v0, Lcom/umeng/analytics/pro/p;->a:Lorg/json/JSONObject;

    monitor-enter v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_2c

    :try_start_5
    sget-object v1, Lcom/umeng/analytics/pro/p;->a:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_27

    invoke-static {p0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p0

    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/o;->d()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/pro/p;->a:Lorg/json/JSONObject;

    sget-object v3, Lcom/umeng/analytics/pro/g$a;->b:Lcom/umeng/analytics/pro/g$a;

    invoke-virtual {p0, v1, v2, v3}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/g$a;)Z

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    sput-object p0, Lcom/umeng/analytics/pro/p;->a:Lorg/json/JSONObject;

    :cond_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_29

    :try_start_2b
    throw p0
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2c} :catch_2c

    :catch_2c
    :cond_2c
    return-void
.end method


# virtual methods
.method public a()V
    .registers 12

    iget-object v0, p0, Lcom/umeng/analytics/pro/p;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/umeng/analytics/pro/p;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v6, v3

    if-lez v8, :cond_10

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-wide v9, v2

    move-object v2, v4

    move-wide v3, v9

    goto :goto_10

    :cond_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_45

    if-eqz v2, :cond_44

    invoke-virtual {p0, v2}, Lcom/umeng/analytics/pro/p;->b(Ljava/lang/String;)V

    :cond_44
    return-void

    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/umeng/analytics/pro/p;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lcom/umeng/analytics/pro/p;->b:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_18

    throw p1

    :cond_1b
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/umeng/analytics/pro/p;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/umeng/analytics/pro/p;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_11
    iget-object v1, p0, Lcom/umeng/analytics/pro/p;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_44

    if-nez v1, :cond_1d

    return-void

    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v4, v2, v0

    sget-object v1, Lcom/umeng/analytics/pro/p;->a:Lorg/json/JSONObject;

    monitor-enter v1

    :try_start_2a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/p;->a:Lorg/json/JSONObject;

    const-string v2, "page_name"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p1, Lcom/umeng/analytics/pro/p;->a:Lorg/json/JSONObject;

    const-string v0, "duration"

    invoke-virtual {p1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_3d} :catch_40
    .catchall {:try_start_2a .. :try_end_3d} :catchall_3e

    goto :goto_40

    :catchall_3e
    move-exception p1

    goto :goto_42

    :catch_40
    :goto_40
    :try_start_40
    monitor-exit v1

    return-void

    :goto_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_3e

    throw p1

    :catchall_44
    move-exception p1

    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw p1

    :cond_47
    return-void
.end method
