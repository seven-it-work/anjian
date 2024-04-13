.class public Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;
.super Landroid/app/Service;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x8

.field public static final d:I = 0xb

.field public static final e:I = 0x66

.field public static final f:I = 0x65

.field public static final g:I = 0xc9

.field public static final h:I = 0xca

.field public static final i:Ljava/lang/String; = "script_service_key_bundle"

.field public static final j:Ljava/lang/String; = "PARAM_V"

.field public static final k:Ljava/lang/String; = "script_service_key_type"

.field public static final l:Ljava/lang/String; = "script_service_key_encrypt_value"

.field public static final m:I = 0x0

.field public static final n:I = 0x1

.field public static final o:Ljava/lang/String; = "PARAM_APP_2_DOMAIN_NAME"

.field public static final p:Ljava/lang/String; = "PARAM_AUTH_KEYS"

.field private static final q:Ljava/lang/String; = "FloatingWindowService"


# instance fields
.field private final r:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;->r:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .registers 10

    :try_start_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_4c

    new-instance v4, Landroid/app/NotificationChannel;

    const-string v5, "createRecordingNotification"

    const-string v6, "Channel1"

    const/4 v7, 0x3

    invoke-direct {v4, v5, v6, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/high16 v6, -0x10000

    invoke-virtual {v4, v6}, Landroid/app/NotificationChannel;->setLightColor(I)V

    invoke-virtual {v4, v5}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    new-array v5, v5, [J

    const-wide/16 v7, 0x0

    aput-wide v7, v5, v6

    invoke-virtual {v4, v5}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    if-eqz v0, :cond_46

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v0, Landroid/app/Notification$Builder;

    const-string v4, "createRecordingNotification"

    invoke-direct {v0, p0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_51

    :cond_46
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_51

    :cond_4c
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_51
    const v4, 0x7f090059

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const v1, 0x7f0200e9

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput v1, v0, Landroid/app/Notification;->icon:I

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/app/Notification;->flags:I

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;->startForeground(ILandroid/app/Notification;)V
    :try_end_87
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_87} :catch_88

    return-void

    :catch_88
    move-exception v0

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    return-void
.end method

.method private static b()V
    .registers 3

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->j()Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .registers 2

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;->b()V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a()Lcom/cyjh/elfin/floatingwindowprocess/c/a;

    move-result-object v0

    iput-object p0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->b:Landroid/content/Context;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->b()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->a()Lcom/cyjh/elfin/floatingwindowprocess/service/a;

    move-result-object p1

    iget-object p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->a:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .registers 10

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    :try_start_3
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_4f

    new-instance v4, Landroid/app/NotificationChannel;

    const-string v5, "createRecordingNotification"

    const-string v6, "Channel1"

    const/4 v7, 0x3

    invoke-direct {v4, v5, v6, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/high16 v6, -0x10000

    invoke-virtual {v4, v6}, Landroid/app/NotificationChannel;->setLightColor(I)V

    invoke-virtual {v4, v5}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    new-array v5, v5, [J

    const-wide/16 v7, 0x0

    aput-wide v7, v5, v6

    invoke-virtual {v4, v5}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    if-eqz v0, :cond_49

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v0, Landroid/app/Notification$Builder;

    const-string v4, "createRecordingNotification"

    invoke-direct {v0, p0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_54

    :cond_49
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_54

    :cond_4f
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_54
    const v4, 0x7f090059

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const v1, 0x7f0200e9

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput v1, v0, Landroid/app/Notification;->icon:I

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/app/Notification;->flags:I

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;->startForeground(ILandroid/app/Notification;)V
    :try_end_8a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_8a} :catch_8b

    return-void

    :catch_8b
    move-exception v0

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8

    const/4 p2, 0x0

    if-eqz p1, :cond_a

    const-string p3, "script_service_key"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    goto :goto_b

    :cond_a
    const/4 p3, 0x0

    :goto_b
    const/4 v0, 0x1

    sparse-switch p3, :sswitch_data_156

    goto/16 :goto_153

    :sswitch_11
    const-string p2, "tokenKey"

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p3

    iput-wide p1, p3, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->e:J

    goto/16 :goto_153

    :sswitch_21
    invoke-static {}, Lcom/cyjh/elfin/d/c;->a()Lcom/cyjh/elfin/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/elfin/d/c;->c()V

    goto/16 :goto_153

    :sswitch_2a
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    iput-boolean v0, p1, Lcom/cyjh/elfin/base/AppContext;->g:Z

    goto/16 :goto_153

    :sswitch_32
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a()Lcom/cyjh/elfin/floatingwindowprocess/c/a;

    move-result-object p1

    iget-object p2, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    if-eqz p2, :cond_153

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object p2

    const-string p3, "com.cyjh.elfin.ui.activity.SettingActivity.swtFloatviewCtrl"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p2

    if-nez p2, :cond_153

    iget-object p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->setVisibility(I)V

    goto/16 :goto_153

    :sswitch_53
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a()Lcom/cyjh/elfin/floatingwindowprocess/c/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->b()V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iput v0, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;->r:Landroid/os/Handler;

    new-instance p2, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService$1;

    invoke-direct {p2, p0}, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService$1;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;)V

    const-wide/16 v0, 0x109a

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_153

    :sswitch_6e
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iget p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    if-nez p1, :cond_f7

    goto/16 :goto_f1

    :sswitch_78
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->j()Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->b()Z

    move-result p1

    if-nez p1, :cond_153

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const-string p3, "common_shared_file"

    const-string v1, "type_resolution"

    invoke-static {p1, p3, v1}, Lcom/core/util/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_c4

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const-string p2, "app_share_comm_file"

    const-string p3, "AJXJL_DISY"

    invoke-static {p1, p2, p3}, Lcom/core/util/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p2

    const-string p3, "app_share_comm_file"

    const-string v1, "AJXJL_DISX"

    invoke-static {p2, p3, v1}, Lcom/core/util/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p3

    const-string v1, "app_share_comm_file"

    const-string v2, "screen_x_key"

    invoke-static {p3, v1, v2}, Lcom/core/util/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    const-string v2, "app_share_comm_file"

    const-string v3, "screen_y_key"

    invoke-static {v1, v2, v3}, Lcom/core/util/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p3, p1, p2}, Lcom/elfin/engin/d;->a(ZIIII)V

    goto/16 :goto_153

    :cond_c4
    invoke-static {p2, p2, p2, p2, p2}, Lcom/elfin/engin/d;->a(ZIIII)V

    goto/16 :goto_153

    :sswitch_c9
    const-string p3, "localGamePackage"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "userId"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->j()Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    move-result-object p2

    iput-object p3, p2, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->a:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->j()Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    move-result-object p2

    iput p1, p2, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->b:I

    goto :goto_153

    :sswitch_e2
    const-string p1, "Service"

    const-string p2, "run no root"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iget p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    if-nez p1, :cond_f7

    :goto_f1
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    iput v0, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->d:I

    :cond_f7
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a()Lcom/cyjh/elfin/floatingwindowprocess/c/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->b()V

    goto :goto_153

    :sswitch_ff
    const-string p3, "script_service_key_bundle"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_153

    const-string p3, "script_service_key_type"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_12c

    const-string p2, "PARAM_APP_2_DOMAIN_NAME"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/cyjh/common/a/a;->c(Ljava/lang/String;)V

    const-string p2, "PARAM_V"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/cyjh/common/a/a;->b:Ljava/lang/String;

    const-string p2, "PARAM_AUTH_KEYS"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/cyjh/common/a/a;->c:[Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;->b()V

    goto :goto_153

    :cond_12c
    if-ne p2, v0, :cond_153

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p3, "SCRIPT_SERVICE_KEY_ENCRYPT"

    invoke-virtual {p2, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object p2

    const-string p3, "script_service_key_encrypt_value"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/cyjh/elfin/entity/ParamsWrap;->setScriptEncryptKey(Ljava/lang/String;)V

    goto :goto_153

    :sswitch_143
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;->b()V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a()Lcom/cyjh/elfin/floatingwindowprocess/c/a;

    move-result-object p1

    iput-object p0, p1, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->b:Landroid/content/Context;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->b()V

    :cond_153
    :goto_153
    const/4 p1, 0x2

    return p1

    nop

    :sswitch_data_156
    .sparse-switch
        0x1 -> :sswitch_143
        0x2 -> :sswitch_ff
        0x3 -> :sswitch_e2
        0x8 -> :sswitch_c9
        0x9 -> :sswitch_78
        0xa -> :sswitch_6e
        0xb -> :sswitch_53
        0x65 -> :sswitch_32
        0x66 -> :sswitch_2a
        0xc9 -> :sswitch_21
        0xca -> :sswitch_11
    .end sparse-switch
.end method
