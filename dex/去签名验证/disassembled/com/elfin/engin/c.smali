.class public final Lcom/elfin/engin/c;
.super Ljava/lang/Object;


# static fields
.field private static final l:Ljava/lang/String; = "EnginRunnerManager"

.field private static final o:Lcom/elfin/engin/c;


# instance fields
.field public a:Z

.field public b:Lcom/elfin/engin/b;

.field public c:I

.field public d:Lcom/elfin/engin/f;

.field public e:Lcom/elfin/engin/g;

.field public f:Lcom/elfin/engin/e;

.field public g:Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;

.field public h:Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;

.field public i:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

.field public j:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

.field public k:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

.field private m:Z

.field private n:Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/elfin/engin/c;

    invoke-direct {v0}, Lcom/elfin/engin/c;-><init>()V

    sput-object v0, Lcom/elfin/engin/c;->o:Lcom/elfin/engin/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/elfin/engin/c;->a:Z

    new-instance v0, Lcom/elfin/engin/c$1;

    invoke-direct {v0, p0}, Lcom/elfin/engin/c$1;-><init>(Lcom/elfin/engin/c;)V

    iput-object v0, p0, Lcom/elfin/engin/c;->g:Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;

    new-instance v0, Lcom/elfin/engin/c$2;

    invoke-direct {v0, p0}, Lcom/elfin/engin/c$2;-><init>(Lcom/elfin/engin/c;)V

    iput-object v0, p0, Lcom/elfin/engin/c;->n:Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;

    new-instance v0, Lcom/elfin/engin/c$3;

    invoke-direct {v0, p0}, Lcom/elfin/engin/c$3;-><init>(Lcom/elfin/engin/c;)V

    iput-object v0, p0, Lcom/elfin/engin/c;->h:Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;

    new-instance v0, Lcom/elfin/engin/c$4;

    invoke-direct {v0, p0}, Lcom/elfin/engin/c$4;-><init>(Lcom/elfin/engin/c;)V

    iput-object v0, p0, Lcom/elfin/engin/c;->i:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    new-instance v0, Lcom/elfin/engin/c$5;

    invoke-direct {v0, p0}, Lcom/elfin/engin/c$5;-><init>(Lcom/elfin/engin/c;)V

    iput-object v0, p0, Lcom/elfin/engin/c;->j:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

    new-instance v0, Lcom/elfin/engin/c$6;

    invoke-direct {v0, p0}, Lcom/elfin/engin/c$6;-><init>(Lcom/elfin/engin/c;)V

    iput-object v0, p0, Lcom/elfin/engin/c;->k:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    return-void
.end method

.method public static a()Lcom/elfin/engin/c;
    .registers 1

    sget-object v0, Lcom/elfin/engin/c;->o:Lcom/elfin/engin/c;

    return-object v0
.end method

.method static synthetic a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;
    .registers 1

    iget-object p0, p0, Lcom/elfin/engin/c;->f:Lcom/elfin/engin/e;

    return-object p0
.end method

.method private a(I)V
    .registers 2

    iput p1, p0, Lcom/elfin/engin/c;->c:I

    iget p1, p0, Lcom/elfin/engin/c;->c:I

    if-nez p1, :cond_16

    iget-object p1, p0, Lcom/elfin/engin/c;->d:Lcom/elfin/engin/f;

    if-nez p1, :cond_11

    new-instance p1, Lcom/elfin/engin/f;

    invoke-direct {p1}, Lcom/elfin/engin/f;-><init>()V

    iput-object p1, p0, Lcom/elfin/engin/c;->d:Lcom/elfin/engin/f;

    :cond_11
    iget-object p1, p0, Lcom/elfin/engin/c;->d:Lcom/elfin/engin/f;

    :goto_13
    iput-object p1, p0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    return-void

    :cond_16
    iget-object p1, p0, Lcom/elfin/engin/c;->e:Lcom/elfin/engin/g;

    if-nez p1, :cond_21

    new-instance p1, Lcom/elfin/engin/g;

    invoke-direct {p1}, Lcom/elfin/engin/g;-><init>()V

    iput-object p1, p0, Lcom/elfin/engin/c;->e:Lcom/elfin/engin/g;

    :cond_21
    iget-object p1, p0, Lcom/elfin/engin/c;->e:Lcom/elfin/engin/g;

    goto :goto_13
