.class public Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;

.field private static b:Z


# instance fields
.field private c:Lcom/cyjh/mqm/MQUipStub;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cyjh/mqm/MQUipStub;

    invoke-direct {v0}, Lcom/cyjh/mqm/MQUipStub;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->c:Lcom/cyjh/mqm/MQUipStub;

    return-void
.end method

.method static synthetic a(Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;)Lcom/cyjh/mqm/MQUipStub;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->c:Lcom/cyjh/mqm/MQUipStub;

    return-object p0
.end method

.method private static a()V
    .registers 2

    const-wide/16 v0, 0x32

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void
.end method

.method static synthetic a(Z)Z
    .registers 1

    sput-boolean p0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->b:Z

    return p0
.end method

.method public static getInstance()Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;
    .registers 1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->a:Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;

    if-nez v0, :cond_b

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;

    invoke-direct {v0}, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;-><init>()V

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->a:Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;

    :cond_b
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->a:Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;

    return-object v0
.end method


# virtual methods
.method public startLoop(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget-boolean v0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->b:Z

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->stopLoop()V

    :goto_7
    sget-boolean v0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->b:Z

    if-eqz v0, :cond_16

    const-wide/16 v0, 0x32

    :try_start_d
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_7

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7

    :cond_16
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner$1;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner$1;->start()V

    return-void
.end method

.method public stopLoop()V
    .registers 4

    sget-boolean v0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->b:Z

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->c:Lcom/cyjh/mqm/MQUipStub;

    invoke-virtual {v0}, Lcom/cyjh/mqm/MQUipStub;->StopLoop()Z

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    const-string v1, "stop_id"

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_CLOSE_EXIT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object v1

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;->hasEvent(Lcom/google/protobuf/ByteString;)V

    :cond_3b
    return-void
.end method
