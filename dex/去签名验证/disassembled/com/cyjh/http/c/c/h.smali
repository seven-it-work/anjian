.class public Lcom/cyjh/http/c/c/h;
.super Lcom/cyjh/http/c/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/http/c/c/h$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "h"

.field private static d:Lcom/cyjh/http/c/c/h;


# instance fields
.field public b:Lcom/cyjh/http/c/c/h$a;


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

.method public static a()Lcom/cyjh/http/c/c/h;
    .registers 2

    sget-object v0, Lcom/cyjh/http/c/c/h;->d:Lcom/cyjh/http/c/c/h;

    if-nez v0, :cond_17

    const-class v0, Lcom/cyjh/http/c/c/h;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/cyjh/http/c/c/h;->d:Lcom/cyjh/http/c/c/h;

    if-nez v1, :cond_12

    new-instance v1, Lcom/cyjh/http/c/c/h;

    invoke-direct {v1}, Lcom/cyjh/http/c/c/h;-><init>()V

    sput-object v1, Lcom/cyjh/http/c/c/h;->d:Lcom/cyjh/http/c/c/h;

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
    sget-object v0, Lcom/cyjh/http/c/c/h;->d:Lcom/cyjh/http/c/c/h;

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/cyjh/http/c/c/h;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRequestFailureOperate --> code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",message="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cyjh/http/c/c/h;->b:Lcom/cyjh/http/c/c/h$a;

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/cyjh/http/c/c/h;->b:Lcom/cyjh/http/c/c/h$a;

    invoke-interface {p1, p2}, Lcom/cyjh/http/c/c/h$a;->a(Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/http/c/c/h;->a:Lcom/cyjh/http/d/b/a;

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

    iget-object v0, p0, Lcom/cyjh/http/c/c/h;->a:Lcom/cyjh/http/d/b/a;

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

.method private d()Lcom/cyjh/http/c/c/h;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/http/c/c/h;->b:Lcom/cyjh/http/c/c/h$a;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/cyjh/http/c/c/h$a;)V
    .registers 8

    :try_start_0
    iput-object p3, p0, Lcom/cyjh/http/c/c/h;->b:Lcom/cyjh/http/c/c/h$a;

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/cyjh/http/b/a;->b(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object p3

    new-instance v0, Lcom/cyjh/http/bean/request/EditProjectNumberRequestInfo;

    invoke-direct {v0, p3}, Lcom/cyjh/http/bean/request/EditProjectNumberRequestInfo;-><init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V

    iput-object p2, v0, Lcom/cyjh/http/bean/request/EditProjectNumberRequestInfo;->ScriptId:Ljava/lang/String;

    sget-object p2, Lcom/cyjh/common/a/a;->f:Ljava/lang/String;

    const-string p3, "AppScriptInstance"

    const-string v1, "UnBindStudioProject"

    invoke-static {p2, p3, v1}, Lcom/cyjh/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object p3

    invoke-virtual {p3, p2, v0}, Lcom/cyjh/http/b/a;->a(Ljava/lang/String;Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object p3

    sget-object v1, Lcom/cyjh/http/c/c/h;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unbindStudioProject --> url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",editProjectNumberRequestInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/cyjh/http/bean/request/EditProjectNumberRequestInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/http/c/c/h;->a:Lcom/cyjh/http/d/b/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/cyjh/http/d/b/a;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_57} :catch_58

    return-void

    :catch_58
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object p2, Lcom/cyjh/http/c/c/h;->c:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "unbindStudioProject --> exception="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/http/c/c/h$a;)V
    .registers 9

    :try_start_0
    iput-object p7, p0, Lcom/cyjh/http/c/c/h;->b:Lcom/cyjh/http/c/c/h$a;

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object p7

    invoke-virtual {p7, p1}, Lcom/cyjh/http/b/a;->b(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object p7

    new-instance v0, Lcom/cyjh/http/bean/request/EditProjectNumberRequestInfo;

    invoke-direct {v0, p7}, Lcom/cyjh/http/bean/request/EditProjectNumberRequestInfo;-><init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V

    iput-object p2, v0, Lcom/cyjh/http/bean/request/EditProjectNumberRequestInfo;->StudioProjectKey:Ljava/lang/String;

    iput-object p3, v0, Lcom/cyjh/http/bean/request/EditProjectNumberRequestInfo;->ScriptId:Ljava/lang/String;

    iput-object p4, v0, Lcom/cyjh/http/bean/request/EditProjectNumberRequestInfo;->ScriptVersion:Ljava/lang/String;

    iput-object p5, v0, Lcom/cyjh/http/bean/request/EditProjectNumberRequestInfo;->ScriptUI:Ljava/lang/String;

    iput-object p6, v0, Lcom/cyjh/http/bean/request/EditProjectNumberRequestInfo;->ScriptSettings:Ljava/lang/String;

    sget-object p2, Lcom/cyjh/common/a/a;->f:Ljava/lang/String;

    const-string p3, "AppScriptInstance"

    const-string p4, "BindStudioProject"

    invoke-static {p2, p3, p4}, Lcom/cyjh/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object p3

    invoke-virtual {p3, p2, v0}, Lcom/cyjh/http/b/a;->a(Ljava/lang/String;Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object p3

    sget-object p4, Lcom/cyjh/http/c/c/h;->c:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string p6, "bindProjectNumber --> url="

    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, ",editProjectNumberRequestInfo="

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/cyjh/http/bean/request/EditProjectNumberRequestInfo;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/cyjh/http/c/c/h;->a:Lcom/cyjh/http/d/b/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p1, p5, p2, p3}, Lcom/cyjh/http/d/b/a;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5f} :catch_60

    return-void

    :catch_60
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object p2, Lcom/cyjh/http/c/c/h;->c:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "bindStudioProject --> exception="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    sget-object v0, Lcom/cyjh/http/c/c/h;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uiDataSuccess --> object="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eqz p1, :cond_6c

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

    if-ne p1, v3, :cond_45

    const-string p1, "Data"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/cyjh/http/bean/response/ProjectNumberInfo;

    invoke-static {p1, v1}, Lcom/cyjh/common/util/r;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/http/bean/response/ProjectNumberInfo;

    iget-object v1, p0, Lcom/cyjh/http/c/c/h;->b:Lcom/cyjh/http/c/c/h$a;

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/cyjh/http/c/c/h;->b:Lcom/cyjh/http/c/c/h$a;

    invoke-interface {v1, p1}, Lcom/cyjh/http/c/c/h$a;->a(Lcom/cyjh/http/bean/response/ProjectNumberInfo;)V

    :cond_44
    return-void

    :cond_45
    invoke-direct {p0, p1, v2}, Lcom/cyjh/http/c/c/h;->a(ILjava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_48} :catch_49

    return-void

    :catch_49
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/cyjh/http/c/c/h;->c:Ljava/lang/String;

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

    :goto_68
    invoke-direct {p0, v0, p1}, Lcom/cyjh/http/c/c/h;->a(ILjava/lang/String;)V

    return-void

    :cond_6c
    const-string p1, "\u540e\u53f0\u8fd4\u56de\u6570\u636e\u4e3a\u7a7a\uff01"

    goto :goto_68
.end method

.method protected final b(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/cyjh/http/c/c/h;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onErrorResponse --> errorMsg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/cyjh/http/c/c/h;->a(ILjava/lang/String;)V

    return-void
.end method
