.class final Lcom/cyjh/mobileanjian/ipc/rpc/AndroidHelper$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/mobileanjian/ipc/rpc/AndroidHelper;->batteryLevel()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string p1, "level"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "scale"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ltz p1, :cond_1a

    if-lez p2, :cond_1a

    mul-int/lit8 p1, p1, 0x64

    div-int/2addr p1, p2

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/rpc/AndroidHelper;->a(I)I

    :cond_1a
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/rpc/AndroidHelper;->a()Z

    return-void
.end method
