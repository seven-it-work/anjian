.class public final Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$LoginOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;",
        ">;",
        "Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$LoginOrBuilder;"
    }
.end annotation


# instance fields
.field private appId_:J

.field private bitField0_:I

.field private deviceId_:Ljava/lang/Object;

.field private iMToken_:Ljava/lang/Object;

.field private rpcId_:J

.field private scriptId_:Ljava/lang/Object;

.field private scriptRunning_:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->scriptId_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->deviceId_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->iMToken_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->scriptId_:Ljava/lang/Object;

    const-string p1, ""

    iput-object p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->deviceId_:Ljava/lang/Object;

    const-string p1, ""

    iput-object p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->iMToken_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$300()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;
    .registers 1

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->create()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;
    .registers 1

    new-instance v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    invoke-direct {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->b()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    # getter for: Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->access$500()Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/google/protobuf/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->build()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->build()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;
    .registers 3

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->buildPartial()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_f
    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->buildPartial()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->buildPartial()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;
    .registers 7

    new-instance v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$1;)V

    iget v1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    iget-wide v4, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->rpcId_:J

    # setter for: Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->rpcId_:J
    invoke-static {v0, v4, v5}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->access$702(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;J)J

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1b

    or-int/lit8 v3, v3, 0x2

    :cond_1b
    iget-wide v4, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->appId_:J

    # setter for: Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->appId_:J
    invoke-static {v0, v4, v5}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->access$802(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;J)J

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_27

    or-int/lit8 v3, v3, 0x4

    :cond_27
    iget-object v2, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->scriptId_:Ljava/lang/Object;

    # setter for: Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->scriptId_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->access$902(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_34

    or-int/lit8 v3, v3, 0x8

    :cond_34
    iget-object v2, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->deviceId_:Ljava/lang/Object;

    # setter for: Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->deviceId_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->access$1002(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_41

    or-int/lit8 v3, v3, 0x10

    :cond_41
    iget-object v2, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->iMToken_:Ljava/lang/Object;

    # setter for: Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->iMToken_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->access$1102(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4d

    or-int/lit8 v3, v3, 0x20

    :cond_4d
    iget-boolean v1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->scriptRunning_:Z

    # setter for: Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->scriptRunning_:Z
    invoke-static {v0, v1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->access$1202(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;Z)Z

    # setter for: Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->bitField0_:I
    invoke-static {v0, v3}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->access$1302(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;I)I

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->clear()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->clear()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->clear()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->clear()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;
    .registers 4

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->rpcId_:J

    iget v2, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    iput-wide v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->appId_:J

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->scriptId_:Ljava/lang/Object;

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->deviceId_:Ljava/lang/Object;

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->iMToken_:Ljava/lang/Object;

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->scriptRunning_:Z

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    return-object p0
.end method

.method public final clearAppId()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;
    .registers 3

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->appId_:J

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDeviceId()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;
    .registers 2

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->getDefaultInstance()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->deviceId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearIMToken()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;
    .registers 2

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->getDefaultInstance()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->getIMToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->iMToken_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearRpcId()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;
    .registers 3

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->rpcId_:J

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearScriptId()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;
    .registers 2

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->getDefaultInstance()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->getScriptId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->scriptId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearScriptRunning()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;
    .registers 2

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->scriptRunning_:Z

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->clone()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->clone()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->clone()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->clone()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->clone()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;
    .registers 3

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->create()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->buildPartial()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->mergeFrom(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->clone()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getAppId()J
    .registers 3

    iget-wide v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->appId_:J

    return-wide v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->getDefaultInstanceForType()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->getDefaultInstanceForType()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;
    .registers 2

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->getDefaultInstance()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 2

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->b()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->deviceId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->deviceId_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceIdBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->deviceId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->deviceId_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getIMToken()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->iMToken_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->iMToken_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getIMTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->iMToken_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->iMToken_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getRpcId()J
    .registers 3

    iget-wide v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->rpcId_:J

    return-wide v0
.end method

.method public final getScriptId()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->scriptId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->scriptId_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getScriptIdBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->scriptId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->scriptId_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getScriptRunning()Z
    .registers 2

    iget-boolean v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->scriptRunning_:Z

    return v0
.end method

.method public final hasAppId()Z
    .registers 3

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final hasDeviceId()Z
    .registers 3

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasIMToken()Z
    .registers 3

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasRpcId()Z
    .registers 3

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final hasScriptId()Z
    .registers 3

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final hasScriptRunning()Z
    .registers 3

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 4

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->c()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

    const-class v2, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->hasRpcId()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->hasAppId()Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    :cond_f
    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->hasScriptId()Z

    move-result v0

    if-nez v0, :cond_16

    return v1

    :cond_16
    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->hasDeviceId()Z

    move-result v0

    if-nez v0, :cond_1d

    return v1

    :cond_1d
    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->hasIMToken()Z

    move-result v0

    if-nez v0, :cond_24

    return v1

    :cond_24
    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->hasScriptRunning()Z

    move-result v0

    if-nez v0, :cond_2b

    return v1

    :cond_2b
    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;
    :try_end_9
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_9} :catch_11
    .catchall {:try_start_1 .. :try_end_9} :catchall_f

    if-eqz p1, :cond_e

    invoke-virtual {p0, p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->mergeFrom(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    :cond_e
    return-object p0

    :catchall_f
    move-exception p1

    goto :goto_1b

    :catch_11
    move-exception p1

    :try_start_12
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_f

    :try_start_18
    throw p1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_19

    :catchall_19
    move-exception p1

    move-object v0, p2

    :goto_1b
    if-eqz v0, :cond_20

    invoke-virtual {p0, v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->mergeFrom(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    :cond_20
    throw p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/Message;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;
    .registers 3

    instance-of v0, p1, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

    invoke-virtual {p0, p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->mergeFrom(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;
    .registers 4

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->getDefaultInstance()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    :cond_7
    invoke-virtual {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->hasRpcId()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->getRpcId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->setRpcId(J)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    :cond_14
    invoke-virtual {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->hasAppId()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->getAppId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->setAppId(J)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    :cond_21
    invoke-virtual {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->hasScriptId()Z

    move-result v0

    if-eqz v0, :cond_36

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    # getter for: Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->scriptId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->access$900(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->scriptId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->onChanged()V

    :cond_36
    invoke-virtual {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    # getter for: Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->deviceId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->access$1000(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->deviceId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->onChanged()V

    :cond_4b
    invoke-virtual {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->hasIMToken()Z

    move-result v0

    if-eqz v0, :cond_60

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    # getter for: Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->iMToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->access$1100(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->iMToken_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->onChanged()V

    :cond_60
    invoke-virtual {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->hasScriptRunning()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-virtual {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->getScriptRunning()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->setScriptRunning(Z)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    :cond_6d
    invoke-virtual {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public final setAppId(J)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;
    .registers 4

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->appId_:J

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDeviceId(Ljava/lang/String;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->deviceId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDeviceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->deviceId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIMToken(Ljava/lang/String;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->iMToken_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIMTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->iMToken_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRpcId(J)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;
    .registers 4

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->rpcId_:J

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->onChanged()V

    return-object p0
.end method

.method public final setScriptId(Ljava/lang/String;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->scriptId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->onChanged()V

    return-object p0
.end method

.method public final setScriptIdBytes(Lcom/google/protobuf/ByteString;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->scriptId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->onChanged()V

    return-object p0
.end method

.method public final setScriptRunning(Z)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;
    .registers 3

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->scriptRunning_:Z

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->onChanged()V

    return-object p0
.end method
