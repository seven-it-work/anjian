.class public Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/os/Handler;

.field private static b:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;->c:Ljava/util/concurrent/ArrayBlockingQueue;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetUiEvent()[B
    .registers 2

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;->c:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-object v1
.end method

.method public static SendUiRequest([B)[B
    .registers 4

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;->a:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :try_start_16
    sget-object p0, Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p0
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_22} :catch_23

    return-object p0

    :catch_23
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-object v1
.end method

.method public static UiRequestReturn(Lcom/google/protobuf/ByteString;)V
    .registers 2

    :try_start_0
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void
.end method

.method private static a()Z
    .registers 2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public static clear()V
    .registers 1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;->c:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    return-void
.end method

.method public static hasEvent(Lcom/google/protobuf/ByteString;)V
    .registers 3

    :try_start_0
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;->c:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v0

    const/16 v1, 0x100

    if-ge v0, v1, :cond_f

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;->c:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_f} :catch_10

    :cond_f
    return-void

    :catch_10
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void
.end method

.method public static registerHandler(Landroid/os/Handler;)V
    .registers 1

    sput-object p0, Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;->a:Landroid/os/Handler;

    return-void
.end method
