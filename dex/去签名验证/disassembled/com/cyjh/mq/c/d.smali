.class public final Lcom/cyjh/mq/c/d;
.super Ljava/lang/Object;


# static fields
.field private static final h:I = 0x1

.field private static final i:I = 0x2

.field private static final j:I = 0x3

.field private static final k:I = 0x4

.field private static final l:I = 0x5

.field private static final m:I = 0xa

.field private static final n:I = 0x6

.field private static final o:I = 0x7

.field private static final p:I = 0x8

.field private static final q:I = 0x9

.field private static final r:I = 0x10

.field private static final s:I = 0x11

.field private static final t:I = 0x12

.field private static final u:I = 0x13

.field private static final v:I = 0x14

.field private static final w:I = 0x15

.field private static final x:I = 0x16

.field private static final y:I = 0x17

.field private static final z:I = 0x18


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/cyjh/mobileanjian/ipc/a;

.field c:Lcom/cyjh/mq/c/b;

.field d:Lcom/cyjh/mobileanjian/ipc/ui/h;

.field e:Landroid/os/Handler;

.field private f:Lcom/googlecode/tesseract/android/TessBaseAPI;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cyjh/mq/c/b;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    iput-object v0, p0, Lcom/cyjh/mq/c/d;->f:Lcom/googlecode/tesseract/android/TessBaseAPI;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/mq/c/d;->g:Z

    new-instance v0, Lcom/cyjh/mq/c/d$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mq/c/d$1;-><init>(Lcom/cyjh/mq/c/d;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    iput-object p1, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    new-instance p1, Lcom/cyjh/mobileanjian/ipc/ui/h;

    iget-object v0, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/cyjh/mq/c/d;->d:Lcom/cyjh/mobileanjian/ipc/ui/h;

    new-instance p1, Lcom/cyjh/mobileanjian/ipc/a;

    iget-object v0, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/cyjh/mobileanjian/ipc/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    iput-object p2, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    iget-object p1, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p1, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v1, p0, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/a;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/a;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v3}, Lcom/cyjh/mobileanjian/ipc/a;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v5, Lcom/ime/input/InputKb;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v1, :cond_9f

    const-string v1, "UNKNOW"

    :cond_9f
    if-nez v2, :cond_a3

    const-string v2, "UNKNOW"

    :cond_a3
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_b6

    :try_start_ae
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_b2

    goto :goto_b6

    :catch_b2
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    :cond_b6
    :goto_b6
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v7

    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg1(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg1(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg1(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    iget-object p1, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    invoke-virtual {v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cyjh/mq/c/b;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method

.method private static synthetic a(Lcom/cyjh/mq/c/d;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    return-object p0
.end method

.method private a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez v2, :cond_7

    return-void

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handMessage msg.getCmd() -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getCmd()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    iget-object v3, v3, Lcom/cyjh/mq/c/b;->h:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;

    invoke-virtual/range {p1 .. p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getCmd()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v4, :pswitch_data_65a

    const/16 v9, 0x10

    packed-switch v4, :pswitch_data_664

    packed-switch v4, :pswitch_data_66c

    packed-switch v4, :pswitch_data_68a

    packed-switch v4, :pswitch_data_6a2

    const/16 v10, 0x13

    const/4 v11, 0x0

    packed-switch v4, :pswitch_data_6ae

    packed-switch v4, :pswitch_data_6d2

    sparse-switch v4, :sswitch_data_6e0

    return-void

    :sswitch_3f
    iget-object v2, v1, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    invoke-virtual {v2}, Lcom/cyjh/mq/c/b;->c()V

    return-void

    :sswitch_45
    iget-object v3, v1, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    iget-object v3, v3, Lcom/cyjh/mq/c/b;->j:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;

    if-eqz v3, :cond_52

    invoke-virtual/range {p1 .. p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getFileData()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;->onDebugMessage(Lcom/google/protobuf/ByteString;)V

    :cond_52
    return-void

    :sswitch_53
    iget-object v3, v1, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v4, 0x11

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-virtual {v3, v4, v2, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    return-void

    :sswitch_63
    iget-object v3, v1, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v4

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v10, v4, v8, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    return-void

    :sswitch_75
    iget-object v3, v1, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v4, 0x15

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v5

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v8, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    return-void

    :sswitch_89
    invoke-virtual/range {p1 .. p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getPkgName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getClassName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getMethodName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getTypesList()Ljava/util/List;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getParamsList()Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lcom/cyjh/mobileanjian/ipc/rpc/Invocator;->invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "retObj = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getIsSyncCall()Z

    move-result v4

    if-eqz v4, :cond_1c4

    invoke-virtual/range {p1 .. p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getRetValue()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    move-result-object v4

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v5

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getCmd()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setIsSyncCall(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getWaitId()I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setWaitId(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v2

    :try_start_db
    sget-object v6, Lcom/cyjh/mq/c/d$2;->a:[I

    invoke-virtual {v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_70e

    goto :goto_129

    :pswitch_e7
    if-nez v3, :cond_ec

    const-string v3, ""

    goto :goto_ee

    :cond_ec
    check-cast v3, Ljava/lang/String;

    :goto_ee
    invoke-virtual {v5, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setValString(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    goto :goto_129

    :pswitch_f2
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setValDouble(D)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    goto :goto_129

    :pswitch_fc
    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v5, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setValFloat(F)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    goto :goto_129

    :pswitch_106
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setValLong(J)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    goto :goto_129

    :pswitch_110
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setValInt(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    goto :goto_129

    :pswitch_11a
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v5, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setValBoolean(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    :try_end_123
    .catch Ljava/lang/Throwable; {:try_start_db .. :try_end_123} :catch_124

    goto :goto_129

    :catch_124
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_129
    sget-object v3, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->VOID:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    if-eq v4, v3, :cond_134

    invoke-virtual {v5}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setRetValue(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    :cond_134
    :try_start_134
    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v2
    :try_end_138
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_134 .. :try_end_138} :catch_139

    goto :goto_13e

    :catch_139
    move-exception v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->printStackTrace()V

    move-object v2, v11

    :goto_13e
    if-eqz v2, :cond_145

    iget-object v3, v1, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    invoke-virtual {v3, v2}, Lcom/cyjh/mq/c/b;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    :cond_145
    return-void

    :sswitch_146
    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v3

    invoke-virtual {v2, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v4

    invoke-virtual {v2, v6}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v5

    shl-int/2addr v3, v9

    or-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    iget-object v4, v4, Lcom/cyjh/mq/c/b;->i:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;

    if-nez v5, :cond_162

    iget-object v5, v1, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    iput-boolean v8, v5, Lcom/cyjh/mq/c/b;->d:Z

    :cond_162
    if-eqz v4, :cond_16b

    invoke-virtual/range {p1 .. p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getFileData()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-interface {v4, v3, v2}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;->onScreenShotDone(Ljava/lang/String;Lcom/google/protobuf/ByteString;)V

    :cond_16b
    return-void

    :sswitch_16c
    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_1c4

    invoke-interface {v3, v2}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;->onFinishRecord(Ljava/lang/String;)V

    return-void

    :sswitch_176
    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    if-eqz v3, :cond_1c4

    invoke-interface {v3, v2}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;->onStartRecord(I)V

    return-void

    :sswitch_180
    if-eqz v3, :cond_1c4

    invoke-interface {v3}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;->onOpenRecord()V

    return-void

    :sswitch_186
    new-instance v3, Lcom/cyjh/mq/b/a$a;

    invoke-direct {v3}, Lcom/cyjh/mq/b/a$a;-><init>()V

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v4

    iput v4, v3, Lcom/cyjh/mq/b/a$a;->a:I

    invoke-virtual {v2, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v4

    iput v4, v3, Lcom/cyjh/mq/b/a$a;->b:I

    invoke-virtual {v2, v6}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    if-eqz v2, :cond_19e

    goto :goto_19f

    :cond_19e
    const/4 v7, 0x0

    :goto_19f
    iput-boolean v7, v3, Lcom/cyjh/mq/b/a$a;->c:Z

    new-instance v2, Lcom/cyjh/mq/b/a;

    invoke-direct {v2, v3, v8}, Lcom/cyjh/mq/b/a;-><init>(Lcom/cyjh/mq/b/a$a;B)V

    iget-object v3, v1, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    iput-object v2, v3, Lcom/cyjh/mq/c/b;->f:Lcom/cyjh/mq/b/a;

    iget-object v2, v1, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    new-instance v3, Lcom/cyjh/mq/c/b$2;

    invoke-direct {v3, v2}, Lcom/cyjh/mq/c/b$2;-><init>(Lcom/cyjh/mq/c/b;)V

    invoke-virtual {v3}, Lcom/cyjh/mq/c/b$2;->start()V

    return-void

    :pswitch_1b5
    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg3(I)F

    move-result v3

    invoke-virtual {v2, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg3(I)F

    move-result v4

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-static {v3, v4, v2}, Lcom/cyjh/event/Injector;->TapAB(FFI)V

    :cond_1c4
    return-void

    :pswitch_1c5
    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg3(I)F

    move-result v3

    invoke-virtual {v2, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg3(I)F

    move-result v4

    invoke-virtual {v2, v6}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg3(I)F

    move-result v6

    invoke-virtual {v2, v5}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg3(I)F

    move-result v5

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-static {v3, v4, v6, v5, v2}, Lcom/cyjh/event/Injector;->SwipeAB(FFFFI)V

    return-void

    :pswitch_1dd
    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyjh/event/Injector;->dispatchGestureMoveAB(Ljava/lang/String;)V

    :pswitch_1e4
    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cyjh/event/Injector;->sendTextAB(Ljava/lang/String;)V

    return-void

    :pswitch_1ec
    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-static {v2}, Lcom/cyjh/event/Injector;->KeyPressAB(I)V

    return-void

    :pswitch_1f4
    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    if-ne v2, v7, :cond_1ff

    iget-object v2, v1, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/cyjh/mq/d/c;->a(Landroid/content/Context;)V

    :cond_1ff
    return-void

    :pswitch_200
    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-static {v3, v4, v2}, Lcom/cyjh/mq/c/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :pswitch_210
    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    iget-object v2, v1, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/a;->k()V

    return-void

    :pswitch_219
    iget-object v3, v1, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v4, 0x17

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_225
    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2Bytes(I)Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v4

    invoke-virtual {v2, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v5

    invoke-virtual {v2, v6}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/cyjh/mq/c/d;->a(Lcom/google/protobuf/ByteString;III)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GET_OCR_TEXT"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "strOrcText:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v3

    const/16 v4, 0x6d

    invoke-virtual {v3, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v2

    iget-object v3, v1, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    invoke-virtual {v3, v2}, Lcom/cyjh/mq/c/b;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void

    :pswitch_264
    iget-object v2, v1, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v3

    const/16 v4, 0x6c

    invoke-virtual {v3, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v2

    iget-object v3, v1, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    invoke-virtual {v3, v2}, Lcom/cyjh/mq/c/b;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void

    :pswitch_282
    iget-object v3, v1, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/cyjh/mobileanjian/ipc/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v3

    const/16 v4, 0x6b

    invoke-virtual {v3, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v2

    iget-object v3, v1, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    invoke-virtual {v3, v2}, Lcom/cyjh/mq/c/b;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void

    :pswitch_2a4
    iget-object v2, v1, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v3

    const/16 v4, 0x6a

    invoke-virtual {v3, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v2

    iget-object v3, v1, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    invoke-virtual {v3, v2}, Lcom/cyjh/mq/c/b;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void

    :pswitch_2c2
    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    if-ne v2, v7, :cond_2c9

    goto :goto_2ca

    :cond_2c9
    const/4 v7, 0x0

    :goto_2ca
    iget-object v2, v1, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    iget-object v3, v2, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "state"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, v2, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :pswitch_2e9
    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    if-ne v2, v7, :cond_2f0

    const/4 v8, 0x1

    :cond_2f0
    iget-object v2, v1, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    xor-int/lit8 v3, v8, 0x1

    iget-object v2, v2, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "accelerometer_rotation"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :pswitch_300
    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    if-ne v2, v7, :cond_307

    goto :goto_308

    :cond_307
    const/4 v7, 0x0

    :goto_308
    iget-object v2, v1, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void

    :pswitch_316
    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_data like \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%\""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v3, v1, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :pswitch_344
    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "title"

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "_display_name"

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

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

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "_size"

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v1, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v4, v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :pswitch_3c4
    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "InsertImageToGallery"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "InsertImageToGallery:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    if-ge v5, v6, :cond_40a

    :try_start_3f2
    iget-object v2, v1, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v5, v11}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_403
    .catch Ljava/io/FileNotFoundException; {:try_start_3f2 .. :try_end_403} :catch_404

    goto :goto_46c

    :catch_404
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_46c

    :cond_40a
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "_display_name"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "mime_type"

    const-string v9, "image/jpeg"

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "relative_path"

    sget-object v9, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v1, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v9, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v9, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_44c

    const-string v4, "InsertImageToGallery"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u56fe\u7247\u4fdd\u5b58\u5931\u8d25:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_44c
    :try_start_44c
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v6, v5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_466
    .catch Ljava/io/IOException; {:try_start_44c .. :try_end_466} :catch_467

    goto :goto_46c

    :catch_467
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_46c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v10, :cond_47e

    new-array v2, v7, [Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, v1, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-static {v3, v2, v11, v11}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void

    :cond_47e
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v3, v1, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :pswitch_492
    iget-object v3, v1, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v4, 0x16

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v5

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v8, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_4a6
    iget-object v3, v1, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v4, 0x14

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_4b6
    iget-object v3, v1, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_4c1
    iget-object v3, v1, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :pswitch_4cb
    return-void

    :pswitch_4cc
    iget-object v3, v1, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v4, 0x12

    invoke-virtual/range {p1 .. p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getFileData()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_4dc
    iget-object v3, v1, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/cyjh/mobileanjian/ipc/a;->e(I)V

    return-void

    :pswitch_4e6
    iget-object v3, v1, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/cyjh/mobileanjian/ipc/a;->d(I)V

    return-void

    :pswitch_4f0
    iget-object v3, v1, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/cyjh/mobileanjian/ipc/a;->c(I)V

    return-void

    :pswitch_4fa
    iget-object v2, v1, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/a;->h()V

    return-void

    :pswitch_500
    iget-object v2, v1, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/a;->g()V

    return-void

    :pswitch_506
    iget-object v2, v1, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/utils/d;->a(Landroid/content/Context;)V

    return-void

    :pswitch_50c
    iget-object v3, v1, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/cyjh/mobileanjian/ipc/utils/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :pswitch_516
    iget-object v3, v1, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v5, v2}, Lcom/cyjh/mobileanjian/ipc/utils/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :pswitch_528
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/a;->f()V

    return-void

    :pswitch_52c
    iget-object v3, v1, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    iget-object v3, v3, Lcom/cyjh/mq/c/b;->s:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRpcCallback;

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRpcCallback;->onRpcReturn(Ljava/lang/Object;)V

    return-void

    :pswitch_538
    iget-object v3, v1, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v4, 0x18

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_54c
    iget-object v2, v1, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :pswitch_554
    iget-object v2, v1, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :pswitch_55c
    iget-object v2, v1, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/a;->e()V

    return-void

    :pswitch_562
    iget-object v3, v1, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg3(I)F

    move-result v5

    mul-float v5, v5, v4

    float-to-int v4, v5

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v5

    invoke-virtual {v2, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v9, v4, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_581
    iget-object v3, v1, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/cyjh/mobileanjian/ipc/a;->b(Ljava/lang/String;)Z

    return-void

    :pswitch_58b
    iget-object v3, v1, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v3, Lcom/cyjh/mobileanjian/ipc/a;->b:Lcom/ime/input/a;

    iget-object v4, v3, Lcom/ime/input/a;->a:Landroid/inputmethodservice/InputMethodService;

    if-eqz v4, :cond_5a6

    iget-object v3, v3, Lcom/ime/input/a;->a:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    if-eqz v3, :cond_5a6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {v3, v2, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_5a6
    iget-object v2, v1, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    const/16 v3, 0x26

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/b;->a(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cyjh/mq/c/b;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void

    :pswitch_5b2
    iget-object v3, v1, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/cyjh/mobileanjian/ipc/a;->b(I)V

    return-void

    :pswitch_5bc
    iget-object v3, v1, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/cyjh/mobileanjian/ipc/a;->a(Ljava/lang/String;)Z

    return-void

    :pswitch_5c6
    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/a;->c(Ljava/lang/String;)V

    return-void

    :pswitch_5ce
    iget-object v3, v1, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/cyjh/mobileanjian/ipc/a;->a(I)V

    return-void

    :pswitch_5d8
    iget-object v3, v1, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    invoke-virtual {v3, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_5e2
    iget-object v3, v1, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    iget-object v3, v3, Lcom/cyjh/mq/c/b;->j:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;

    if-eqz v3, :cond_5ef

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;->onTracePrint(Ljava/lang/String;)V

    :cond_5ef
    return-void

    :pswitch_5f0
    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v3

    invoke-virtual {v2, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v4

    shl-int/2addr v3, v9

    or-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    iget-object v4, v4, Lcom/cyjh/mq/c/b;->p:Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;

    if-eqz v4, :cond_60b

    invoke-virtual/range {p1 .. p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getFileData()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-interface {v4, v3, v2}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;->onScreenShotDone(Ljava/lang/String;Lcom/google/protobuf/ByteString;)V

    :cond_60b
    return-void

    :pswitch_60c
    iget-object v3, v1, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    iget-object v3, v3, Lcom/cyjh/mq/c/b;->p:Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;

    if-eqz v3, :cond_619

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;->onUiElementback(Ljava/lang/String;)V

    :cond_619
    return-void

    :pswitch_61a
    iget-object v3, v1, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v3}, Lcom/cyjh/mobileanjian/ipc/a;->a()V

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/a;->f()V

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v3

    iget-object v4, v1, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    iput-boolean v8, v4, Lcom/cyjh/mq/c/b;->e:Z

    const/16 v4, 0x69

    if-eq v3, v4, :cond_630

    if-nez v3, :cond_635

    :cond_630
    sget v4, Lcom/cyjh/mqsdk/R$string;->toast_on_stop_script:I

    invoke-virtual {v1, v4}, Lcom/cyjh/mq/c/d;->a(I)V

    :cond_635
    iget-object v4, v1, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v3, v8, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_643
    iget-object v2, v1, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :pswitch_64a
    iget-object v2, v1, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    iput-boolean v7, v2, Lcom/cyjh/mq/c/b;->e:Z

    sget v2, Lcom/cyjh/mqsdk/R$string;->toast_on_start_script:I

    invoke-virtual {v1, v2}, Lcom/cyjh/mq/c/d;->a(I)V

    iget-object v2, v1, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    nop

    :pswitch_data_65a
    .packed-switch 0x4
        :pswitch_64a
        :pswitch_643
        :pswitch_61a
    .end packed-switch

    :pswitch_data_664
    .packed-switch 0x1b
        :pswitch_60c
        :pswitch_5f0
    .end packed-switch

    :pswitch_data_66c
    .packed-switch 0x20
        :pswitch_5e2
        :pswitch_5d8
        :pswitch_5ce
        :pswitch_5c6
        :pswitch_5bc
        :pswitch_5b2
        :pswitch_58b
        :pswitch_581
        :pswitch_562
        :pswitch_55c
        :pswitch_554
        :pswitch_54c
        :pswitch_538
    .end packed-switch

    :pswitch_data_68a
    .packed-switch 0x32
        :pswitch_52c
        :pswitch_528
        :pswitch_516
        :pswitch_50c
        :pswitch_506
        :pswitch_500
        :pswitch_4fa
        :pswitch_4f0
        :pswitch_4e6
        :pswitch_4dc
    .end packed-switch

    :pswitch_data_6a2
    .packed-switch 0x40
        :pswitch_4cc
        :pswitch_4cb
        :pswitch_4c1
        :pswitch_4b6
    .end packed-switch

    :pswitch_data_6ae
    .packed-switch 0x62
        :pswitch_4a6
        :pswitch_492
        :pswitch_3c4
        :pswitch_344
        :pswitch_316
        :pswitch_300
        :pswitch_2e9
        :pswitch_2c2
        :pswitch_2a4
        :pswitch_282
        :pswitch_264
        :pswitch_225
        :pswitch_219
        :pswitch_210
        :pswitch_200
        :pswitch_1f4
    .end packed-switch

    :pswitch_data_6d2
    .packed-switch 0x110
        :pswitch_1ec
        :pswitch_1dd
        :pswitch_1e4
        :pswitch_1c5
        :pswitch_1b5
    .end packed-switch

    :sswitch_data_6e0
    .sparse-switch
        0xe -> :sswitch_186
        0x13 -> :sswitch_180
        0x15 -> :sswitch_176
        0x17 -> :sswitch_16c
        0x19 -> :sswitch_146
        0x30 -> :sswitch_89
        0x51 -> :sswitch_75
        0x60 -> :sswitch_63
        0x81 -> :sswitch_53
        0x101 -> :sswitch_45
        0xffff -> :sswitch_3f
    .end sparse-switch

    :pswitch_data_70e
    .packed-switch 0x1
        :pswitch_11a
        :pswitch_110
        :pswitch_106
        :pswitch_fc
        :pswitch_f2
        :pswitch_e7
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string v0, "InsertImageToGallery"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InsertImageToGallery:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x1d

    if-ge v1, v3, :cond_3e

    :try_start_27
    iget-object p1, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1, v2}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_38
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_38} :catch_39

    goto :goto_9f

    :catch_39
    move-exception p1

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_9f

    :cond_3e
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "_display_name"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "mime_type"

    const-string v4, "image/jpeg"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "relative_path"

    sget-object v4, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_80

    const-string v0, "InsertImageToGallery"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u56fe\u7247\u4fdd\u5b58\u5931\u8d25:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_80
    :try_start_80
    new-instance p1, Ljava/io/BufferedInputStream;

    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_9a} :catch_9b

    goto :goto_9f

    :catch_9b
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_9f
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_b5

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    iget-object p2, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-static {p2, p1, v2, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void

    :cond_b5
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9

    new-instance v0, Lcom/google/a/i/b;

    invoke-direct {v0}, Lcom/google/a/i/b;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/google/a/g;->CHARACTER_SET:Lcom/google/a/g;

    const-string v2, "utf-8"

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/a/g;->ERROR_CORRECTION:Lcom/google/a/g;

    sget-object v2, Lcom/google/a/i/a/f;->M:Lcom/google/a/i/a/f;

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/a/g;->MARGIN:Lcom/google/a/g;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_22
    sget-object v2, Lcom/google/a/a;->QR_CODE:Lcom/google/a/a;

    move-object v1, p1

    move v3, p2

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/a/i/b;->a(Ljava/lang/String;Lcom/google/a/a;IILjava/util/Map;)Lcom/google/a/c/b;

    move-result-object p1
    :try_end_2b
    .catch Lcom/google/a/w; {:try_start_22 .. :try_end_2b} :catch_2c

    goto :goto_31

    :catch_2c
    move-exception p1

    invoke-virtual {p1}, Lcom/google/a/w;->printStackTrace()V

    const/4 p1, 0x0

    :goto_31
    mul-int v0, p2, p2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_37
    if-ge v2, p2, :cond_56

    const/4 v3, 0x0

    :goto_3a
    if-ge v3, p2, :cond_53

    invoke-virtual {p1, v2, v3}, Lcom/google/a/c/b;->a(II)Z

    move-result v4

    if-eqz v4, :cond_4a

    mul-int v4, v2, p2

    add-int/2addr v4, v3

    const/high16 v5, -0x1000000

    aput v5, v0, v4

    goto :goto_50

    :cond_4a
    mul-int v4, v2, p2

    add-int/2addr v4, v3

    const/4 v5, -0x1

    aput v5, v0, v4

    :goto_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_56
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_5f

    return-void

    :cond_5f
    :try_start_5f
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_74

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    :cond_74
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string p2, ".png"

    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    const/16 p2, 0x64

    if-eqz p0, :cond_89

    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_85
    invoke-virtual {p1, p0, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_8c

    :cond_89
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_85

    :goto_8c
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_92} :catch_93

    return-void

    :catch_93
    move-exception p0

    const-string p1, "RootIpcDex"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ImageQREnCode IOException"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void
.end method

.method private a()Z
    .registers 5

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/tessdata/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eng.traineddata"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/tessdata/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "chi_sim.traineddata"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_51

    goto :goto_7e

    :cond_51
    const-string v0, "chi_sim+eng"

    new-instance v1, Lcom/googlecode/tesseract/android/TessBaseAPI;

    invoke-direct {v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;-><init>()V

    iput-object v1, p0, Lcom/cyjh/mq/c/d;->f:Lcom/googlecode/tesseract/android/TessBaseAPI;

    iget-object v1, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cyjh/mq/c/d;->f:Lcom/googlecode/tesseract/android/TessBaseAPI;

    invoke-virtual {v2, v1, v0}, Lcom/googlecode/tesseract/android/TessBaseAPI;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "MqmHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initTessBass: init ret="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_7e
    :goto_7e
    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic b(Lcom/cyjh/mq/c/d;)Lcom/cyjh/mq/c/b;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    return-object p0
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cyjh/mq/c/b;->e:Z

    sget v0, Lcom/cyjh/mqsdk/R$string;->toast_on_start_script:I

    invoke-virtual {p0, v0}, Lcom/cyjh/mq/c/d;->a(I)V

    iget-object v0, p0, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private b(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/cyjh/mq/d/c;->a(Landroid/content/Context;)V

    :cond_8
    return-void
.end method

.method private b(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V
    .registers 6

    new-instance v0, Lcom/cyjh/mq/b/a$a;

    invoke-direct {v0}, Lcom/cyjh/mq/b/a$a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    iput v2, v0, Lcom/cyjh/mq/b/a$a;->a:I

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v3

    iput v3, v0, Lcom/cyjh/mq/b/a$a;->b:I

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    iput-boolean v2, v0, Lcom/cyjh/mq/b/a$a;->c:Z

    new-instance p1, Lcom/cyjh/mq/b/a;

    invoke-direct {p1, v0, v1}, Lcom/cyjh/mq/b/a;-><init>(Lcom/cyjh/mq/b/a$a;B)V

    iget-object v0, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    iput-object p1, v0, Lcom/cyjh/mq/c/b;->f:Lcom/cyjh/mq/b/a;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 7

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "title"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_display_name"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mime_type"

    const-string v3, "video/3gp"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "_data"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_size"

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static synthetic c(Lcom/cyjh/mq/c/d;)Lcom/cyjh/mobileanjian/ipc/ui/h;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mq/c/d;->d:Lcom/cyjh/mobileanjian/ipc/ui/h;

    return-object p0
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private c(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V
    .registers 6

    iget-object v0, p0, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/a;->a()V

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/a;->f()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    iget-object v2, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    iput-boolean v0, v2, Lcom/cyjh/mq/c/b;->e:Z

    const/16 v2, 0x69

    if-eq v1, v2, :cond_17

    if-nez v1, :cond_1c

    :cond_17
    sget v2, Lcom/cyjh/mqsdk/R$string;->toast_on_stop_script:I

    invoke-virtual {p0, v2}, Lcom/cyjh/mq/c/d;->a(I)V

    :cond_1c
    iget-object v2, p0, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, v1, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_data like \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private d(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    iget-object v0, v0, Lcom/cyjh/mq/c/b;->j:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;->onTracePrint(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method private e()V
    .registers 12

    iget-object v0, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v3, p0, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v3}, Lcom/cyjh/mobileanjian/ipc/a;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v4}, Lcom/cyjh/mobileanjian/ipc/a;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v5}, Lcom/cyjh/mobileanjian/ipc/a;->b()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v7, Lcom/ime/input/InputKb;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-nez v3, :cond_73

    const-string v3, "UNKNOW"

    :cond_73
    if-nez v4, :cond_77

    const-string v4, "UNKNOW"

    :cond_77
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_8a

    :try_start_82
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_8a

    :catch_86
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    :cond_8a
    :goto_8a
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v9

    const/16 v10, 0xe

    invoke-virtual {v9, v10}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg1(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg1(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg1(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    iget-object v0, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    invoke-virtual {v9}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/mq/c/b;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method

.method private e(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    iget-object v0, v0, Lcom/cyjh/mq/c/b;->j:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getFileData()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;->onDebugMessage(Lcom/google/protobuf/ByteString;)V

    :cond_d
    return-void
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private f(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v3

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    iget-object v2, v2, Lcom/cyjh/mq/c/b;->i:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;

    if-nez v3, :cond_20

    iget-object v3, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    iput-boolean v0, v3, Lcom/cyjh/mq/c/b;->d:Z

    :cond_20
    if-eqz v2, :cond_29

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getFileData()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-interface {v2, v1, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;->onScreenShotDone(Ljava/lang/String;Lcom/google/protobuf/ByteString;)V

    :cond_29
    return-void
.end method

.method private g(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    iget-object v1, v1, Lcom/cyjh/mq/c/b;->p:Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;

    if-eqz v1, :cond_1e

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getFileData()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;->onScreenShotDone(Ljava/lang/String;Lcom/google/protobuf/ByteString;)V

    :cond_1e
    return-void
.end method

.method private h(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    iget-object v0, v0, Lcom/cyjh/mq/c/b;->p:Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;->onUiElementback(Ljava/lang/String;)V

    :cond_e
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/ByteString;III)Ljava/lang/String;
    .registers 13

    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetOrcText: width="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " hight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    const/4 v0, 0x4

    div-int/2addr p4, v0

    new-array v1, p4, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2d
    if-ge v3, p4, :cond_4a

    const/4 v4, 0x0

    :goto_30
    if-ge v4, v0, :cond_47

    rsub-int/lit8 v5, v4, 0x3

    mul-int/lit8 v5, v5, 0x8

    aget v6, v1, v3

    mul-int/lit8 v7, v3, 0x4

    add-int/2addr v7, v4

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int v5, v7, v5

    add-int/2addr v6, v5

    aput v6, v1, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_4a
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p2, p3, p1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-boolean p2, p0, Lcom/cyjh/mq/c/d;->g:Z

    if-nez p2, :cond_d3

    new-instance p2, Ljava/io/File;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p4

    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/tessdata/"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "eng.traineddata"

    invoke-direct {p2, p3, p4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/io/File;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/tessdata/"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "chi_sim.traineddata"

    invoke-direct {p3, p4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_d1

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_a5

    goto :goto_d1

    :cond_a5
    const-string p2, "chi_sim+eng"

    new-instance p3, Lcom/googlecode/tesseract/android/TessBaseAPI;

    invoke-direct {p3}, Lcom/googlecode/tesseract/android/TessBaseAPI;-><init>()V

    iput-object p3, p0, Lcom/cyjh/mq/c/d;->f:Lcom/googlecode/tesseract/android/TessBaseAPI;

    iget-object p3, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/cyjh/mq/c/d;->f:Lcom/googlecode/tesseract/android/TessBaseAPI;

    invoke-virtual {p4, p3, p2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string p2, "MqmHandler"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "initTessBass: init ret="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d1
    :goto_d1
    iput-boolean v2, p0, Lcom/cyjh/mq/c/d;->g:Z

    :cond_d3
    iget-boolean p2, p0, Lcom/cyjh/mq/c/d;->g:Z

    if-nez p2, :cond_da

    const-string p1, ""

    return-object p1

    :cond_da
    iget-object p2, p0, Lcom/cyjh/mq/c/d;->f:Lcom/googlecode/tesseract/android/TessBaseAPI;

    invoke-virtual {p2, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->a(Landroid/graphics/Bitmap;)V

    iget-object p2, p0, Lcom/cyjh/mq/c/d;->f:Lcom/googlecode/tesseract/android/TessBaseAPI;

    invoke-virtual {p2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p2
.end method

.method final a(I)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
