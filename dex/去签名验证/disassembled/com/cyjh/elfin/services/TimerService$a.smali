.class final Lcom/cyjh/elfin/services/TimerService$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/services/TimerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/services/TimerService;

.field private b:I


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/services/TimerService;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/services/TimerService$a;->a:Lcom/cyjh/elfin/services/TimerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/cyjh/elfin/services/TimerService$a;->b:I

    return-void
.end method

.method private a()V
    .registers 4

    const-string v0, "zzz"

    const-string v1, "onStart "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/cyjh/elfin/services/TimerService$a;->a:Lcom/cyjh/elfin/services/TimerService;

    invoke-static {v0}, Lcom/cyjh/elfin/services/TimerService;->a(Lcom/cyjh/elfin/services/TimerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/cyjh/elfin/services/TimerService$a;->a:Lcom/cyjh/elfin/services/TimerService;

    invoke-static {v0}, Lcom/cyjh/elfin/services/TimerService;->a(Lcom/cyjh/elfin/services/TimerService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/services/TimerService$a;)V
    .registers 4

    const-string v0, "zzz"

    const-string v1, "onStart "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/cyjh/elfin/services/TimerService$a;->a:Lcom/cyjh/elfin/services/TimerService;

    invoke-static {v0}, Lcom/cyjh/elfin/services/TimerService;->a(Lcom/cyjh/elfin/services/TimerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/cyjh/elfin/services/TimerService$a;->a:Lcom/cyjh/elfin/services/TimerService;

    invoke-static {v0}, Lcom/cyjh/elfin/services/TimerService;->a(Lcom/cyjh/elfin/services/TimerService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    const-string v0, "zzz"

    const-string v1, "run "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/cyjh/elfin/services/TimerService$a;->a:Lcom/cyjh/elfin/services/TimerService;

    invoke-static {v0}, Lcom/cyjh/common/util/x;->a(Landroid/content/Context;)Z

    move-result v0

    const-wide/16 v1, 0xc8

    if-eqz v0, :cond_5d

    iget v0, p0, Lcom/cyjh/elfin/services/TimerService$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cyjh/elfin/services/TimerService$a;->b:I

    const-string v0, "zzz"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TimerService--run--"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/cyjh/elfin/services/TimerService$a;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/cyjh/elfin/services/TimerService$a;->b:I

    const/4 v3, 0x5

    if-gt v0, v3, :cond_44

    iget-object v0, p0, Lcom/cyjh/elfin/services/TimerService$a;->a:Lcom/cyjh/elfin/services/TimerService;

    invoke-static {v0}, Lcom/cyjh/elfin/services/TimerService;->a(Lcom/cyjh/elfin/services/TimerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/cyjh/elfin/services/TimerService$a;->a:Lcom/cyjh/elfin/services/TimerService;

    invoke-static {v0}, Lcom/cyjh/elfin/services/TimerService;->a(Lcom/cyjh/elfin/services/TimerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_44
    iget-object v0, p0, Lcom/cyjh/elfin/services/TimerService$a;->a:Lcom/cyjh/elfin/services/TimerService;

    invoke-static {v0}, Lcom/cyjh/elfin/services/TimerService;->a(Lcom/cyjh/elfin/services/TimerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/cyjh/elfin/services/TimerService$a;->a:Lcom/cyjh/elfin/services/TimerService;

    invoke-static {v0}, Lcom/cyjh/elfin/services/TimerService;->a(Lcom/cyjh/elfin/services/TimerService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x110

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_5d
    const-string v0, "zzz"

    const-string v3, "run 2"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/cyjh/elfin/services/TimerService$a;->a:Lcom/cyjh/elfin/services/TimerService;

    invoke-static {v0}, Lcom/cyjh/elfin/services/TimerService;->a(Lcom/cyjh/elfin/services/TimerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/cyjh/elfin/services/TimerService$a;->a:Lcom/cyjh/elfin/services/TimerService;

    invoke-static {v0}, Lcom/cyjh/elfin/services/TimerService;->a(Lcom/cyjh/elfin/services/TimerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
