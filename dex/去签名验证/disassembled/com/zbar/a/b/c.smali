.class final Lcom/zbar/a/b/c;
.super Ljava/lang/Thread;


# instance fields
.field a:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

.field private b:Landroid/os/Handler;

.field private final c:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/zbar/a/b/c;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/zbar/a/b/c;->c:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method final a()Landroid/os/Handler;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/zbar/a/b/c;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    iget-object v0, p0, Lcom/zbar/a/b/c;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public final run()V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/zbar/a/b/b;

    iget-object v1, p0, Lcom/zbar/a/b/c;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    invoke-direct {v0, v1}, Lcom/zbar/a/b/b;-><init>(Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;)V

    iput-object v0, p0, Lcom/zbar/a/b/c;->b:Landroid/os/Handler;

    iget-object v0, p0, Lcom/zbar/a/b/c;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
