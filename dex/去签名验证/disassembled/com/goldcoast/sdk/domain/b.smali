.class final Lcom/goldcoast/sdk/domain/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/ConditionVariable;

.field final synthetic b:Lcom/goldcoast/sdk/domain/EntryPoint;


# direct methods
.method constructor <init>(Lcom/goldcoast/sdk/domain/EntryPoint;Landroid/os/ConditionVariable;)V
    .registers 3

    iput-object p1, p0, Lcom/goldcoast/sdk/domain/b;->b:Lcom/goldcoast/sdk/domain/EntryPoint;

    iput-object p2, p0, Lcom/goldcoast/sdk/domain/b;->a:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/goldcoast/sdk/domain/b;->b:Lcom/goldcoast/sdk/domain/EntryPoint;

    invoke-static {v0}, Lcom/goldcoast/sdk/domain/EntryPoint;->h(Lcom/goldcoast/sdk/domain/EntryPoint;)Z

    const-string v0, "timeout"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    invoke-static {}, Lcom/goldcoast/sdk/domain/EntryPoint;->a()I

    move-result v3

    if-ge v2, v3, :cond_3a

    iget-object v3, p0, Lcom/goldcoast/sdk/domain/b;->b:Lcom/goldcoast/sdk/domain/EntryPoint;

    invoke-virtual {v3}, Lcom/goldcoast/sdk/domain/EntryPoint;->getStatus()Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string v0, "ok"

    goto :goto_3a

    :cond_1a
    iget-object v3, p0, Lcom/goldcoast/sdk/domain/b;->b:Lcom/goldcoast/sdk/domain/EntryPoint;

    invoke-static {v3}, Lcom/goldcoast/sdk/domain/EntryPoint;->i(Lcom/goldcoast/sdk/domain/EntryPoint;)Z

    move-result v3

    if-nez v3, :cond_25

    const-string v0, "failed"

    goto :goto_3a

    :cond_25
    const-wide/16 v3, 0x3e8

    :try_start_27
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_2f

    :catch_2b
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2f
    invoke-static {}, Lcom/goldcoast/sdk/c/g;->a()Lcom/goldcoast/sdk/c/g;

    const-string v3, "timer: loop"

    invoke-static {v3}, Lcom/goldcoast/sdk/c/g;->a(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_3a
    :goto_3a
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x4c696bc3

    if-eq v3, v4, :cond_53

    const/16 v4, 0xddc

    if-eq v3, v4, :cond_49

    goto :goto_5d

    :cond_49
    const-string v3, "ok"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const/4 v0, 0x0

    goto :goto_5e

    :cond_53
    const-string v3, "failed"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const/4 v0, 0x1

    goto :goto_5e

    :cond_5d
    :goto_5d
    const/4 v0, -0x1

    :goto_5e
    packed-switch v0, :pswitch_data_7e

    invoke-static {}, Lcom/goldcoast/sdk/c/g;->a()Lcom/goldcoast/sdk/c/g;

    const-string v0, "timer: $$$ timeout"

    :goto_66
    invoke-static {v0}, Lcom/goldcoast/sdk/c/g;->a(Ljava/lang/String;)V

    goto :goto_77

    :pswitch_6a
    invoke-static {}, Lcom/goldcoast/sdk/c/g;->a()Lcom/goldcoast/sdk/c/g;

    const-string v0, "timer: $$$ failed"

    goto :goto_66

    :pswitch_70
    iget-object v0, p0, Lcom/goldcoast/sdk/domain/b;->b:Lcom/goldcoast/sdk/domain/EntryPoint;

    const-string v2, "$$$ success"

    invoke-static {v0, v2, v1}, Lcom/goldcoast/sdk/domain/EntryPoint;->a(Lcom/goldcoast/sdk/domain/EntryPoint;Ljava/lang/String;I)V

    :goto_77
    iget-object v0, p0, Lcom/goldcoast/sdk/domain/b;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void

    nop

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_70
        :pswitch_6a
    .end packed-switch
.end method
