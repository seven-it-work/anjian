.class public Lcom/umeng/commonsdk/proguard/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/umeng/commonsdk/framework/UMLogDataProtocol;


# static fields
.field private static final b:Ljava/lang/String; = "info"

.field private static final c:Ljava/lang/String; = "stat"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/c;->a:Landroid/content/Context;

    :cond_b
    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .registers 9

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/j;->c(Landroid/content/Context;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    new-instance v1, Lcom/umeng/commonsdk/proguard/j$c;

    invoke-direct {v1}, Lcom/umeng/commonsdk/proguard/j$c;-><init>()V

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->describeContents()I

    move-result v2

    iput v2, v1, Lcom/umeng/commonsdk/proguard/j$c;->a:I

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/umeng/commonsdk/proguard/j$c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/umeng/commonsdk/proguard/j$c;->c:Ljava/lang/String;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2e

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v2

    :goto_2b
    iput v2, v1, Lcom/umeng/commonsdk/proguard/j$c;->d:I

    goto :goto_30

    :cond_2e
    const/4 v2, -0x1

    goto :goto_2b

    :goto_30
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getHiddenSSID()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3b

    iput v4, v1, Lcom/umeng/commonsdk/proguard/j$c;->e:I

    goto :goto_3d

    :cond_3b
    iput v3, v1, Lcom/umeng/commonsdk/proguard/j$c;->e:I

    :goto_3d
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    iput v2, v1, Lcom/umeng/commonsdk/proguard/j$c;->f:I

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v2

    iput v2, v1, Lcom/umeng/commonsdk/proguard/j$c;->g:I

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/umeng/commonsdk/proguard/j$c;->h:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    iput v2, v1, Lcom/umeng/commonsdk/proguard/j$c;->i:I

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    iput v2, v1, Lcom/umeng/commonsdk/proguard/j$c;->j:I

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/j;->g(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Lcom/umeng/commonsdk/proguard/j$c;->k:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/umeng/commonsdk/proguard/j$c;->l:J

    if-eqz v0, :cond_b2

    :try_start_69
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/n;->b(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_96

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_96

    const/4 v2, 0x0

    :goto_76
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_96

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "ssid"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_93

    iget-object v6, v1, Lcom/umeng/commonsdk/proguard/j$c;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_93

    const/4 v3, 0x1

    goto :goto_96

    :cond_93
    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    :cond_96
    :goto_96
    if-nez v3, :cond_9b

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/n;->a(Landroid/content/Context;Lcom/umeng/commonsdk/proguard/j$c;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_9b} :catch_9c

    :cond_9b
    return-void

    :catch_9c
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wifiChange:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/e;->e(Ljava/lang/String;)V

    :cond_b2
    return-void
.end method


# virtual methods
.method public removeCacheData(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public setupReportData(J)Lorg/json/JSONObject;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public workEvent(Ljava/lang/Object;I)V
    .registers 8

    const-string v0, "walle"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "[internal] workEvent"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    packed-switch p2, :pswitch_data_142

    return-void

    :pswitch_11
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/c;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "info"

    invoke-virtual {p2, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    if-eqz p2, :cond_140

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "stat"

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :pswitch_2f
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/c;->a:Landroid/content/Context;

    check-cast p1, Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/proguard/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :pswitch_37
    :try_start_37
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/c;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/proguard/c;->a(Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3c} :catch_3d

    return-void

    :catch_3d
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "UM_INTERNAL_CACHE_WIFICHANGE_KEY:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/common/e;->e(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/c;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void

    :pswitch_59
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/c;->a:Landroid/content/Context;

    check-cast p1, Lcom/umeng/commonsdk/proguard/j$b;

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/proguard/n;->a(Landroid/content/Context;Lcom/umeng/commonsdk/proguard/j$b;)V

    return-void

    :pswitch_61
    :try_start_61
    const-string p2, "walle"

    new-array v0, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[internal] workEvent cache station, event is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p2, v0}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/proguard/s;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_85} :catch_86

    return-void

    :catch_86
    move-exception p1

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/c;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void

    :pswitch_8d
    :try_start_8d
    const-string p2, "walle"

    new-array v0, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[internal] workEvent cache battery, event is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p2, v0}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/proguard/s;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_b1} :catch_b2

    return-void

    :catch_b2
    move-exception p1

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/c;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void

    :pswitch_b9
    :try_start_b9
    const-string p2, "walle"

    new-array v0, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[internal] workEvent cache location, event is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p2, v0}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/c;->a:Landroid/content/Context;

    const-string v0, "umeng_common_config"

    invoke-virtual {p2, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    if-nez p2, :cond_df

    return-void

    :cond_df
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "location_json"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_ef} :catch_f0

    return-void

    :catch_f0
    move-exception p1

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/c;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void

    :pswitch_f7
    :try_start_f7
    const-string p1, "walle"

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "[internal] workEvent send envelope"

    aput-object v0, p2, v4

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "i_sdk_v"

    const-string v0, "1.2.0"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/c;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/proguard/d;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p2

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/c;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_139

    const-string p2, "exception"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_139

    const-string p1, "walle"

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "[internal] workEvent send envelope back, result is ok"

    aput-object v0, p2, v4

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/c;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/proguard/j;->f(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/c;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/proguard/r;->d(Landroid/content/Context;)V
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_139} :catch_13a

    :cond_139
    return-void

    :catch_13a
    move-exception p1

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/c;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_140
    return-void

    nop

    :pswitch_data_142
    .packed-switch 0x8001
        :pswitch_f7
        :pswitch_b9
        :pswitch_8d
        :pswitch_61
        :pswitch_59
        :pswitch_37
        :pswitch_2f
        :pswitch_11
    .end packed-switch
.end method
