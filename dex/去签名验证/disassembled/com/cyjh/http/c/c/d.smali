.class public Lcom/cyjh/http/c/c/d;
.super Lcom/cyjh/http/c/a/a;


# static fields
.field public static final b:Ljava/lang/String; = "d"


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/cyjh/http/c/d/j;

.field private e:J

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/cyjh/http/bean/request/UpdateRequestInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cyjh/http/c/d/j;Z)V
    .registers 5

    invoke-direct {p0}, Lcom/cyjh/http/c/a/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/http/c/c/d;->f:Z

    iput-object p1, p0, Lcom/cyjh/http/c/c/d;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/cyjh/http/c/c/d;->d:Lcom/cyjh/http/c/d/j;

    iput-boolean p3, p0, Lcom/cyjh/http/c/c/d;->f:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cyjh/http/c/d/j;ZLcom/cyjh/http/bean/request/UpdateRequestInfo;)V
    .registers 6

    invoke-direct {p0}, Lcom/cyjh/http/c/a/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/http/c/c/d;->f:Z

    iput-object p1, p0, Lcom/cyjh/http/c/c/d;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/cyjh/http/c/c/d;->d:Lcom/cyjh/http/c/d/j;

    iput-boolean p3, p0, Lcom/cyjh/http/c/c/d;->f:Z

    iput-object p4, p0, Lcom/cyjh/http/c/c/d;->i:Lcom/cyjh/http/bean/request/UpdateRequestInfo;

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
.method public final a(Landroid/content/Context;)V
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/http/b/a;->b(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object p1

    new-instance v0, Lcom/cyjh/http/bean/request/UpdateRequestInfo;

    invoke-direct {v0, p1}, Lcom/cyjh/http/bean/request/UpdateRequestInfo;-><init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V

    iget-object p1, p0, Lcom/cyjh/http/c/c/d;->i:Lcom/cyjh/http/bean/request/UpdateRequestInfo;

    if-eqz p1, :cond_41

    iget-object p1, p0, Lcom/cyjh/http/c/c/d;->i:Lcom/cyjh/http/bean/request/UpdateRequestInfo;

    invoke-virtual {p1}, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->getScriptId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptId:Ljava/lang/String;

    iget-object p1, p0, Lcom/cyjh/http/c/c/d;->i:Lcom/cyjh/http/bean/request/UpdateRequestInfo;

    invoke-virtual {p1}, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->DeviceName:Ljava/lang/String;

    iget-object p1, p0, Lcom/cyjh/http/c/c/d;->i:Lcom/cyjh/http/bean/request/UpdateRequestInfo;

    invoke-virtual {p1}, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->getScriptVersion()I

    move-result p1

    iput p1, v0, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptVersion:I

    iget-object p1, p0, Lcom/cyjh/http/c/c/d;->i:Lcom/cyjh/http/bean/request/UpdateRequestInfo;

    invoke-virtual {p1}, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->getIsScriptHotUpgrade()I

    move-result p1

    iput p1, v0, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->IsScriptHotUpgrade:I

    iget-object p1, p0, Lcom/cyjh/http/c/c/d;->i:Lcom/cyjh/http/bean/request/UpdateRequestInfo;

    iget-object p1, p1, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->AppVersion:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_41

    iget-object p1, p0, Lcom/cyjh/http/c/c/d;->i:Lcom/cyjh/http/bean/request/UpdateRequestInfo;

    iget-object p1, p1, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->AppVersion:Ljava/lang/String;

    iput-object p1, v0, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->AppVersion:Ljava/lang/String;

    :cond_41
    sget-object p1, Lcom/cyjh/http/c/c/d;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateVersion --> 1 paramsMap="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "VersionUpdate"

    invoke-static {p1}, Lcom/cyjh/common/a/a;->b(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/cyjh/http/b/a;->a(Ljava/lang/String;Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object v0

    sget-wide v1, Lcom/cyjh/http/b/a;->b:J

    iput-wide v1, p0, Lcom/cyjh/http/c/c/d;->e:J

    sget-object v1, Lcom/cyjh/http/c/c/d;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateVersion --> 2 url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",paramsMap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cyjh/http/c/c/d;->a:Lcom/cyjh/http/d/b/a;

    iget-object v2, p0, Lcom/cyjh/http/c/c/d;->c:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/cyjh/http/d/b/a;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a0} :catch_a1

    return-void

    :catch_a1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "zzz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.cyjh.share.AppVersionUpdatePresenter--updateVersion:"

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
    .registers 7

    :try_start_0
    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/cyjh/http/c/c/d;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uiDataSuccess --> data="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Data"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "Code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "Message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_a1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/cyjh/http/bean/response/VersionUpdateInfo;

    invoke-static {p1, v0}, Lcom/cyjh/common/util/r;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;

    if-eqz p1, :cond_8c

    iget-object v0, p0, Lcom/cyjh/http/c/c/d;->d:Lcom/cyjh/http/c/d/j;

    invoke-interface {v0, p1}, Lcom/cyjh/http/c/d/j;->c(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V

    iget-object v0, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->StudioProjectKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/cyjh/http/c/c/d;->d:Lcom/cyjh/http/c/d/j;

    invoke-interface {v0, p1}, Lcom/cyjh/http/c/d/j;->b(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V

    :cond_50
    iget-wide v0, p0, Lcom/cyjh/http/c/c/d;->e:J

    iget-wide v2, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->ClientTimestamp:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_77

    iget v0, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->UpdateType:I

    if-nez v0, :cond_71

    iget-object p1, p0, Lcom/cyjh/http/c/c/d;->d:Lcom/cyjh/http/c/d/j;

    invoke-interface {p1}, Lcom/cyjh/http/c/d/j;->c()V

    iget-boolean p1, p0, Lcom/cyjh/http/c/c/d;->f:Z

    if-eqz p1, :cond_a0

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object p1

    iget-object p1, p1, Lcom/cyjh/http/b/a;->a:Landroid/content/Context;

    sget v0, Lcom/cyjh/http/R$string;->version_newest:I

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ag;->b(Landroid/content/Context;I)V

    return-void

    :cond_71
    iget-object v0, p0, Lcom/cyjh/http/c/c/d;->d:Lcom/cyjh/http/c/d/j;

    invoke-interface {v0, p1}, Lcom/cyjh/http/c/d/j;->a(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V

    return-void

    :cond_77
    iget-object p1, p0, Lcom/cyjh/http/c/c/d;->d:Lcom/cyjh/http/c/d/j;

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/http/b/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/cyjh/http/R$string;->json_parse_exception:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    invoke-interface {p1}, Lcom/cyjh/http/c/d/j;->b()V

    return-void

    :cond_8c
    iget-object p1, p0, Lcom/cyjh/http/c/c/d;->d:Lcom/cyjh/http/c/d/j;

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/http/b/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/cyjh/http/R$string;->json_parse_exception:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    invoke-interface {p1}, Lcom/cyjh/http/c/d/j;->b()V

    :cond_a0
    return-void

    :cond_a1
    sget-object p1, Lcom/cyjh/http/c/c/d;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onUpdateFailure --> message="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cyjh/http/c/c/d;->d:Lcom/cyjh/http/c/d/j;

    invoke-interface {p1}, Lcom/cyjh/http/c/d/j;->b()V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b9} :catch_ba

    return-void

    :catch_ba
    move-exception p1

    const-string v0, "zzz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.cyjh.share.AppVersionUpdatePresenter--onErrorResponse:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/cyjh/http/c/c/d;->d:Lcom/cyjh/http/c/d/j;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    invoke-interface {v0}, Lcom/cyjh/http/c/d/j;->b()V

    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .registers 5

    const-string v0, "zzz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.cyjh.share.AppVersionUpdatePresenter--onErrorResponse:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/cyjh/http/c/c/d;->d:Lcom/cyjh/http/c/d/j;

    invoke-interface {p1}, Lcom/cyjh/http/c/d/j;->b()V

    return-void
.end method
