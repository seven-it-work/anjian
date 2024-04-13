.class final Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/http/c/c/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$1;->b:Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;

    iput-object p2, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/elf/studio/a/b;

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$1;->a:Ljava/lang/String;

    const/16 v3, 0x2714

    invoke-direct {v1, v3, v2}, Lcom/elf/studio/a/b;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$1;->b:Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->b(Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;)Lcom/cyjh/elfin/ui/view/customview/TitleView;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$1$1;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$1$1;-><init>(Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$1;->b:Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->finish()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$1;->b:Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->b(Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;)Lcom/cyjh/elfin/ui/view/customview/TitleView;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$1$2;

    invoke-direct {v1, p0, p1}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$1$2;-><init>(Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
