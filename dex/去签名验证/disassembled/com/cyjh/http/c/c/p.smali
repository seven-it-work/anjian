.class public final Lcom/cyjh/http/c/c/p;
.super Lcom/cyjh/http/c/a/a;


# instance fields
.field private b:Lcom/cyjh/http/c/d/i;


# direct methods
.method public constructor <init>(Lcom/cyjh/http/c/d/i;)V
    .registers 2

    invoke-direct {p0}, Lcom/cyjh/http/c/a/a;-><init>()V

    iput-object p1, p0, Lcom/cyjh/http/c/c/p;->b:Lcom/cyjh/http/c/d/i;

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

    const-string v0, "zzz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UnbindRegisterCodePresenter--uiDataSuccess--"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_13
    check-cast p1, Ljava/lang/String;

    const-class v0, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;

    invoke-static {p1, v0}, Lcom/cyjh/common/util/r;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;

    if-eqz p1, :cond_25

    iget-object v0, p0, Lcom/cyjh/http/c/c/p;->b:Lcom/cyjh/http/c/d/i;

    invoke-interface {v0, p1}, Lcom/cyjh/http/c/d/i;->a(Lcom/cyjh/http/bean/response/RegCodeInfoResponse;)V

    return-void

    :cond_25
    iget-object p1, p0, Lcom/cyjh/http/c/c/p;->b:Lcom/cyjh/http/c/d/i;

    const-string v0, "\u89e3\u7ed1\u6ce8\u518c\u7801\u89e3\u6790Json\u5f02\u5e38"

    invoke-interface {p1, v0}, Lcom/cyjh/http/c/d/i;->a(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2c} :catch_2d

    return-void

    :catch_2d
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/cyjh/http/c/c/p;->b:Lcom/cyjh/http/c/d/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u89e3\u7ed1\u6ce8\u518c\u7801\u89e3\u6790\u5f02\u5e38:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/cyjh/http/c/d/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/content/Context;)V
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/cyjh/http/b/a;->b(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object v0

    new-instance v1, Lcom/cyjh/http/bean/request/UnbindRegCodeRequestInfo;

    invoke-direct {v1, v0}, Lcom/cyjh/http/bean/request/UnbindRegCodeRequestInfo;-><init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V

    iput-object p1, v1, Lcom/cyjh/http/bean/request/UnbindRegCodeRequestInfo;->RegCode:Ljava/lang/String;

    const-string p1, "Script"

    const-string v0, "UnbindRegCode"

    invoke-static {p1, v0}, Lcom/cyjh/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/cyjh/http/b/a;->a(Ljava/lang/String;Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/http/c/c/p;->a:Lcom/cyjh/http/d/b/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2, p1, v0}, Lcom/cyjh/http/d/b/a;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    return-void

    :catch_35
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .registers 5

    const-string v0, "zzz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UnbindRegisterCodePresenter--onErrorResponse--"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/cyjh/http/c/c/p;->b:Lcom/cyjh/http/c/d/i;

    invoke-interface {v0, p1}, Lcom/cyjh/http/c/d/i;->a(Ljava/lang/String;)V

    return-void
.end method
