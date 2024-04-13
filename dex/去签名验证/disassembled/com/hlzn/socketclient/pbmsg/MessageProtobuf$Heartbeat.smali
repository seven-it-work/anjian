.class public final Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;
.super Lcom/google/protobuf/GeneratedMessage;

# interfaces
.implements Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$HeartbeatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Heartbeat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;",
            ">;"
        }
    .end annotation
.end field

.field public static final RPCID_FIELD_NUMBER:I = 0x5a

.field public static final SCRIPTRUNNING_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private rpcId_:J

.field private scriptRunning_:Z

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat$1;

    invoke-direct {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat$1;-><init>()V

    sput-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;-><init>(Z)V

    sput-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->defaultInstance:Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;

    invoke-direct {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->initFields()V

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

    iput-byte v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->memoizedIsInitialized:B

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->initFields()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_11
    :goto_11
    if-nez v1, :cond_64

    :try_start_13
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_41

    const/16 v4, 0x8

    if-eq v3, v4, :cond_34

    const/16 v4, 0x2d0

    if-eq v3, v4, :cond_28

    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_41

    :cond_28
    iget v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->bitField0_:I

    or-int/2addr v3, v2

    iput v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->rpcId_:J

    goto :goto_11

    :cond_34
    iget v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->scriptRunning_:Z
    :try_end_40
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_13 .. :try_end_40} :catch_54
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_40} :catch_45
    .catchall {:try_start_13 .. :try_end_40} :catchall_43

    goto :goto_11

    :cond_41
    :goto_41
    const/4 v1, 0x1

    goto :goto_11

    :catchall_43
    move-exception p1

    goto :goto_5a

    :catch_45
    move-exception p1

    :try_start_46
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_54
    move-exception p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_5a
    .catchall {:try_start_46 .. :try_end_5a} :catchall_43

    :goto_5a
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->makeExtensionsImmutable()V

    throw p1

    :cond_64
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->memoizedIsInitialized:B

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->memoizedIsInitialized:B

    iput p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$3000()Z
    .registers 1

    sget-boolean v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;J)J
    .registers 3

    iput-wide p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->rpcId_:J

    return-wide p1
.end method

.method static synthetic access$3302(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->scriptRunning_:Z

    return p1
.end method

.method static synthetic access$3402(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;I)I
    .registers 2

    iput p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;
    .registers 1

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->defaultInstance:Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->f()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->rpcId_:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->scriptRunning_:Z

    return-void
.end method

.method public static newBuilder()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat$Builder;
    .registers 1

    # invokes: Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat$Builder;->create()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat$Builder;
    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat$Builder;->access$2800()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat$Builder;
    .registers 2

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->newBuilder()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat$Builder;->mergeFrom(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->getDefaultInstanceForType()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->getDefaultInstanceForType()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;
    .registers 2

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->defaultInstance:Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;

    return-object v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getRpcId()J
    .registers 3

    iget-wide v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->rpcId_:J

    return-wide v0
.end method

.method public final getScriptRunning()Z
    .registers 2

    iget-boolean v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->scriptRunning_:Z

    return v0
.end method

.method public final getSerializedSize()I
    .registers 6

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_15

    iget-boolean v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->scriptRunning_:Z

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v2, v0

    :cond_15
    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->bitField0_:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_23

    const/16 v0, 0x5a

    iget-wide v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->rpcId_:J

    invoke-static {v0, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v2, v0

    :cond_23
    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->memoizedSerializedSize:I

    return v2
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .registers 2

    iget-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasRpcId()Z
    .registers 3

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final hasScriptRunning()Z
    .registers 3

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->bitField0_:I

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

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->g()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;

    const-class v2, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 5

    iget-byte v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->memoizedIsInitialized:B

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_b

    if-ne v0, v1, :cond_a

    return v1

    :cond_a
    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->hasRpcId()Z

    move-result v0

    if-nez v0, :cond_14

    iput-byte v2, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->memoizedIsInitialized:B

    return v2

    :cond_14
    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->hasScriptRunning()Z

    move-result v0

    if-nez v0, :cond_1d

    iput-byte v2, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->memoizedIsInitialized:B

    return v2

    :cond_1d
    iput-byte v1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->newBuilderForType()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->newBuilderForType()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat$Builder;
    .registers 2

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->newBuilder()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat$Builder;
    .registers 4

    new-instance v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$1;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->toBuilder()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->toBuilder()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat$Builder;
    .registers 2

    invoke-static {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->newBuilder(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat$Builder;

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

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->getSerializedSize()I

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_f

    iget-boolean v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->scriptRunning_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_f
    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1b

    const/16 v0, 0x5a

    iget-wide v1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->rpcId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_1b
    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Heartbeat;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
