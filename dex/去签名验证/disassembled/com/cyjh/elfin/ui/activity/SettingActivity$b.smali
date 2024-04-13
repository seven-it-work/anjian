.class final Lcom/cyjh/elfin/ui/activity/SettingActivity$b;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/activity/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/activity/SettingActivity;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/ui/activity/SettingActivity;)V
    .registers 6

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$b;->a:Lcom/cyjh/elfin/ui/activity/SettingActivity;

    const-wide/16 v0, 0xbb8

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyjh/elfin/ui/activity/SettingActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/activity/SettingActivity$b;-><init>(Lcom/cyjh/elfin/ui/activity/SettingActivity;)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$b;->a:Lcom/cyjh/elfin/ui/activity/SettingActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->b(Lcom/cyjh/elfin/ui/activity/SettingActivity;)Lcom/cyjh/feedback/lib/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/feedback/lib/b/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$b;->a:Lcom/cyjh/elfin/ui/activity/SettingActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->b(Lcom/cyjh/elfin/ui/activity/SettingActivity;)Lcom/cyjh/feedback/lib/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/feedback/lib/b/a;->dismiss()V

    :cond_15
    return-void
.end method

.method public final onTick(J)V
    .registers 3

    return-void
.end method
