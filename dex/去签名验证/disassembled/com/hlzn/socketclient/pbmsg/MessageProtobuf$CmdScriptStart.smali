.class public final Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;
.super Lcom/google/protobuf/GeneratedMessage;

# interfaces
.implements Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStartOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CmdScriptStart"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;",
            ">;"
        }
    .end annotation
.end field

.field public static final RPCID_FIELD_NUMBER:I = 0x5a

.field private static final defaultInstance:Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private rpcId_:J

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart$1;

    invoke-direct {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart$1;-><init>()V

    sput-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;-><init>(Z)V

    sput-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->defaultInstance:Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;

    invoke-direct {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->initFields()V

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

    iput-byte v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->memoizedIsInitialized:B

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->initFields()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_11
    :goto_11
    if-nez v1, :cond_53

    :try_start_13
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_30

    const/16 v4, 0x2d0

    if-eq v3, v4, :cond_24

    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_30

    :cond_24
    iget v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->bitField0_:I

    or-int/2addr v3, v2

    iput v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->rpcId_:J
    :try_end_2f
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_13 .. :try_end_2f} :catch_43
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_2f} :catch_34
    .catchall {:try_start_13 .. :try_end_2f} :catchall_32

    goto :goto_11

    :cond_30
    :goto_30
    const/4 v1, 0x1

    goto :goto_11

    :catchall_32
    move-exception p1

    goto :goto_49

    :catch_34
    move-exception p1

    :try_start_35
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_43
    move-exception p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_49
    .catchall {:try_start_35 .. :try_end_49} :catchall_32

    :goto_49
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->makeExtensionsImmutable()V

    throw p1

    :cond_53
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->memoizedIsInitialized:B

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->memoizedIsInitialized:B

    iput p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$6600()Z
    .registers 1

    sget-boolean v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$6802(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;J)J
    .registers 3

    iput-wide p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->rpcId_:J

    return-wide p1
.end method

.method static synthetic access$6902(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;I)I
    .registers 2

    iput p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;
    .registers 1

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->defaultInstance:Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->n()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->rpcId_:J

    return-void
.end method

.method public static newBuilder()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart$Builder;
    .registers 1

    # invokes: Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart$Builder;->create()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart$Builder;
    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart$Builder;->access$6400()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart$Builder;
    .registers 2

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->newBuilder()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart$Builder;->mergeFrom(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->getDefaultInstanceForType()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->getDefaultInstanceForType()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;
    .registers 2

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->defaultInstance:Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;

    return-object v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getRpcId()J
    .registers 3

    iget-wide v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->rpcId_:J

    return-wide v0
.end method

.method public final getSerializedSize()I
    .registers 6

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_16

    const/16 v0, 0x5a

    iget-wide v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->rpcId_:J

    invoke-static {v0, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v2, v0

    :cond_16
    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->memoizedSerializedSize:I

    return v2
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .registers 2

    iget-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasRpcId()Z
    .registers 3

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->bitField0_:I

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

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->o()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;

    const-class v2, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 5

    iget-byte v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->memoizedIsInitialized:B

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_b

    if-ne v0, v2, :cond_a

    return v2

    :cond_a
    return v1

    :cond_b
    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->hasRpcId()Z

    move-result v0

    if-nez v0, :cond_14

    iput-byte v1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->memoizedIsInitialized:B

    return v1

    :cond_14
    iput-byte v2, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->memoizedIsInitialized:B

    return v2
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->newBuilderForType()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->newBuilderForType()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart$Builder;
    .registers 2

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->newBuilder()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart$Builder;
    .registers 4

    new-instance v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$1;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->toBuilder()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->toBuilder()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart$Builder;
    .registers 2

    invoke-static {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->newBuilder(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart$Builder;

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

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->getSerializedSize()I

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_10

    const/16 v0, 0x5a

    iget-wide v1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->rpcId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_10
    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$CmdScriptStart;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
