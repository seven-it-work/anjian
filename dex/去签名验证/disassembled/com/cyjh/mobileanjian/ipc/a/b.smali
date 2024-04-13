.class public final Lcom/cyjh/mobileanjian/ipc/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mobileanjian/ipc/a/b$a;,
        Lcom/cyjh/mobileanjian/ipc/a/b$c;,
        Lcom/cyjh/mobileanjian/ipc/a/b$b;
    }
.end annotation


# static fields
.field private static final h:I = 0x1

.field private static final i:I = 0x2

.field private static final j:I = 0x3

.field private static final k:I = 0x19


# instance fields
.field public volatile a:Z

.field b:Z

.field public c:Z

.field public d:Lcom/cyjh/mobileanjian/ipc/a/b$c;

.field public e:Lcom/cyjh/mq/sdk/entity/Script4Run;

.field public f:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

.field public g:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lcom/cyjh/mobileanjian/ipc/a/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/cyjh/mqm/MQLanguageStub;

.field private m:Landroid/os/Handler;

.field private n:Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->a:Z

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->b:Z

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->c:Z

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->g:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/a/b$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/a/b$1;-><init>(Lcom/cyjh/mobileanjian/ipc/a/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->m:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->n:Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;

    return-void
.end method

.method private a(II)V
    .registers 14

    :try_start_0
    new-instance v10, Lcom/cyjh/mobileanjian/ipc/a/b$a;

    const/4 v2, 0x3

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v9, ""

    move-object v0, v10

    move-object v1, p0

    move v7, p1

    move v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/cyjh/mobileanjian/ipc/a/b$a;-><init>(Lcom/cyjh/mobileanjian/ipc/a/b;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->g:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, v10}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void
.end method

.method static synthetic a(Lcom/cyjh/mobileanjian/ipc/a/b;)V
    .registers 12

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    if-eqz v0, :cond_a9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->a:Z

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    sget-object v1, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/cyjh/mqsdk/R$string;->toast_on_start_script:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cyjh/mobileanjian/ipc/a/b;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/a/b;->g()V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/a/b;->e()Lcom/cyjh/mqm/MQLanguageStub;

    move-result-object v2

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    invoke-virtual {v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getLcPath()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    invoke-virtual {v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getAtcPath()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    invoke-virtual {v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getConfigPath()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    invoke-virtual {v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getAppId()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    invoke-virtual {v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getScriptEncryptKey()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    invoke-virtual {v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getTrialTime()I

    move-result v8

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    invoke-virtual {v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getEncryptKey()J

    move-result-wide v9

    invoke-virtual/range {v2 .. v10}, Lcom/cyjh/mqm/MQLanguageStub;->Run(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)I

    move-result v1

    const/16 v2, 0x66

    const/4 v3, 0x0

    if-eq v1, v2, :cond_5a

    goto :goto_75

    :cond_5a
    sget-object v2, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/cyjh/mqsdk/R$string;->toast_run_failed:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cyjh/mobileanjian/ipc/a/b;->c(Ljava/lang/String;)V

    :goto_75
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->m:Landroid/os/Handler;

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->m:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/log/NativeLog;->getExtraLog()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_8f
    sget-object v0, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/cyjh/mqsdk/R$string;->toast_on_stop_script:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cyjh/mobileanjian/ipc/a/b;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/event/c;->c()V

    invoke-static {}, Lcom/cyjh/event/Injector;->release()V

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/log/NativeLog;->reset()V

    iput-boolean v3, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->a:Z

    :cond_a9
    return-void
.end method

.method private a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->f:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    :cond_4
    return-void
.end method

.method private a(Lcom/cyjh/mq/sdk/entity/Script4Run;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    :cond_4
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 13

    :try_start_0
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->c:Z

    if-nez v0, :cond_12

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/a/b$c;

    const-string v1, "ScriptRunnerLite_Request"

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/a/b$c;-><init>(Lcom/cyjh/mobileanjian/ipc/a/b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->d:Lcom/cyjh/mobileanjian/ipc/a/b$c;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->d:Lcom/cyjh/mobileanjian/ipc/a/b$c;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/a/b$c;->start()V

    :cond_12
    new-instance v10, Lcom/cyjh/mobileanjian/ipc/a/b$a;

    const/4 v2, 0x1

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v9}, Lcom/cyjh/mobileanjian/ipc/a/b$a;-><init>(Lcom/cyjh/mobileanjian/ipc/a/b;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->g:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, v10}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_2a} :catch_2b

    return-void

    :catch_2b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    :try_start_0
    new-instance v10, Lcom/cyjh/mobileanjian/ipc/a/b$a;

    const/4 v2, 0x2

    const-string v3, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    move-object v0, v10

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v9}, Lcom/cyjh/mobileanjian/ipc/a/b$a;-><init>(Lcom/cyjh/mobileanjian/ipc/a/b;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->g:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, v10}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void
.end method

.method private a(ZIIII)V
    .registers 12

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/a/b;->f()Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;->SetImageCrop(ZIIII)V

    return-void
.end method

.method private static synthetic a(Lcom/cyjh/mobileanjian/ipc/a/b;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->c:Z

    return p1
.end method

.method private static synthetic b(Lcom/cyjh/mobileanjian/ipc/a/b;)Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->f:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    return-object p0
.end method

.method private b(Ljava/lang/String;)V
    .registers 13

    :try_start_0
    new-instance v10, Lcom/cyjh/mobileanjian/ipc/a/b$a;

    const/4 v2, 0x4

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v10

    move-object v1, p0

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/cyjh/mobileanjian/ipc/a/b$a;-><init>(Lcom/cyjh/mobileanjian/ipc/a/b;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->g:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, v10}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void
.end method

.method private static synthetic c(Lcom/cyjh/mobileanjian/ipc/a/b;)Lcom/cyjh/mq/sdk/entity/Script4Run;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    return-object p0
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->m:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private static synthetic d(Lcom/cyjh/mobileanjian/ipc/a/b;)Ljava/util/concurrent/ArrayBlockingQueue;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->g:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object p0
.end method

.method private static synthetic e(Lcom/cyjh/mobileanjian/ipc/a/b;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->b:Z

    return v0
.end method

.method private i()V
    .registers 12

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->a:Z

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    sget-object v1, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/cyjh/mqsdk/R$string;->toast_on_start_script:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cyjh/mobileanjian/ipc/a/b;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/a/b;->g()V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/a/b;->e()Lcom/cyjh/mqm/MQLanguageStub;

    move-result-object v2

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    invoke-virtual {v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getLcPath()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    invoke-virtual {v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getAtcPath()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    invoke-virtual {v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getConfigPath()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    invoke-virtual {v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getAppId()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    invoke-virtual {v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getScriptEncryptKey()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    invoke-virtual {v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getTrialTime()I

    move-result v8

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    invoke-virtual {v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getEncryptKey()J

    move-result-wide v9

    invoke-virtual/range {v2 .. v10}, Lcom/cyjh/mqm/MQLanguageStub;->Run(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)I

    move-result v1

    const/16 v2, 0x66

    const/4 v3, 0x0

    if-eq v1, v2, :cond_5b

    goto :goto_76

    :cond_5b
    sget-object v2, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/cyjh/mqsdk/R$string;->toast_run_failed:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cyjh/mobileanjian/ipc/a/b;->c(Ljava/lang/String;)V

    :goto_76
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->m:Landroid/os/Handler;

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->m:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/log/NativeLog;->getExtraLog()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_90
    sget-object v0, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/cyjh/mqsdk/R$string;->toast_on_stop_script:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cyjh/mobileanjian/ipc/a/b;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/event/c;->c()V

    invoke-static {}, Lcom/cyjh/event/Injector;->release()V

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/log/NativeLog;->reset()V

    iput-boolean v3, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->a:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->a:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->f:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->f:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    invoke-interface {v0}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;->onScriptIsRunning()V

    return-void

    :cond_e
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/a/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/a/b$b;-><init>(Lcom/cyjh/mobileanjian/ipc/a/b;B)V

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/a/b$b;->start()V

    :cond_17
    return-void
.end method

.method public final b()V
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/a/b;->e()Lcom/cyjh/mqm/MQLanguageStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mqm/MQLanguageStub;->Resume()I

    return-void
.end method

.method public final c()V
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/a/b;->e()Lcom/cyjh/mqm/MQLanguageStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mqm/MQLanguageStub;->Pause()I

    return-void
.end method

.method public final d()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stop: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/a/b;->e()Lcom/cyjh/mqm/MQLanguageStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mqm/MQLanguageStub;->Stop()I

    return-void
.end method

.method public final e()Lcom/cyjh/mqm/MQLanguageStub;
    .registers 7

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->l:Lcom/cyjh/mqm/MQLanguageStub;

    if-nez v0, :cond_5f

    new-instance v0, Lcom/cyjh/mqm/MQLanguageStub;

    invoke-direct {v0}, Lcom/cyjh/mqm/MQLanguageStub;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->l:Lcom/cyjh/mqm/MQLanguageStub;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Application: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_2f
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->l:Lcom/cyjh/mqm/MQLanguageStub;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    const-string v5, "lib"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/cyjh/mqm/MQLanguageStub;->SetLocalDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->l:Lcom/cyjh/mqm/MQLanguageStub;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cyjh/mqm/MQLanguageStub;->SetWriteLog2File(Z)V

    :cond_5f
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->l:Lcom/cyjh/mqm/MQLanguageStub;

    return-object v0
.end method

.method public final f()Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->n:Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;

    if-nez v0, :cond_12

    new-instance v0, Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/a/b;->e()Lcom/cyjh/mqm/MQLanguageStub;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;-><init>(Lcom/cyjh/mqm/MQLanguageStub;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->n:Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;

    :cond_12
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->n:Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;

    return-object v0
.end method

.method public final g()V
    .registers 3

    sget-object v0, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/a/b;->f()Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;->SetScreenRotation(I)V

    return-void
.end method

.method public final declared-synchronized h()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->a:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
