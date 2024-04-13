.class final Lcom/cyjh/mq/c/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/mq/c/b;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mq/c/b;


# direct methods
.method constructor <init>(Lcom/cyjh/mq/c/b;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mq/c/b$3;->a:Lcom/cyjh/mq/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/mq/c/b$3;->a:Lcom/cyjh/mq/c/b;

    iget-object v0, v0, Lcom/cyjh/mq/c/b;->l:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    if-eqz v0, :cond_18

    const-string v0, "JAVA_RUNNER"

    const-string v1, "ScriptRunnerLite WHAT_STOP root\u8fdb\u7a0b\u5f02\u5e38\u7ec8\u6b62 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/cyjh/mq/c/b$3;->a:Lcom/cyjh/mq/c/b;

    iget-object v0, v0, Lcom/cyjh/mq/c/b;->l:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    const/16 v1, 0x3ea

    const-string v2, "root\u8fdb\u7a0b\u5f02\u5e38\u7ec8\u6b62"

    invoke-interface {v0, v1, v2}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;->onStopScript(ILjava/lang/String;)V

    :cond_18
    iget-object v0, p0, Lcom/cyjh/mq/c/b$3;->a:Lcom/cyjh/mq/c/b;

    iget-object v0, v0, Lcom/cyjh/mq/c/b;->c:Landroid/content/Context;

    sget v1, Lcom/cyjh/mqsdk/R$string;->toast_engine_crash_then_restart:I

    const/16 v2, 0x7d0

    invoke-static {v0, v1, v2}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->makeText(Landroid/content/Context;II)Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->show()V

    return-void
.end method
