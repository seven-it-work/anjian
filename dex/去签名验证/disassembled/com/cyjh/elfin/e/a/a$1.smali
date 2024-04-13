.class final Lcom/cyjh/elfin/e/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/elfin/e/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/e/a/a;->k(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/cyjh/elfin/e/a/a$1;->b:Lcom/cyjh/elfin/e/a/a;

    iput-object p2, p0, Lcom/cyjh/elfin/e/a/a$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/elfin/e/a/a$1;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$OverlaySettingsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/cyjh/elfin/e/a/f;->a(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1d
    const-string v2, "com.qihoo360.mobilesafe"

    const-string v3, "com.qihoo360.mobilesafe.ui.index.AppEnterActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/cyjh/elfin/e/a/f;->a(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_2e
    const-string v0, "QikuUtils"

    const-string v1, "can\'t open permission page with particular name, please use \"adb shell dumpsys activity\" command and tell me the name of the float window permission page"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
