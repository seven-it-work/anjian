.class final Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$2;->a:Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$2;->a:Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u811a\u672c\u6570\u636e\u51fa\u9519"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ag;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