.end method

.method private a(Landroid/app/Application;)V
    .registers 6

    const-string v0, ""

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/goldcoast/sdk/domain/EntryPoint;->init(Landroid/app/Application;Ljava/lang/String;Lcom/goldcoast/sdk/domain/AnalyseResult;IB)V

    new-instance p1, Lcom/elfin/engin/f;

    invoke-direct {p1}, Lcom/elfin/engin/f;-><init>()V

    iput-object p1, p0, Lcom/elfin/engin/c;->d:Lcom/elfin/engin/f;

    iget-object p1, p0, Lcom/elfin/engin/c;->d:Lcom/elfin/engin/f;

    iput-object p1, p0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    return-void
.end method

.method private a(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Lcom/elfin/engin/e;)V
    .registers 11

    iput-object p4, p0, Lcom/elfin/engin/c;->f:Lcom/elfin/engin/e;

    iget-object v3, p0, Lcom/elfin/engin/c;->g:Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;

    new-instance v4, Lcom/elfin/engin/c$7;

    invoke-direct {v4, p0, p1}, Lcom/elfin/engin/c$7;-><init>(Lcom/elfin/engin/c;Landroid/app/Application;)V

    iget-object v5, p0, Lcom/elfin/engin/c;->h:Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/cyjh/mq/sdk/MqBridge;->init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;)V

    iget-object p1, p0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    iget-object p2, p0, Lcom/elfin/engin/c;->k:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    invoke-virtual {p1, p2}, Lcom/elfin/engin/b;->a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;)V

    iget-object p1, p0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    iget-object p2, p0, Lcom/elfin/engin/c;->i:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    invoke-virtual {p1}, Lcom/elfin/engin/b;->a()Lcom/cyjh/mq/sdk/inf/IRunner;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/cyjh/mq/sdk/inf/IRunner;->setOnScriptListener(Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;)Lcom/cyjh/mq/sdk/inf/IRunner;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    invoke-virtual {v0, p1}, Lcom/elfin/engin/b;->a(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    iget-object v1, p0, Lcom/elfin/engin/c;->j:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/elfin/engin/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/mq/sdk/inf/OnElfCallback;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    new-instance v0, Lcom/cyjh/mq/sdk/entity/Script4Run;

    invoke-direct {v0}, Lcom/cyjh/mq/sdk/entity/Script4Run;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->setLcPath(Ljava/lang/String;)Lcom/cyjh/mq/sdk/inf/IScript;

    invoke-virtual {v0, p2}, Lcom/cyjh/mq/sdk/entity/Script4Run;->setAtcPath(Ljava/lang/String;)Lcom/cyjh/mq/sdk/inf/IScript;

    invoke-virtual {v0, p3}, Lcom/cyjh/mq/sdk/entity/Script4Run;->setConfigPath(Ljava/lang/String;)Lcom/cyjh/mq/sdk/inf/IScript;

    invoke-virtual {v0, p7}, Lcom/cyjh/mq/sdk/entity/Script4Run;->setScriptEncryptKey(Ljava/lang/String;)Lcom/cyjh/mq/sdk/inf/IScript;

    iput p4, v0, Lcom/cyjh/mq/sdk/entity/Script4Run;->trialTime:I

    iput-wide p5, v0, Lcom/cyjh/mq/sdk/entity/Script4Run;->encryptKey:J

    const-string p1, "zzz"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "runScript--script4Run.scripyEncryptKey:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getScriptEncryptKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p8, v0, Lcom/cyjh/mq/sdk/entity/Script4Run;->appId:Ljava/lang/String;

    iput-object p9, v0, Lcom/cyjh/mq/sdk/entity/Script4Run;->username:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/cyjh/mq/sdk/entity/Script4Run;->encrypt:Z

    iget-object p1, p0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    if-eqz p1, :cond_3c

    iget-object p1, p0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    invoke-virtual {p1, v0}, Lcom/elfin/engin/b;->a(Lcom/cyjh/mq/sdk/entity/Script4Run;)V

    :cond_3c
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Lcom/cyjh/mq/sdk/entity/Script4Run;

    invoke-direct {v0}, Lcom/cyjh/mq/sdk/entity/Script4Run;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->setLcPath(Ljava/lang/String;)Lcom/cyjh/mq/sdk/inf/IScript;

    invoke-virtual {v0, p2}, Lcom/cyjh/mq/sdk/entity/Script4Run;->setAtcPath(Ljava/lang/String;)Lcom/cyjh/mq/sdk/inf/IScript;

    invoke-virtual {v0, p3}, Lcom/cyjh/mq/sdk/entity/Script4Run;->setConfigPath(Ljava/lang/String;)Lcom/cyjh/mq/sdk/inf/IScript;

    invoke-virtual {v0, p4}, Lcom/cyjh/mq/sdk/entity/Script4Run;->setScriptEncryptKey(Ljava/lang/String;)Lcom/cyjh/mq/sdk/inf/IScript;

    iget-object p1, p0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    invoke-virtual {p1, v0}, Lcom/elfin/engin/b;->a(Lcom/cyjh/mq/sdk/entity/Script4Run;)V

    :cond_1a
    return-void
.end method

.method private a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/elfin/engin/c;->a:Z

    return-void
.end method

.method private a(ZIIII)V
    .registers 13

    iget-object v0, p0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/elfin/engin/b;->a(ZIIII)V

    :cond_e
    return-void
.end method

.method private b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/elfin/engin/c;->a:Z

    return v0
.end method

.method static synthetic b(Lcom/elfin/engin/c;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/elfin/engin/c;->a:Z

    return v0
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    iget-object v1, p0, Lcom/elfin/engin/c;->k:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    invoke-virtual {v0, v1}, Lcom/elfin/engin/b;->a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;)V

    iget-object v0, p0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    invoke-virtual {v0}, Lcom/elfin/engin/b;->a()Lcom/cyjh/mq/sdk/inf/IRunner;

    move-result-object v0

    invoke-interface {v0}, Lcom/cyjh/mq/sdk/inf/IRunner;->start()V

    :cond_14
    return-void
.end method

.method private d()V
    .registers 2

    iget-object v0, p0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    invoke-virtual {v0}, Lcom/elfin/engin/b;->a()Lcom/cyjh/mq/sdk/inf/IRunner;

    move-result-object v0

    invoke-interface {v0}, Lcom/cyjh/mq/sdk/inf/IRunner;->pause()V

    :cond_d
    return-void
.end method

.method private e()V
    .registers 2

    iget-object v0, p0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    invoke-virtual {v0}, Lcom/elfin/engin/b;->a()Lcom/cyjh/mq/sdk/inf/IRunner;

    move-result-object v0

    invoke-interface {v0}, Lcom/cyjh/mq/sdk/inf/IRunner;->resume()V

    :cond_d
    return-void
.end method

.method private f()V
    .registers 2

    iget-object v0, p0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    invoke-virtual {v0}, Lcom/elfin/engin/b;->a()Lcom/cyjh/mq/sdk/inf/IRunner;

    move-result-object v0

    invoke-interface {v0}, Lcom/cyjh/mq/sdk/inf/IRunner;->stop()V

    :cond_d
    return-void
.end method

.method private g()Z
    .registers 2

    iget-object v0, p0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/elfin/engin/c;->b:Lcom/elfin/engin/b;

    invoke-virtual {v0}, Lcom/elfin/engin/b;->a()Lcom/cyjh/mq/sdk/inf/IRunner;

    move-result-object v0

    invoke-interface {v0}, Lcom/cyjh/mq/sdk/inf/IRunner;->isScriptStarted()Z

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method
