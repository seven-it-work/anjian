.class final Lcom/cyjh/mobileanjian/ipc/c$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/goldcoast/sdk/domain/AnalyseResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/mobileanjian/ipc/c$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mobileanjian/ipc/c$3;


# direct methods
.method constructor <init>(Lcom/cyjh/mobileanjian/ipc/c$3;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/c$3$1;->a:Lcom/cyjh/mobileanjian/ipc/c$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c$3$1;->a:Lcom/cyjh/mobileanjian/ipc/c$3;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/c$3;->b:Lcom/cyjh/mobileanjian/ipc/c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/cyjh/mobileanjian/ipc/c;->d:Z

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c$3$1;->a:Lcom/cyjh/mobileanjian/ipc/c$3;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/c$3;->b:Lcom/cyjh/mobileanjian/ipc/c;

    iget-boolean v0, v0, Lcom/cyjh/mobileanjian/ipc/c;->f:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c$3$1;->a:Lcom/cyjh/mobileanjian/ipc/c$3;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/c$3;->b:Lcom/cyjh/mobileanjian/ipc/c;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/c;->c:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1d
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/c$3$1;->a:Lcom/cyjh/mobileanjian/ipc/c$3;

    iget-object p1, p1, Lcom/cyjh/mobileanjian/ipc/c$3;->b:Lcom/cyjh/mobileanjian/ipc/c;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/cyjh/mobileanjian/ipc/c;->f:Z

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/c;->a()V

    return-void
.end method

.method public final onFailed(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c$3$1;->a:Lcom/cyjh/mobileanjian/ipc/c$3;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/c$3;->b:Lcom/cyjh/mobileanjian/ipc/c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/cyjh/mobileanjian/ipc/c;->d:Z

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c$3$1;->a:Lcom/cyjh/mobileanjian/ipc/c$3;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/c$3;->b:Lcom/cyjh/mobileanjian/ipc/c;

    iget-boolean v0, v0, Lcom/cyjh/mobileanjian/ipc/c;->f:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c$3$1;->a:Lcom/cyjh/mobileanjian/ipc/c$3;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/c$3;->b:Lcom/cyjh/mobileanjian/ipc/c;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/c;->c:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1d
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/c$3$1;->a:Lcom/cyjh/mobileanjian/ipc/c$3;

    iget-object p1, p1, Lcom/cyjh/mobileanjian/ipc/c$3;->b:Lcom/cyjh/mobileanjian/ipc/c;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/cyjh/mobileanjian/ipc/c;->f:Z

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/c;->a()V

    return-void
.end method

.method public final onProgress(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c$3$1;->a:Lcom/cyjh/mobileanjian/ipc/c$3;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/c$3;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c$3$1;->a:Lcom/cyjh/mobileanjian/ipc/c$3;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/c$3;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_11
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c$3$1;->a:Lcom/cyjh/mobileanjian/ipc/c$3;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/c$3;->b:Lcom/cyjh/mobileanjian/ipc/c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/cyjh/mobileanjian/ipc/c;->d:Z

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c$3$1;->a:Lcom/cyjh/mobileanjian/ipc/c$3;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/c$3;->b:Lcom/cyjh/mobileanjian/ipc/c;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/cyjh/mobileanjian/ipc/c;->f:Z

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c$3$1;->a:Lcom/cyjh/mobileanjian/ipc/c$3;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/c$3;->b:Lcom/cyjh/mobileanjian/ipc/c;

    iput-boolean v2, v0, Lcom/cyjh/mobileanjian/ipc/c;->e:Z

    invoke-static {}, Lcom/cyjh/mq/a/a;->a()Ljava/io/File;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "chmod 677 /dev/input/*"

    aput-object v4, v3, v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {}, Lcom/goldcoast/sdk/domain/EntryPoint;->instance()Lcom/goldcoast/sdk/domain/EntryPoint;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/goldcoast/sdk/domain/EntryPoint;->exec([Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c$3$1;->a:Lcom/cyjh/mobileanjian/ipc/c$3;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/c$3;->b:Lcom/cyjh/mobileanjian/ipc/c;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/c;->c:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c$3$1;->a:Lcom/cyjh/mobileanjian/ipc/c$3;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/c$3;->b:Lcom/cyjh/mobileanjian/ipc/c;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/c;->c:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
