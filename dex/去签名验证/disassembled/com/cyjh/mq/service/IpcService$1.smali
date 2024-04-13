.class final Lcom/cyjh/mq/service/IpcService$1;
.super Landroid/os/HandlerThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/mq/service/IpcService;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mq/service/IpcService;


# direct methods
.method constructor <init>(Lcom/cyjh/mq/service/IpcService;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/mq/service/IpcService$1;->a:Lcom/cyjh/mq/service/IpcService;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final onLooperPrepared()V
    .registers 4

    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    iget-object v0, p0, Lcom/cyjh/mq/service/IpcService$1;->a:Lcom/cyjh/mq/service/IpcService;

    new-instance v1, Lcom/cyjh/mq/c/c;

    iget-object v2, p0, Lcom/cyjh/mq/service/IpcService$1;->a:Lcom/cyjh/mq/service/IpcService;

    invoke-direct {v1, v2}, Lcom/cyjh/mq/c/c;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/cyjh/mq/service/IpcService;->a(Lcom/cyjh/mq/service/IpcService;Lcom/cyjh/mq/c/c;)Lcom/cyjh/mq/c/c;

    iget-object v0, p0, Lcom/cyjh/mq/service/IpcService$1;->a:Lcom/cyjh/mq/service/IpcService;

    invoke-static {v0}, Lcom/cyjh/mq/service/IpcService;->a(Lcom/cyjh/mq/service/IpcService;)Lcom/cyjh/mq/c/c;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v1

    iget-object v0, v0, Lcom/cyjh/mq/c/c;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cyjh/mq/service/IpcService$1;->a:Lcom/cyjh/mq/service/IpcService;

    invoke-static {v0}, Lcom/cyjh/mq/service/IpcService;->a(Lcom/cyjh/mq/service/IpcService;)Lcom/cyjh/mq/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mq/service/IpcService$1;->a:Lcom/cyjh/mq/service/IpcService;

    invoke-static {v1}, Lcom/cyjh/mq/service/IpcService;->b(Lcom/cyjh/mq/service/IpcService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cyjh/mq/service/IpcService$1;->a:Lcom/cyjh/mq/service/IpcService;

    invoke-static {v2}, Lcom/cyjh/mq/service/IpcService;->c(Lcom/cyjh/mq/service/IpcService;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cyjh/mq/c/c;->a(Ljava/lang/String;I)V

    return-void
.end method
