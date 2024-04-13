.class public final Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;
.super Lcom/google/protobuf/GeneratedMessage;

# interfaces
.implements Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$LoginOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Login"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;
    }
.end annotation


# static fields
.field public static final APPID_FIELD_NUMBER:I = 0x1

.field public static final DEVICEID_FIELD_NUMBER:I = 0x3

.field public static final IMTOKEN_FIELD_NUMBER:I = 0x4

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;",
            ">;"
        }
    .end annotation
.end field

.field public static final RPCID_FIELD_NUMBER:I = 0x5a

.field public static final SCRIPTID_FIELD_NUMBER:I = 0x2

.field public static final SCRIPTRUNNING_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

.field private static final serialVersionUID:J


# instance fields
.field private appId_:J

.field private bitField0_:I

.field private deviceId_:Ljava/lang/Object;

.field private iMToken_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private rpcId_:J

.field private scriptId_:Ljava/lang/Object;

.field private scriptRunning_:Z

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$1;

    invoke-direct {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$1;-><init>()V

    sput-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;-><init>(Z)V

    sput-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->defaultInstance:Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

    invoke-direct {v0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->memoizedIsInitialized:B

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->initFields()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_11
    :goto_11
    if-nez v1, :cond_a7

    :try_start_13
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_84

    const/16 v4, 0x8

    if-eq v3, v4, :cond_77

    const/16 v5, 0x12

    if-eq v3, v5, :cond_6a

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_5e

    const/16 v4, 0x22

    if-eq v3, v4, :cond_51

    const/16 v4, 0x28

    if-eq v3, v4, :cond_44

    const/16 v4, 0x2d0

    if-eq v3, v4, :cond_38

    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_84

    :cond_38
    iget v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->bitField0_:I

    or-int/2addr v3, v2

    iput v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->rpcId_:J

    goto :goto_11

    :cond_44
    iget v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->scriptRunning_:Z

    goto :goto_11

    :cond_51
    iget v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->iMToken_:Ljava/lang/Object;

    goto :goto_11

    :cond_5e
    iget v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->deviceId_:Ljava/lang/Object;

    goto :goto_11

    :cond_6a
    iget v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->scriptId_:Ljava/lang/Object;

    goto :goto_11

    :cond_77
    iget v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->appId_:J
    :try_end_83
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_13 .. :try_end_83} :catch_97
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_83} :catch_88
    .catchall {:try_start_13 .. :try_end_83} :catchall_86

    goto :goto_11

    :cond_84
    :goto_84
    const/4 v1, 0x1

    goto :goto_11

    :catchall_86
    move-exception p1

    goto :goto_9d

    :catch_88
    move-exception p1

    :try_start_89
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_97
    move-exception p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_9d
    .catchall {:try_start_89 .. :try_end_9d} :catchall_86

    :goto_9d
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->makeExtensionsImmutable()V

    throw p1

    :cond_a7
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->memoizedIsInitialized:B

    iput v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->memoizedIsInitialized:B

    iput p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1000(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->deviceId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->deviceId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->iMToken_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->iMToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->scriptRunning_:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;I)I
    .registers 2

    iput p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .registers 1

    sget-boolean v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;J)J
    .registers 3

    iput-wide p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->rpcId_:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;J)J
    .registers 3

    iput-wide p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->appId_:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->scriptId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$902(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->scriptId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;
    .registers 1

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->defaultInstance:Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->b()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->rpcId_:J

    iput-wide v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->appId_:J

    const-string v0, ""

    iput-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->scriptId_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->deviceId_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->iMToken_:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->scriptRunning_:Z

    return-void
.end method

.method public static newBuilder()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;
    .registers 1

    # invokes: Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->create()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;
    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->access$300()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;
    .registers 2

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->newBuilder()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;->mergeFrom(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

    return-object p0
.end method


# virtual methods
.method public final getAppId()J
    .registers 3

    iget-wide v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->appId_:J

    return-wide v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->getDefaultInstanceForType()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->getDefaultInstanceForType()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;
    .registers 2

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->defaultInstance:Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;

    return-object v0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->deviceId_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->deviceId_:Ljava/lang/Object;

    :cond_17
    return-object v1
.end method

.method public final getDeviceIdBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->deviceId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->deviceId_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getIMToken()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->iMToken_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->iMToken_:Ljava/lang/Object;

    :cond_17
    return-object v1
.end method

.method public final getIMTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->iMToken_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->iMToken_:Ljava/lang/Object;

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
            "Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getRpcId()J
    .registers 3

    iget-wide v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->rpcId_:J

    return-wide v0
.end method

.method public final getScriptId()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->scriptId_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->scriptId_:Ljava/lang/Object;

    :cond_17
    return-object v1
.end method

.method public final getScriptIdBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->scriptId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->scriptId_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getScriptRunning()Z
    .registers 2

    iget-boolean v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->scriptRunning_:Z

    return v0
.end method

.method public final getSerializedSize()I
    .registers 7

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_15

    iget-wide v4, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->appId_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v2, v0

    :cond_15
    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->bitField0_:I

    const/4 v4, 0x4

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_24

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->getScriptIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_24
    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_35

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->getDeviceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_35
    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_45

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->getIMTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_45
    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_54

    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->scriptRunning_:Z

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v2, v0

    :cond_54
    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->bitField0_:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_62

    const/16 v0, 0x5a

    iget-wide v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->rpcId_:J

    invoke-static {v0, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v2, v0

    :cond_62
    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->memoizedSerializedSize:I

    return v2
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .registers 2

    iget-object v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasAppId()Z
    .registers 3

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->bitField0_:I

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

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->bitField0_:I

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

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->bitField0_:I

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

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->bitField0_:I

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

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->bitField0_:I

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

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->bitField0_:I

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
    .registers 5

    iget-byte v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->memoizedIsInitialized:B

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_b

    if-ne v0, v1, :cond_a

    return v1

    :cond_a
    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->hasRpcId()Z

    move-result v0

    if-nez v0, :cond_14

    iput-byte v2, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->memoizedIsInitialized:B

    return v2

    :cond_14
    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->hasAppId()Z

    move-result v0

    if-nez v0, :cond_1d

    iput-byte v2, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->memoizedIsInitialized:B

    return v2

    :cond_1d
    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->hasScriptId()Z

    move-result v0

    if-nez v0, :cond_26

    iput-byte v2, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->memoizedIsInitialized:B

    return v2

    :cond_26
    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->hasDeviceId()Z

    move-result v0

    if-nez v0, :cond_2f

    iput-byte v2, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->memoizedIsInitialized:B

    return v2

    :cond_2f
    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->hasIMToken()Z

    move-result v0

    if-nez v0, :cond_38

    iput-byte v2, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->memoizedIsInitialized:B

    return v2

    :cond_38
    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->hasScriptRunning()Z

    move-result v0

    if-nez v0, :cond_41

    iput-byte v2, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->memoizedIsInitialized:B

    return v2

    :cond_41
    iput-byte v1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->newBuilderForType()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->newBuilderForType()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;
    .registers 2

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->newBuilder()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;
    .registers 4

    new-instance v0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$1;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->toBuilder()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->toBuilder()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;
    .registers 2

    invoke-static {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->newBuilder(Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;)Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login$Builder;

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
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->getSerializedSize()I

    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_f

    iget-wide v3, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->appId_:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_f
    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->bitField0_:I

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_1c

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->getScriptIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_1c
    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2b

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->getDeviceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_2b
    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_39

    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->getIMTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_39
    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_46

    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->scriptRunning_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_46
    iget v0, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_52

    const/16 v0, 0x5a

    iget-wide v1, p0, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->rpcId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_52
    invoke-virtual {p0}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$Login;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
