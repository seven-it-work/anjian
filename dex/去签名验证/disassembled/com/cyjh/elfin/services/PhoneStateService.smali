.class public Lcom/cyjh/elfin/services/PhoneStateService;
.super Lcom/cyjh/common/base/service/BaseService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/services/PhoneStateService$PhoneStateReceiver;
    }
.end annotation


# static fields
.field private static b:Lcom/cyjh/elfin/services/PhoneStateService;


# instance fields
.field private a:Lcom/cyjh/elfin/services/PhoneStateService$PhoneStateReceiver;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/cyjh/common/base/service/BaseService;-><init>()V

    const-string v0, "android.intent.action.PHONE_STATE"

    iput-object v0, p0, Lcom/cyjh/elfin/services/PhoneStateService;->c:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v2, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    const v0, 0x7f0200e9

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/cyjh/elfin/services/PhoneStateService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    const v0, 0x7f090059

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/services/PhoneStateService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/services/PhoneStateService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f0900ea

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/services/PhoneStateService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_6d

    const-string v0, "umeng"

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_6d
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cyjh/elfin/services/PhoneStateService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/cyjh/elfin/services/PhoneStateService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 3

    invoke-super {p0}, Lcom/cyjh/common/base/service/BaseService;->onCreate()V

    new-instance v0, Lcom/cyjh/elfin/services/PhoneStateService$PhoneStateReceiver;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/services/PhoneStateService$PhoneStateReceiver;-><init>(Lcom/cyjh/elfin/services/PhoneStateService;)V

    iput-object v0, p0, Lcom/cyjh/elfin/services/PhoneStateService;->a:Lcom/cyjh/elfin/services/PhoneStateService$PhoneStateReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cyjh/elfin/services/PhoneStateService;->a:Lcom/cyjh/elfin/services/PhoneStateService$PhoneStateReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/cyjh/elfin/services/PhoneStateService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/services/PhoneStateService;->a:Lcom/cyjh/elfin/services/PhoneStateService$PhoneStateReceiver;

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/services/PhoneStateService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/cyjh/common/base/service/BaseService;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    const/4 p1, 0x2

    return p1
.end method
