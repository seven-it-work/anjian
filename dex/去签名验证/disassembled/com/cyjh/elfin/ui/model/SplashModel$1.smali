.class final Lcom/cyjh/elfin/ui/model/SplashModel$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/http/c/c/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/model/SplashModel;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/model/SplashModel;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/model/SplashModel;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/model/SplashModel$1;->a:Lcom/cyjh/elfin/ui/model/SplashModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .registers 6

    const-string v0, "SplashModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getDomainNameFirst onFailure-->  code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/http/c/c/a;->a()Lcom/cyjh/http/c/c/a;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/cyjh/http/c/c/a;->b:Lcom/cyjh/http/c/c/a$a;

    const/16 v0, 0x44c

    if-eq p1, v0, :cond_51

    const/16 v0, 0x4b0

    if-eq p1, v0, :cond_51

    const/16 v0, 0x514

    if-eq p1, v0, :cond_51

    const/16 v0, 0x25c

    if-eq p1, v0, :cond_51

    const/16 v0, 0x25a

    if-ne p1, v0, :cond_37

    goto :goto_51

    :cond_37
    iget-object p1, p0, Lcom/cyjh/elfin/ui/model/SplashModel$1;->a:Lcom/cyjh/elfin/ui/model/SplashModel;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/model/SplashModel;->a(Lcom/cyjh/elfin/ui/model/SplashModel;)I

    iget-object p1, p0, Lcom/cyjh/elfin/ui/model/SplashModel$1;->a:Lcom/cyjh/elfin/ui/model/SplashModel;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/model/SplashModel;->b(Lcom/cyjh/elfin/ui/model/SplashModel;)I

    move-result p1

    const/4 p2, 0x2

    if-ge p1, p2, :cond_4b

    iget-object p1, p0, Lcom/cyjh/elfin/ui/model/SplashModel$1;->a:Lcom/cyjh/elfin/ui/model/SplashModel;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/model/SplashModel;->c(Lcom/cyjh/elfin/ui/model/SplashModel;)V

    return-void

    :cond_4b
    iget-object p1, p0, Lcom/cyjh/elfin/ui/model/SplashModel$1;->a:Lcom/cyjh/elfin/ui/model/SplashModel;

    invoke-virtual {p1}, Lcom/cyjh/elfin/ui/model/SplashModel;->b()V

    return-void

    :cond_51
    :goto_51
    iget-object p1, p0, Lcom/cyjh/elfin/ui/model/SplashModel$1;->a:Lcom/cyjh/elfin/ui/model/SplashModel;

    invoke-static {p1, p2}, Lcom/cyjh/elfin/ui/model/SplashModel;->a(Lcom/cyjh/elfin/ui/model/SplashModel;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/cyjh/http/bean/response/DomainResult;)V
    .registers 9

    const-string v0, "SplashModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getDomainNameFirst --> onSuccess domainName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/http/bean/response/DomainResult;->getAppDomainName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",domain2Name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cyjh/http/bean/response/DomainResult;->getApp2DomainName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/http/bean/response/DomainResult;->getApiVersionV()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/common/a/a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cyjh/http/bean/response/DomainResult;->getApiDescKeys()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/common/a/a;->d:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cyjh/http/bean/response/DomainResult;->getAuthDescKeys()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/common/a/a;->c:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cyjh/http/bean/response/DomainResult;->getAppDomainName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/elfin/a/c;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cyjh/http/bean/response/DomainResult;->getAppDomainName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/elfin/a/c;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cyjh/http/bean/response/DomainResult;->getAppDomainName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/elfin/a/c;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cyjh/http/bean/response/DomainResult;->getAppDomainName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/http/bean/response/DomainResult;->getApp2DomainName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/a/a;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/http/bean/response/DomainResult;->getAppDomainName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/a/a;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/cyjh/common/a/a;->b:Ljava/lang/String;

    sget-object v1, Lcom/cyjh/common/a/a;->c:[Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "script_service_key"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "script_service_key_type"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "PARAM_APP_2_DOMAIN_NAME"

    invoke-static {}, Lcom/cyjh/common/a/a;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "PARAM_V"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PARAM_AUTH_KEYS"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "script_service_key_bundle"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_9e

    invoke-virtual {v2, v3}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_a1

    :cond_9e
    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_a1
    invoke-static {}, Lcom/cyjh/http/a/c;->a()Lcom/cyjh/http/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/model/SplashModel$1;->a:Lcom/cyjh/elfin/ui/model/SplashModel;

    invoke-virtual {v1}, Lcom/cyjh/elfin/ui/model/SplashModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cyjh/http/bean/response/DomainResult;->getPhoneConfig()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/cyjh/http/a/c;->a(Landroid/content/Context;Ljava/util/List;)Lcom/cyjh/http/bean/response/PhoneConfig;

    move-result-object p1

    if-eqz p1, :cond_bb

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/SplashModel$1;->a:Lcom/cyjh/elfin/ui/model/SplashModel;

    invoke-static {v0, p1}, Lcom/cyjh/elfin/ui/model/SplashModel;->a(Lcom/cyjh/elfin/ui/model/SplashModel;Lcom/cyjh/http/bean/response/PhoneConfig;)V

    return-void

    :cond_bb
    invoke-static {}, Lcom/cyjh/http/c/c/a;->a()Lcom/cyjh/http/c/c/a;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/cyjh/http/c/c/a;->b:Lcom/cyjh/http/c/c/a$a;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/model/SplashModel$1;->a:Lcom/cyjh/elfin/ui/model/SplashModel;

    invoke-virtual {p1}, Lcom/cyjh/elfin/ui/model/SplashModel;->b()V

    return-void
.end method
