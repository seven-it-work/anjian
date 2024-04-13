.class final synthetic Lcom/cyjh/elfin/ui/activity/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/cyjh/elfin/ui/activity/SettingActivity$1;

.field private final b:Lcom/cyjh/common/d/b;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/activity/SettingActivity$1;Lcom/cyjh/common/d/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/b;->a:Lcom/cyjh/elfin/ui/activity/SettingActivity$1;

    iput-object p2, p0, Lcom/cyjh/elfin/ui/activity/b;->b:Lcom/cyjh/common/d/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/b;->a:Lcom/cyjh/elfin/ui/activity/SettingActivity$1;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/b;->b:Lcom/cyjh/common/d/b;

    invoke-virtual {v1}, Lcom/cyjh/common/d/b;->dismiss()V

    iget-object v1, v0, Lcom/cyjh/elfin/ui/activity/SettingActivity$1;->b:Lcom/cyjh/elfin/ui/activity/SettingActivity;

    invoke-virtual {v1}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u6587\u5b57\u8bc6\u522b\u5e93\u4e0b\u8f7d\u5931\u8d25\uff01"

    invoke-static {v1, v2}, Lcom/cyjh/common/util/ag;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/cyjh/elfin/ui/activity/SettingActivity$1;->b:Lcom/cyjh/elfin/ui/activity/SettingActivity;

    invoke-static {v1}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->a(Lcom/cyjh/elfin/ui/activity/SettingActivity;)Landroid/widget/Switch;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setClickable(Z)V

    iget-object v0, v0, Lcom/cyjh/elfin/ui/activity/SettingActivity$1;->b:Lcom/cyjh/elfin/ui/activity/SettingActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->a(Lcom/cyjh/elfin/ui/activity/SettingActivity;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
