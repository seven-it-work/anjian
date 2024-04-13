.class public abstract Lcom/cyjh/mq/sdk/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/interfaces/EngineStateObserver;
.implements Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;
.implements Lcom/cyjh/mq/sdk/inf/IRunner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mq/sdk/a$a;
    }
.end annotation


# static fields
.field protected static final a:I = 0x100


# instance fields
.field protected b:Lcom/cyjh/mq/c/b;

.field protected c:Lcom/cyjh/mq/sdk/entity/Script4Run;

.field protected d:Landroid/os/Handler;

.field protected e:Z

.field protected f:Z

.field private g:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/mq/sdk/a;->b:Lcom/cyjh/mq/c/b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/mq/sdk/a;->e:Z

    iput-boolean v0, p0, Lcom/cyjh/mq/sdk/a;->h:Z

    iput-boolean v0, p0, Lcom/cyjh/mq/sdk/a;->f:Z

    new-instance v0, Lcom/cyjh/mq/sdk/a$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mq/sdk/a$1;-><init>(Lcom/cyjh/mq/sdk/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cyjh/mq/sdk/a;->d:Landroid/os/Handler;

    return-void
.end method

.method private a(Lcom/cyjh/mq/sdk/entity/Script4Run;)V
    .registers 5

    new-instance v0, Lcom/cyjh/mq/sdk/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mq/sdk/a$a;-><init>(Lcom/cyjh/mq/sdk/a;B)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/cyjh/mq/sdk/entity/Script4Run;

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Lcom/cyjh/mq/sdk/a$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V
    .registers 3

    iget-boolean v0, p0, Lcom/cyjh/mq/sdk/a;->e:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/cyjh/mq/sdk/a;->b:Lcom/cyjh/mq/c/b;

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/c/b;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    :cond_9
    return-void
.end method

.method public final a(Lcom/google/protobuf/ByteString;)V
    .registers 4

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setFileData(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cyjh/mq/sdk/a;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method

.method public final b(Lcom/google/protobuf/ByteString;)V
    .registers 4

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setFileData(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cyjh/mq/sdk/a;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method

.method protected final c()V
    .registers 5

    iget-boolean v0, p0, Lcom/cyjh/mq/sdk/a;->h:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/mq/sdk/a;->h:Z

    invoke-static {}, Lcom/cyjh/mq/a/a;->a()Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/d;->a()Lcom/cyjh/mobileanjian/ipc/d;

    move-result-object v1

    const-string v2, "setenforce 0"

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/d;->a(Ljava/lang/String;)Z

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/d;->a()Lcom/cyjh/mobileanjian/ipc/d;

    move-result-object v1

    const-string v2, "chmod 677 /dev/input/*"

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/d;->a(Ljava/lang/String;)Z

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/d;->a()Lcom/cyjh/mobileanjian/ipc/d;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/d;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/cyjh/mq/sdk/a;->d:Landroid/os/Handler;

    const/16 v1, 0x100

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final c(Lcom/google/protobuf/ByteString;)V
    .registers 4

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    const/16 v1, 0x104

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setFileData(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cyjh/mq/sdk/a;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    const/16 v1, 0x105

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cyjh/mq/sdk/a;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method

.method public isScriptStarted()Z
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mq/sdk/a;->b:Lcom/cyjh/mq/c/b;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/cyjh/mq/sdk/a;->b:Lcom/cyjh/mq/c/b;

    iget-boolean v0, v0, Lcom/cyjh/mq/c/b;->e:Z

    return v0
.end method

.method public notifyRotationStatus()V
    .registers 4

    sget-object v0, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg1(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mq/sdk/a;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method

.method public onConnected(Lcom/cyjh/mq/c/b;)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/mq/sdk/a;->d:Landroid/os/Handler;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/mq/sdk/a;->e:Z

    iput-object p1, p0, Lcom/cyjh/mq/sdk/a;->b:Lcom/cyjh/mq/c/b;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cyjh/mq/sdk/a;->h:Z

    iget-object p1, p0, Lcom/cyjh/mq/sdk/a;->g:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    invoke-virtual {p0, p1}, Lcom/cyjh/mq/sdk/a;->setOnScriptListener(Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;)Lcom/cyjh/mq/sdk/inf/IRunner;

    return-void
.end method

.method public onObtained()V
    .registers 4

    const-string v0, "JAVA_RUNNER"

    const-string v1, "onObtained()1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RootUtil;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/cyjh/mq/sdk/a;->d:Landroid/os/Handler;

    const/4 v1, 0x6

    const-string v2, "ROOT SUCCESS"

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_19
    invoke-virtual {p0}, Lcom/cyjh/mq/sdk/a;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/mq/sdk/a;->f:Z

    return-void
.end method

.method public onRefused()V
    .registers 4

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RootUtil;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/cyjh/mq/sdk/a;->d:Landroid/os/Handler;

    const/4 v1, 0x4

    const-string v2, "User refused root."

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/mq/sdk/a;->f:Z

    return-void
.end method

.method public pause()V
    .registers 2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/b;->a(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mq/sdk/a;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method

.method public resume()V
    .registers 2

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/b;->a(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mq/sdk/a;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method

.method public setOnScriptListener(Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;)Lcom/cyjh/mq/sdk/inf/IRunner;
    .registers 3

    iput-object p1, p0, Lcom/cyjh/mq/sdk/a;->g:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    iget-object p1, p0, Lcom/cyjh/mq/sdk/a;->b:Lcom/cyjh/mq/c/b;

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/cyjh/mq/sdk/a;->b:Lcom/cyjh/mq/c/b;

    iget-object v0, p0, Lcom/cyjh/mq/sdk/a;->g:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    iput-object v0, p1, Lcom/cyjh/mq/c/b;->l:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    :cond_c
    return-object p0
.end method

.method public setScript(Lcom/cyjh/mq/sdk/entity/Script4Run;)Lcom/cyjh/mq/sdk/inf/IRunner;
    .registers 3

    iput-object p1, p0, Lcom/cyjh/mq/sdk/a;->c:Lcom/cyjh/mq/sdk/entity/Script4Run;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/cyjh/mq/sdk/entity/Script4Run;->toMessage(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cyjh/mq/sdk/a;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-object p0
.end method

.method public stop()V
    .registers 3

    const-string v0, "JAVA_RUNNER"

    const-string v1, "GeneralMqRunner stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/b;->a(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mq/sdk/a;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method
