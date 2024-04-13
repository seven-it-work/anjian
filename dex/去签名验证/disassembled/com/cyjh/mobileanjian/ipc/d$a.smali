.class public final Lcom/cyjh/mobileanjian/ipc/d$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mobileanjian/ipc/d;


# direct methods
.method private constructor <init>(Lcom/cyjh/mobileanjian/ipc/d;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/d$a;->a:Lcom/cyjh/mobileanjian/ipc/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyjh/mobileanjian/ipc/d;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/d$a;-><init>(Lcom/cyjh/mobileanjian/ipc/d;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/d$a;->a:Lcom/cyjh/mobileanjian/ipc/d;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "su"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    iput-object v1, v0, Lcom/cyjh/mobileanjian/ipc/d;->g:Ljava/lang/Process;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/d$a;->a:Lcom/cyjh/mobileanjian/ipc/d;

    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/d$a;->a:Lcom/cyjh/mobileanjian/ipc/d;

    iget-object v2, v2, Lcom/cyjh/mobileanjian/ipc/d;->g:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, v0, Lcom/cyjh/mobileanjian/ipc/d;->e:Ljava/io/DataOutputStream;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/d$a;->a:Lcom/cyjh/mobileanjian/ipc/d;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/d$a;->a:Lcom/cyjh/mobileanjian/ipc/d;

    iget-object v1, v1, Lcom/cyjh/mobileanjian/ipc/d;->g:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, v0, Lcom/cyjh/mobileanjian/ipc/d;->f:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/d$a;->a:Lcom/cyjh/mobileanjian/ipc/d;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/d;->e:Ljava/io/DataOutputStream;

    const-string v1, "echo \"rootOK\"\n"

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/d$a;->a:Lcom/cyjh/mobileanjian/ipc/d;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/d;->e:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/d$a;->a:Lcom/cyjh/mobileanjian/ipc/d;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/d$a;->a:Lcom/cyjh/mobileanjian/ipc/d;

    iget-object v1, v1, Lcom/cyjh/mobileanjian/ipc/d;->g:Ljava/lang/Process;

    new-instance v2, Lcom/cyjh/mobileanjian/ipc/d$1;

    const-string v3, ""

    invoke-direct {v2, v0, v3, v1}, Lcom/cyjh/mobileanjian/ipc/d$1;-><init>(Lcom/cyjh/mobileanjian/ipc/d;Ljava/lang/String;Ljava/lang/Process;)V

    new-instance v1, Lcom/cyjh/mobileanjian/ipc/d$2;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/cyjh/mobileanjian/ipc/d$2;-><init>(Lcom/cyjh/mobileanjian/ipc/d;Ljava/lang/String;Z)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_53} :catch_84

    :try_start_53
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_56
    .catch Ljava/lang/InterruptedException; {:try_start_53 .. :try_end_56} :catch_57
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_84

    goto :goto_5b

    :catch_57
    move-exception v1

    :try_start_58
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_5b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "go straight here, mRoot = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/cyjh/mobileanjian/ipc/d;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/cyjh/mobileanjian/ipc/d;->d:Z

    if-nez v1, :cond_83

    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/d;->g:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/d;->b:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;

    if-eqz v1, :cond_79

    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/d;->b:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;

    invoke-interface {v1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;->onRefused()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_79} :catch_84

    :cond_79
    :try_start_79
    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/d;->e:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7e} :catch_7f

    return-void

    :catch_7f
    move-exception v0

    :try_start_80
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84

    :cond_83
    return-void

    :catch_84
    move-exception v0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/d$a;->a:Lcom/cyjh/mobileanjian/ipc/d;

    iget-object v1, v1, Lcom/cyjh/mobileanjian/ipc/d;->g:Ljava/lang/Process;

    if-eqz v1, :cond_92

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/d$a;->a:Lcom/cyjh/mobileanjian/ipc/d;

    iget-object v1, v1, Lcom/cyjh/mobileanjian/ipc/d;->g:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_92
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/d$a;->a:Lcom/cyjh/mobileanjian/ipc/d;

    iget-object v1, v1, Lcom/cyjh/mobileanjian/ipc/d;->b:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;

    if-eqz v1, :cond_9f

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/d$a;->a:Lcom/cyjh/mobileanjian/ipc/d;

    iget-object v1, v1, Lcom/cyjh/mobileanjian/ipc/d;->b:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;

    invoke-interface {v1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;->onRefused()V

    :cond_9f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method
