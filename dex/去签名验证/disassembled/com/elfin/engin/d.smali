.class public final Lcom/elfin/engin/d;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/elfin/engin/b/a/a;
    .registers 9

    const-string v0, "a111111"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getScriptModel "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_40

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_40

    new-instance p1, Lcom/elfin/engin/b/c;

    invoke-direct {p1, p0, p2, p3}, Lcom/elfin/engin/b/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_40
    new-instance p2, Lcom/elfin/engin/b/b;

    invoke-direct {p2, p0, p1, p3}, Lcom/elfin/engin/b/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method private static a(I)V
    .registers 2

    invoke-static {}, Lcom/elfin/engin/c;->a()Lcom/elfin/engin/c;

    move-result-object v0

    iput p0, v0, Lcom/elfin/engin/c;->c:I

    iget p0, v0, Lcom/elfin/engin/c;->c:I

    if-nez p0, :cond_1a

    iget-object p0, v0, Lcom/elfin/engin/c;->d:Lcom/elfin/engin/f;

    if-nez p0, :cond_15

    new-instance p0, Lcom/elfin/engin/f;

    invoke-direct {p0}, Lcom/elfin/engin/f;-><init>()V

    iput-object p0, v0, Lcom/elfin/engin/c;->d:Lcom/elfin/engin/f;

    :cond_15
    iget-object p0, v0, Lcom/elfin/engin/c;->d:Lcom/elfin/engin/f;

    :goto_17
    iput-object p0, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    return-void

    :cond_1a
    iget-object p0, v0, Lcom/elfin/engin/c;->e:Lcom/elfin/engin/g;

    if-nez p0, :cond_25

    new-instance p0, Lcom/elfin/engin/g;

    invoke-direct {p0}, Lcom/elfin/engin/g;-><init>()V

    iput-object p0, v0, Lcom/elfin/engin/c;->e:Lcom/elfin/engin/g;

    :cond_25
    iget-object p0, v0, Lcom/elfin/engin/c;->e:Lcom/elfin/engin/g;

    goto :goto_17
.end method

.method private static a(Landroid/app/Application;)V
    .registers 6

    invoke-static {}, Lcom/elfin/engin/c;->a()Lcom/elfin/engin/c;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lcom/goldcoast/sdk/domain/EntryPoint;->init(Landroid/app/Application;Ljava/lang/String;Lcom/goldcoast/sdk/domain/AnalyseResult;IB)V

    new-instance p0, Lcom/elfin/engin/f;

    invoke-direct {p0}, Lcom/elfin/engin/f;-><init>()V

    iput-object p0, v0, Lcom/elfin/engin/c;->d:Lcom/elfin/engin/f;

    iget-object p0, v0, Lcom/elfin/engin/c;->d:Lcom/elfin/engin/f;

    iput-object p0, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    return-void
.end method

