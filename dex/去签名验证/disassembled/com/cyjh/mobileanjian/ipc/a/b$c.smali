.class public final Lcom/cyjh/mobileanjian/ipc/a/b$c;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mobileanjian/ipc/a/b;


# direct methods
.method public constructor <init>(Lcom/cyjh/mobileanjian/ipc/a/b;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/a/b$c;->a:Lcom/cyjh/mobileanjian/ipc/a/b;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b$c;->a:Lcom/cyjh/mobileanjian/ipc/a/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cyjh/mobileanjian/ipc/a/b;->c:Z

    :goto_8
    sget-object v0, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    if-eqz v0, :cond_69

    :try_start_c
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b$c;->a:Lcom/cyjh/mobileanjian/ipc/a/b;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/a/b;->g:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/a/b$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Take Request:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/a/b$a;->g:I

    packed-switch v2, :pswitch_data_7a

    goto :goto_8

    :pswitch_26
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/a/b$c;->a:Lcom/cyjh/mobileanjian/ipc/a/b;

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/a/b;->e()Lcom/cyjh/mqm/MQLanguageStub;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/a/b$a;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/cyjh/mqm/MQLanguageStub;->SetRegCode(Ljava/lang/String;)V

    goto :goto_8

    :pswitch_31
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/a/b$c;->a:Lcom/cyjh/mobileanjian/ipc/a/b;

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/a/b;->e()Lcom/cyjh/mqm/MQLanguageStub;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/a/b$a;->l:I

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/a/b$a;->m:I

    invoke-static {v2, v0}, Lcom/cyjh/mqm/MQLanguageStub;->SetHeartBeatTime(II)V

    goto :goto_8

    :pswitch_3e
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/a/b$c;->a:Lcom/cyjh/mobileanjian/ipc/a/b;

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/a/b;->e()Lcom/cyjh/mqm/MQLanguageStub;

    sget-object v2, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    iget-object v3, v0, Lcom/cyjh/mobileanjian/ipc/a/b$a;->i:Ljava/lang/String;

    iget-object v4, v0, Lcom/cyjh/mobileanjian/ipc/a/b$a;->j:Ljava/lang/String;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/a/b$a;->k:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0}, Lcom/cyjh/mqm/MQLanguageStub;->InitElf(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :pswitch_4f
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/a/b$c;->a:Lcom/cyjh/mobileanjian/ipc/a/b;

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/a/b;->e()Lcom/cyjh/mqm/MQLanguageStub;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/a/b$a;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/cyjh/mqm/MQLanguageStub;->InitHost(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b$c;->a:Lcom/cyjh/mobileanjian/ipc/a/b;

    iput-boolean v1, v0, Lcom/cyjh/mobileanjian/ipc/a/b;->b:Z

    goto :goto_8

    :pswitch_5e
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b$c;->a:Lcom/cyjh/mobileanjian/ipc/a/b;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/a/b;->a(Lcom/cyjh/mobileanjian/ipc/a/b;)V
    :try_end_63
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_63} :catch_64

    goto :goto_8

    :catch_64
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_8

    :cond_69
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b$c;->a:Lcom/cyjh/mobileanjian/ipc/a/b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/cyjh/mobileanjian/ipc/a/b;->c:Z

    return-void

    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_4f
        :pswitch_3e
        :pswitch_31
        :pswitch_26
    .end packed-switch
.end method
