.class Lcom/umeng/commonsdk/proguard/l$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/proguard/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/commonsdk/proguard/l;


# direct methods
.method constructor <init>(Lcom/umeng/commonsdk/proguard/l;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/l$1;->a:Lcom/umeng/commonsdk/proguard/l;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "level"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_18} :catch_96

    :try_start_18
    const-string v3, "le"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_1d
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1d} :catch_96

    :catch_1d
    :try_start_1d
    const-string v1, "voltage"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_23} :catch_96

    :try_start_23
    const-string v3, "vol"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_28} :catch_28
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_28} :catch_96

    :catch_28
    :try_start_28
    const-string v1, "temperature"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2e} :catch_96

    :try_start_2e
    const-string v3, "temp"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3c} :catch_3c
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_3c} :catch_96

    :catch_3c
    :try_start_3c
    const-string v1, "status"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_42} :catch_96

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_a0

    goto :goto_4e

    :pswitch_49
    const/4 v4, 0x2

    goto :goto_4e

    :pswitch_4b
    const/4 v4, 0x0

    goto :goto_4e

    :pswitch_4d
    const/4 v4, 0x1

    :goto_4e
    :pswitch_4e
    :try_start_4e
    const-string v1, "st"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_53} :catch_53
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_53} :catch_96

    :catch_53
    :try_start_53
    const-string v1, "plugged"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_59} :catch_96

    packed-switch p2, :pswitch_data_ae

    const/4 v3, 0x0

    goto :goto_5f

    :pswitch_5e
    const/4 v3, 0x1

    :goto_5f
    :pswitch_5f
    :try_start_5f
    const-string p2, "ct"

    invoke-virtual {v0, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, p2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_6d} :catch_6d
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_6d} :catch_96

    :catch_6d
    :try_start_6d
    const-string p2, "BatteryUtils"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p2, v1}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const p2, 0x8003

    invoke-static {}, Lcom/umeng/commonsdk/proguard/l;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/proguard/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/proguard/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/commonsdk/proguard/b;->a()Lcom/umeng/commonsdk/proguard/c;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v1, v0}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/l$1;->a:Lcom/umeng/commonsdk/proguard/l;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/l;->c()V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_95} :catch_96

    :cond_95
    return-void

    :catch_96
    move-exception p1

    invoke-static {}, Lcom/umeng/commonsdk/proguard/l;->d()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void

    nop

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_4d
        :pswitch_4e
        :pswitch_4b
        :pswitch_49
    .end packed-switch

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_5f
    .end packed-switch
.end method
