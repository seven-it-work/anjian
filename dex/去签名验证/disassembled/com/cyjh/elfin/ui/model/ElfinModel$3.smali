.class final Lcom/cyjh/elfin/ui/model/ElfinModel$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/http/c/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/model/ElfinModel;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/model/ElfinModel;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/model/ElfinModel;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/model/ElfinModel$3;->a:Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V
    .registers 5

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/cyjh/elfin/ui/model/ElfinModel$3;->a:Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/model/ElfinModel;->a(Lcom/cyjh/elfin/ui/model/ElfinModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    :cond_d
    invoke-static {}, Lcom/cyjh/elfin/e/c/f;->a()Lcom/cyjh/elfin/e/c/f;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateVersionRequest onUpdateHas --> versionUpdateInfo.UpgradeMode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->UpgradeMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/elfin/e/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel$3;->a:Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/model/ElfinModel;->a(Lcom/cyjh/elfin/ui/model/ElfinModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V
    .registers 5

    const-string v0, "ElfinModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConnectStudioSocket IS_SERVICE_START:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/hlzn/socketclient/b/a;->v:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/hlzn/socketclient/b/a;->v:Z

    if-nez v0, :cond_39

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iget-object v1, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->StudioProjectKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/cyjh/elfin/base/AppContext;->e:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iget-object p1, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->DeviceName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/cyjh/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/cyjh/elfin/ui/model/ElfinModel$3;->a:Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/model/ElfinModel;->b(Lcom/cyjh/elfin/ui/model/ElfinModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    const/16 v0, 0x3ef

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_39
    return-void
.end method

.method public final c(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V
    .registers 3

    iget v0, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->InstanceDataUploadInterval:I

    if-eqz v0, :cond_8

    iget p1, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->InstanceDataUploadInterval:I

    sput p1, Lcom/cyjh/elfin/a/b;->av:I

    :cond_8
    return-void
.end method
