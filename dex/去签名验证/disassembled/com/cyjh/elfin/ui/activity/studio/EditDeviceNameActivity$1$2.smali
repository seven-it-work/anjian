.class final Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$1;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$1;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$1;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$1$2;->b:Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$1;

    iput-object p2, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$1$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$1$2;->b:Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$1;

    iget-object v0, v0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$1;->b:Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$1$2;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ag;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
