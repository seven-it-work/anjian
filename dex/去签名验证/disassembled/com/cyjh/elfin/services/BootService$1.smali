.class final Lcom/cyjh/elfin/services/BootService$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/services/BootService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/services/BootService;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/services/BootService;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/services/BootService$1;->a:Lcom/cyjh/elfin/services/BootService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    invoke-static {}, Lcom/cyjh/elfin/services/BootService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStartCommand -->222"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/elfin/engin/c;->a()Lcom/elfin/engin/c;

    move-result-object v0

    iget-boolean v0, v0, Lcom/elfin/engin/c;->a:Z

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/cyjh/elfin/services/BootService$1;->a:Lcom/cyjh/elfin/services/BootService;

    invoke-static {v0}, Lcom/cyjh/elfin/services/BootService;->a(Lcom/cyjh/elfin/services/BootService;)Lcom/cyjh/elfin/services/BootService$a;

    move-result-object v0

    const/16 v1, 0x110

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/services/BootService$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-static {}, Lcom/elfin/engin/c;->a()Lcom/elfin/engin/c;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/elfin/engin/c;->a:Z

    iget-object v0, p0, Lcom/cyjh/elfin/services/BootService$1;->a:Lcom/cyjh/elfin/services/BootService;

    invoke-static {v0}, Lcom/cyjh/elfin/services/BootService;->b(Lcom/cyjh/elfin/services/BootService;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/cyjh/elfin/services/BootService$1;->a:Lcom/cyjh/elfin/services/BootService;

    invoke-static {v0}, Lcom/cyjh/elfin/services/BootService;->b(Lcom/cyjh/elfin/services/BootService;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_39
    return-void
.end method
