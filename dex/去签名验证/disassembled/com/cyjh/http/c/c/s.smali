.class public Lcom/cyjh/http/c/c/s;
.super Lcom/cyjh/http/c/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/http/c/c/s$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "s"

.field private static c:Lcom/cyjh/http/c/c/s;


# instance fields
.field private d:Lcom/cyjh/http/c/c/s$a;


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

.method public static a()Lcom/cyjh/http/c/c/s;
    .registers 2

    sget-object v0, Lcom/cyjh/http/c/c/s;->c:Lcom/cyjh/http/c/c/s;

    if-nez v0, :cond_17

    const-class v0, Lcom/cyjh/http/c/c/s;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/cyjh/http/c/c/s;->c:Lcom/cyjh/http/c/c/s;

    if-nez v1, :cond_12

    new-instance v1, Lcom/cyjh/http/c/c/s;

    invoke-direct {v1}, Lcom/cyjh/http/c/c/s;-><init>()V

    sput-object v1, Lcom/cyjh/http/c/c/s;->c:Lcom/cyjh/http/c/c/s;

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
    sget-object v0, Lcom/cyjh/http/c/c/s;->c:Lcom/cyjh/http/c/c/s;

    return-object v0
.end method

.method private a(Lcom/cyjh/http/c/c/s$a;)Lcom/cyjh/http/c/c/s;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/http/c/c/s;->d:Lcom/cyjh/http/c/c/s$a;

    return-object p0
.end method

.method private a(ILjava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/cyjh/http/c/c/s;->b:Ljava/lang/String;

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

    iget-object p1, p0, Lcom/cyjh/http/c/c/s;->d:Lcom/cyjh/http/c/c/s$a;

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/cyjh/http/c/c/s;->d:Lcom/cyjh/http/c/c/s$a;

    invoke-interface {p1, p2}, Lcom/cyjh/http/c/c/s$a;->b(Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/http/c/c/s;->a:Lcom/cyjh/http/d/b/a;

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

    iget-object v0, p0, Lcom/cyjh/http/c/c/s;->a:Lcom/cyjh/http/d/b/a;

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


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/http/c/c/s$a;)V
    .registers 8

    :try_start_0
    iput-object p5, p0, Lcom/cyjh/http/c/c/s;->d:Lcom/cyjh/http/c/c/s$a;

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object p5

    invoke-virtual {p5, p1}, Lcom/cyjh/http/b/a;->b(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object p5

    new-instance v0, Lcom/cyjh/http/bean/request/UploadScriptSettingRequestInfo;

    invoke-direct {v0, p5}, Lcom/cyjh/http/bean/request/UploadScriptSettingRequestInfo;-><init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V

    iput-object p2, v0, Lcom/cyjh/http/bean/request/UploadScriptSettingRequestInfo;->ScriptId:Ljava/lang/String;

    iput-object p3, v0, Lcom/cyjh/http/bean/request/UploadScriptSettingRequestInfo;->ScriptUI:Ljava/lang/String;

    iput-object p4, v0, Lcom/cyjh/http/bean/request/UploadScriptSettingRequestInfo;->ScriptSettings:Ljava/lang/String;

    sget-object p2, Lcom/cyjh/common/a/a;->f:Ljava/lang/String;

    const-string p3, "AppScriptInstance"

    const-string p4, "UploadScriptSettings"

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

    sget-object p4, Lcom/cyjh/http/c/c/s;->b:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v1, "uploadScriptSetting --> url="

    invoke-direct {p5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",uploadScriptSettingRequestInfo="

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/cyjh/http/bean/request/UploadScriptSettingRequestInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/cyjh/http/c/c/s;->a:Lcom/cyjh/http/d/b/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p1, p5, p2, p3}, Lcom/cyjh/http/d/b/a;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5b} :catch_5c

    return-void

    :catch_5c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object p2, Lcom/cyjh/http/c/c/s;->b:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "uploadScriptSetting --> exception="

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

    sget-object v0, Lcom/cyjh/http/c/c/s;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uiDataSuccess --> object="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eqz p1, :cond_5e

    :try_start_16
    check-cast p1, Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Code"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v2, "Message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_37

    iget-object p1, p0, Lcom/cyjh/http/c/c/s;->d:Lcom/cyjh/http/c/c/s$a;

    if-eqz p1, :cond_3a

    iget-object p1, p0, Lcom/cyjh/http/c/c/s;->d:Lcom/cyjh/http/c/c/s$a;

    invoke-interface {p1, v1}, Lcom/cyjh/http/c/c/s$a;->a(Ljava/lang/String;)V

    return-void

    :cond_37
    invoke-direct {p0, p1, v1}, Lcom/cyjh/http/c/c/s;->a(ILjava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_3a} :catch_3b

    :cond_3a
    return-void

    :catch_3b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/cyjh/http/c/c/s;->b:Ljava/lang/String;

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

    :goto_5a
    invoke-direct {p0, v0, p1}, Lcom/cyjh/http/c/c/s;->a(ILjava/lang/String;)V

    return-void

    :cond_5e
    const-string p1, "\u540e\u53f0\u8fd4\u56de\u6570\u636e\u4e3a\u7a7a\uff01"

    goto :goto_5a
.end method

.method protected final b(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/cyjh/http/c/c/s;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onErrorResponse --> errorMsg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/cyjh/http/c/c/s;->a(ILjava/lang/String;)V

    return-void
.end method
