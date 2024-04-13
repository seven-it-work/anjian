.class final Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/Observer<",
        "Lcom/cyjh/http/bean/response/VersionUpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$5;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V
    .registers 6
    .param p1    # Lcom/cyjh/http/bean/response/VersionUpdateInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget v0, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->UpgradeMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    iget v0, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->UpdateType:I

    if-ne v0, v1, :cond_12

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iput-boolean v1, v0, Lcom/cyjh/elfin/base/AppContext;->f:Z

    :cond_12
    new-instance v0, Lcom/cyjh/elfin/ui/a/h;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$5;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/cyjh/elfin/ui/a/h;-><init>(Landroid/content/Context;Lcom/cyjh/http/bean/response/VersionUpdateInfo;Z)V

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/a/h;->show()V

    return-void

    :cond_1e
    iget v0, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->UpgradeMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_62

    invoke-static {}, Lcom/cyjh/common/util/af;->a()Lcom/cyjh/common/util/af;

    move-result-object v0

    iget-object v1, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->AppVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cyjh/common/util/af;->a(Ljava/lang/String;)V

    sget v0, Lcom/cyjh/elfin/e/c/n;->c:I

    const/4 v1, 0x3

    iget v2, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->UpdateType:I

    if-ne v1, v2, :cond_45

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$5;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->g(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$5;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->h(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Z

    sget v0, Lcom/cyjh/elfin/e/c/n;->d:I

    goto :goto_45

    :cond_43
    sget v0, Lcom/cyjh/elfin/e/c/n;->b:I

    :cond_45
    :goto_45
    invoke-static {}, Lcom/cyjh/elfin/e/c/n;->a()Lcom/cyjh/elfin/e/c/n;

    move-result-object v1

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$5;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-virtual {v2}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->getApplicationContext()Landroid/content/Context;

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

    :cond_62
    return-void
.end method


# virtual methods
.method public final synthetic onChanged(Ljava/lang/Object;)V
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;

    if-eqz p1, :cond_63

    iget v0, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->UpgradeMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    iget v0, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->UpdateType:I

    if-ne v0, v1, :cond_13

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iput-boolean v1, v0, Lcom/cyjh/elfin/base/AppContext;->f:Z

    :cond_13
    new-instance v0, Lcom/cyjh/elfin/ui/a/h;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$5;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/cyjh/elfin/ui/a/h;-><init>(Landroid/content/Context;Lcom/cyjh/http/bean/response/VersionUpdateInfo;Z)V

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/a/h;->show()V

    return-void

    :cond_1f
    iget v0, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->UpgradeMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_63

    invoke-static {}, Lcom/cyjh/common/util/af;->a()Lcom/cyjh/common/util/af;

    move-result-object v0

    iget-object v1, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->AppVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cyjh/common/util/af;->a(Ljava/lang/String;)V

    sget v0, Lcom/cyjh/elfin/e/c/n;->c:I

    const/4 v1, 0x3

    iget v2, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->UpdateType:I

    if-ne v1, v2, :cond_46

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$5;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->g(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$5;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->h(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Z

    sget v0, Lcom/cyjh/elfin/e/c/n;->d:I

    goto :goto_46

    :cond_44
    sget v0, Lcom/cyjh/elfin/e/c/n;->b:I

    :cond_46
    :goto_46
    invoke-static {}, Lcom/cyjh/elfin/e/c/n;->a()Lcom/cyjh/elfin/e/c/n;

    move-result-object v1

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$5;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-virtual {v2}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->getApplicationContext()Landroid/content/Context;

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

    :cond_63
    return-void
.end method
