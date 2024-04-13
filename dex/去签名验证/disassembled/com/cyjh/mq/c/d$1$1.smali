.class final Lcom/cyjh/mq/c/d$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/ui/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/mq/c/d$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mq/c/d$1;


# direct methods
.method constructor <init>(Lcom/cyjh/mq/c/d$1;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mq/c/d$1$1;->a:Lcom/cyjh/mq/c/d$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg1(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/mq/c/d$1$1;->a:Lcom/cyjh/mq/c/d$1;

    iget-object v0, v0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    iget-object v0, v0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/c/b;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method
