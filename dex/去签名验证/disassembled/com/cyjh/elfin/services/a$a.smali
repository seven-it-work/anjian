.class public final Lcom/cyjh/elfin/services/a$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/services/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "bindTypeKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "bindActionKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "ClientAppService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6536\u5230\u6765\u81ea\u670d\u52a1\u7aef\u7684\u6d88\u606f\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "bindMsgKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3ea

    if-eq v1, v0, :cond_8b

    const/16 v0, 0x3e9

    if-eq v1, v0, :cond_8b

    const/16 v0, 0x3eb

    if-ne v1, v0, :cond_4b

    new-instance v0, Lcom/cyjh/elfin/e/b/d;

    invoke-direct {v0}, Lcom/cyjh/elfin/e/b/d;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/cyjh/elfin/e/b/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_4b
    const/16 v0, 0x44d

    if-ne v1, v0, :cond_65

    const-string p1, "ClientAppService"

    const-string v0, "CMD_ACTION_VOLUME_SCRIPT_START"

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v0, Lcom/elf/studio/a/a;

    const/16 v1, 0x2775

    invoke-direct {v0, v1}, Lcom/elf/studio/a/a;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    return-void

    :cond_65
    const/16 v0, 0x3ec

    if-ne v1, v0, :cond_8b

    invoke-static {}, Lcom/cyjh/elfin/e/c/o;->a()Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->a:Lcom/cyjh/elfin/entity/Script;

    if-eqz v0, :cond_8b

    invoke-static {}, Lcom/cyjh/http/c/c/r;->a()Lcom/cyjh/http/c/c/r;

    move-result-object v1

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/cyjh/elfin/services/a$a$1;

    invoke-direct {v3, p0}, Lcom/cyjh/elfin/services/a$a$1;-><init>(Lcom/cyjh/elfin/services/a$a;)V

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/cyjh/http/c/c/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/http/c/c/r$a;)V

    :cond_8b
    return-void
.end method
