.class final Lcom/cyjh/elfin/floatingwindowprocess/d/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/http/c/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/floatingwindowprocess/d/a;->c(Lcom/cyjh/elfin/floatingwindowprocess/d/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/floatingwindowprocess/d/a$a;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/floatingwindowprocess/d/a$a;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/a$1;->a:Lcom/cyjh/elfin/floatingwindowprocess/d/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V
    .registers 6

    const-string v0, "ScriptRunHelper"

    const-string v1, "onUpdateHas"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/a$1;->a:Lcom/cyjh/elfin/floatingwindowprocess/d/a$a;

    invoke-static {p1}, Lcom/cyjh/elfin/floatingwindowprocess/d/a;->b(Lcom/cyjh/elfin/floatingwindowprocess/d/a$a;)V

    return-void

    :cond_f
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

    iget v0, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->UpgradeMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_65

    const/4 v0, 0x5

    iget v1, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->UpdateType:I

    const/4 v2, 0x3

    if-eq v0, v1, :cond_38

    iget v0, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->UpdateType:I

    if-ne v2, v0, :cond_65

    :cond_38
    invoke-static {}, Lcom/cyjh/common/util/af;->a()Lcom/cyjh/common/util/af;

    move-result-object v0

    iget-object v1, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->AppVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cyjh/common/util/af;->a(Ljava/lang/String;)V

    sget v0, Lcom/cyjh/elfin/e/c/n;->e:I

    iget v1, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->UpdateType:I

    if-ne v2, v1, :cond_49

    sget v0, Lcom/cyjh/elfin/e/c/n;->d:I

    :cond_49
    invoke-static {}, Lcom/cyjh/elfin/e/c/n;->a()Lcom/cyjh/elfin/e/c/n;

    move-result-object v1

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v3

    iget-object v3, v3, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v3}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/cyjh/elfin/e/c/n;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/cyjh/elfin/e/c/n;

    move-result-object v0

    iget-object p1, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->UpdateUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/e/c/n;->a(Ljava/lang/String;)V

    return-void

    :cond_65
    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/a$1;->a:Lcom/cyjh/elfin/floatingwindowprocess/d/a$a;

    invoke-static {p1}, Lcom/cyjh/elfin/floatingwindowprocess/d/a;->b(Lcom/cyjh/elfin/floatingwindowprocess/d/a$a;)V

    return-void
.end method

.method public final b(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V
    .registers 3

    const-string p1, "ScriptRunHelper"

    const-string v0, "onConnectStudioSocket"

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V
    .registers 3

    const-string p1, "ScriptRunHelper"

    const-string v0, "onUpdateOtherInfo"

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
