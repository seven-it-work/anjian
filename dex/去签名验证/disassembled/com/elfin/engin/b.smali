.class public abstract Lcom/elfin/engin/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "ScriptRunnerManager"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;)V
    .registers 3

    invoke-virtual {p0}, Lcom/elfin/engin/b;->a()Lcom/cyjh/mq/sdk/inf/IRunner;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cyjh/mq/sdk/inf/IRunner;->setOnScriptListener(Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;)Lcom/cyjh/mq/sdk/inf/IRunner;

    return-void
.end method

.method private b()Z
    .registers 2

    invoke-virtual {p0}, Lcom/elfin/engin/b;->a()Lcom/cyjh/mq/sdk/inf/IRunner;

    move-result-object v0

    invoke-interface {v0}, Lcom/cyjh/mq/sdk/inf/IRunner;->isScriptStarted()Z

    move-result v0

    return v0
.end method

.method private c()V
    .registers 2

    invoke-virtual {p0}, Lcom/elfin/engin/b;->a()Lcom/cyjh/mq/sdk/inf/IRunner;

    move-result-object v0

    invoke-interface {v0}, Lcom/cyjh/mq/sdk/inf/IRunner;->start()V

    return-void
.end method

.method private d()V
    .registers 2

    invoke-virtual {p0}, Lcom/elfin/engin/b;->a()Lcom/cyjh/mq/sdk/inf/IRunner;

    move-result-object v0

    invoke-interface {v0}, Lcom/cyjh/mq/sdk/inf/IRunner;->stop()V

    return-void
.end method

.method private e()V
    .registers 2

    invoke-virtual {p0}, Lcom/elfin/engin/b;->a()Lcom/cyjh/mq/sdk/inf/IRunner;

    move-result-object v0

    invoke-interface {v0}, Lcom/cyjh/mq/sdk/inf/IRunner;->pause()V

    return-void
.end method

.method private f()V
    .registers 2

    invoke-virtual {p0}, Lcom/elfin/engin/b;->a()Lcom/cyjh/mq/sdk/inf/IRunner;

    move-result-object v0

    invoke-interface {v0}, Lcom/cyjh/mq/sdk/inf/IRunner;->resume()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/cyjh/mq/sdk/inf/IRunner;
.end method

.method public abstract a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;)V
.end method

.method public final a(Lcom/cyjh/mq/sdk/entity/Script4Run;)V
    .registers 5

    const-string v0, "EnginSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EnginRunnerApi -> EnginSdk -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/elfin/engin/b;->a()Lcom/cyjh/mq/sdk/inf/IRunner;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cyjh/mq/sdk/inf/IRunner;->setScript(Lcom/cyjh/mq/sdk/entity/Script4Run;)Lcom/cyjh/mq/sdk/inf/IRunner;

    return-void
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/mq/sdk/inf/OnElfCallback;)V
.end method

.method public abstract a(ZIIII)V
.end method
