.class public Lcom/cyjh/elfin/services/BootService;
.super Lcom/cyjh/elfin/services/BaseService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/services/BootService$a;
    }
.end annotation


# static fields
.field public static final b:I = 0x110

.field public static final c:I = 0x1

.field private static final d:Ljava/lang/String; = "BootService"


# instance fields
.field private e:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private f:Lcom/cyjh/elfin/services/BootService$a;

.field private g:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/cyjh/elfin/services/BaseService;-><init>()V

    new-instance v0, Lcom/cyjh/elfin/services/BootService$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cyjh/elfin/services/BootService$a;-><init>(B)V

    iput-object v0, p0, Lcom/cyjh/elfin/services/BootService;->f:Lcom/cyjh/elfin/services/BootService$a;

    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/services/BootService;)Lcom/cyjh/elfin/services/BootService$a;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/services/BootService;->f:Lcom/cyjh/elfin/services/BootService$a;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/cyjh/elfin/services/BootService;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/cyjh/elfin/services/BootService;)Ljava/util/concurrent/ScheduledFuture;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/services/BootService;->e:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method


# virtual methods
.method public onCreate()V
    .registers 3

    invoke-super {p0}, Lcom/cyjh/elfin/services/BaseService;->onCreate()V

    sget-object v0, Lcom/cyjh/elfin/services/BootService;->d:Ljava/lang/String;

    const-string v1, "onCreate -->"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/cyjh/elfin/services/BootService;->g:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/cyjh/elfin/services/BaseService;->onDestroy()V

    sget-object v0, Lcom/cyjh/elfin/services/BootService;->d:Ljava/lang/String;

    const-string v1, "onDestroy -->"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/elfin/services/BootService;->f:Lcom/cyjh/elfin/services/BootService$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/services/BootService$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/cyjh/elfin/services/BootService;->e:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/cyjh/elfin/services/BootService;->e:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1a
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 13

    sget-object v0, Lcom/cyjh/elfin/services/BootService;->d:Ljava/lang/String;

    const-string v1, "onStartCommand -->"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cyjh/elfin/services/BootService;->g:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/cyjh/elfin/services/BootService$1;

    invoke-direct {v3, p0}, Lcom/cyjh/elfin/services/BootService$1;-><init>(Lcom/cyjh/elfin/services/BootService;)V

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/services/BootService;->e:Ljava/util/concurrent/ScheduledFuture;

    invoke-super {p0, p1, p2, p3}, Lcom/cyjh/elfin/services/BaseService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
