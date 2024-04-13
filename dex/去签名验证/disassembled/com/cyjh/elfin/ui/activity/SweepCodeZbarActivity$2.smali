.class final Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$2;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$2;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$2;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->a(Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$2;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->f:Z

    return-void
.end method
