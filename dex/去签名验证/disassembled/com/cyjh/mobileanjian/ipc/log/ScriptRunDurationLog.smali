.class public Lcom/cyjh/mobileanjian/ipc/log/ScriptRunDurationLog;
.super Lcom/cyjh/mobileanjian/ipc/log/a;


# static fields
.field private static final d:Ljava/lang/String; = "SetOperationLog"

.field private static final e:I = 0x4


# instance fields
.field private f:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/log/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://api4.mobileanjian.com/api"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SetOperationLog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/log/ScriptRunDurationLog;->c:Ljava/lang/String;

    return-void
.end method

.method protected final b()Ljava/lang/String;
    .registers 10

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

    const-string v3, "IsNew"

    iget-boolean v4, v0, Lcom/cyjh/mobileanjian/ipc/log/b;->l:Z

    if-eqz v4, :cond_3a

    const-string v4, "1"

    goto :goto_3c

    :cond_3a
    const-string v4, "0"

    :goto_3c
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

    if-eqz v0, :cond_5d

    const-string v0, "1"

    goto :goto_5f

    :cond_5d
    const-string v0, "0"

    :goto_5f
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "UsedTime"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/cyjh/mobileanjian/ipc/log/ScriptRunDurationLog;->f:J

    const/4 v7, 0x0

    sub-long v7, v3, v5

    const-wide/16 v3, 0x3e8

    div-long/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "LogType"

    const-string v3, "4"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "Data"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_83
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_83} :catch_84

    goto :goto_88

    :catch_84
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_88
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setScriptStartTime(J)Lcom/cyjh/mobileanjian/ipc/log/ScriptRunDurationLog;
    .registers 3

    iput-wide p1, p0, Lcom/cyjh/mobileanjian/ipc/log/ScriptRunDurationLog;->f:J

    return-object p0
.end method
