.class final Lcom/cyjh/elfin/services/TimerService$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/services/TimerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/services/TimerService;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/services/TimerService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/elfin/services/TimerService$1;->a:Lcom/cyjh/elfin/services/TimerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x110

    if-eq p1, v0, :cond_7

    return-void

    :cond_7
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/cyjh/elfin/services/TimerService$1;->a:Lcom/cyjh/elfin/services/TimerService;

    const-class v1, Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "sIsBooted"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/cyjh/elfin/services/TimerService$1;->a:Lcom/cyjh/elfin/services/TimerService;

    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/services/TimerService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
