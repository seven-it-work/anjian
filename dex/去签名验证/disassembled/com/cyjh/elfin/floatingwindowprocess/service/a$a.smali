.class final Lcom/cyjh/elfin/floatingwindowprocess/service/a$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/floatingwindowprocess/service/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/cyjh/elfin/floatingwindowprocess/service/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "bindTypeKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "ServerAppService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6536\u5230\u6765\u81ea\u5ba2\u6237\u7aef\u7684\u6d88\u606f:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->a()Lcom/cyjh/elfin/floatingwindowprocess/service/a;

    move-result-object v1

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object p1, v1, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->b:Landroid/os/Messenger;

    const/4 p1, 0x2

    if-ne v0, p1, :cond_3a

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v0, Lcom/cyjh/elfin/entity/ElfinFloatViewEvent;

    const/16 v1, 0x2775

    invoke-direct {v0, v1}, Lcom/cyjh/elfin/entity/ElfinFloatViewEvent;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    return-void

    :cond_3a
    const/4 p1, 0x3

    if-ne v0, p1, :cond_4c

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v0, Lcom/cyjh/elfin/entity/ElfinFloatViewEvent;

    const/16 v1, 0x2777

    invoke-direct {v0, v1}, Lcom/cyjh/elfin/entity/ElfinFloatViewEvent;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    return-void

    :cond_4c
    const/4 p1, 0x4

    if-ne v0, p1, :cond_5c

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/entity/ElfinFloatViewEvent;

    invoke-direct {v1, p1}, Lcom/cyjh/elfin/entity/ElfinFloatViewEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    return-void

    :cond_5c
    const/4 p1, 0x7

    if-ne v0, p1, :cond_6e

    new-instance p1, Lcom/cyjh/elfin/e/b/c;

    invoke-direct {p1}, Lcom/cyjh/elfin/e/b/c;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Lcom/cyjh/elfin/e/b/c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_6e
    return-void
.end method
