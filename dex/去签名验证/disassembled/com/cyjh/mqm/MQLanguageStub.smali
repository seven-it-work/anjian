.class public Lcom/cyjh/mqm/MQLanguageStub;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;
    }
.end annotation


# static fields
.field public static final SCRIPT_COMPILECODE_SUCCEED:I = 0x0

.field public static final SCRIPT_RUNCODE_SUCCEED:I = 0x0

.field public static final TYPE:I = 0x2


# instance fields
.field private volatile a:J

.field private volatile b:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "mqm"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cyjh/mqm/MQLanguageStub;->a:J

    iput-wide v0, p0, Lcom/cyjh/mqm/MQLanguageStub;->b:J

    return-void
.end method

.method public static native InitAnjianVerification(Ljava/lang/String;)V
.end method

.method public static native InitElf(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native InitHost(Ljava/lang/String;)V
.end method

.method public static native QuitApp()V
.end method

.method public static native SetHeartBeatTime(II)V
.end method

.method public static native SetIsAccessibility(Z)V
.end method

.method public static native SetRegCode(Ljava/lang/String;)V
.end method


# virtual methods
.method public native Compile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public native Debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public DebugMessage([B)[B
    .registers 2

    invoke-static {}, Lcom/cyjh/event/a;->a()[B

    move-result-object p1

    return-object p1
.end method

.method public native InitRunner(Landroid/app/Application;Ljava/lang/String;)V
.end method

.method public native Pause()I
.end method

.method public native Request(Ljava/lang/String;)V
.end method

.method public native Resume()I
.end method

.method public native Run(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;)I
.end method

.method public native Run(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)I
.end method

.method public native Run([BLjava/lang/String;Ljava/lang/String;)I
.end method

.method public native Run([BLjava/lang/String;Ljava/lang/String;IIJ)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native SendFloatEvent([B)V
.end method

.method public native SetDeviceSessionId(Ljava/lang/String;)V
.end method

.method public native SetLocalDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native SetProcess(Ljava/lang/String;)V
.end method

.method public native SetSid(J)V
.end method

.method public native SetWriteLog2File(Z)V
.end method

.method public native Stop()I
.end method

.method public declared-synchronized getGundamRunner()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/cyjh/mqm/MQLanguageStub;->a:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRunner()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/cyjh/mqm/MQLanguageStub;->b:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGundamRunner(J)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/cyjh/mqm/MQLanguageStub;->a:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRunner(J)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/cyjh/mqm/MQLanguageStub;->b:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method
