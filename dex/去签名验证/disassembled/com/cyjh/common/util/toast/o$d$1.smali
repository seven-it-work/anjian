.class final Lcom/cyjh/common/util/toast/o$d$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/common/util/toast/o$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/common/util/toast/o$d;


# direct methods
.method constructor <init>(Lcom/cyjh/common/util/toast/o$d;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/common/util/toast/o$d$1;->a:Lcom/cyjh/common/util/toast/o$d;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/common/util/toast/o$d$1;->a:Lcom/cyjh/common/util/toast/o$d;

    iget-object v0, v0, Lcom/cyjh/common/util/toast/o$d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/cyjh/common/util/toast/o$d$1;->a:Lcom/cyjh/common/util/toast/o$d;

    iget-object v0, v0, Lcom/cyjh/common/util/toast/o$d;->c:Lcom/cyjh/common/util/toast/o$d$a;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/cyjh/common/util/toast/o$d$1;->a:Lcom/cyjh/common/util/toast/o$d;

    iget-object v2, v0, Lcom/cyjh/common/util/toast/o$d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v2

    :try_start_1b
    iget-object v3, v0, Lcom/cyjh/common/util/toast/o$d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-le v3, v1, :cond_25

    monitor-exit v2

    goto :goto_35

    :cond_25
    iget-object v1, v0, Lcom/cyjh/common/util/toast/o$d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_3b

    iget-object v1, v0, Lcom/cyjh/common/util/toast/o$d;->b:Ljava/lang/Thread;

    if-eqz v1, :cond_35

    iget-object v0, v0, Lcom/cyjh/common/util/toast/o$d;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_35
    :goto_35
    iget-object v0, p0, Lcom/cyjh/common/util/toast/o$d$1;->a:Lcom/cyjh/common/util/toast/o$d;

    invoke-virtual {v0}, Lcom/cyjh/common/util/toast/o$d;->e()V

    return-void

    :catchall_3b
    move-exception v0

    :try_start_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v0

    :cond_3e
    return-void
.end method
