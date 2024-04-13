.class public Lcom/cyjh/http/c/c/k;
.super Lcom/cyjh/http/c/a/a;


# instance fields
.field private b:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/cyjh/http/c/a/a;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 2

    const-class v0, Lcom/cyjh/http/c/c/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/http/d/b/c;->a()Lcom/cyjh/http/d/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cyjh/http/d/b/c;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/http/b/a;->b(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object v0

    sget-wide v1, Lcom/cyjh/http/b/a;->b:J

    iput-wide v1, p0, Lcom/cyjh/http/c/c/k;->b:J

    const-string v1, "AliCloud"

    const-string v2, "GetStorageToken"

    invoke-static {v1, v2}, Lcom/cyjh/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/cyjh/http/b/a;->a(Ljava/lang/String;Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/cyjh/http/c/c/k;->a:Lcom/cyjh/http/d/b/a;

    const-class v3, Lcom/cyjh/http/c/c/k;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v1, v0}, Lcom/cyjh/http/d/b/a;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30

    return-void

    :catch_30
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "zzz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetTokenAliCloudPresenter--load--"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 8

    :try_start_0
    check-cast p1, Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "Data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Code"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "GetTokenAliCloudPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "uiDataSuccess data:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xc8

    if-ne v0, p1, :cond_44

    sget-wide v2, Lcom/cyjh/http/b/a;->b:J

    iget-wide v4, p0, Lcom/cyjh/http/c/c/k;->b:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_44

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object p1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    invoke-static {v0, v1}, Lcom/cyjh/common/util/r;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    iput-object v0, p1, Lcom/cyjh/http/b/a;->d:Lcom/cyjh/http/bean/response/AliCloudServerResponse;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_45

    :cond_44
    return-void

    :catch_45
    move-exception p1

    const-string v0, "zzz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetTokenAliCloudPresenter--uiDataSuccess exception-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .registers 5

    const-string v0, "zzz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetTokenAliCloudPresenter--onErrorResponse--"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
