.class public final Lcom/cyjh/http/c/c/l;
.super Lcom/cyjh/http/c/a/a;


# instance fields
.field private b:Lcom/cyjh/http/c/d/e;

.field private c:J


# direct methods
.method public constructor <init>(Lcom/cyjh/http/c/d/e;)V
    .registers 2

    invoke-direct {p0}, Lcom/cyjh/http/c/a/a;-><init>()V

    iput-object p1, p0, Lcom/cyjh/http/c/c/l;->b:Lcom/cyjh/http/c/d/e;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/http/c/c/l;->a:Lcom/cyjh/http/d/b/a;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/http/d/b/c;->a()Lcom/cyjh/http/d/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cyjh/http/d/b/c;->a(Ljava/lang/Object;)V

    :cond_13
    return-void
.end method

.method public final a(Landroid/content/Context;J)V
    .registers 7

    :try_start_0
    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/http/b/a;->b(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object v0

    sget-wide v1, Lcom/cyjh/http/b/a;->b:J

    iput-wide v1, p0, Lcom/cyjh/http/c/c/l;->c:J

    new-instance v1, Lcom/cyjh/http/bean/request/NoticeDetailsRequestParams;

    invoke-direct {v1, v0}, Lcom/cyjh/http/bean/request/NoticeDetailsRequestParams;-><init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V

    iput-wide p2, v1, Lcom/cyjh/http/bean/request/NoticeDetailsRequestParams;->NoticeId:J

    const-string p2, "Notice"

    const-string p3, "Detail"

    invoke-static {p2, p3}, Lcom/cyjh/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object p3

    invoke-virtual {p3, p2, v1}, Lcom/cyjh/http/b/a;->a(Ljava/lang/String;Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object p3

    iget-object v0, p0, Lcom/cyjh/http/c/c/l;->a:Lcom/cyjh/http/d/b/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/cyjh/http/d/b/a;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_39

    return-void

    :catch_39
    move-exception p1

    const-string p2, "zzz"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "com.cyjh.share.NoticeDetailsPresenter--loadAd:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 7

    :try_start_0
    check-cast p1, Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Data"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "Code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_32

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/cyjh/http/bean/response/NoticeBean;

    invoke-static {p1, v0}, Lcom/cyjh/common/util/r;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/http/bean/response/NoticeBean;

    if-eqz p1, :cond_32

    iget-wide v0, p1, Lcom/cyjh/http/bean/response/NoticeBean;->ClientTimestamp:J

    iget-wide v2, p0, Lcom/cyjh/http/c/c/l;->c:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_32

    iget-object v0, p0, Lcom/cyjh/http/c/c/l;->b:Lcom/cyjh/http/c/d/e;

    invoke-interface {v0, p1}, Lcom/cyjh/http/c/d/e;->a(Lcom/cyjh/http/bean/response/NoticeBean;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    :cond_32
    return-void

    :catch_33
    move-exception p1

    const-string v0, "zzz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.cyjh.share.NoticeDetailsPresenter--uiDataSuccess:"

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

    const-string v2, "com.cyjh.share.NoticeDetailsPresenter--onErrorResponse:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
