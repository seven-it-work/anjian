.class final Lcom/cyjh/elfin/e/a/a$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/elfin/e/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/e/a/a;->n(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/cyjh/elfin/e/a/a;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/e/a/a;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/elfin/e/a/a$4;->b:Lcom/cyjh/elfin/e/a/a;

    iput-object p2, p0, Lcom/cyjh/elfin/e/a/a$4;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 7

    iget-object v0, p0, Lcom/cyjh/elfin/e/a/a$4;->a:Landroid/content/Context;

    invoke-static {}, Lcom/cyjh/elfin/e/a/d;->a()I

    move-result v1

    const/high16 v2, 0x10000000

    const/4 v3, 0x5

    if-ne v1, v3, :cond_35

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "package"

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {v3, v0}, Lcom/cyjh/elfin/e/a/d;->a(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_2d
    const-string v0, "MiuiUtils"

    const-string v1, "intent is not available!"

    :goto_31
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_35
    const/4 v3, 0x6

    if-ne v1, v3, :cond_61

    new-instance v1, Landroid/content/Intent;

    const-string v3, "miui.intent.action.APP_PERM_EDITOR"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.miui.securitycenter"

    const-string v4, "com.miui.permcenter.permissions.AppPermissionsEditorActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "extra_pkgname"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/cyjh/elfin/e/a/d;->a(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_5c
    const-string v0, "MiuiUtils"

    const-string v1, "Intent is not available!"

    goto :goto_31

    :cond_61
    const/4 v3, 0x7

    if-ne v1, v3, :cond_88

    new-instance v1, Landroid/content/Intent;

    const-string v3, "miui.intent.action.APP_PERM_EDITOR"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.miui.securitycenter"

    const-string v4, "com.miui.permcenter.permissions.AppPermissionsEditorActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "extra_pkgname"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/cyjh/elfin/e/a/d;->a(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_88
    const/16 v3, 0x8

    if-ne v1, v3, :cond_d2

    new-instance v1, Landroid/content/Intent;

    const-string v3, "miui.intent.action.APP_PERM_EDITOR"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.miui.securitycenter"

    const-string v4, "com.miui.permcenter.permissions.PermissionsEditorActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "extra_pkgname"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/cyjh/elfin/e/a/d;->a(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_b0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "miui.intent.action.APP_PERM_EDITOR"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.miui.securitycenter"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "extra_pkgname"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/cyjh/elfin/e/a/d;->a(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_d2
    const-string v0, "MiuiUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "this is a special MIUI rom version, its version code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_31
.end method
