.class public final Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;
.super Lcom/google/protobuf/GeneratedMessage;

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ControlEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;,
        Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;
    }
.end annotation


# static fields
.field public static final CONTROL_ID_FIELD_NUMBER:I = 0x1

.field public static final EVENT_ARGS_FIELD_NUMBER:I = 0x3

.field public static final EVENT_FUNCTION_NAME_FIELD_NUMBER:I = 0x4

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private controlId_:Ljava/lang/Object;

.field private eventArgs_:Ljava/lang/Object;

.field private eventFunctionName_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$1;

    invoke-direct {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$1;-><init>()V

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;-><init>(Z)V

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->defaultInstance:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    invoke-direct {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->initFields()V

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

    iput-byte v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->memoizedIsInitialized:B

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->initFields()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_11
    :goto_11
    if-nez v1, :cond_90

    :try_start_13
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_6d

    const/16 v4, 0xa

    if-eq v3, v4, :cond_61

    const/16 v4, 0x10

    if-eq v3, v4, :cond_4a

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_3d

    const/16 v4, 0x22

    if-eq v3, v4, :cond_30

    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_6d

    :cond_30
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->eventFunctionName_:Ljava/lang/Object;

    goto :goto_11

    :cond_3d
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->eventArgs_:Ljava/lang/Object;

    goto :goto_11

    :cond_4a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->valueOf(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    move-result-object v4

    const/4 v5, 0x2

    if-nez v4, :cond_59

    invoke-virtual {v0, v5, v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_11

    :cond_59
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->bitField0_:I

    or-int/2addr v3, v5

    iput v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->bitField0_:I

    iput-object v4, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->type_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    goto :goto_11

    :cond_61
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->bitField0_:I

    or-int/2addr v3, v2

    iput v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->controlId_:Ljava/lang/Object;
    :try_end_6c
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_13 .. :try_end_6c} :catch_80
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_6c} :catch_71
    .catchall {:try_start_13 .. :try_end_6c} :catchall_6f

    goto :goto_11

    :cond_6d
    :goto_6d
    const/4 v1, 0x1

    goto :goto_11

    :catchall_6f
    move-exception p1

    goto :goto_86

    :catch_71
    move-exception p1

    :try_start_72
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_80
    move-exception p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_86
    .catchall {:try_start_72 .. :try_end_86} :catchall_6f

    :goto_86
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->makeExtensionsImmutable()V

    throw p1

    :cond_90
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->memoizedIsInitialized:B

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->memoizedIsInitialized:B

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$5200()Z
    .registers 1

    sget-boolean v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$5400(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->controlId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5402(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->controlId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5502(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->type_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    return-object p1
.end method

.method static synthetic access$5600(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->eventArgs_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5602(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->eventArgs_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5700(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->eventFunctionName_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5702(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->eventFunctionName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5802(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;I)I
    .registers 2

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;
    .registers 1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->defaultInstance:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->f()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .registers 2

    const-string v0, ""

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->controlId_:Ljava/lang/Object;

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_CHANGE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->type_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    const-string v0, ""

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->eventArgs_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->eventFunctionName_:Ljava/lang/Object;

    return-void
.end method

.method public static newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;
    .registers 1

    # invokes: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->create()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->access$5000()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;
    .registers 2

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    return-object p0
.end method


# virtual methods
.method public final getControlId()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->controlId_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->controlId_:Ljava/lang/Object;

    :cond_17
    return-object v1
.end method

.method public final getControlIdBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->controlId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->controlId_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;
    .registers 2

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->defaultInstance:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object v0

    return-object v0
.end method

.method public final getEventArgs()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->eventArgs_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->eventArgs_:Ljava/lang/Object;

    :cond_17
    return-object v1
.end method

.method public final getEventArgsBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->eventArgs_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->eventArgs_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getEventFunctionName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->eventFunctionName_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->eventFunctionName_:Ljava/lang/Object;

    :cond_17
    return-object v1
.end method

.method public final getEventFunctionNameBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->eventFunctionName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->eventFunctionName_:Ljava/lang/Object;

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
            "Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .registers 5

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_16

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->getControlIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_16
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->type_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->getNumber()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_27
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_37

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->getEventArgsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_37
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_47

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->getEventFunctionNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_47
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->memoizedSerializedSize:I

    return v2
.end method

.method public final getType()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->type_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasControlId()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final hasEventArgs()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final hasEventFunctionName()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasType()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->bitField0_:I

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

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->g()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    const-class v2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 5

    iget-byte v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->memoizedIsInitialized:B

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_b

    if-ne v0, v1, :cond_a

    return v1

    :cond_a
    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->hasControlId()Z

    move-result v0

    if-nez v0, :cond_14

    iput-byte v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->memoizedIsInitialized:B

    return v2

    :cond_14
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->hasType()Z

    move-result v0

    if-nez v0, :cond_1d

    iput-byte v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->memoizedIsInitialized:B

    return v2

    :cond_1d
    iput-byte v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;
    .registers 2

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;
    .registers 4

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilderForType()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilderForType()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;
    .registers 2

    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->toBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->toBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

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

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->getSerializedSize()I

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->getControlIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_10
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->type_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_1f
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2d

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->getEventArgsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_2d
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3b

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->getEventFunctionNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_3b
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
