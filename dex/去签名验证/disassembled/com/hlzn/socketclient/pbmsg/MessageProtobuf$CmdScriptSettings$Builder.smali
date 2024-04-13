.class public final Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettingsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;",
        ">;",
        "Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettingsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private rpcId_:J

.field private scriptSettings_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->scriptSettings_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->scriptSettings_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$12600()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;
    .registers 1

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->create()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;
    .registers 1

    new-instance v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;

    invoke-direct {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->z()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    # getter for: Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;->access$12800()Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/google/protobuf/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->build()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->build()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;
    .registers 3

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->buildPartial()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_f
    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->buildPartial()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->buildPartial()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;
    .registers 7

    new-instance v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$1;)V

    iget v1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    iget-wide v4, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->rpcId_:J

    # setter for: Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;->rpcId_:J
    invoke-static {v0, v4, v5}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;->access$13002(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;J)J

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1a

    or-int/lit8 v3, v3, 0x2

    :cond_1a
    iget-object v1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->scriptSettings_:Ljava/lang/Object;

    # setter for: Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;->scriptSettings_:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;->access$13102(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;Ljava/lang/Object;)Ljava/lang/Object;

    # setter for: Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;->bitField0_:I
    invoke-static {v0, v3}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;->access$13202(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;I)I

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->clear()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->clear()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->clear()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->clear()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;
    .registers 3

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->rpcId_:J

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->scriptSettings_:Ljava/lang/Object;

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->bitField0_:I

    return-object p0
.end method

.method public final clearRpcId()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;
    .registers 3

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->rpcId_:J

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearScriptSettings()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;
    .registers 2

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->bitField0_:I

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;->getDefaultInstance()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;->getScriptSettings()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->scriptSettings_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->clone()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->clone()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->clone()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->clone()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->clone()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;
    .registers 3

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->create()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->buildPartial()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->mergeFrom(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;

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

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->clone()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->getDefaultInstanceForType()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->getDefaultInstanceForType()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;
    .registers 2

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;->getDefaultInstance()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 2

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->z()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getRpcId()J
    .registers 3

    iget-wide v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->rpcId_:J

    return-wide v0
.end method

.method public final getScriptSettings()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->scriptSettings_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->scriptSettings_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getScriptSettingsBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->scriptSettings_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->scriptSettings_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final hasRpcId()Z
    .registers 3

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final hasScriptSettings()Z
    .registers 3

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 4

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->A()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;

    const-class v2, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->hasRpcId()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->hasScriptSettings()Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    :cond_f
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

    invoke-virtual {p0, p1, p2}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;
    :try_end_9
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_9} :catch_11
    .catchall {:try_start_1 .. :try_end_9} :catchall_f

    if-eqz p1, :cond_e

    invoke-virtual {p0, p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->mergeFrom(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;

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

    check-cast p2, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;
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

    invoke-virtual {p0, v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->mergeFrom(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;

    :cond_20
    throw p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/Message;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;
    .registers 3

    instance-of v0, p1, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;

    invoke-virtual {p0, p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->mergeFrom(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;
    .registers 4

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;->getDefaultInstance()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    :cond_7
    invoke-virtual {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;->hasRpcId()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;->getRpcId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->setRpcId(J)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;

    :cond_14
    invoke-virtual {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;->hasScriptSettings()Z

    move-result v0

    if-eqz v0, :cond_29

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->bitField0_:I

    # getter for: Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;->scriptSettings_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;->access$13100(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->scriptSettings_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->onChanged()V

    :cond_29
    invoke-virtual {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public final setRpcId(J)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;
    .registers 4

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->rpcId_:J

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->onChanged()V

    return-object p0
.end method

.method public final setScriptSettings(Ljava/lang/String;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->scriptSettings_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->onChanged()V

    return-object p0
.end method

.method public final setScriptSettingsBytes(Lcom/google/protobuf/ByteString;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->scriptSettings_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptSettings$Builder;->onChanged()V

    return-object p0
.end method
