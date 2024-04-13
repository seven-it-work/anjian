.class final Lcom/cyjh/elfin/ui/model/SplashModel$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/http/c/c/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/model/SplashModel;->f()V
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

    iput-object p1, p0, Lcom/cyjh/elfin/ui/model/SplashModel$3;->a:Lcom/cyjh/elfin/ui/model/SplashModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/SplashModel$3;->a:Lcom/cyjh/elfin/ui/model/SplashModel;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/model/SplashModel;->e(Lcom/cyjh/elfin/ui/model/SplashModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/ui/model/SplashModel$a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/cyjh/elfin/ui/model/SplashModel$a;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 4

    const-string v0, "SplashModel"

    const-string v1, "runScriptOperate --> onCallbackSuc"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-class v0, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;

    invoke-static {p1, v0}, Lcom/cyjh/common/util/r;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;

    if-eqz p1, :cond_3c

    iget-object v0, p1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Data:Lcom/cyjh/http/bean/response/ScriptStartRunInfo;

    iget-object v0, v0, Lcom/cyjh/http/bean/response/ScriptStartRunInfo;->ScriptEncryptKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object v0

    iget-object v1, p1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Data:Lcom/cyjh/http/bean/response/ScriptStartRunInfo;

    iget-object v1, v1, Lcom/cyjh/http/bean/response/ScriptStartRunInfo;->ScriptEncryptKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/entity/ParamsWrap;->setScriptEncryptKey(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Data:Lcom/cyjh/http/bean/response/ScriptStartRunInfo;

    iget-object p1, p1, Lcom/cyjh/http/bean/response/ScriptStartRunInfo;->ScriptEncryptKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/cyjh/elfin/e/c/k;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a()V

    :cond_3c
    iget-object p1, p0, Lcom/cyjh/elfin/ui/model/SplashModel$3;->a:Lcom/cyjh/elfin/ui/model/SplashModel;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/model/SplashModel;->e(Lcom/cyjh/elfin/ui/model/SplashModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/cyjh/elfin/ui/model/SplashModel$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/cyjh/elfin/ui/model/SplashModel$a;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_4b
    invoke-static {}, Lcom/cyjh/http/c/c/c;->a()Lcom/cyjh/http/c/c/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/http/c/c/c;->d()V

    return-void
.end method
