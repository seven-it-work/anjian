.class final Lcom/cyjh/mq/service/IpcService$2;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/mq/service/IpcService;->f()V
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

    iput-object p1, p0, Lcom/cyjh/mq/service/IpcService$2;->a:Lcom/cyjh/mq/service/IpcService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lcom/cyjh/mq/service/IpcService$2;->a:Lcom/cyjh/mq/service/IpcService;

    invoke-static {v0}, Lcom/cyjh/mq/service/IpcService;->d(Lcom/cyjh/mq/service/IpcService;)V

    iget-object v0, p0, Lcom/cyjh/mq/service/IpcService$2;->a:Lcom/cyjh/mq/service/IpcService;

    invoke-static {v0}, Lcom/cyjh/mq/service/IpcService;->e(Lcom/cyjh/mq/service/IpcService;)V

    iget-object v0, p0, Lcom/cyjh/mq/service/IpcService$2;->a:Lcom/cyjh/mq/service/IpcService;

    invoke-static {v0}, Lcom/cyjh/mq/service/IpcService;->f(Lcom/cyjh/mq/service/IpcService;)V

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/d;->a()Lcom/cyjh/mobileanjian/ipc/d;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/d;->a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;)V

    return-void
.end method
