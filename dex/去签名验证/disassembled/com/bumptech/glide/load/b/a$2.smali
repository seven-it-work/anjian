.class final Lcom/bumptech/glide/load/b/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/b/a;->a()Ljava/lang/ref/ReferenceQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/b/a;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bumptech/glide/load/b/a$2;->a:Lcom/bumptech/glide/load/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a$2;->a:Lcom/bumptech/glide/load/b/a;

    :goto_7
    iget-boolean v1, v0, Lcom/bumptech/glide/load/b/a;->f:Z

    if-nez v1, :cond_28

    :try_start_b
    iget-object v1, v0, Lcom/bumptech/glide/load/b/a;->d:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/b/a$b;

    iget-object v2, v0, Lcom/bumptech/glide/load/b/a;->a:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iget-object v1, v0, Lcom/bumptech/glide/load/b/a;->g:Lcom/bumptech/glide/load/b/a$a;
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_1f} :catch_20

    goto :goto_7

    :catch_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_7

    :cond_28
    return-void
.end method
