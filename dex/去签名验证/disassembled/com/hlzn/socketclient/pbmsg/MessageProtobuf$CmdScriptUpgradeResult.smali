.class public final Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;
.super Lcom/google/protobuf/GeneratedMessage;

# interfaces
.implements Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CmdScriptUpgradeResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult$Builder;
    }
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x5b

.field public static final MESSAGE_FIELD_NUMBER:I = 0x5c

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final RPCID_FIELD_NUMBER:I = 0x5a

.field private static final defaultInstance:Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private error_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private message_:Ljava/lang/Object;

.field private rpcId_:J

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult$1;

    invoke-direct {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult$1;-><init>()V

    sput-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;-><init>(Z)V

    sput-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->defaultInstance:Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;

    invoke-direct {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->memoizedIsInitialized:B

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->initFields()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_11
    :goto_11
    if-nez v1, :cond_75

    :try_start_13
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_52

    const/16 v4, 0x2d0

    if-eq v3, v4, :cond_46

    const/16 v4, 0x2d8

    if-eq v3, v4, :cond_39

    const/16 v4, 0x2e2

    if-eq v3, v4, :cond_2c

    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_52

    :cond_2c
    iget v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->message_:Ljava/lang/Object;

    goto :goto_11

    :cond_39
    iget v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->error_:I

    goto :goto_11

    :cond_46
    iget v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->bitField0_:I

    or-int/2addr v3, v2

    iput v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->rpcId_:J
    :try_end_51
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_13 .. :try_end_51} :catch_65
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_51} :catch_56
    .catchall {:try_start_13 .. :try_end_51} :catchall_54

    goto :goto_11

    :cond_52
    :goto_52
    const/4 v1, 0x1

    goto :goto_11

    :catchall_54
    move-exception p1

    goto :goto_6b

    :catch_56
    move-exception p1

    :try_start_57
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_65
    move-exception p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_6b
    .catchall {:try_start_57 .. :try_end_6b} :catchall_54

    :goto_6b
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->makeExtensionsImmutable()V

    throw p1

    :cond_75
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$Builder<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->memoizedIsInitialized:B

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->memoizedIsInitialized:B

    iput p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$11700()Z
    .registers 1

    sget-boolean v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$11902(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;J)J
    .registers 3

    iput-wide p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->rpcId_:J

    return-wide p1
.end method

.method static synthetic access$12002(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;I)I
    .registers 2

    iput p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->error_:I

    return p1
.end method

.method static synthetic access$12100(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->message_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$12102(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->message_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12202(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;I)I
    .registers 2

    iput p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;
    .registers 1

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->defaultInstance:Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->x()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->rpcId_:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->error_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->message_:Ljava/lang/Object;

    return-void
.end method

.method public static newBuilder()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult$Builder;
    .registers 1

    # invokes: Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult$Builder;->create()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult$Builder;
    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult$Builder;->access$11500()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult$Builder;
    .registers 2

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->newBuilder()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult$Builder;->mergeFrom(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->getDefaultInstanceForType()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->getDefaultInstanceForType()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;
    .registers 2

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->defaultInstance:Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;

    return-object v0
.end method

.method public final getError()I
    .registers 2

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->error_:I

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->message_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_17

    iput-object v1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->message_:Ljava/lang/Object;

    :cond_17
    return-object v1
.end method

.method public final getMessageBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->message_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->message_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getRpcId()J
    .registers 3

    iget-wide v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->rpcId_:J

    return-wide v0
.end method

.method public final getSerializedSize()I
    .registers 6

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_16

    const/16 v0, 0x5a

    iget-wide v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->rpcId_:J

    invoke-static {v0, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v2, v0

    :cond_16
    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_25

    const/16 v0, 0x5b

    iget v1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->error_:I

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_25
    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_36

    const/16 v0, 0x5c

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->getMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_36
    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->memoizedSerializedSize:I

    return v2
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .registers 2

    iget-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasError()Z
    .registers 3

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final hasMessage()Z
    .registers 3

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final hasRpcId()Z
    .registers 3

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 4

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->y()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;

    const-class v2, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 5

    iget-byte v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->memoizedIsInitialized:B

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_b

    if-ne v0, v1, :cond_a

    return v1

    :cond_a
    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->hasRpcId()Z

    move-result v0

    if-nez v0, :cond_14

    iput-byte v2, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->memoizedIsInitialized:B

    return v2

    :cond_14
    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->hasError()Z

    move-result v0

    if-nez v0, :cond_1d

    iput-byte v2, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->memoizedIsInitialized:B

    return v2

    :cond_1d
    iput-byte v1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->newBuilderForType()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->newBuilderForType()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult$Builder;
    .registers 2

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->newBuilder()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult$Builder;
    .registers 4

    new-instance v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$1;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->toBuilder()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->toBuilder()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult$Builder;
    .registers 2

    invoke-static {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->newBuilder(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->getSerializedSize()I

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_10

    const/16 v0, 0x5a

    iget-wide v1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->rpcId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_10
    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1d

    const/16 v0, 0x5b

    iget v1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->error_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_1d
    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2c

    const/16 v0, 0x5c

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->getMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_2c
    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptUpgradeResult;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
