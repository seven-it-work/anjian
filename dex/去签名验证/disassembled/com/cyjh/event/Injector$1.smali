.class final Lcom/cyjh/event/Injector$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/event/Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_7a

    return-void

    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/cyjh/event/b;

    invoke-static {p1}, Lcom/cyjh/event/Injector;->e(Lcom/cyjh/event/b;)V

    return-void

    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/cyjh/event/b;

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    iget-boolean v0, v0, Lcom/cyjh/mq/sdk/MqRunnerLite;->d:Z

    if-eqz v0, :cond_45

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/mq/sdk/MqRunnerLite;->c:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRequestCallback;

    if-eqz v0, :cond_2f

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/mq/sdk/MqRunnerLite;->c:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRequestCallback;

    iget v1, p1, Lcom/cyjh/event/b;->a:I

    iget-object v2, p1, Lcom/cyjh/event/b;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRequestCallback;->onCallback(ILjava/lang/String;)V

    :cond_2f
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/mq/sdk/MqRunnerLite;->b:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

    if-eqz v0, :cond_78

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/mq/sdk/MqRunnerLite;->b:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

    iget v1, p1, Lcom/cyjh/event/b;->a:I

    iget-object p1, p1, Lcom/cyjh/event/b;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/cyjh/mq/sdk/inf/OnElfCallback;->callback(ILjava/lang/String;)V

    return-void

    :cond_45
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    return-void

    :pswitch_49
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {p1}, Lcom/cyjh/event/Injector;->a([B)V

    return-void

    :pswitch_51
    invoke-static {}, Lcom/cyjh/event/Injector;->a()V

    return-void

    :pswitch_55
    invoke-static {}, Lcom/cyjh/event/Injector;->b()V

    return-void

    :pswitch_59
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/cyjh/event/b;

    invoke-static {p1}, Lcom/cyjh/event/Injector;->d(Lcom/cyjh/event/b;)V

    return-void

    :pswitch_61
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/cyjh/event/b;

    invoke-static {p1}, Lcom/cyjh/event/Injector;->c(Lcom/cyjh/event/b;)V

    return-void

    :pswitch_69
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/cyjh/event/b;

    invoke-static {p1}, Lcom/cyjh/event/Injector;->b(Lcom/cyjh/event/b;)V

    return-void

    :pswitch_71
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/cyjh/event/b;

    invoke-static {p1}, Lcom/cyjh/event/Injector;->a(Lcom/cyjh/event/b;)V

    :cond_78
    return-void

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_71
        :pswitch_69
        :pswitch_61
        :pswitch_59
        :pswitch_55
        :pswitch_51
        :pswitch_49
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method
