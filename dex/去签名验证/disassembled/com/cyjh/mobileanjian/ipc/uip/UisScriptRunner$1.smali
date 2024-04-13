.class final Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->startLoop(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;


# direct methods
.method constructor <init>(Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner$1;->c:Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;

    iput-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->a(Z)Z

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner$1;->c:Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->a(Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;)Lcom/cyjh/mqm/MQUipStub;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner$1;->b:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/cyjh/mqm/MQUipStub;->StartLoop(Ljava/lang/String;JLjava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->a(Z)Z

    return-void
.end method
