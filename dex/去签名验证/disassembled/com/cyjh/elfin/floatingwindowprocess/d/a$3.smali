.class public final Lcom/cyjh/elfin/floatingwindowprocess/d/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/http/c/c/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/floatingwindowprocess/d/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    const-string v0, "ScriptRunHelper"

    const-string v1, "runScriptOperate --> onCallbackFail"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 5

    const-string v0, "ScriptRunHelper"

    const-string v1, "runScriptOperate --> onCallbackSuc"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/elfin/e/c/f;->a()Lcom/cyjh/elfin/e/c/f;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ElfinFloatView onCallbackSuc --> data="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/elfin/e/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_54

    const-class v0, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;

    invoke-static {p1, v0}, Lcom/cyjh/common/util/r;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;

    if-eqz p1, :cond_53

    iget v0, p1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_53

    iget-object v0, p1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Data:Lcom/cyjh/http/bean/response/ScriptStartRunInfo;

    iget-object v0, v0, Lcom/cyjh/http/bean/response/ScriptStartRunInfo;->ScriptEncryptKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_53

    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object v0

    iget-object v1, p1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Data:Lcom/cyjh/http/bean/response/ScriptStartRunInfo;

    iget-object v1, v1, Lcom/cyjh/http/bean/response/ScriptStartRunInfo;->ScriptEncryptKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/entity/ParamsWrap;->setScriptEncryptKey(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Data:Lcom/cyjh/http/bean/response/ScriptStartRunInfo;

    iget-object p1, p1, Lcom/cyjh/http/bean/response/ScriptStartRunInfo;->ScriptEncryptKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/cyjh/elfin/e/c/k;->a(Ljava/lang/String;)V

    :cond_53
    return-void

    :cond_54
    invoke-static {}, Lcom/cyjh/elfin/e/c/f;->a()Lcom/cyjh/elfin/e/c/f;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ElfinFloatView onCallbackFail --> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    const v2, 0x7f0900c3

    invoke-virtual {v1, v2}, Lcom/cyjh/elfin/base/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cyjh/elfin/e/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
