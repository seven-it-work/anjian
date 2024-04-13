.class public final Lcom/cyjh/http/c/c/n;
.super Lcom/cyjh/http/c/a/a;


# instance fields
.field private b:Lcom/cyjh/http/c/d/g;


# direct methods
.method public constructor <init>(Lcom/cyjh/http/c/d/g;)V
    .registers 2

    invoke-direct {p0}, Lcom/cyjh/http/c/a/a;-><init>()V

    iput-object p1, p0, Lcom/cyjh/http/c/c/n;->b:Lcom/cyjh/http/c/d/g;

    return-void
.end method

.method private a()V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/http/d/b/c;->a()Lcom/cyjh/http/d/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cyjh/http/d/b/c;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 5

    :try_start_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    const-class v0, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;

    invoke-static {p1, v0}, Lcom/cyjh/common/util/r;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;

    iget-object v0, p0, Lcom/cyjh/http/c/c/n;->b:Lcom/cyjh/http/c/d/g;

    invoke-interface {v0, p1}, Lcom/cyjh/http/c/d/g;->a(Lcom/cyjh/http/bean/response/RegCodeInfoResponse;)V

    return-void

    :cond_16
    iget-object p1, p0, Lcom/cyjh/http/c/c/n;->b:Lcom/cyjh/http/c/d/g;

    const-string v0, "bind getData\u4e0b\u53d1json\u6570\u636e\u4e3anull"

    invoke-interface {p1, v0}, Lcom/cyjh/http/c/d/g;->b(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/cyjh/http/c/c/n;->b:Lcom/cyjh/http/c/d/g;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "json\u89e3\u6790\u629b\u5f02\u5e38\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/cyjh/http/c/d/g;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/cyjh/http/b/a;->b(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object v0

    new-instance v1, Lcom/cyjh/http/bean/request/QueryRegCodeRequestInfo;

    invoke-direct {v1, v0}, Lcom/cyjh/http/bean/request/QueryRegCodeRequestInfo;-><init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V

    iput-object p1, v1, Lcom/cyjh/http/bean/request/QueryRegCodeRequestInfo;->RegCode:Ljava/lang/String;

    iput-object p2, v1, Lcom/cyjh/http/bean/request/QueryRegCodeRequestInfo;->OldRegCode:Ljava/lang/String;

    const-string p1, "Script"

    const-string p2, "RegCodeIsSuperpose"

    invoke-static {p1, p2}, Lcom/cyjh/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lcom/cyjh/http/b/a;->a(Ljava/lang/String;Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object p2

    iget-object v0, p0, Lcom/cyjh/http/c/c/n;->a:Lcom/cyjh/http/d/b/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1, p1, p2}, Lcom/cyjh/http/d/b/a;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37

    return-void

    :catch_37
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p2, "zzz"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "QueryRegCodeInfoPresenter--queryRegCodeInfo--"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/http/c/c/n;->b:Lcom/cyjh/http/c/d/g;

    invoke-interface {v0, p1}, Lcom/cyjh/http/c/d/g;->b(Ljava/lang/String;)V

    return-void
.end method
