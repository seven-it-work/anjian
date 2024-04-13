.class public final Lcom/cyjh/mobileanjian/ipc/utils/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "http://logapi4.mobileanjian.com/api/SetLog"

.field private static final b:I = 0x4

.field private static final c:Ljava/lang/String; = "RunScriptDurationApi"

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs a(Landroid/content/Context;[J)Ljava/lang/String;
    .registers 10

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "AppID"

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/stuff/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "MachineCode"

    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/utils/r;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "AppVersion"

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/stuff/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "IsFree"

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/stuff/a;->a()Z

    move-result v2

    if-eqz v2, :cond_30

    const-string v2, "1"

    goto :goto_32

    :cond_30
    const-string v2, "0"

    :goto_32
    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "UsedTime"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    aget-wide v4, p1, v4

    const/4 p1, 0x0

    sub-long v6, v2, v4

    const-wide/16 v2, 0x3e8

    div-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "LogType"

    const-string p1, "4"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "Data"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_57
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_57} :catch_58

    goto :goto_5c

    :catch_58
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_5c
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;J)V
    .registers 7

    const-string v0, "http://logapi4.mobileanjian.com/api/SetLog"

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/utils/e;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "log uri: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/utils/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/lidroid/xutils/HttpUtils;

    invoke-direct {v0}, Lcom/lidroid/xutils/HttpUtils;-><init>()V

    new-instance v1, Lcom/lidroid/xutils/http/RequestParams;

    invoke-direct {v1}, Lcom/lidroid/xutils/http/RequestParams;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide p1, v2, v3

    invoke-static {p0, v2}, Lcom/cyjh/mobileanjian/ipc/utils/e;->a(Landroid/content/Context;[J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Data"

    invoke-virtual {v1, p1, p0}, Lcom/lidroid/xutils/http/RequestParams;->addQueryStringParameter(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->GET:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    sget-object p1, Lcom/cyjh/mobileanjian/ipc/utils/e;->d:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/lidroid/xutils/HttpUtils;->send(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;Lcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;

    return-void
.end method
