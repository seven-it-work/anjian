.class public Lcom/cyjh/mobileanjian/ipc/log/ScriptUnexpectedStopLog;
.super Lcom/cyjh/mobileanjian/ipc/log/a;


# static fields
.field private static final d:Ljava/lang/String; = "SetErrorLog"


# instance fields
.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/log/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_25

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_25

    :cond_15
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    packed-switch p0, :pswitch_data_28

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_1f
    const-string p0, "WIFI"

    return-object p0

    :pswitch_22
    const-string p0, "MOBILE"

    return-object p0

    :cond_25
    :goto_25
    const-string p0, "No Network"

    return-object p0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1f
    .end packed-switch
.end method


# virtual methods
.method protected final a()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://api4.mobileanjian.com/api"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SetErrorLog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/log/ScriptUnexpectedStopLog;->c:Ljava/lang/String;

    return-void
.end method

.method protected final b()Ljava/lang/String;
    .registers 6

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/log/b;->a()Lcom/cyjh/mobileanjian/ipc/log/b;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_9
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "PhoneModel"

    iget-object v4, v0, Lcom/cyjh/mobileanjian/ipc/log/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "MACMD5"

    iget-object v4, v0, Lcom/cyjh/mobileanjian/ipc/log/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "AndroidVersion"

    iget-object v4, v0, Lcom/cyjh/mobileanjian/ipc/log/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "ROM"

    iget-object v4, v0, Lcom/cyjh/mobileanjian/ipc/log/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "PackageName"

    iget-object v4, v0, Lcom/cyjh/mobileanjian/ipc/log/b;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "AppID"

    iget-object v4, v0, Lcom/cyjh/mobileanjian/ipc/log/b;->h:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "AppVersion"

    iget-object v4, v0, Lcom/cyjh/mobileanjian/ipc/log/b;->j:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "Version"

    iget-object v4, v0, Lcom/cyjh/mobileanjian/ipc/log/b;->k:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "IsFree"

    iget-boolean v0, v0, Lcom/cyjh/mobileanjian/ipc/log/b;->i:Z

    if-eqz v0, :cond_4f

    const-string v0, "1"

    goto :goto_51

    :cond_4f
    const-string v0, "0"

    :goto_51
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "NetworkType"

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/log/ScriptUnexpectedStopLog;->b:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_7d

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_6d

    goto :goto_7d

    :cond_6d
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_ae

    const-string v3, "UNKNOWN"

    goto :goto_7f

    :pswitch_77
    const-string v3, "WIFI"

    goto :goto_7f

    :pswitch_7a
    const-string v3, "MOBILE"

    goto :goto_7f

    :cond_7d
    :goto_7d
    const-string v3, "No Network"

    :goto_7f
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "MqmCode"

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/log/ScriptUnexpectedStopLog;->e:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "MqmMessage"

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/log/ScriptUnexpectedStopLog;->e:I

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/stuff/MqmCode;->getMessageFromCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ExtraMessage"

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/log/ScriptUnexpectedStopLog;->f:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "Data"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a4
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_a4} :catch_a5

    goto :goto_a9

    :catch_a5
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_a9
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_7a
        :pswitch_77
    .end packed-switch
.end method

.method public setExtraLog(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/log/ScriptUnexpectedStopLog;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/log/ScriptUnexpectedStopLog;->f:Ljava/lang/String;

    return-object p0
.end method

.method public setMqmCode(I)Lcom/cyjh/mobileanjian/ipc/log/ScriptUnexpectedStopLog;
    .registers 2

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/log/ScriptUnexpectedStopLog;->e:I

    return-object p0
.end method
