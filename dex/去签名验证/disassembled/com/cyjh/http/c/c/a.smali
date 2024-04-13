.class public Lcom/cyjh/http/c/c/a;
.super Lcom/cyjh/http/c/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/http/c/c/a$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "a"

.field private static d:Lcom/cyjh/http/c/c/a;


# instance fields
.field public b:Lcom/cyjh/http/c/c/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/cyjh/http/c/a/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/cyjh/http/c/c/a;
    .registers 2

    sget-object v0, Lcom/cyjh/http/c/c/a;->d:Lcom/cyjh/http/c/c/a;

    if-nez v0, :cond_17

    const-class v0, Lcom/cyjh/http/c/c/a;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/cyjh/http/c/c/a;->d:Lcom/cyjh/http/c/c/a;

    if-nez v1, :cond_12

    new-instance v1, Lcom/cyjh/http/c/c/a;

    invoke-direct {v1}, Lcom/cyjh/http/c/c/a;-><init>()V

    sput-object v1, Lcom/cyjh/http/c/c/a;->d:Lcom/cyjh/http/c/c/a;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/cyjh/http/c/c/a;->d:Lcom/cyjh/http/c/c/a;

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/cyjh/http/c/c/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRequestFailureOperate --> code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/http/c/c/a;->b:Lcom/cyjh/http/c/c/a$a;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/cyjh/http/c/c/a;->b:Lcom/cyjh/http/c/c/a$a;

    invoke-interface {v0, p1, p2}, Lcom/cyjh/http/c/c/a$a;->a(ILjava/lang/String;)V

    :cond_24
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/cyjh/http/c/c/a$a;)V
    .registers 6

    :try_start_0
    iput-object p2, p0, Lcom/cyjh/http/c/c/a;->b:Lcom/cyjh/http/c/c/a$a;

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/cyjh/http/b/a;->b(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object p2

    new-instance v0, Lcom/cyjh/http/bean/request/DomainNameRequestParamsInfo;

    invoke-direct {v0, p2}, Lcom/cyjh/http/bean/request/DomainNameRequestParamsInfo;-><init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V

    sget-object p2, Lcom/cyjh/http/c/c/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getDomainNameSecond --> domainNameRequestParams="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cyjh/http/bean/request/DomainNameRequestParamsInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "http://app.51moba.com/AppConfig"

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/cyjh/http/b/a;->a(Ljava/lang/String;Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/http/c/c/a;->a:Lcom/cyjh/http/d/b/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p2, v0}, Lcom/cyjh/http/d/b/a;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_3e

    return-void

    :catch_3e
    move-exception p1

    sget-object p2, Lcom/cyjh/http/c/c/a;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getDomainNameSecond --> exception="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/http/c/c/a;->a:Lcom/cyjh/http/d/b/a;

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

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/http/c/c/a;->a:Lcom/cyjh/http/d/b/a;

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/http/d/b/c;->a()Lcom/cyjh/http/d/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cyjh/http/d/b/c;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/http/d/b/c;->a()Lcom/cyjh/http/d/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cyjh/http/d/b/c;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/http/d/b/c;->a()Lcom/cyjh/http/d/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cyjh/http/d/b/c;->a(Ljava/lang/Object;)V

    :cond_31
    return-void
.end method

.method private d()Lcom/cyjh/http/c/c/a;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/http/c/c/a;->b:Lcom/cyjh/http/c/c/a$a;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;ILcom/cyjh/http/c/c/a$a;)V
    .registers 7

    :try_start_0
    iput-object p3, p0, Lcom/cyjh/http/c/c/a;->b:Lcom/cyjh/http/c/c/a$a;

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/cyjh/http/b/a;->b(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object p3

    new-instance v0, Lcom/cyjh/http/bean/request/DomainNameRequestParamsInfo;

    invoke-direct {v0, p3}, Lcom/cyjh/http/bean/request/DomainNameRequestParamsInfo;-><init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V

    sget-object p3, Lcom/cyjh/http/c/c/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getDomainNameFirst --> domainNameRequestParams="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cyjh/http/bean/request/DomainNameRequestParamsInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    rem-int/lit8 p2, p2, 0x2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_2e

    const-string p2, "http://app.51moba.com/AppConfig2"

    goto :goto_30

    :cond_2e
    const-string p2, "http://app.mobileanjian.com/AppConfig2"

    :goto_30
    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object p3

    invoke-virtual {p3, p2, v0}, Lcom/cyjh/http/b/a;->a(Ljava/lang/String;Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object p3

    iget-object v0, p0, Lcom/cyjh/http/c/c/a;->a:Lcom/cyjh/http/d/b/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/cyjh/http/d/b/a;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_45} :catch_46

    return-void

    :catch_46
    move-exception p1

    sget-object p2, Lcom/cyjh/http/c/c/a;->c:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "getDomainNameFirst --> exception="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 6

    sget-object v0, Lcom/cyjh/http/c/c/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uiDataSuccess --> object="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eqz p1, :cond_70

    :try_start_16
    check-cast p1, Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Code"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v2, "Message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc8

    if-ne p1, v3, :cond_49

    const-string p1, "Data"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/cyjh/http/bean/response/DomainResult;

    invoke-static {p1, v1}, Lcom/cyjh/common/util/r;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/http/bean/response/DomainResult;

    iget-object v1, p0, Lcom/cyjh/http/c/c/a;->b:Lcom/cyjh/http/c/c/a$a;

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/cyjh/http/c/c/a;->b:Lcom/cyjh/http/c/c/a$a;

    invoke-interface {v1, p1}, Lcom/cyjh/http/c/c/a$a;->a(Lcom/cyjh/http/bean/response/DomainResult;)V

    :cond_48
    return-void

    :cond_49
    invoke-direct {p0, p1, v2}, Lcom/cyjh/http/c/c/a;->a(ILjava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_4c} :catch_4d

    return-void

    :catch_4d
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/cyjh/http/c/c/a;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "uiDataSuccess --> exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_6c
    invoke-direct {p0, v0, p1}, Lcom/cyjh/http/c/c/a;->a(ILjava/lang/String;)V

    return-void

    :cond_70
    const-string p1, "\u540e\u53f0\u8fd4\u56de\u6570\u636e\u4e3a\u7a7a\uff01"

    goto :goto_6c
.end method

.method protected final b(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/cyjh/http/c/c/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onErrorResponse --> errorMsg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/cyjh/http/c/c/a;->a(ILjava/lang/String;)V

    return-void
.end method
