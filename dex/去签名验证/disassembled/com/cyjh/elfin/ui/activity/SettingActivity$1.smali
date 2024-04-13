.class final Lcom/cyjh/elfin/ui/activity/SettingActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/http/a/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/SettingActivity;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/common/d/b;

.field final synthetic b:Lcom/cyjh/elfin/ui/activity/SettingActivity;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/activity/SettingActivity;Lcom/cyjh/common/d/b;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$1;->b:Lcom/cyjh/elfin/ui/activity/SettingActivity;

    iput-object p2, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$1;->a:Lcom/cyjh/common/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Lcom/cyjh/common/d/b;)V
    .registers 3

    invoke-virtual {p1}, Lcom/cyjh/common/d/b;->dismiss()V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$1;->b:Lcom/cyjh/elfin/ui/activity/SettingActivity;

    invoke-virtual {p1}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u6587\u5b57\u8bc6\u522b\u5e93\u4e0b\u8f7d\u5931\u8d25\uff01"

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ag;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$1;->b:Lcom/cyjh/elfin/ui/activity/SettingActivity;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->a(Lcom/cyjh/elfin/ui/activity/SettingActivity;)Landroid/widget/Switch;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setClickable(Z)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$1;->b:Lcom/cyjh/elfin/ui/activity/SettingActivity;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->a(Lcom/cyjh/elfin/ui/activity/SettingActivity;)Landroid/widget/Switch;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$1;->a:Lcom/cyjh/common/d/b;

    invoke-virtual {v0}, Lcom/cyjh/common/d/b;->dismiss()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$1;->b:Lcom/cyjh/elfin/ui/activity/SettingActivity;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u5b57\u8bc6\u522b\u5e93\u5df2\u4e0b\u8f7d\uff01"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ag;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$1;->a:Lcom/cyjh/common/d/b;

    invoke-virtual {v0}, Lcom/cyjh/common/d/b;->dismiss()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$1;->b:Lcom/cyjh/elfin/ui/activity/SettingActivity;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u5b57\u8bc6\u522b\u5e93\u4e0b\u8f7d\u6210\u529f\uff01"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ag;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$1;->b:Lcom/cyjh/elfin/ui/activity/SettingActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->a(Lcom/cyjh/elfin/ui/activity/SettingActivity;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setClickable(Z)V

    return-void
.end method

.method public final c()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$1;->b:Lcom/cyjh/elfin/ui/activity/SettingActivity;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/b;

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$1;->a:Lcom/cyjh/common/d/b;

    invoke-direct {v1, p0, v2}, Lcom/cyjh/elfin/ui/activity/b;-><init>(Lcom/cyjh/elfin/ui/activity/SettingActivity$1;Lcom/cyjh/common/d/b;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
