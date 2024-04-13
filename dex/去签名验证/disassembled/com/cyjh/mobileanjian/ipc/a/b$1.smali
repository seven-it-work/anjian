.class final Lcom/cyjh/mobileanjian/ipc/a/b$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mobileanjian/ipc/a/b;


# direct methods
.method constructor <init>(Lcom/cyjh/mobileanjian/ipc/a/b;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/a/b$1;->a:Lcom/cyjh/mobileanjian/ipc/a/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3c

    return-void

    :pswitch_6
    sget-object v0, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_19
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b$1;->a:Lcom/cyjh/mobileanjian/ipc/a/b;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/a/b;->f:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b$1;->a:Lcom/cyjh/mobileanjian/ipc/a/b;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/a/b;->f:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;->onStopScript(ILjava/lang/String;)V

    return-void

    :pswitch_2d
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/a/b$1;->a:Lcom/cyjh/mobileanjian/ipc/a/b;

    iget-object p1, p1, Lcom/cyjh/mobileanjian/ipc/a/b;->f:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    if-eqz p1, :cond_3a

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/a/b$1;->a:Lcom/cyjh/mobileanjian/ipc/a/b;

    iget-object p1, p1, Lcom/cyjh/mobileanjian/ipc/a/b;->f:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    invoke-interface {p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;->onStartScript()V

    :cond_3a
    return-void

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_19
        :pswitch_6
    .end packed-switch
.end method
