.class public final Lcom/cyjh/mobileanjian/ipc/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mobileanjian/ipc/d$a;
    }
.end annotation


# static fields
.field public static a:Lcom/cyjh/mobileanjian/ipc/d; = null

.field private static final h:Ljava/lang/String; = "echo \"rootOK\"\n"


# instance fields
.field b:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;

.field public c:Lcom/cyjh/mobileanjian/ipc/d$a;

.field public d:Z

.field public e:Ljava/io/DataOutputStream;

.field f:Ljava/io/InputStream;

.field g:Ljava/lang/Process;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/d;->b:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/d;->c:Lcom/cyjh/mobileanjian/ipc/d$a;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cyjh/mobileanjian/ipc/d;->d:Z

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/d;->e:Ljava/io/DataOutputStream;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/d;->f:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/d;->g:Ljava/lang/Process;

    return-void
.end method

.method public static declared-synchronized a()Lcom/cyjh/mobileanjian/ipc/d;
    .registers 2

    const-class v0, Lcom/cyjh/mobileanjian/ipc/d;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/cyjh/mobileanjian/ipc/d;->a:Lcom/cyjh/mobileanjian/ipc/d;

    if-nez v1, :cond_e

    new-instance v1, Lcom/cyjh/mobileanjian/ipc/d;

    invoke-direct {v1}, Lcom/cyjh/mobileanjian/ipc/d;-><init>()V

    sput-object v1, Lcom/cyjh/mobileanjian/ipc/d;->a:Lcom/cyjh/mobileanjian/ipc/d;

    :cond_e
    sget-object v1, Lcom/cyjh/mobileanjian/ipc/d;->a:Lcom/cyjh/mobileanjian/ipc/d;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static synthetic a(Lcom/cyjh/mobileanjian/ipc/d;Ljava/io/DataOutputStream;)Ljava/io/DataOutputStream;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/d;->e:Ljava/io/DataOutputStream;

    return-object p1
.end method

.method private static synthetic a(Lcom/cyjh/mobileanjian/ipc/d;Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/d;->f:Ljava/io/InputStream;

    return-object p1
.end method

.method private static synthetic a(Lcom/cyjh/mobileanjian/ipc/d;)Ljava/lang/Process;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/d;->g:Ljava/lang/Process;

    return-object p0
.end method

.method private static synthetic a(Lcom/cyjh/mobileanjian/ipc/d;Ljava/lang/Process;)Ljava/lang/Process;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/d;->g:Ljava/lang/Process;

    return-object p1
.end method

.method private a(Ljava/lang/Process;Z)V
    .registers 5

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/d$1;

    const-string v1, ""

    invoke-direct {v0, p0, v1, p1}, Lcom/cyjh/mobileanjian/ipc/d$1;-><init>(Lcom/cyjh/mobileanjian/ipc/d;Ljava/lang/String;Ljava/lang/Process;)V

    new-instance p1, Lcom/cyjh/mobileanjian/ipc/d$2;

    const-string v1, ""

    invoke-direct {p1, p0, v1, p2}, Lcom/cyjh/mobileanjian/ipc/d$2;-><init>(Lcom/cyjh/mobileanjian/ipc/d;Ljava/lang/String;Z)V

    if-eqz p2, :cond_13

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_13
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    if-eqz p2, :cond_1f

    :try_start_18
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1b
    invoke-virtual {p1}, Ljava/lang/Thread;->join()V

    goto :goto_27

    :cond_1f
    invoke-virtual {p1}, Ljava/lang/Thread;->join()V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_27
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "go straight here, mRoot = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/cyjh/mobileanjian/ipc/d;->d:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/d;->d:Z

    if-nez p1, :cond_4f

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/d;->g:Ljava/lang/Process;

    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/d;->b:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;

    if-eqz p1, :cond_45

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/d;->b:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;

    invoke-interface {p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;->onRefused()V

    :cond_45
    :try_start_45
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/d;->e:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4a} :catch_4b

    return-void

    :catch_4b
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4f
    return-void
.end method

.method private static synthetic b(Lcom/cyjh/mobileanjian/ipc/d;)Ljava/io/DataOutputStream;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/d;->e:Ljava/io/DataOutputStream;

    return-object p0
.end method

.method private static synthetic b(Lcom/cyjh/mobileanjian/ipc/d;Ljava/lang/Process;)V
    .registers 4

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/d$1;

    const-string v1, ""

    invoke-direct {v0, p0, v1, p1}, Lcom/cyjh/mobileanjian/ipc/d$1;-><init>(Lcom/cyjh/mobileanjian/ipc/d;Ljava/lang/String;Ljava/lang/Process;)V

    new-instance p1, Lcom/cyjh/mobileanjian/ipc/d$2;

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/cyjh/mobileanjian/ipc/d$2;-><init>(Lcom/cyjh/mobileanjian/ipc/d;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :try_start_12
    invoke-virtual {p1}, Ljava/lang/Thread;->join()V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "go straight here, mRoot = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/d;->d:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/d;->d:Z

    if-nez p1, :cond_42

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/d;->g:Ljava/lang/Process;

    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/d;->b:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;

    if-eqz p1, :cond_38

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/d;->b:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;

    invoke-interface {p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;->onRefused()V

    :cond_38
    :try_start_38
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/d;->e:Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/io/DataOutputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3d} :catch_3e

    return-void

    :catch_3e
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_42
    return-void
.end method

.method private b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/d;->d:Z

    return v0
.end method

.method private static synthetic c(Lcom/cyjh/mobileanjian/ipc/d;)Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/d;->b:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;

    return-object p0
.end method

.method private c()V
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/d;->d:Z

    if-eqz v0, :cond_20

    const-string v0, "exit"

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/d;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/d;->c:Lcom/cyjh/mobileanjian/ipc/d$a;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/d$a;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/d;->c:Lcom/cyjh/mobileanjian/ipc/d$a;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/d$a;->interrupt()V

    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/d;->e:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_20
    :goto_20
    const/4 v0, 0x0

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/d;->a:Lcom/cyjh/mobileanjian/ipc/d;

    return-void
.end method

.method private static synthetic d(Lcom/cyjh/mobileanjian/ipc/d;)Ljava/io/InputStream;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/d;->f:Ljava/io/InputStream;

    return-object p0
.end method

.method private d()V
    .registers 3

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/d$a;-><init>(Lcom/cyjh/mobileanjian/ipc/d;B)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/d;->c:Lcom/cyjh/mobileanjian/ipc/d$a;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/d;->c:Lcom/cyjh/mobileanjian/ipc/d$a;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/d$a;->start()V

    return-void
.end method

.method private static synthetic e(Lcom/cyjh/mobileanjian/ipc/d;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/d;->d:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;)V
    .registers 3

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/d;->d:Z

    if-eqz v0, :cond_8

    invoke-interface {p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;->onObtained()V

    return-void

    :cond_8
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/d;->b:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;

    new-instance p1, Lcom/cyjh/mobileanjian/ipc/d$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/cyjh/mobileanjian/ipc/d$a;-><init>(Lcom/cyjh/mobileanjian/ipc/d;B)V

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/d;->c:Lcom/cyjh/mobileanjian/ipc/d$a;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/d;->c:Lcom/cyjh/mobileanjian/ipc/d$a;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/d$a;->start()V

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/d;->d:Z

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/d;->e:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/d;->e:Ljava/io/DataOutputStream;

    const-string v0, "\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/d;->e:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1f} :catch_20

    goto :goto_24

    :catch_20
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_24
    const/4 p1, 0x1

    return p1
.end method
