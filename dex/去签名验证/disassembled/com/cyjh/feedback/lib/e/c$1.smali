.class final Lcom/cyjh/feedback/lib/e/c$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/feedback/lib/e/c;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/feedback/lib/e/c;


# direct methods
.method constructor <init>(Lcom/cyjh/feedback/lib/e/c;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/feedback/lib/e/c$1;->a:Lcom/cyjh/feedback/lib/e/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/cyjh/feedback/lib/e/c$1;->a:Lcom/cyjh/feedback/lib/e/c;

    new-instance v1, Lcom/cyjh/feedback/lib/e/c$1$1;

    invoke-direct {v1, p0}, Lcom/cyjh/feedback/lib/e/c$1$1;-><init>(Lcom/cyjh/feedback/lib/e/c$1;)V

    invoke-static {v0, v1}, Lcom/cyjh/feedback/lib/e/c;->a(Lcom/cyjh/feedback/lib/e/c;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v0, p0, Lcom/cyjh/feedback/lib/e/c$1;->a:Lcom/cyjh/feedback/lib/e/c;

    invoke-static {v0}, Lcom/cyjh/feedback/lib/e/c;->d(Lcom/cyjh/feedback/lib/e/c;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
