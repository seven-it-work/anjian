.class public Lcom/cyjh/elfin/services/PhoneStateService$PhoneStateReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/services/PhoneStateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhoneStateReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/services/PhoneStateService;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/services/PhoneStateService;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/services/PhoneStateService$PhoneStateReceiver;->a:Lcom/cyjh/elfin/services/PhoneStateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TAG"

    const-string v1, ">>>>>>>>>\u7535\u8bdd\u5e7f\u64ad\u76d1\u542c\u5df2\u8fdb\u6765"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">>>>>>action>>>>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_ab

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    const-string p2, "TAG"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tm.getCallState()>>>>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p1

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_ac

    return-void

    :pswitch_56
    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object p1

    const-string v0, "com.cyjh.elfin.ui.activity.SettingActivity.swtCallStop"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p1

    if-eqz p1, :cond_ab

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->j()Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->d()V

    return-void

    :pswitch_6d
    const-string p1, "TAG"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7ee7\u7eed\u9009\u9879>>>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v1

    const-string v2, "com.cyjh.elfin.ui.activity.SettingActivity.swtCallStop"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object p1

    const-string v0, "com.cyjh.elfin.ui.activity.SettingActivity.swtCallStop"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p1

    if-eqz p1, :cond_ab

    const-string p1, "TAG"

    const-string p2, "\u505c\u6b62\u811a\u672c>>>>>"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->j()Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->d()V

    :cond_ab
    return-void

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_56
    .end packed-switch
.end method