.method private static a(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Lcom/elfin/engin/e;)V
    .registers 11

    invoke-static {}, Lcom/elfin/engin/c;->a()Lcom/elfin/engin/c;

    move-result-object v0

    iput-object p3, v0, Lcom/elfin/engin/c;->f:Lcom/elfin/engin/e;

    iget-object v4, v0, Lcom/elfin/engin/c;->g:Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;

    new-instance v5, Lcom/elfin/engin/c$7;

    invoke-direct {v5, v0, p0}, Lcom/elfin/engin/c$7;-><init>(Lcom/elfin/engin/c;Landroid/app/Application;)V

    iget-object v6, v0, Lcom/elfin/engin/c;->h:Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/cyjh/mq/sdk/MqBridge;->init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;)V

    iget-object p0, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    iget-object p1, v0, Lcom/elfin/engin/c;->k:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    invoke-virtual {p0, p1}, Lcom/elfin/engin/b;->a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;)V

    iget-object p0, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    iget-object p1, v0, Lcom/elfin/engin/c;->i:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    invoke-virtual {p0}, Lcom/elfin/engin/b;->a()Lcom/cyjh/mq/sdk/inf/IRunner;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/cyjh/mq/sdk/inf/IRunner;->setOnScriptListener(Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;)Lcom/cyjh/mq/sdk/inf/IRunner;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cyjh/mq/service/IpcService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/elfin/engin/c;->a()Lcom/elfin/engin/c;

    move-result-object v0

    iget-object v1, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    if-eqz v1, :cond_d

    iget-object v0, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    invoke-virtual {v0, p0}, Lcom/elfin/engin/b;->a(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "zzz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "runScript--startLoop:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", scriptEncryptKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->getInstance()Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->startLoop(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/elfin/engin/c;->a()Lcom/elfin/engin/c;

    move-result-object v0

    iget-object v1, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    iget-object v0, v0, Lcom/elfin/engin/c;->j:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

    invoke-virtual {v1, p0, p1, p2, v0}, Lcom/elfin/engin/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/mq/sdk/inf/OnElfCallback;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    invoke-static {}, Lcom/elfin/engin/c;->a()Lcom/elfin/engin/c;

    move-result-object v0

    new-instance v1, Lcom/cyjh/mq/sdk/entity/Script4Run;

    invoke-direct {v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;-><init>()V

    invoke-virtual {v1, p0}, Lcom/cyjh/mq/sdk/entity/Script4Run;->setLcPath(Ljava/lang/String;)Lcom/cyjh/mq/sdk/inf/IScript;

    invoke-virtual {v1, p1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->setAtcPath(Ljava/lang/String;)Lcom/cyjh/mq/sdk/inf/IScript;

    invoke-virtual {v1, p2}, Lcom/cyjh/mq/sdk/entity/Script4Run;->setConfigPath(Ljava/lang/String;)Lcom/cyjh/mq/sdk/inf/IScript;

    invoke-virtual {v1, p6}, Lcom/cyjh/mq/sdk/entity/Script4Run;->setScriptEncryptKey(Ljava/lang/String;)Lcom/cyjh/mq/sdk/inf/IScript;

    iput p3, v1, Lcom/cyjh/mq/sdk/entity/Script4Run;->trialTime:I

    iput-wide p4, v1, Lcom/cyjh/mq/sdk/entity/Script4Run;->encryptKey:J

    const-string p0, "zzz"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "runScript--script4Run.scripyEncryptKey:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getScriptEncryptKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p7, v1, Lcom/cyjh/mq/sdk/entity/Script4Run;->appId:Ljava/lang/String;

    iput-object p8, v1, Lcom/cyjh/mq/sdk/entity/Script4Run;->username:Ljava/lang/String;

    const/4 p0, 0x1

    iput-boolean p0, v1, Lcom/cyjh/mq/sdk/entity/Script4Run;->encrypt:Z

    iget-object p0, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    if-eqz p0, :cond_40

    iget-object p0, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    invoke-virtual {p0, v1}, Lcom/elfin/engin/b;->a(Lcom/cyjh/mq/sdk/entity/Script4Run;)V

    :cond_40
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/elfin/engin/c;->a()Lcom/elfin/engin/c;

    move-result-object v0

    new-instance v1, Lcom/cyjh/mq/sdk/entity/Script4Run;

    invoke-direct {v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;-><init>()V

    invoke-virtual {v1, p0}, Lcom/cyjh/mq/sdk/entity/Script4Run;->setLcPath(Ljava/lang/String;)Lcom/cyjh/mq/sdk/inf/IScript;

    invoke-virtual {v1, p1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->setAtcPath(Ljava/lang/String;)Lcom/cyjh/mq/sdk/inf/IScript;

    invoke-virtual {v1, p2}, Lcom/cyjh/mq/sdk/entity/Script4Run;->setConfigPath(Ljava/lang/String;)Lcom/cyjh/mq/sdk/inf/IScript;

    invoke-virtual {v1, p3}, Lcom/cyjh/mq/sdk/entity/Script4Run;->setScriptEncryptKey(Ljava/lang/String;)Lcom/cyjh/mq/sdk/inf/IScript;

    iget-object p0, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    if-eqz p0, :cond_1e

    iget-object p0, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    invoke-virtual {p0, v1}, Lcom/elfin/engin/b;->a(Lcom/cyjh/mq/sdk/entity/Script4Run;)V

    :cond_1e
    return-void
.end method

.method public static a(ZIIII)V
    .registers 13

    invoke-static {}, Lcom/elfin/engin/c;->a()Lcom/elfin/engin/c;

    move-result-object v0

    iget-object v1, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    if-eqz v1, :cond_12

    iget-object v2, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/elfin/engin/b;->a(ZIIII)V

    :cond_12
    return-void
.end method

.method public static a()Z
    .registers 2

    invoke-static {}, Lcom/elfin/engin/c;->a()Lcom/elfin/engin/c;

    move-result-object v0

    iget-object v1, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    if-eqz v1, :cond_13

    iget-object v0, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    invoke-virtual {v0}, Lcom/elfin/engin/b;->a()Lcom/cyjh/mq/sdk/inf/IRunner;

    move-result-object v0

    invoke-interface {v0}, Lcom/cyjh/mq/sdk/inf/IRunner;->isScriptStarted()Z

    move-result v0

    return v0

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/cyjh/elfin/util/IpcSwap;->checkTemplateReq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b()V
    .registers 3

    invoke-static {}, Lcom/elfin/engin/c;->a()Lcom/elfin/engin/c;

    move-result-object v0

    iget-object v1, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    if-eqz v1, :cond_18

    iget-object v1, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    iget-object v2, v0, Lcom/elfin/engin/c;->k:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    invoke-virtual {v1, v2}, Lcom/elfin/engin/b;->a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;)V

    iget-object v0, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    invoke-virtual {v0}, Lcom/elfin/engin/b;->a()Lcom/cyjh/mq/sdk/inf/IRunner;

    move-result-object v0

    invoke-interface {v0}, Lcom/cyjh/mq/sdk/inf/IRunner;->start()V

    :cond_18
    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/cyjh/elfin/util/IpcSwap;->startAppReq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c()V
    .registers 2

    invoke-static {}, Lcom/elfin/engin/c;->a()Lcom/elfin/engin/c;

    move-result-object v0

    iget-object v1, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    if-eqz v1, :cond_11

    iget-object v0, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    invoke-virtual {v0}, Lcom/elfin/engin/b;->a()Lcom/cyjh/mq/sdk/inf/IRunner;

    move-result-object v0

    invoke-interface {v0}, Lcom/cyjh/mq/sdk/inf/IRunner;->pause()V

    :cond_11
    return-void
.end method

.method private static d()V
    .registers 2

    invoke-static {}, Lcom/elfin/engin/c;->a()Lcom/elfin/engin/c;

    move-result-object v0

    iget-object v1, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    if-eqz v1, :cond_11

    iget-object v0, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    invoke-virtual {v0}, Lcom/elfin/engin/b;->a()Lcom/cyjh/mq/sdk/inf/IRunner;

    move-result-object v0

    invoke-interface {v0}, Lcom/cyjh/mq/sdk/inf/IRunner;->resume()V

    :cond_11
    return-void
.end method

.method private static e()V
    .registers 2

    invoke-static {}, Lcom/elfin/engin/c;->a()Lcom/elfin/engin/c;

    move-result-object v0

    iget-object v1, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    if-eqz v1, :cond_11

    iget-object v0, v0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    invoke-virtual {v0}, Lcom/elfin/engin/b;->a()Lcom/cyjh/mq/sdk/inf/IRunner;

    move-result-object v0

    invoke-interface {v0}, Lcom/cyjh/mq/sdk/inf/IRunner;->stop()V

    :cond_11
    return-void
.end method

.method private static f()Z
    .registers 1

    invoke-static {}, Lcom/elfin/engin/c;->a()Lcom/elfin/engin/c;

    move-result-object v0

    iget-boolean v0, v0, Lcom/elfin/engin/c;->a:Z

    return v0
.end method

.method private static g()V
    .registers 2

    invoke-static {}, Lcom/elfin/engin/c;->a()Lcom/elfin/engin/c;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/elfin/engin/c;->a:Z

    return-void
.end method

.method private static h()V
    .registers 1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->getInstance()Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->stopLoop()V

    return-void
.end method

.method private static i()V
    .registers 0

    invoke-static {}, Lcom/cyjh/mq/sdk/MqBridge;->exit()V

    return-void
.end method
