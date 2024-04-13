.class public final Lcom/cyjh/mq/c/b;
.super Lcom/cyjh/mq/c/a;


# static fields
.field private static final t:I = 0x1000

.field private static final u:I = 0x400


# instance fields
.field a:Z

.field b:Z

.field c:Landroid/content/Context;

.field public d:Z

.field public e:Z

.field f:Lcom/cyjh/mq/b/a;

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyjh/mobileanjian/ipc/interfaces/EngineStateObserver;",
            ">;"
        }
    .end annotation
.end field

.field h:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;

.field public i:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;

.field j:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;

.field k:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

.field public l:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

.field m:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRequestCallback;

.field public n:Lcom/cyjh/mobileanjian/ipc/interfaces/OnMqScriptCallback;

.field public o:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

.field p:Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;

.field public q:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

.field r:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;",
            ">;"
        }
    .end annotation
.end field

.field s:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRpcCallback;

.field private v:Lcom/cyjh/mq/c/d;

.field private w:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/cyjh/mobileanjian/ipc/interfaces/ScriptStateObserver;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/LocalSocket;)V
    .registers 5

    invoke-direct {p0, p2}, Lcom/cyjh/mq/c/a;-><init>(Landroid/net/LocalSocket;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/cyjh/mq/c/b;->a:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/cyjh/mq/c/b;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/mq/c/b;->v:Lcom/cyjh/mq/c/d;

    iput-object v0, p0, Lcom/cyjh/mq/c/b;->c:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/cyjh/mq/c/b;->d:Z

    iput-boolean p2, p0, Lcom/cyjh/mq/c/b;->e:Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/cyjh/mq/c/b;->g:Ljava/util/List;

    new-instance p2, Ljava/util/Vector;

    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    iput-object p2, p0, Lcom/cyjh/mq/c/b;->w:Ljava/util/Vector;

    iput-object v0, p0, Lcom/cyjh/mq/c/b;->h:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;

    iput-object v0, p0, Lcom/cyjh/mq/c/b;->i:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;

    iput-object v0, p0, Lcom/cyjh/mq/c/b;->j:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;

    iput-object v0, p0, Lcom/cyjh/mq/c/b;->k:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

    iput-object v0, p0, Lcom/cyjh/mq/c/b;->l:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    new-instance p2, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x400

    invoke-direct {p2, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p2, p0, Lcom/cyjh/mq/c/b;->r:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance p2, Lcom/cyjh/mq/c/b$1;

    const-string v1, "send_thread"

    invoke-direct {p2, p0, v1}, Lcom/cyjh/mq/c/b$1;-><init>(Lcom/cyjh/mq/c/b;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/cyjh/mq/c/b;->x:Ljava/lang/Thread;

    iput-object v0, p0, Lcom/cyjh/mq/c/b;->s:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRpcCallback;

    iput-object p1, p0, Lcom/cyjh/mq/c/b;->c:Landroid/content/Context;

    new-instance p2, Lcom/cyjh/mq/c/d;

    invoke-direct {p2, p1, p0}, Lcom/cyjh/mq/c/d;-><init>(Landroid/content/Context;Lcom/cyjh/mq/c/b;)V

    iput-object p2, p0, Lcom/cyjh/mq/c/b;->v:Lcom/cyjh/mq/c/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/net/Socket;)V
    .registers 5

    invoke-direct {p0, p2}, Lcom/cyjh/mq/c/a;-><init>(Ljava/net/Socket;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/cyjh/mq/c/b;->a:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/cyjh/mq/c/b;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/mq/c/b;->v:Lcom/cyjh/mq/c/d;

    iput-object v0, p0, Lcom/cyjh/mq/c/b;->c:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/cyjh/mq/c/b;->d:Z

    iput-boolean p2, p0, Lcom/cyjh/mq/c/b;->e:Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/cyjh/mq/c/b;->g:Ljava/util/List;

    new-instance p2, Ljava/util/Vector;

    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    iput-object p2, p0, Lcom/cyjh/mq/c/b;->w:Ljava/util/Vector;

    iput-object v0, p0, Lcom/cyjh/mq/c/b;->h:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;

    iput-object v0, p0, Lcom/cyjh/mq/c/b;->i:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;

    iput-object v0, p0, Lcom/cyjh/mq/c/b;->j:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;

    iput-object v0, p0, Lcom/cyjh/mq/c/b;->k:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

    iput-object v0, p0, Lcom/cyjh/mq/c/b;->l:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    new-instance p2, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x400

    invoke-direct {p2, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p2, p0, Lcom/cyjh/mq/c/b;->r:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance p2, Lcom/cyjh/mq/c/b$1;

    const-string v1, "send_thread"

    invoke-direct {p2, p0, v1}, Lcom/cyjh/mq/c/b$1;-><init>(Lcom/cyjh/mq/c/b;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/cyjh/mq/c/b;->x:Ljava/lang/Thread;

    iput-object v0, p0, Lcom/cyjh/mq/c/b;->s:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRpcCallback;

    iput-object p1, p0, Lcom/cyjh/mq/c/b;->c:Landroid/content/Context;

    new-instance p2, Lcom/cyjh/mq/c/d;

    invoke-direct {p2, p1, p0}, Lcom/cyjh/mq/c/d;-><init>(Landroid/content/Context;Lcom/cyjh/mq/c/b;)V

    iput-object p2, p0, Lcom/cyjh/mq/c/b;->v:Lcom/cyjh/mq/c/d;

    return-void
.end method

.method private a(Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mq/c/b;->k:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

    return-void
.end method

.method private a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnMqScriptCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mq/c/b;->n:Lcom/cyjh/mobileanjian/ipc/interfaces/OnMqScriptCallback;

    return-void
.end method

.method private a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mq/c/b;->h:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;

    return-void
.end method

.method private a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnRequestCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mq/c/b;->m:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRequestCallback;

    return-void
.end method

.method private a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnRpcCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mq/c/b;->s:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRpcCallback;

    return-void
.end method

.method private a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mq/c/b;->i:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;

    return-void
.end method

.method private a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mq/c/b;->l:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    return-void
.end method

.method private a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mq/c/b;->j:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;

    return-void
.end method

.method private a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mq/c/b;->q:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    return-void
.end method

.method private a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mq/c/b;->p:Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;

    return-void
.end method

.method private a(Lcom/cyjh/mobileanjian/ipc/interfaces/ScriptStateObserver;)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mq/c/b;->w:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lcom/cyjh/mq/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mq/c/b;->f:Lcom/cyjh/mq/b/a;

    return-void
.end method

.method private a(Lcom/cyjh/mq/sdk/inf/OnElfCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mq/c/b;->o:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cyjh/mobileanjian/ipc/interfaces/EngineStateObserver;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cyjh/mq/c/b;->g:Ljava/util/List;

    return-void
.end method

.method private a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/cyjh/mq/c/b;->e:Z

    return-void
.end method

.method private static synthetic a(Lcom/cyjh/mq/c/b;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/cyjh/mq/c/b;->a:Z

    return p0
.end method

.method private static synthetic b(Lcom/cyjh/mq/c/b;)Ljava/util/concurrent/ArrayBlockingQueue;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mq/c/b;->r:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object p0
.end method

.method private b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/cyjh/mq/c/b;->d:Z

    return-void
.end method

.method private static synthetic c(Lcom/cyjh/mq/c/b;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mq/c/b;->g:Ljava/util/List;

    return-object p0
.end method

.method private static synthetic d(Lcom/cyjh/mq/c/b;)Lcom/cyjh/mq/b/a;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mq/c/b;->f:Lcom/cyjh/mq/b/a;

    return-object p0
.end method

.method private d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/mq/c/b;->b:Z

    return v0
.end method

.method private e()I
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lcom/cyjh/mq/c/b;->a([B)I

    move-result v1

    if-gez v1, :cond_b

    const/4 v0, -0x1

    return v0

    :cond_b
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method private static synthetic e(Lcom/cyjh/mq/c/b;)Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mq/c/b;->l:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    return-object p0
.end method

.method private static synthetic f(Lcom/cyjh/mq/c/b;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mq/c/b;->c:Landroid/content/Context;

    return-object p0
.end method

.method private f()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lcom/cyjh/mq/c/b;->a([B)I

    move-result v1

    if-gez v1, :cond_b

    const/4 v0, -0x1

    goto :goto_13

    :cond_b
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    :goto_13
    const/4 v1, 0x0

    if-gez v0, :cond_1d

    :goto_16
    invoke-virtual {p0}, Lcom/cyjh/mq/c/b;->a()V

    invoke-direct {p0}, Lcom/cyjh/mq/c/b;->v()V

    return-object v1

    :cond_1d
    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lcom/cyjh/mq/c/b;->a([B)I

    move-result v2

    if-gez v2, :cond_26

    goto :goto_16

    :cond_26
    :try_start_26
    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->parseFrom([B)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0
    :try_end_2a
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_26 .. :try_end_2a} :catch_2b

    return-object v0

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    move-object v0, v1

    return-object v0
.end method

.method private g()Lcom/cyjh/mobileanjian/ipc/interfaces/OnRpcCallback;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mq/c/b;->s:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRpcCallback;

    return-object v0
.end method

.method private h()Lcom/cyjh/mq/b/a;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mq/c/b;->f:Lcom/cyjh/mq/b/a;

    return-object v0
.end method

.method private i()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/mq/c/b;->e:Z

    return v0
.end method

.method private j()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/mq/c/b;->d:Z

    return v0
.end method

.method private k()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/cyjh/mobileanjian/ipc/interfaces/ScriptStateObserver;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/mq/c/b;->w:Ljava/util/Vector;

    return-object v0
.end method

.method private l()Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mq/c/b;->k:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

    return-object v0
.end method

.method private m()Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mq/c/b;->l:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    return-object v0
.end method

.method private n()Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mq/c/b;->h:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;

    return-object v0
.end method

.method private o()Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mq/c/b;->i:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;

    return-object v0
.end method

.method private p()Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mq/c/b;->j:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;

    return-object v0
.end method

.method private q()Lcom/cyjh/mobileanjian/ipc/interfaces/OnRequestCallback;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mq/c/b;->m:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRequestCallback;

    return-object v0
.end method

.method private r()Lcom/cyjh/mobileanjian/ipc/interfaces/OnMqScriptCallback;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mq/c/b;->n:Lcom/cyjh/mobileanjian/ipc/interfaces/OnMqScriptCallback;

    return-object v0
.end method

.method private s()Lcom/cyjh/mq/sdk/inf/OnElfCallback;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mq/c/b;->o:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

    return-object v0
.end method

.method private t()Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mq/c/b;->p:Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;

    return-object v0
.end method

.method private u()V
    .registers 2

    new-instance v0, Lcom/cyjh/mq/c/b$2;

    invoke-direct {v0, p0}, Lcom/cyjh/mq/c/b$2;-><init>(Lcom/cyjh/mq/c/b;)V

    invoke-virtual {v0}, Lcom/cyjh/mq/c/b$2;->start()V

    return-void
.end method

.method private v()V
    .registers 5

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/b;

    invoke-direct {v0}, Lcom/cyjh/mobileanjian/ipc/b;-><init>()V

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyjh/mq/sdk/MqRunner;->isScriptStarted()Z

    move-result v1

    iput-boolean v1, v0, Lcom/cyjh/mobileanjian/ipc/b;->a:Z

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyjh/mq/sdk/MqRunner;->isScriptStarted()Z

    move-result v1

    const/16 v2, 0x3ea

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/cyjh/mq/c/b;->v:Lcom/cyjh/mq/c/d;

    iget-object v1, v1, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/cyjh/mq/c/b;->k:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

    if-eqz v1, :cond_36

    const-string v1, "JAVA_RUNNER"

    const-string v3, "ScriptRunnerLite WHAT_STOP root\u8fdb\u7a0b\u5f02\u5e38\u7ec8\u6b62"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/cyjh/mq/c/b;->k:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

    const-string v3, "root\u8fdb\u7a0b\u5f02\u5e38\u7ec8\u6b62"

    invoke-interface {v1, v2, v3}, Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;->onStopScript(ILjava/lang/String;)V

    :cond_36
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/cyjh/mq/c/b$3;

    invoke-direct {v3, p0}, Lcom/cyjh/mq/c/b$3;-><init>(Lcom/cyjh/mq/c/b;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_47
    iget-boolean v1, p0, Lcom/cyjh/mq/c/b;->d:Z

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/cyjh/mq/c/b;->i:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;

    if-eqz v1, :cond_57

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cyjh/mq/c/b;->d:Z

    iget-object v1, p0, Lcom/cyjh/mq/c/b;->i:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;

    invoke-interface {v1, v2}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;->onScreenShotFailed(I)V

    :cond_57
    iget-object v1, p0, Lcom/cyjh/mq/c/b;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyjh/mobileanjian/ipc/interfaces/EngineStateObserver;

    invoke-interface {v2, v0}, Lcom/cyjh/mobileanjian/ipc/interfaces/EngineStateObserver;->onCrash(Lcom/cyjh/mobileanjian/ipc/b;)V

    goto :goto_5d

    :cond_6d
    return-void
.end method

.method private w()Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mq/c/b;->q:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .registers 2

    invoke-super {p0}, Lcom/cyjh/mq/c/a;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/mq/c/b;->a:Z

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/b;->a(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mq/c/b;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method

.method public final declared-synchronized a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/cyjh/mq/c/b;->r:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()V
    .registers 12

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/mq/c/b;->b:Z

    iget-object v1, p0, Lcom/cyjh/mq/c/b;->x:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_8
    :goto_8
    :pswitch_8
    iget-boolean v1, p0, Lcom/cyjh/mq/c/b;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_618

    invoke-direct {p0}, Lcom/cyjh/mq/c/b;->f()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v1

    iget-object v3, p0, Lcom/cyjh/mq/c/b;->v:Lcom/cyjh/mq/c/d;

    if-eqz v1, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "handMessage msg.getCmd() -> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getCmd()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    iget-object v4, v4, Lcom/cyjh/mq/c/b;->h:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getCmd()I

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x2

    packed-switch v5, :pswitch_data_61c

    const/16 v8, 0x10

    packed-switch v5, :pswitch_data_626

    packed-switch v5, :pswitch_data_62e

    packed-switch v5, :pswitch_data_64c

    packed-switch v5, :pswitch_data_664

    const/16 v9, 0x13

    const/4 v10, 0x0

    packed-switch v5, :pswitch_data_670

    packed-switch v5, :pswitch_data_694

    sparse-switch v5, :sswitch_data_6a2

    goto :goto_8

    :sswitch_4b
    iget-object v1, v3, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    invoke-virtual {v1}, Lcom/cyjh/mq/c/b;->c()V

    goto :goto_8

    :sswitch_51
    iget-object v2, v3, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    iget-object v2, v2, Lcom/cyjh/mq/c/b;->j:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getFileData()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;->onDebugMessage(Lcom/google/protobuf/ByteString;)V

    goto :goto_8

    :sswitch_5f
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v4, 0x11

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    goto/16 :goto_59a

    :sswitch_6d
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v4

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v9, v4, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    goto/16 :goto_59a

    :sswitch_7d
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v4, 0x15

    :goto_81
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v5

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v5, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    goto/16 :goto_59a

    :sswitch_8f
    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getTypesList()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getParamsList()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/cyjh/mobileanjian/ipc/rpc/Invocator;->invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "retObj = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getIsSyncCall()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getRetValue()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    move-result-object v4

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v5

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getCmd()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setIsSyncCall(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getWaitId()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setWaitId(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v1

    :try_start_e0
    sget-object v6, Lcom/cyjh/mq/c/d$2;->a:[I

    invoke-virtual {v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_6d0

    goto :goto_12d

    :pswitch_ec
    if-nez v2, :cond_f1

    const-string v2, ""

    goto :goto_f3

    :cond_f1
    check-cast v2, Ljava/lang/String;

    :goto_f3
    invoke-virtual {v5, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setValString(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    goto :goto_12d

    :pswitch_f7
    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setValDouble(D)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    goto :goto_12d

    :pswitch_101
    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v5, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setValFloat(F)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    goto :goto_12d

    :pswitch_10b
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setValLong(J)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    goto :goto_12d

    :pswitch_115
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setValInt(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    goto :goto_12d

    :pswitch_11f
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v5, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setValBoolean(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    :try_end_128
    .catch Ljava/lang/Throwable; {:try_start_e0 .. :try_end_128} :catch_129

    goto :goto_12d

    :catch_129
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_12d
    sget-object v2, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->VOID:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    if-eq v4, v2, :cond_138

    invoke-virtual {v5}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setRetValue(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    :cond_138
    :try_start_138
    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v1
    :try_end_13c
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_138 .. :try_end_13c} :catch_13d

    goto :goto_142

    :catch_13d
    move-exception v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->printStackTrace()V

    move-object v1, v10

    :goto_142
    if-eqz v1, :cond_8

    goto/16 :goto_290

    :sswitch_146
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v4

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v5

    invoke-virtual {v1, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v6

    shl-int/2addr v4, v8

    or-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    iget-object v5, v5, Lcom/cyjh/mq/c/b;->i:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;

    if-nez v6, :cond_162

    iget-object v3, v3, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    iput-boolean v2, v3, Lcom/cyjh/mq/c/b;->d:Z

    :cond_162
    if-eqz v5, :cond_8

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getFileData()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-interface {v5, v4, v1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;->onScreenShotDone(Ljava/lang/String;Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_8

    :sswitch_16d
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v4, :cond_8

    invoke-interface {v4, v1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;->onFinishRecord(Ljava/lang/String;)V

    goto/16 :goto_8

    :sswitch_178
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    if-eqz v4, :cond_8

    invoke-interface {v4, v1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;->onStartRecord(I)V

    goto/16 :goto_8

    :sswitch_183
    if-eqz v4, :cond_8

    invoke-interface {v4}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;->onOpenRecord()V

    goto/16 :goto_8

    :sswitch_18a
    new-instance v4, Lcom/cyjh/mq/b/a$a;

    invoke-direct {v4}, Lcom/cyjh/mq/b/a$a;-><init>()V

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v5

    iput v5, v4, Lcom/cyjh/mq/b/a$a;->a:I

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v5

    iput v5, v4, Lcom/cyjh/mq/b/a$a;->b:I

    invoke-virtual {v1, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    if-eqz v1, :cond_1a3

    const/4 v1, 0x1

    goto :goto_1a4

    :cond_1a3
    const/4 v1, 0x0

    :goto_1a4
    iput-boolean v1, v4, Lcom/cyjh/mq/b/a$a;->c:Z

    new-instance v1, Lcom/cyjh/mq/b/a;

    invoke-direct {v1, v4, v2}, Lcom/cyjh/mq/b/a;-><init>(Lcom/cyjh/mq/b/a$a;B)V

    iget-object v2, v3, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    iput-object v1, v2, Lcom/cyjh/mq/c/b;->f:Lcom/cyjh/mq/b/a;

    iget-object v1, v3, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    new-instance v2, Lcom/cyjh/mq/c/b$2;

    invoke-direct {v2, v1}, Lcom/cyjh/mq/c/b$2;-><init>(Lcom/cyjh/mq/c/b;)V

    invoke-virtual {v2}, Lcom/cyjh/mq/c/b$2;->start()V

    goto/16 :goto_8

    :pswitch_1bb
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg3(I)F

    move-result v3

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg3(I)F

    move-result v4

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    invoke-static {v3, v4, v1}, Lcom/cyjh/event/Injector;->TapAB(FFI)V

    goto/16 :goto_8

    :pswitch_1cc
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg3(I)F

    move-result v3

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg3(I)F

    move-result v4

    invoke-virtual {v1, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg3(I)F

    move-result v5

    invoke-virtual {v1, v6}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg3(I)F

    move-result v6

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    invoke-static {v3, v4, v5, v6, v1}, Lcom/cyjh/event/Injector;->SwipeAB(FFFFI)V

    goto/16 :goto_8

    :pswitch_1e5
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyjh/event/Injector;->dispatchGestureMoveAB(Ljava/lang/String;)V

    :pswitch_1ec
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/event/Injector;->sendTextAB(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_1f5
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    invoke-static {v1}, Lcom/cyjh/event/Injector;->KeyPressAB(I)V

    goto/16 :goto_8

    :pswitch_1fe
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    if-ne v1, v0, :cond_8

    iget-object v1, v3, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/cyjh/mq/d/c;->a(Landroid/content/Context;)V

    goto/16 :goto_8

    :pswitch_20b
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    invoke-static {v3, v4, v1}, Lcom/cyjh/mq/c/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_8

    :pswitch_21c
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    iget-object v1, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/a;->k()V

    goto/16 :goto_8

    :pswitch_226
    iget-object v2, v3, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v3, 0x17

    goto/16 :goto_48a

    :pswitch_22c
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2Bytes(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v5

    invoke-virtual {v1, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    invoke-virtual {v3, v4, v2, v5, v1}, Lcom/cyjh/mq/c/d;->a(Lcom/google/protobuf/ByteString;III)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET_OCR_TEXT"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "strOrcText:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v2

    const/16 v4, 0x6d

    goto :goto_284

    :pswitch_25a
    iget-object v1, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v2

    const/16 v4, 0x6c

    goto :goto_284

    :pswitch_267
    iget-object v4, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/cyjh/mobileanjian/ipc/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v2

    const/16 v4, 0x6b

    goto :goto_284

    :pswitch_278
    iget-object v1, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v2

    const/16 v4, 0x6a

    :goto_284
    invoke-virtual {v2, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v1

    :goto_290
    iget-object v2, v3, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    invoke-virtual {v2, v1}, Lcom/cyjh/mq/c/b;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    goto/16 :goto_8

    :pswitch_297
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    if-ne v1, v0, :cond_29e

    const/4 v2, 0x1

    :cond_29e
    iget-object v1, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    iget-object v3, v1, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "state"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, v1, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_8

    :pswitch_2be
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    if-ne v1, v0, :cond_2c5

    const/4 v2, 0x1

    :cond_2c5
    iget-object v1, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    xor-int/2addr v2, v0

    iget-object v1, v1, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "accelerometer_rotation"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    :pswitch_2d5
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    if-ne v1, v0, :cond_2dc

    const/4 v2, 0x1

    :cond_2dc
    iget-object v1, v3, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto/16 :goto_8

    :pswitch_2eb
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "_data like \""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v3, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4, v1, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v2, v3, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_8

    :pswitch_31a
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, v3, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "title"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "_display_name"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mime_type"

    const-string v6, "video/3gp"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "_data"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "_size"

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v1, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, v3, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_8

    :pswitch_39b
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "InsertImageToGallery"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "InsertImageToGallery:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    if-ge v6, v7, :cond_3e0

    :try_start_3c9
    iget-object v1, v3, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v4, v6, v10}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3da
    .catch Ljava/io/FileNotFoundException; {:try_start_3c9 .. :try_end_3da} :catch_3db

    goto :goto_442

    :catch_3db
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_442

    :cond_3e0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "_display_name"

    invoke-virtual {v6, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "mime_type"

    const-string v8, "image/jpeg"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "relative_path"

    sget-object v8, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v3, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    if-nez v6, :cond_423

    const-string v2, "InsertImageToGallery"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\u56fe\u7247\u4fdd\u5b58\u5931\u8d25:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_423
    :try_start_423
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v7, v6}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_43d
    .catch Ljava/io/IOException; {:try_start_423 .. :try_end_43d} :catch_43e

    goto :goto_442

    :catch_43e
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_442
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v9, :cond_455

    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    iget-object v2, v3, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-static {v2, v1, v10, v10}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto/16 :goto_8

    :cond_455
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v2, v3, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_8

    :pswitch_46a
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v4, 0x16

    goto/16 :goto_81

    :pswitch_470
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v4, 0x14

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_502

    :pswitch_47a
    iget-object v2, v3, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/4 v3, 0x7

    goto :goto_48a

    :pswitch_47e
    iget-object v2, v3, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/4 v3, 0x6

    goto :goto_48a

    :pswitch_482
    iget-object v2, v3, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v3, 0x12

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getFileData()Lcom/google/protobuf/ByteString;

    move-result-object v1

    :goto_48a
    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    goto/16 :goto_59a

    :pswitch_490
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/cyjh/mobileanjian/ipc/a;->e(I)V

    goto/16 :goto_8

    :pswitch_49b
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/cyjh/mobileanjian/ipc/a;->d(I)V

    goto/16 :goto_8

    :pswitch_4a6
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/cyjh/mobileanjian/ipc/a;->c(I)V

    goto/16 :goto_8

    :pswitch_4b1
    iget-object v1, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/a;->h()V

    goto/16 :goto_8

    :pswitch_4b8
    iget-object v1, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/a;->g()V

    goto/16 :goto_8

    :pswitch_4bf
    iget-object v1, v3, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/utils/d;->a(Landroid/content/Context;)V

    goto/16 :goto_8

    :pswitch_4c6
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/cyjh/mobileanjian/ipc/utils/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_4d1
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v4, v1}, Lcom/cyjh/mobileanjian/ipc/utils/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_8

    :pswitch_4e4
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/a;->f()V

    goto/16 :goto_8

    :pswitch_4e9
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    iget-object v3, v3, Lcom/cyjh/mq/c/b;->s:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRpcCallback;

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRpcCallback;->onRpcReturn(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_4f6
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v4, 0x18

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_502
    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    goto/16 :goto_59a

    :pswitch_508
    iget-object v1, v3, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v2, 0x9

    goto/16 :goto_603

    :pswitch_50e
    iget-object v1, v3, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v2, 0x8

    goto/16 :goto_603

    :pswitch_514
    iget-object v1, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/a;->e()V

    goto/16 :goto_8

    :pswitch_51b
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg3(I)F

    move-result v5

    mul-float v5, v5, v4

    float-to-int v4, v5

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v8, v4, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    goto :goto_59a

    :pswitch_537
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/cyjh/mobileanjian/ipc/a;->b(Ljava/lang/String;)Z

    goto/16 :goto_8

    :pswitch_542
    iget-object v4, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v4, Lcom/cyjh/mobileanjian/ipc/a;->b:Lcom/ime/input/a;

    iget-object v4, v2, Lcom/ime/input/a;->a:Landroid/inputmethodservice/InputMethodService;

    if-eqz v4, :cond_55d

    iget-object v2, v2, Lcom/ime/input/a;->a:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    if-eqz v2, :cond_55d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {v2, v1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_55d
    iget-object v1, v3, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    const/16 v2, 0x26

    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/b;->a(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cyjh/mq/c/b;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    goto/16 :goto_8

    :pswitch_56a
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/cyjh/mobileanjian/ipc/a;->b(I)V

    goto/16 :goto_8

    :pswitch_575
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/cyjh/mobileanjian/ipc/a;->a(Ljava/lang/String;)Z

    goto/16 :goto_8

    :pswitch_580
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/a;->c(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_589
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/cyjh/mobileanjian/ipc/a;->a(I)V

    goto/16 :goto_8

    :pswitch_594
    iget-object v2, v3, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    invoke-virtual {v2, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    :goto_59a
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_8

    :pswitch_59f
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    iget-object v3, v3, Lcom/cyjh/mq/c/b;->j:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;

    if-eqz v3, :cond_8

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;->onTracePrint(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_5ae
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v4

    shl-int/2addr v2, v8

    or-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v3, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    iget-object v3, v3, Lcom/cyjh/mq/c/b;->p:Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getFileData()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;->onScreenShotDone(Ljava/lang/String;Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_8

    :pswitch_5cb
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    iget-object v3, v3, Lcom/cyjh/mq/c/b;->p:Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;

    if-eqz v3, :cond_8

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;->onUiElementback(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_5da
    iget-object v4, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v4}, Lcom/cyjh/mobileanjian/ipc/a;->a()V

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/a;->f()V

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v4

    iget-object v5, v3, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    iput-boolean v2, v5, Lcom/cyjh/mq/c/b;->e:Z

    const/16 v5, 0x69

    if-eq v4, v5, :cond_5f0

    if-nez v4, :cond_5f5

    :cond_5f0
    sget v5, Lcom/cyjh/mqsdk/R$string;->toast_on_stop_script:I

    invoke-virtual {v3, v5}, Lcom/cyjh/mq/c/d;->a(I)V

    :cond_5f5
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v6, v4, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    goto :goto_59a

    :pswitch_600
    iget-object v1, v3, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/4 v2, 0x4

    :goto_603
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_8

    :pswitch_608
    iget-object v1, v3, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    iput-boolean v0, v1, Lcom/cyjh/mq/c/b;->e:Z

    sget v1, Lcom/cyjh/mqsdk/R$string;->toast_on_start_script:I

    invoke-virtual {v3, v1}, Lcom/cyjh/mq/c/d;->a(I)V

    iget-object v1, v3, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_8

    :cond_618
    iput-boolean v2, p0, Lcom/cyjh/mq/c/b;->b:Z

    return-void

    nop

    :pswitch_data_61c
    .packed-switch 0x4
        :pswitch_608
        :pswitch_600
        :pswitch_5da
    .end packed-switch

    :pswitch_data_626
    .packed-switch 0x1b
        :pswitch_5cb
        :pswitch_5ae
    .end packed-switch

    :pswitch_data_62e
    .packed-switch 0x20
        :pswitch_59f
        :pswitch_594
        :pswitch_589
        :pswitch_580
        :pswitch_575
        :pswitch_56a
        :pswitch_542
        :pswitch_537
        :pswitch_51b
        :pswitch_514
        :pswitch_50e
        :pswitch_508
        :pswitch_4f6
    .end packed-switch

    :pswitch_data_64c
    .packed-switch 0x32
        :pswitch_4e9
        :pswitch_4e4
        :pswitch_4d1
        :pswitch_4c6
        :pswitch_4bf
        :pswitch_4b8
        :pswitch_4b1
        :pswitch_4a6
        :pswitch_49b
        :pswitch_490
    .end packed-switch

    :pswitch_data_664
    .packed-switch 0x40
        :pswitch_482
        :pswitch_8
        :pswitch_47e
        :pswitch_47a
    .end packed-switch

    :pswitch_data_670
    .packed-switch 0x62
        :pswitch_470
        :pswitch_46a
        :pswitch_39b
        :pswitch_31a
        :pswitch_2eb
        :pswitch_2d5
        :pswitch_2be
        :pswitch_297
        :pswitch_278
        :pswitch_267
        :pswitch_25a
        :pswitch_22c
        :pswitch_226
        :pswitch_21c
        :pswitch_20b
        :pswitch_1fe
    .end packed-switch

    :pswitch_data_694
    .packed-switch 0x110
        :pswitch_1f5
        :pswitch_1e5
        :pswitch_1ec
        :pswitch_1cc
        :pswitch_1bb
    .end packed-switch

    :sswitch_data_6a2
    .sparse-switch
        0xe -> :sswitch_18a
        0x13 -> :sswitch_183
        0x15 -> :sswitch_178
        0x17 -> :sswitch_16d
        0x19 -> :sswitch_146
        0x30 -> :sswitch_8f
        0x51 -> :sswitch_7d
        0x60 -> :sswitch_6d
        0x81 -> :sswitch_5f
        0x101 -> :sswitch_51
        0xffff -> :sswitch_4b
    .end sparse-switch

    :pswitch_data_6d0
    .packed-switch 0x1
        :pswitch_11f
        :pswitch_115
        :pswitch_10b
        :pswitch_101
        :pswitch_f7
        :pswitch_ec
    .end packed-switch
.end method

.method public final c()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mq/c/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyjh/mobileanjian/ipc/interfaces/EngineStateObserver;

    invoke-interface {v1}, Lcom/cyjh/mobileanjian/ipc/interfaces/EngineStateObserver;->onExit()V

    goto :goto_6

    :cond_16
    return-void
.end method
