.class public Lcom/cyjh/http/c/c/e;
.super Lcom/cyjh/http/c/a/a;


# static fields
.field private static final b:Ljava/lang/String; = "e"


# instance fields
.field private c:Lcom/cyjh/http/c/d/b;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/cyjh/http/c/d/b;)V
    .registers 2

    invoke-direct {p0}, Lcom/cyjh/http/c/a/a;-><init>()V

    iput-object p1, p0, Lcom/cyjh/http/c/c/e;->c:Lcom/cyjh/http/c/d/b;

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
    .registers 6

    const/4 v0, -0x1

    :try_start_1
    check-cast p1, Ljava/lang/String;

    sget-object v1, Lcom/cyjh/http/c/c/e;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "uiDataSuccess --> json="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/cyjh/http/bean/response/BindRegCodeResponse;

    invoke-static {p1, v1}, Lcom/cyjh/common/util/r;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/http/bean/response/BindRegCodeResponse;

    if-nez p1, :cond_2d

    iget-object p1, p0, Lcom/cyjh/http/c/c/e;->c:Lcom/cyjh/http/c/d/b;

    new-instance v1, Lcom/cyjh/http/bean/response/BaseResponseInfo;

    const-string v2, "getData\u4e0b\u53d1json\u6570\u636e\u4e3anull"

    invoke-direct {v1, v0, v2}, Lcom/cyjh/http/bean/response/BaseResponseInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/cyjh/http/c/d/b;->a(Lcom/cyjh/http/bean/response/BaseResponseInfo;)V

    return-void

    :cond_2d
    iget-object v1, p0, Lcom/cyjh/http/c/c/e;->c:Lcom/cyjh/http/c/d/b;

    invoke-interface {v1, p1}, Lcom/cyjh/http/c/d/b;->a(Lcom/cyjh/http/bean/response/BindRegCodeResponse;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_32} :catch_33

    return-void

    :catch_33
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/cyjh/http/c/c/e;->c:Lcom/cyjh/http/c/d/b;

    new-instance v2, Lcom/cyjh/http/bean/response/BaseResponseInfo;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Lcom/cyjh/http/bean/response/BaseResponseInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/cyjh/http/c/d/b;->a(Lcom/cyjh/http/bean/response/BaseResponseInfo;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)V
    .registers 7

    :try_start_0
    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/cyjh/http/b/a;->b(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object v0

    new-instance v1, Lcom/cyjh/http/bean/request/BindRegCodeRequestInfo;

    invoke-direct {v1, v0}, Lcom/cyjh/http/bean/request/BindRegCodeRequestInfo;-><init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V

    iput-object p1, v1, Lcom/cyjh/http/bean/request/BindRegCodeRequestInfo;->RegCode:Ljava/lang/String;

    iput-object p4, v1, Lcom/cyjh/http/bean/request/BindRegCodeRequestInfo;->OldRegCode:Ljava/lang/String;

    iput p3, v1, Lcom/cyjh/http/bean/request/BindRegCodeRequestInfo;->IsSuperpose:I

    const-string p1, "Script"

    const-string p3, "BindRegCode"

    invoke-static {p1, p3}, Lcom/cyjh/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object p3

    invoke-virtual {p3, p1, v1}, Lcom/cyjh/http/b/a;->a(Ljava/lang/String;Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object p3

    iget-object p4, p0, Lcom/cyjh/http/c/c/e;->a:Lcom/cyjh/http/d/b/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, p2, v0, p1, p3}, Lcom/cyjh/http/d/b/a;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    const-string p2, "zzz"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "BindRegisterCodePresenter--bindRegCode--"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4b} :catch_4c

    return-void

    :catch_4c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/http/c/c/e;->c:Lcom/cyjh/http/c/d/b;

    new-instance v1, Lcom/cyjh/http/bean/response/BaseResponseInfo;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p1}, Lcom/cyjh/http/bean/response/BaseResponseInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/cyjh/http/c/d/b;->a(Lcom/cyjh/http/bean/response/BaseResponseInfo;)V

    return-void
.end method
