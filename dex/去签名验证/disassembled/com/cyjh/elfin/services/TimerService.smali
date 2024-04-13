.class public Lcom/cyjh/elfin/services/TimerService;
.super Lcom/cyjh/elfin/services/BaseService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/services/TimerService$a;
    }
.end annotation


# static fields
.field private static final c:I = 0x5

.field private static final d:I = 0xc8

.field private static final e:I = 0x110


# instance fields
.field private b:Lcom/cyjh/elfin/services/TimerService$a;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/cyjh/elfin/services/BaseService;-><init>()V

    new-instance v0, Lcom/cyjh/elfin/services/TimerService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cyjh/elfin/services/TimerService$1;-><init>(Lcom/cyjh/elfin/services/TimerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cyjh/elfin/services/TimerService;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/services/TimerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/services/TimerService;->f:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/services/TimerService;->b:Lcom/cyjh/elfin/services/TimerService$a;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/cyjh/elfin/services/TimerService;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cyjh/elfin/services/TimerService;->b:Lcom/cyjh/elfin/services/TimerService$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/elfin/services/TimerService;->b:Lcom/cyjh/elfin/services/TimerService$a;

    :cond_e
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6

    const-string v0, "zzz"

    const-string v1, "onStartCommand "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/cyjh/elfin/services/TimerService$a;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/services/TimerService$a;-><init>(Lcom/cyjh/elfin/services/TimerService;)V

    iput-object v0, p0, Lcom/cyjh/elfin/services/TimerService;->b:Lcom/cyjh/elfin/services/TimerService$a;

    iget-object v0, p0, Lcom/cyjh/elfin/services/TimerService;->b:Lcom/cyjh/elfin/services/TimerService$a;

    invoke-static {v0}, Lcom/cyjh/elfin/services/TimerService$a;->a(Lcom/cyjh/elfin/services/TimerService$a;)V

    invoke-super {p0, p1, p2, p3}, Lcom/cyjh/elfin/services/BaseService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
